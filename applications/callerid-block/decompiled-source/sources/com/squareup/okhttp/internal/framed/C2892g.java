package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.internal.framed.AbstractC2868a;
import com.squareup.okhttp.internal.framed.C2889f;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
/* renamed from: com.squareup.okhttp.internal.framed.g */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/g.class */
public final class C2892g implements AbstractC2911o {

    /* renamed from: a */
    private static final Logger f12251a = Logger.getLogger(C2894b.class.getName());

    /* renamed from: b */
    private static final ByteString f12252b = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.g$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/g$a.class */
    public static final class C2893a implements Source {

        /* renamed from: b */
        private final BufferedSource f12253b;

        /* renamed from: c */
        int f12254c;

        /* renamed from: d */
        byte f12255d;

        /* renamed from: e */
        int f12256e;

        /* renamed from: f */
        int f12257f;

        /* renamed from: g */
        short f12258g;

        public C2893a(BufferedSource bufferedSource) {
            this.f12253b = bufferedSource;
        }

        /* renamed from: a */
        private void m1109a() {
            int i = this.f12256e;
            int m = C2892g.m1111m(this.f12253b);
            this.f12257f = m;
            this.f12254c = m;
            byte readByte = (byte) (this.f12253b.readByte() & 255);
            this.f12255d = (byte) (this.f12253b.readByte() & 255);
            if (C2892g.f12251a.isLoggable(Level.FINE)) {
                C2892g.f12251a.fine(C2894b.m1107b(true, this.f12256e, this.f12254c, readByte, this.f12255d));
            }
            int readInt = this.f12253b.readInt() & Integer.MAX_VALUE;
            this.f12256e = readInt;
            if (readByte != 9) {
                C2892g.m1119e("%s != TYPE_CONTINUATION", new Object[]{Byte.valueOf(readByte)});
                throw null;
            } else if (readInt != i) {
                C2892g.m1119e("TYPE_CONTINUATION streamId changed", new Object[0]);
                throw null;
            }
        }

        public void close() {
        }

        public long read(Buffer buffer, long j) {
            while (true) {
                int i = this.f12257f;
                if (i == 0) {
                    this.f12253b.skip(this.f12258g);
                    this.f12258g = (short) 0;
                    if ((this.f12255d & 4) != 0) {
                        return -1L;
                    }
                    m1109a();
                } else {
                    long read = this.f12253b.read(buffer, Math.min(j, i));
                    if (read == -1) {
                        return -1L;
                    }
                    this.f12257f = (int) (this.f12257f - read);
                    return read;
                }
            }
        }

