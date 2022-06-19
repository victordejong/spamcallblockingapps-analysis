package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Reader.class */
public final class Http2Reader implements Closeable {
    static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private final ContinuationSource continuation;
    final Hpack.Reader hpackReader;
    private final BufferedSource source;

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Reader$ContinuationSource.class */
    public static final class ContinuationSource implements Source {
        byte flags;
        int left;
        int length;
        short padding;
        private final BufferedSource source;
        int streamId;

        ContinuationSource(BufferedSource bufferedSource) {
            this.source = bufferedSource;
        }

        private void readContinuationHeader() {
            int i = this.streamId;
            int readMedium = Http2Reader.readMedium(this.source);
            this.left = readMedium;
            this.length = readMedium;
            byte readByte = (byte) (this.source.readByte() & 255);
            this.flags = (byte) (this.source.readByte() & 255);
            Logger logger = Http2Reader.logger;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.frameLog(true, this.streamId, this.length, readByte, this.flags));
            }
            int readInt = this.source.readInt() & Integer.MAX_VALUE;
            this.streamId = readInt;
            if (readByte == 9) {
                if (readInt != i) {
                    throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
                }
                return;
            }
            throw Http2.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) {
            while (true) {
                int i = this.left;
                if (i != 0) {
                    long read = this.source.read(buffer, Math.min(j, i));
                    if (read == -1) {
                        return -1L;
                    }
                    this.left = (int) (this.left - read);
                    return read;
                }
                this.source.skip(this.padding);
                this.padding = (short) 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.source.timeout();
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Reader$Handler.class */
    public interface Handler {
        void ackSettings();

        void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j);

        void data(boolean z, int i, BufferedSource bufferedSource, int i2);

        void goAway(int i, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z, int i, int i2, List<Header> list);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<Header> list);

        void rstStream(int i, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i, long j);
    }

    public Http2Reader(BufferedSource bufferedSource, boolean z) {
        this.source = bufferedSource;
        this.client = z;
        ContinuationSource continuationSource = new ContinuationSource(bufferedSource);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(4096, continuationSource);
    }

    static int lengthWithoutPadding(int i, byte b, short s) {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        throw Http2.ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
    }

    private void readData(Handler handler, int i, byte b, int i2) {
        if (i2 != 0) {
            boolean z = true;
            boolean z2 = (b & 1) != 0;
            if ((b & 32) == 0) {
                z = false;
            }
            if (z) {
                throw Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.source.readByte() & 255);
            }
            handler.data(z2, i2, this.source, lengthWithoutPadding(i, b, s));
            this.source.skip(s);
            return;
        }
        throw Http2.ioException("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
    }

    private void readGoAway(Handler handler, int i, byte b, int i2) {
        if (i >= 8) {
            if (i2 != 0) {
                throw Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            int i3 = i - 8;
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
            if (fromHttp2 == null) {
                throw Http2.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            }
            ByteString byteString = ByteString.EMPTY;
            if (i3 > 0) {
                byteString = this.source.readByteString(i3);
            }
            handler.goAway(readInt, fromHttp2, byteString);
            return;
        }
        throw Http2.ioException("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
    }

    private List<Header> readHeaderBlock(int i, short s, byte b, int i2) {
        ContinuationSource continuationSource = this.continuation;
        continuationSource.left = i;
        continuationSource.length = i;
        continuationSource.padding = s;
        continuationSource.flags = b;
        continuationSource.streamId = i2;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private void readHeaders(Handler handler, int i, byte b, int i2) {
        if (i2 != 0) {
            boolean z = (b & 1) != 0;
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.source.readByte() & 255);
            }
            int i3 = i;
            if ((b & 32) != 0) {
                readPriority(handler, i2);
                i3 = i - 5;
            }
            handler.headers(z, i2, -1, readHeaderBlock(lengthWithoutPadding(i3, b, s), s, b, i2));
            return;
        }
        throw Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    static int readMedium(BufferedSource bufferedSource) {
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    private void readPing(Handler handler, int i, byte b, int i2) {
        boolean z = false;
        if (i == 8) {
            if (i2 != 0) {
                throw Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
            }
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            if ((b & 1) != 0) {
                z = true;
            }
            handler.ping(z, readInt, readInt2);
            return;
        }
        throw Http2.ioException("TYPE_PING length != 8: %s", Integer.valueOf(i));
    }

    private void readPriority(Handler handler, int i) {
        int readInt = this.source.readInt();
        handler.priority(i, readInt & Integer.MAX_VALUE, (this.source.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    private void readPriority(Handler handler, int i, byte b, int i2) {
        if (i == 5) {
            if (i2 == 0) {
                throw Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            readPriority(handler, i2);
            return;
        }
        throw Http2.ioException("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
    }

    private void readPushPromise(Handler handler, int i, byte b, int i2) {
        if (i2 != 0) {
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.source.readByte() & 255);
            }
            handler.pushPromise(i2, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(lengthWithoutPadding(i - 4, b, s), s, b, i2));
            return;
        }
        throw Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }

    private void readRstStream(Handler handler, int i, byte b, int i2) {
        if (i == 4) {
            if (i2 == 0) {
                throw Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int readInt = this.source.readInt();
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
            if (fromHttp2 == null) {
                throw Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
            }
            handler.rstStream(i2, fromHttp2);
            return;
        }
        throw Http2.ioException("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
    }

    private void readSettings(Handler handler, int i, byte b, int i2) {
        int i3;
        if (i2 == 0) {
            if ((b & 1) != 0) {
                if (i != 0) {
                    throw Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                handler.ackSettings();
                return;
            } else if (i % 6 != 0) {
                throw Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            } else {
                Settings settings = new Settings();
                for (int i4 = 0; i4 < i; i4 += 6) {
                    int readShort = this.source.readShort() & 65535;
                    int readInt = this.source.readInt();
                    if (readShort == 2) {
                        i3 = readShort;
                        if (readInt == 0) {
                            continue;
                        } else if (readInt != 1) {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        } else {
                            i3 = readShort;
                        }
                    } else if (readShort == 3) {
                        i3 = 4;
                    } else if (readShort == 4) {
                        i3 = 7;
                        if (readInt < 0) {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                    } else if (readShort != 5) {
                        i3 = readShort;
                    } else if (readInt < 16384 || readInt > 16777215) {
                        throw Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                    } else {
                        i3 = readShort;
                    }
                    settings.set(i3, readInt);
                }
                handler.settings(false, settings);
                return;
            }
        }
        throw Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
    }

    private void readWindowUpdate(Handler handler, int i, byte b, int i2) {
        if (i == 4) {
            long readInt = this.source.readInt() & 2147483647L;
            if (readInt == 0) {
                throw Http2.ioException("windowSizeIncrement was 0", Long.valueOf(readInt));
            }
            handler.windowUpdate(i2, readInt);
            return;
        }
        throw Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.source.close();
    }

    public boolean nextFrame(boolean z, Handler handler) {
        try {
            this.source.require(9L);
            int readMedium = readMedium(this.source);
            if (readMedium < 0 || readMedium > 16384) {
                throw Http2.ioException("FRAME_SIZE_ERROR: %s", Integer.valueOf(readMedium));
            }
            byte readByte = (byte) (this.source.readByte() & 255);
            if (z && readByte != 4) {
                throw Http2.ioException("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
            }
            byte readByte2 = (byte) (this.source.readByte() & 255);
            int readInt = this.source.readInt() & Integer.MAX_VALUE;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.frameLog(true, readInt, readMedium, readByte, readByte2));
            }
            switch (readByte) {
                case 0:
                    readData(handler, readMedium, readByte2, readInt);
                    return true;
                case 1:
                    readHeaders(handler, readMedium, readByte2, readInt);
                    return true;
                case 2:
                    readPriority(handler, readMedium, readByte2, readInt);
                    return true;
                case 3:
                    readRstStream(handler, readMedium, readByte2, readInt);
                    return true;
                case 4:
                    readSettings(handler, readMedium, readByte2, readInt);
                    return true;
                case 5:
                    readPushPromise(handler, readMedium, readByte2, readInt);
                    return true;
                case 6:
                    readPing(handler, readMedium, readByte2, readInt);
                    return true;
                case 7:
                    readGoAway(handler, readMedium, readByte2, readInt);
                    return true;
                case 8:
                    readWindowUpdate(handler, readMedium, readByte2, readInt);
                    return true;
                default:
                    this.source.skip(readMedium);
                    return true;
            }
        } catch (IOException e) {
            return false;
        }
    }

    public void readConnectionPreface(Handler handler) {
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw Http2.ioException("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        BufferedSource bufferedSource = this.source;
        ByteString byteString = Http2.CONNECTION_PREFACE;
        ByteString readByteString = bufferedSource.readByteString(byteString.size());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Util.format("<< CONNECTION %s", readByteString.hex()));
        }
        if (!byteString.equals(readByteString)) {
            throw Http2.ioException("Expected a connection header but was %s", readByteString.utf8());
        }
    }
}
