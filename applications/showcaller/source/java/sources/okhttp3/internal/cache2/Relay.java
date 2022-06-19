package okhttp3.internal.cache2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache2/Relay.class */
public final class Relay {
    private static final long FILE_HEADER_SIZE = 32;
    static final ByteString PREFIX_CLEAN = ByteString.encodeUtf8("OkHttp cache v1\n");
    static final ByteString PREFIX_DIRTY = ByteString.encodeUtf8("OkHttp DIRTY :(\n");
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    final long bufferMaxSize;
    boolean complete;
    RandomAccessFile file;
    private final ByteString metadata;
    int sourceCount;
    Source upstream;
    long upstreamPos;
    Thread upstreamReader;
    final Buffer upstreamBuffer = new Buffer();
    final Buffer buffer = new Buffer();

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache2/Relay$RelaySource.class */
    class RelaySource implements Source {
        private FileOperator fileOperator;
        private long sourcePos;
        private final Timeout timeout = new Timeout();

        RelaySource() {
            Relay.this = r6;
            this.fileOperator = new FileOperator(r6.file.getChannel());
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            synchronized (Relay.this) {
                Relay relay = Relay.this;
                int i = relay.sourceCount - 1;
                relay.sourceCount = i;
                if (i == 0) {
                    randomAccessFile = relay.file;
                    relay.file = null;
                }
            }
            if (randomAccessFile == null) {
                return;
            }
            Util.closeQuietly(randomAccessFile);
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) {
            long j2;
            boolean z;
            Relay relay;
            if (this.fileOperator != null) {
                synchronized (Relay.this) {
                    while (true) {
                        long j3 = this.sourcePos;
                        Relay relay2 = Relay.this;
                        j2 = relay2.upstreamPos;
                        if (j3 != j2) {
                            long size = j2 - relay2.buffer.size();
                            long j4 = this.sourcePos;
                            if (j4 >= size) {
                                long min = Math.min(j, j2 - j4);
                                Relay.this.buffer.copyTo(buffer, this.sourcePos - size, min);
                                this.sourcePos += min;
                                return min;
                            }
                            z = true;
                        } else if (!relay2.complete) {
                            if (relay2.upstreamReader == null) {
                                relay2.upstreamReader = Thread.currentThread();
                                z = true;
                                break;
                            }
                            this.timeout.waitUntilNotified(relay2);
                        } else {
                            return -1L;
                        }
                    }
                    if (z) {
                        long min2 = Math.min(j, j2 - this.sourcePos);
                        this.fileOperator.read(this.sourcePos + Relay.FILE_HEADER_SIZE, buffer, min2);
                        this.sourcePos += min2;
                        return min2;
                    }
                    try {
                        Relay relay3 = Relay.this;
                        long read = relay3.upstream.read(relay3.upstreamBuffer, relay3.bufferMaxSize);
                        if (read == -1) {
                            Relay.this.commit(j2);
                            synchronized (Relay.this) {
                                Relay relay4 = Relay.this;
                                relay4.upstreamReader = null;
                                relay4.notifyAll();
                            }
                            return -1L;
                        }
                        long min3 = Math.min(read, j);
                        Relay.this.upstreamBuffer.copyTo(buffer, 0L, min3);
                        this.sourcePos += min3;
                        this.fileOperator.write(j2 + Relay.FILE_HEADER_SIZE, Relay.this.upstreamBuffer.clone(), read);
                        synchronized (Relay.this) {
                            Relay relay5 = Relay.this;
                            relay5.buffer.write(relay5.upstreamBuffer, read);
                            long size2 = Relay.this.buffer.size();
                            Relay relay6 = Relay.this;
                            if (size2 > relay6.bufferMaxSize) {
                                Buffer buffer2 = relay6.buffer;
                                buffer2.skip(buffer2.size() - Relay.this.bufferMaxSize);
                            }
                            relay = Relay.this;
                            relay.upstreamPos += read;
                        }
                        synchronized (relay) {
                            Relay relay7 = Relay.this;
                            relay7.upstreamReader = null;
                            relay7.notifyAll();
                        }
                        return min3;
                    } catch (Throwable th) {
                        synchronized (Relay.this) {
                            Relay relay8 = Relay.this;
                            relay8.upstreamReader = null;
                            relay8.notifyAll();
                            throw th;
                        }
                    }
                }
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }
    }

    private Relay(RandomAccessFile randomAccessFile, Source source, long j, ByteString byteString, long j2) {
        this.file = randomAccessFile;
        this.upstream = source;
        this.complete = source == null;
        this.upstreamPos = j;
        this.metadata = byteString;
        this.bufferMaxSize = j2;
    }

    public static Relay edit(File file, Source source, ByteString byteString, long j) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Relay relay = new Relay(randomAccessFile, source, 0L, byteString, j);
        randomAccessFile.setLength(0L);
        relay.writeHeader(PREFIX_DIRTY, -1L, -1L);
        return relay;
    }

    public static Relay read(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        FileOperator fileOperator = new FileOperator(randomAccessFile.getChannel());
        Buffer buffer = new Buffer();
        fileOperator.read(0L, buffer, FILE_HEADER_SIZE);
        ByteString byteString = PREFIX_CLEAN;
        if (buffer.readByteString(byteString.size()).equals(byteString)) {
            long readLong = buffer.readLong();
            long readLong2 = buffer.readLong();
            Buffer buffer2 = new Buffer();
            fileOperator.read(readLong + FILE_HEADER_SIZE, buffer2, readLong2);
            return new Relay(randomAccessFile, null, readLong, buffer2.readByteString(), 0L);
        }
        throw new IOException("unreadable cache file");
    }

    private void writeHeader(ByteString byteString, long j, long j2) {
        Buffer buffer = new Buffer();
        buffer.write(byteString);
        buffer.writeLong(j);
        buffer.writeLong(j2);
        if (buffer.size() == FILE_HEADER_SIZE) {
            new FileOperator(this.file.getChannel()).write(0L, buffer, FILE_HEADER_SIZE);
            return;
        }
        throw new IllegalArgumentException();
    }

    private void writeMetadata(long j) {
        Buffer buffer = new Buffer();
        buffer.write(this.metadata);
        new FileOperator(this.file.getChannel()).write(FILE_HEADER_SIZE + j, buffer, this.metadata.size());
    }

    void commit(long j) {
        writeMetadata(j);
        this.file.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j, this.metadata.size());
        this.file.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        Util.closeQuietly(this.upstream);
        this.upstream = null;
    }

    boolean isClosed() {
        return this.file == null;
    }

    public ByteString metadata() {
        return this.metadata;
    }

    public Source newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }
}