        public Timeout timeout() {
            return this.f12253b.timeout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.g$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/g$b.class */
    public static final class C2894b {

        /* renamed from: a */
        private static final String[] f12259a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* renamed from: b */
        private static final String[] f12260b = new String[64];

        /* renamed from: c */
        private static final String[] f12261c = new String[256];

        static {
            String[] strArr;
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr2 = f12261c;
                if (i2 >= strArr2.length) {
                    break;
                }
                strArr2[i2] = String.format("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
                i2++;
            }
            String[] strArr3 = f12260b;
            strArr3[0] = "";
            strArr3[1] = "END_STREAM";
            int[] iArr = {1};
            strArr3[8] = "PADDED";
            for (int i3 = 0; i3 < 1; i3++) {
                int i4 = iArr[i3];
                f12260b[i4 | 8] = strArr[i4] + "|PADDED";
            }
            String[] strArr4 = f12260b;
            strArr4[4] = "END_HEADERS";
            strArr4[32] = "PRIORITY";
            strArr4[36] = "END_HEADERS|PRIORITY";
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = new int[]{4, 32, 36}[i5];
                for (int i7 = 0; i7 < 1; i7++) {
                    int i8 = iArr[i7];
                    String[] strArr5 = f12260b;
                    int i9 = i8 | i6;
                    strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                    strArr5[i9 | 8] = strArr5[i8] + '|' + strArr5[i6] + "|PADDED";
                }
            }
            while (true) {
                String[] strArr6 = f12260b;
                if (i < strArr6.length) {
                    if (strArr6[i] == null) {
                        strArr6[i] = f12261c[i];
                    }
                    i++;
                } else {
                    return;
                }
            }
        }

        C2894b() {
        }

        /* renamed from: a */
        static String m1108a(byte b, byte b2) {
            if (b2 == 0) {
                return "";
            }
            if (!(b == 2 || b == 3)) {
                if (b == 4 || b == 6) {
                    return b2 == 1 ? "ACK" : f12261c[b2];
                } else if (!(b == 7 || b == 8)) {
                    String[] strArr = f12260b;
                    String str = b2 < strArr.length ? strArr[b2] : f12261c[b2];
                    return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f12261c[b2];
        }

        /* renamed from: b */
        static String m1107b(boolean z, int i, int i2, byte b, byte b2) {
            String[] strArr = f12259a;
            return String.format("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b < strArr.length ? strArr[b] : String.format("0x%02x", Byte.valueOf(b)), m1108a(b, b2));
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.g$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/g$c.class */
    static final class C2895c implements AbstractC2868a {

        /* renamed from: b */
        private final BufferedSource f12262b;

        /* renamed from: c */
        private final C2893a f12263c;

        /* renamed from: d */
        private final boolean f12264d;

        /* renamed from: e */
        final C2889f.C2890a f12265e;

        C2895c(BufferedSource bufferedSource, int i, boolean z) {
            this.f12262b = bufferedSource;
            this.f12264d = z;
            C2893a aVar = new C2893a(bufferedSource);
            this.f12263c = aVar;
            this.f12265e = new C2889f.C2890a(i, aVar);
        }

        /* renamed from: B */
        private void m1106B(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            short s = 0;
            if (i2 != 0) {
                boolean z = (b & 1) != 0;
                if ((b & 8) != 0) {
                    s = (short) (this.f12262b.readByte() & 255);
                }
                int i3 = i;
                if ((b & 32) != 0) {
                    m1104F(aVar, i2);
                    i3 = i - 5;
                }
                aVar.mo1185h(false, z, i2, -1, m1096x(C2892g.m1112l(i3, b, s), s, b, i2), HeadersMode.HTTP_20_HEADERS);
                return;
            }
            C2892g.m1119e("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            throw null;
        }

        /* renamed from: C */
        private void m1105C(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            boolean z = false;
            if (i != 8) {
                C2892g.m1119e("TYPE_PING length != 8: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 == 0) {
                int readInt = this.f12262b.readInt();
                int readInt2 = this.f12262b.readInt();
                if ((b & 1) != 0) {
                    z = true;
                }
                aVar.ping(z, readInt, readInt2);
            } else {
                C2892g.m1119e("TYPE_PING streamId != 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: F */
        private void m1104F(AbstractC2868a.AbstractC2869a aVar, int i) {
            int readInt = this.f12262b.readInt();
            aVar.priority(i, readInt & Integer.MAX_VALUE, (this.f12262b.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
        }

        /* renamed from: K */
        private void m1103K(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            if (i != 5) {
                C2892g.m1119e("TYPE_PRIORITY length: %d != 5", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 != 0) {
                m1104F(aVar, i2);
            } else {
                C2892g.m1119e("TYPE_PRIORITY streamId == 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: O */
        private void m1102O(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            short s = 0;
            if (i2 != 0) {
                if ((b & 8) != 0) {
                    s = (short) (this.f12262b.readByte() & 255);
                }
                aVar.pushPromise(i2, this.f12262b.readInt() & Integer.MAX_VALUE, m1096x(C2892g.m1112l(i - 4, b, s), s, b, i2));
                return;
            }
            C2892g.m1119e("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }

        /* renamed from: U */
        private void m1101U(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            if (i != 4) {
                C2892g.m1119e("TYPE_RST_STREAM length: %d != 4", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 != 0) {
                int readInt = this.f12262b.readInt();
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
                if (fromHttp2 != null) {
                    aVar.mo1187f(i2, fromHttp2);
                } else {
                    C2892g.m1119e("TYPE_RST_STREAM unexpected error code: %d", new Object[]{Integer.valueOf(readInt)});
                    throw null;
                }
            } else {
                C2892g.m1119e("TYPE_RST_STREAM streamId == 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: V */
        private void m1100V(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            if (i2 != 0) {
                C2892g.m1119e("TYPE_SETTINGS streamId != 0", new Object[0]);
                throw null;
            } else if ((b & 1) != 0) {
                if (i == 0) {
                    aVar.ackSettings();
                } else {
                    C2892g.m1119e("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                    throw null;
                }
            } else if (i % 6 == 0) {
                C2907m mVar = new C2907m();
                for (int i3 = 0; i3 < i; i3 += 6) {
                    short readShort = this.f12262b.readShort();
                    int readInt = this.f12262b.readInt();
                    short s = readShort;
                    switch (readShort) {
                        case 1:
                        case 6:
                            break;
                        case 2:
                            s = readShort;
                            if (readInt == 0) {
                                continue;
                            } else if (readInt == 1) {
                                s = readShort;
                                break;
                            } else {
                                C2892g.m1119e("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                throw null;
                            }
                        case 3:
                            s = 4;
                            break;
                        case 4:
                            s = 7;
                            if (readInt >= 0) {
                                break;
                            } else {
                                C2892g.m1119e("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                throw null;
                            }
                        case 5:
                            if (readInt >= 16384 && readInt <= 16777215) {
                                s = readShort;
                                break;
                            } else {
                                C2892g.m1119e("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[]{Integer.valueOf(readInt)});
                                throw null;
                            }
                            break;
                        default:
                            C2892g.m1119e("PROTOCOL_ERROR invalid settings id: %s", new Object[]{Short.valueOf(readShort)});
                            throw null;
                    }
                    mVar.m1063k(s, 0, readInt);
                }
                aVar.mo1186g(false, mVar);
                if (mVar.m1070d() >= 0) {
                    this.f12265e.m1136g(mVar.m1070d());
                }
            } else {
                C2892g.m1119e("TYPE_SETTINGS length %% 6 != 0: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
        }

        /* renamed from: W */
        private void m1099W(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            if (i == 4) {
                long readInt = this.f12262b.readInt() & 2147483647L;
                if (readInt != 0) {
                    aVar.windowUpdate(i2, readInt);
                } else {
                    C2892g.m1119e("windowSizeIncrement was 0", new Object[]{Long.valueOf(readInt)});
                    throw null;
                }
            } else {
                C2892g.m1119e("TYPE_WINDOW_UPDATE length !=4: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
        }

        /* renamed from: a */
        private void m1098a(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            boolean z = true;
            short s = 0;
            boolean z2 = (b & 1) != 0;
            if ((b & 32) == 0) {
                z = false;
            }
            if (!z) {
                if ((b & 8) != 0) {
                    s = (short) (this.f12262b.readByte() & 255);
                }
                aVar.data(z2, i2, this.f12262b, C2892g.m1112l(i, b, s));
                this.f12262b.skip(s);
                return;
            }
            C2892g.m1119e("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }

        /* renamed from: p */
        private void m1097p(AbstractC2868a.AbstractC2869a aVar, int i, byte b, int i2) {
            if (i < 8) {
                C2892g.m1119e("TYPE_GOAWAY length < 8: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 == 0) {
                int readInt = this.f12262b.readInt();
                int readInt2 = this.f12262b.readInt();
                int i3 = i - 8;
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
                if (fromHttp2 != null) {
                    ByteString byteString = ByteString.EMPTY;
                    if (i3 > 0) {
                        byteString = this.f12262b.readByteString(i3);
                    }
                    aVar.mo1184i(readInt, fromHttp2, byteString);
                    return;
                }
                C2892g.m1119e("TYPE_GOAWAY unexpected error code: %d", new Object[]{Integer.valueOf(readInt2)});
                throw null;
            } else {
                C2892g.m1119e("TYPE_GOAWAY streamId != 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: x */
        private List<C2888e> m1096x(int i, short s, byte b, int i2) {
            C2893a aVar = this.f12263c;
            aVar.f12257f = i;
            aVar.f12254c = i;
            aVar.f12258g = s;
            aVar.f12255d = b;
            aVar.f12256e = i2;
            this.f12265e.m1131l();
            return this.f12265e.m1138e();
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a
        /* renamed from: P */
        public boolean mo1056P(AbstractC2868a.AbstractC2869a aVar) {
            try {
                this.f12262b.require(9L);
                int m = C2892g.m1111m(this.f12262b);
                if (m < 0 || m > 16384) {
                    C2892g.m1119e("FRAME_SIZE_ERROR: %s", new Object[]{Integer.valueOf(m)});
                    throw null;
                }
                byte readByte = (byte) (this.f12262b.readByte() & 255);
                byte readByte2 = (byte) (this.f12262b.readByte() & 255);
                int readInt = this.f12262b.readInt() & Integer.MAX_VALUE;
                if (C2892g.f12251a.isLoggable(Level.FINE)) {
                    C2892g.f12251a.fine(C2894b.m1107b(true, readInt, m, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        m1098a(aVar, m, readByte2, readInt);
                        return true;
                    case 1:
                        m1106B(aVar, m, readByte2, readInt);
                        return true;
                    case 2:
                        m1103K(aVar, m, readByte2, readInt);
                        return true;
                    case 3:
                        m1101U(aVar, m, readByte2, readInt);
                        return true;
                    case 4:
                        m1100V(aVar, m, readByte2, readInt);
                        return true;
                    case 5:
                        m1102O(aVar, m, readByte2, readInt);
                        return true;
                    case 6:
                        m1105C(aVar, m, readByte2, readInt);
                        return true;
                    case 7:
                        m1097p(aVar, m, readByte2, readInt);
                        return true;
                    case 8:
                        m1099W(aVar, m, readByte2, readInt);
                        return true;
                    default:
                        this.f12262b.skip(m);
                        return true;
                }
            } catch (IOException e) {
                return false;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f12262b.close();
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a
        /* renamed from: q */
        public void mo1052q() {
            if (!this.f12264d) {
                ByteString readByteString = this.f12262b.readByteString(C2892g.f12252b.size());
                if (C2892g.f12251a.isLoggable(Level.FINE)) {
                    C2892g.f12251a.fine(String.format("<< CONNECTION %s", readByteString.hex()));
                }
                if (!C2892g.f12252b.equals(readByteString)) {
                    C2892g.m1119e("Expected a connection header but was %s", new Object[]{readByteString.utf8()});
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.g$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/g$d.class */
    static final class C2896d implements AbstractC2870b {

        /* renamed from: b */
        private final BufferedSink f12266b;

        /* renamed from: c */
        private final boolean f12267c;

        /* renamed from: d */
        private final Buffer f12268d;

        /* renamed from: e */
        private final C2889f.C2891b f12269e;

        /* renamed from: f */
        private int f12270f = 16384;

        /* renamed from: g */
        private boolean f12271g;

        C2896d(BufferedSink bufferedSink, boolean z) {
            this.f12266b = bufferedSink;
            this.f12267c = z;
            Buffer buffer = new Buffer();
            this.f12268d = buffer;
            this.f12269e = new C2889f.C2891b(buffer);
        }

        /* renamed from: B */
        private void m1095B(int i, long j) {
            while (j > 0) {
                int min = (int) Math.min(this.f12270f, j);
                long j2 = min;
                j -= j2;
                m1093p(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
                this.f12266b.write(this.f12268d, j2);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: Q */
        public void mo1050Q(boolean z, boolean z2, int i, int i2, List<C2888e> list) {
            synchronized (this) {
                if (z2) {
                    throw new UnsupportedOperationException();
                } else if (!this.f12271g) {
                    m1092x(z, i, list);
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: S */
        public void mo1049S(C2907m mVar) {
            synchronized (this) {
                if (!this.f12271g) {
                    int i = 0;
                    m1093p(0, mVar.m1062l() * 6, (byte) 4, (byte) 0);
                    while (i < 10) {
                        if (mVar.m1066h(i)) {
                            this.f12266b.writeShort(i == 4 ? 3 : i == 7 ? 4 : i);
                            this.f12266b.writeInt(mVar.m1071c(i));
                        }
                        i++;
                    }
                    this.f12266b.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        /* renamed from: a */
        void m1094a(int i, byte b, Buffer buffer, int i2) {
            m1093p(i, i2, (byte) 0, b);
            if (i2 > 0) {
                this.f12266b.write(buffer, i2);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                this.f12271g = true;
                this.f12266b.close();
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void connectionPreface() {
            synchronized (this) {
                if (this.f12271g) {
                    throw new IOException("closed");
                } else if (this.f12267c) {
                    if (C2892g.f12251a.isLoggable(Level.FINE)) {
                        C2892g.f12251a.fine(String.format(">> CONNECTION %s", C2892g.f12252b.hex()));
                    }
                    this.f12266b.write(C2892g.f12252b.toByteArray());
                    this.f12266b.flush();
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void data(boolean z, int i, Buffer buffer, int i2) {
            synchronized (this) {
                if (!this.f12271g) {
                    byte b = 0;
                    if (z) {
                        b = (byte) 1;
                    }
                    m1094a(i, b, buffer, i2);
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: f */
        public void mo1047f(int i, ErrorCode errorCode) {
            synchronized (this) {
                if (this.f12271g) {
                    throw new IOException("closed");
                } else if (errorCode.httpCode != -1) {
                    m1093p(i, 4, (byte) 3, (byte) 0);
                    this.f12266b.writeInt(errorCode.httpCode);
                    this.f12266b.flush();
                } else {
                    throw new IllegalArgumentException();
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void flush() {
            synchronized (this) {
                if (!this.f12271g) {
                    this.f12266b.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: k */
        public void mo1046k(C2907m mVar) {
            synchronized (this) {
                if (!this.f12271g) {
                    this.f12270f = mVar.m1068f(this.f12270f);
                    m1093p(0, 0, (byte) 4, (byte) 1);
                    this.f12266b.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public int maxDataLength() {
            return this.f12270f;
        }

        /* renamed from: p */
        void m1093p(int i, int i2, byte b, byte b2) {
            if (C2892g.f12251a.isLoggable(Level.FINE)) {
                C2892g.f12251a.fine(C2894b.m1107b(false, i, i2, b, b2));
            }
            int i3 = this.f12270f;
            if (i2 > i3) {
                C2892g.m1116h("FRAME_SIZE_ERROR length > %d: %d", new Object[]{Integer.valueOf(i3), Integer.valueOf(i2)});
                throw null;
            } else if ((Integer.MIN_VALUE & i) == 0) {
                C2892g.m1110n(this.f12266b, i2);
                this.f12266b.writeByte(b & 255);
                this.f12266b.writeByte(b2 & 255);
                this.f12266b.writeInt(i & Integer.MAX_VALUE);
            } else {
                C2892g.m1116h("reserved bit set: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void ping(boolean z, int i, int i2) {
            synchronized (this) {
                if (!this.f12271g) {
                    m1093p(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
                    this.f12266b.writeInt(i);
                    this.f12266b.writeInt(i2);
                    this.f12266b.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void pushPromise(int i, int i2, List<C2888e> list) {
            synchronized (this) {
                if (!this.f12271g) {
                    this.f12269e.m1123b(list);
                    long size = this.f12268d.size();
                    int min = (int) Math.min(this.f12270f - 4, size);
                    long j = min;
                    m1093p(i, min + 4, (byte) 5, size == j ? (byte) 4 : (byte) 0);
                    this.f12266b.writeInt(i2 & Integer.MAX_VALUE);
                    this.f12266b.write(this.f12268d, j);
                    if (size > j) {
                        m1095B(i, size - j);
                    }
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: t */
        public void mo1044t(int i, ErrorCode errorCode, byte[] bArr) {
            synchronized (this) {
                if (this.f12271g) {
                    throw new IOException("closed");
                } else if (errorCode.httpCode != -1) {
                    m1093p(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.f12266b.writeInt(i);
                    this.f12266b.writeInt(errorCode.httpCode);
                    if (bArr.length > 0) {
                        this.f12266b.write(bArr);
                    }
                    this.f12266b.flush();
                } else {
                    C2892g.m1116h("errorCode.httpCode == -1", new Object[0]);
                    throw null;
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void windowUpdate(int i, long j) {
            synchronized (this) {
                if (this.f12271g) {
                    throw new IOException("closed");
                } else if (j == 0 || j > 2147483647L) {
                    C2892g.m1116h("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[]{Long.valueOf(j)});
                    throw null;
                } else {
                    m1093p(i, 4, (byte) 8, (byte) 0);
                    this.f12266b.writeInt((int) j);
                    this.f12266b.flush();
                }
            }
        }

        /* renamed from: x */
        void m1092x(boolean z, int i, List<C2888e> list) {
            if (!this.f12271g) {
                this.f12269e.m1123b(list);
                long size = this.f12268d.size();
                int min = (int) Math.min(this.f12270f, size);
                long j = min;
                byte b = size == j ? (byte) 4 : (byte) 0;
                byte b2 = b;
                if (z) {
                    b2 = (byte) (b | 1);
                }
                m1093p(i, min, (byte) 1, b2);
                this.f12266b.write(this.f12268d, j);
                if (size > j) {
                    m1095B(i, size - j);
                    return;
                }
                return;
            }
            throw new IOException("closed");
        }
    }

    /* renamed from: e */
    static /* synthetic */ IOException m1119e(String str, Object[] objArr) {
        m1113k(str, objArr);
        throw null;
    }

    /* renamed from: h */
    static /* synthetic */ IllegalArgumentException m1116h(String str, Object[] objArr) {
        m1114j(str, objArr);
        throw null;
    }

    /* renamed from: j */
    private static IllegalArgumentException m1114j(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* renamed from: k */
    private static IOException m1113k(String str, Object... objArr) {
        throw new IOException(String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static int m1112l(int i, byte b, short s) {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        m1113k("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public static int m1111m(BufferedSource bufferedSource) {
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public static void m1110n(BufferedSink bufferedSink, int i) {
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    @Override // com.squareup.okhttp.internal.framed.AbstractC2911o
    /* renamed from: a */
    public AbstractC2868a mo1043a(BufferedSource bufferedSource, boolean z) {
        return new C2895c(bufferedSource, 4096, z);
    }

    @Override // com.squareup.okhttp.internal.framed.AbstractC2911o
    /* renamed from: b */
    public AbstractC2870b mo1042b(BufferedSink bufferedSink, boolean z) {
        return new C2896d(bufferedSink, z);
    }
}
