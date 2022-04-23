package p530d.p531a.p533w0.p534o.p535f;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.okhttp.internal.framed.HeadersMode;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.ByteString;
import p530d.p531a.p533w0.p534o.p535f.AbstractC9598a;
import p530d.p531a.p533w0.p534o.p535f.C9602d;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10282r;
/* renamed from: d.a.w0.o.f.e */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/e.class */
public final class C9605e implements AbstractC9613h {

    /* renamed from: a */
    public static final Logger f36658a = Logger.getLogger(C9607b.class.getName());

    /* renamed from: b */
    public static final ByteString f36659b = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: d.a.w0.o.f.e$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/e$a.class */
    public static final class C9606a implements AbstractC10281q {

        /* renamed from: a */
        public final AbstractC10264e f36660a;

        /* renamed from: b */
        public int f36661b;

        /* renamed from: c */
        public byte f36662c;

        /* renamed from: d */
        public int f36663d;

        /* renamed from: e */
        public int f36664e;

        /* renamed from: f */
        public short f36665f;

        public C9606a(AbstractC10264e eVar) {
            this.f36660a = eVar;
        }

        /* renamed from: a */
        public final void m2226a() throws IOException {
            int i = this.f36663d;
            int b = C9605e.m2230b(this.f36660a);
            this.f36664e = b;
            this.f36661b = b;
            byte readByte = (byte) (this.f36660a.readByte() & 255);
            this.f36662c = (byte) (this.f36660a.readByte() & 255);
            if (C9605e.f36658a.isLoggable(Level.FINE)) {
                C9605e.f36658a.fine(C9607b.m2224a(true, this.f36663d, this.f36661b, readByte, this.f36662c));
            }
            int readInt = this.f36660a.readInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f36663d = readInt;
            if (readByte != 9) {
                C9605e.m2234a("%s != TYPE_CONTINUATION", new Object[]{Byte.valueOf(readByte)});
                throw null;
            } else if (readInt != i) {
                C9605e.m2234a("TYPE_CONTINUATION streamId changed", new Object[0]);
                throw null;
            }
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            while (true) {
                int i = this.f36664e;
                if (i == 0) {
                    this.f36660a.skip(this.f36665f);
                    this.f36665f = (short) 0;
                    if ((this.f36662c & 4) != 0) {
                        return -1L;
                    }
                    m2226a();
                } else {
                    long b = this.f36660a.mo704b(cVar, Math.min(j, i));
                    if (b == -1) {
                        return -1L;
                    }
                    this.f36664e -= (int) b;
                    return b;
                }
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: f0 */
        public C10282r mo703f0() {
            return this.f36660a.mo703f0();
        }
    }

    /* renamed from: d.a.w0.o.f.e$b */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/e$b.class */
    public static final class C9607b {

        /* renamed from: a */
        public static final String[] f36666a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* renamed from: b */
        public static final String[] f36667b = new String[64];

        /* renamed from: c */
        public static final String[] f36668c = new String[256];

        static {
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = f36668c;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = String.format("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
                i2++;
            }
            String[] strArr2 = f36667b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            for (int i3 = 0; i3 < 1; i3++) {
                int i4 = iArr[i3];
                f36667b[i4 | 8] = f36667b[i4] + "|PADDED";
            }
            String[] strArr3 = f36667b;
            strArr3[4] = "END_HEADERS";
            strArr3[32] = "PRIORITY";
            strArr3[36] = "END_HEADERS|PRIORITY";
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = new int[]{4, 32, 36}[i5];
                for (int i7 = 0; i7 < 1; i7++) {
                    int i8 = iArr[i7];
                    int i9 = i8 | i6;
                    f36667b[i9] = f36667b[i8] + '|' + f36667b[i6];
                    f36667b[i9 | 8] = f36667b[i8] + '|' + f36667b[i6] + "|PADDED";
                }
            }
            while (true) {
                String[] strArr4 = f36667b;
                if (i < strArr4.length) {
                    if (strArr4[i] == null) {
                        strArr4[i] = f36668c[i];
                    }
                    i++;
                } else {
                    return;
                }
            }
        }

        /* renamed from: a */
        public static String m2225a(byte b, byte b2) {
            if (b2 == 0) {
                return "";
            }
            if (!(b == 2 || b == 3)) {
                if (b == 4 || b == 6) {
                    return b2 == 1 ? "ACK" : f36668c[b2];
                } else if (!(b == 7 || b == 8)) {
                    String[] strArr = f36667b;
                    String str = b2 < strArr.length ? strArr[b2] : f36668c[b2];
                    return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f36668c[b2];
        }

        /* renamed from: a */
        public static String m2224a(boolean z, int i, int i2, byte b, byte b2) {
            String[] strArr = f36666a;
            return String.format("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b < strArr.length ? strArr[b] : String.format("0x%02x", Byte.valueOf(b)), m2225a(b, b2));
        }
    }

    /* renamed from: d.a.w0.o.f.e$c */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/e$c.class */
    public static final class C9608c implements AbstractC9598a {

        /* renamed from: a */
        public final AbstractC10264e f36669a;

        /* renamed from: b */
        public final C9606a f36670b;

        /* renamed from: c */
        public final C9602d.C9603a f36671c;

        public C9608c(AbstractC10264e eVar, int i, boolean z) {
            this.f36669a = eVar;
            C9606a aVar = new C9606a(eVar);
            this.f36670b = aVar;
            this.f36671c = new C9602d.C9603a(i, aVar);
        }

        /* renamed from: a */
        public final List<C9601c> m2223a(int i, short s, byte b, int i2) throws IOException {
            C9606a aVar = this.f36670b;
            aVar.f36664e = i;
            aVar.f36661b = i;
            aVar.f36665f = s;
            aVar.f36662c = b;
            aVar.f36663d = i2;
            this.f36671c.m2250f();
            return this.f36671c.m2256c();
        }

        /* renamed from: a */
        public final void m2221a(AbstractC9598a.AbstractC9599a aVar, int i) throws IOException {
            int readInt = this.f36669a.readInt();
            aVar.mo2277a(i, readInt & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, (this.f36669a.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
        }

        /* renamed from: a */
        public final void m2220a(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            boolean z = true;
            short s = 0;
            boolean z2 = (b & 1) != 0;
            if ((b & 32) == 0) {
                z = false;
            }
            if (!z) {
                if ((b & 8) != 0) {
                    s = (short) (this.f36669a.readByte() & 255);
                }
                aVar.mo2271a(z2, i2, this.f36669a, C9605e.m2232b(i, b, s));
                this.f36669a.skip(s);
                return;
            }
            C9605e.m2234a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a
        /* renamed from: a */
        public boolean mo2222a(AbstractC9598a.AbstractC9599a aVar) throws IOException {
            try {
                this.f36669a.mo715g(9L);
                int b = C9605e.m2230b(this.f36669a);
                if (b < 0 || b > 16384) {
                    C9605e.m2234a("FRAME_SIZE_ERROR: %s", new Object[]{Integer.valueOf(b)});
                    throw null;
                }
                byte readByte = (byte) (this.f36669a.readByte() & 255);
                byte readByte2 = (byte) (this.f36669a.readByte() & 255);
                int readInt = this.f36669a.readInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                if (C9605e.f36658a.isLoggable(Level.FINE)) {
                    C9605e.f36658a.fine(C9607b.m2224a(true, readInt, b, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        m2220a(aVar, b, readByte2, readInt);
                        return true;
                    case 1:
                        m2218c(aVar, b, readByte2, readInt);
                        return true;
                    case 2:
                        m2216e(aVar, b, readByte2, readInt);
                        return true;
                    case 3:
                        m2214g(aVar, b, readByte2, readInt);
                        return true;
                    case 4:
                        m2213h(aVar, b, readByte2, readInt);
                        return true;
                    case 5:
                        m2215f(aVar, b, readByte2, readInt);
                        return true;
                    case 6:
                        m2217d(aVar, b, readByte2, readInt);
                        return true;
                    case 7:
                        m2219b(aVar, b, readByte2, readInt);
                        return true;
                    case 8:
                        m2212i(aVar, b, readByte2, readInt);
                        return true;
                    default:
                        this.f36669a.skip(b);
                        return true;
                }
            } catch (IOException e) {
                return false;
            }
        }

        /* renamed from: b */
        public final void m2219b(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            if (i < 8) {
                C9605e.m2234a("TYPE_GOAWAY length < 8: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 == 0) {
                int readInt = this.f36669a.readInt();
                int readInt2 = this.f36669a.readInt();
                int i3 = i - 8;
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
                if (fromHttp2 != null) {
                    ByteString byteString = ByteString.EMPTY;
                    if (i3 > 0) {
                        byteString = this.f36669a.mo725a(i3);
                    }
                    aVar.mo2273a(readInt, fromHttp2, byteString);
                    return;
                }
                C9605e.m2234a("TYPE_GOAWAY unexpected error code: %d", new Object[]{Integer.valueOf(readInt2)});
                throw null;
            } else {
                C9605e.m2234a("TYPE_GOAWAY streamId != 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: c */
        public final void m2218c(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            short s = 0;
            if (i2 != 0) {
                boolean z = (b & 1) != 0;
                if ((b & 8) != 0) {
                    s = (short) (this.f36669a.readByte() & 255);
                }
                int i3 = i;
                if ((b & 32) != 0) {
                    m2221a(aVar, i2);
                    i3 = i - 5;
                }
                aVar.mo2269a(false, z, i2, -1, m2223a(C9605e.m2232b(i3, b, s), s, b, i2), HeadersMode.HTTP_20_HEADERS);
                return;
            }
            C9605e.m2234a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            throw null;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f36669a.close();
        }

        /* renamed from: d */
        public final void m2217d(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            boolean z = false;
            if (i != 8) {
                C9605e.m2234a("TYPE_PING length != 8: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 == 0) {
                int readInt = this.f36669a.readInt();
                int readInt2 = this.f36669a.readInt();
                if ((b & 1) != 0) {
                    z = true;
                }
                aVar.mo2272a(z, readInt, readInt2);
            } else {
                C9605e.m2234a("TYPE_PING streamId != 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: e */
        public final void m2216e(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            if (i != 5) {
                C9605e.m2234a("TYPE_PRIORITY length: %d != 5", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 != 0) {
                m2221a(aVar, i2);
            } else {
                C9605e.m2234a("TYPE_PRIORITY streamId == 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: f */
        public final void m2215f(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            short s = 0;
            if (i2 != 0) {
                if ((b & 8) != 0) {
                    s = (short) (this.f36669a.readByte() & 255);
                }
                aVar.mo2276a(i2, this.f36669a.readInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, m2223a(C9605e.m2232b(i - 4, b, s), s, b, i2));
                return;
            }
            C9605e.m2234a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }

        /* renamed from: g */
        public final void m2214g(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            if (i != 4) {
                C9605e.m2234a("TYPE_RST_STREAM length: %d != 4", new Object[]{Integer.valueOf(i)});
                throw null;
            } else if (i2 != 0) {
                int readInt = this.f36669a.readInt();
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
                if (fromHttp2 != null) {
                    aVar.mo2274a(i2, fromHttp2);
                } else {
                    C9605e.m2234a("TYPE_RST_STREAM unexpected error code: %d", new Object[]{Integer.valueOf(readInt)});
                    throw null;
                }
            } else {
                C9605e.m2234a("TYPE_RST_STREAM streamId == 0", new Object[0]);
                throw null;
            }
        }

        /* renamed from: h */
        public final void m2213h(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            if (i2 != 0) {
                C9605e.m2234a("TYPE_SETTINGS streamId != 0", new Object[0]);
                throw null;
            } else if ((b & 1) != 0) {
                if (i == 0) {
                    aVar.mo2278a();
                } else {
                    C9605e.m2234a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                    throw null;
                }
            } else if (i % 6 == 0) {
                C9612g gVar = new C9612g();
                for (int i3 = 0; i3 < i; i3 += 6) {
                    short readShort = this.f36669a.readShort();
                    int readInt = this.f36669a.readInt();
                    short s = readShort;
                    switch (readShort) {
                        case 1:
                        case 6:
                            break;
                        case 2:
                            s = readShort;
                            if (readInt != 0) {
                                if (readInt == 1) {
                                    s = readShort;
                                    break;
                                } else {
                                    C9605e.m2234a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                    throw null;
                                }
                            }
                            break;
                        case 3:
                            s = 4;
                            break;
                        case 4:
                            s = 7;
                            if (readInt < 0) {
                                C9605e.m2234a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                throw null;
                            }
                            break;
                        case 5:
                            if (readInt >= 16384 && readInt <= 16777215) {
                                s = readShort;
                                break;
                            } else {
                                C9605e.m2234a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[]{Integer.valueOf(readInt)});
                                throw null;
                            }
                            break;
                        default:
                    }
                    gVar.m2186a(s, 0, readInt);
                }
                aVar.mo2270a(false, gVar);
                if (gVar.m2188a() >= 0) {
                    this.f36671c.m2253d(gVar.m2188a());
                }
            } else {
                C9605e.m2234a("TYPE_SETTINGS length %% 6 != 0: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
        }

        /* renamed from: i */
        public final void m2212i(AbstractC9598a.AbstractC9599a aVar, int i, byte b, int i2) throws IOException {
            if (i == 4) {
                long readInt = this.f36669a.readInt() & 2147483647L;
                if (readInt != 0) {
                    aVar.mo2275a(i2, readInt);
                } else {
                    C9605e.m2234a("windowSizeIncrement was 0", new Object[0]);
                    throw null;
                }
            } else {
                C9605e.m2234a("TYPE_WINDOW_UPDATE length !=4: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
        }
    }

    /* renamed from: d.a.w0.o.f.e$d */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/e$d.class */
    public static final class C9609d implements AbstractC9600b {

        /* renamed from: a */
        public final AbstractC10263d f36672a;

        /* renamed from: b */
        public final boolean f36673b;

        /* renamed from: c */
        public final C10260c f36674c;

        /* renamed from: d */
        public final C9602d.C9604b f36675d;

        /* renamed from: e */
        public int f36676e = 16384;

        /* renamed from: f */
        public boolean f36677f;

        public C9609d(AbstractC10263d dVar, boolean z) {
            this.f36672a = dVar;
            this.f36673b = z;
            C10260c cVar = new C10260c();
            this.f36674c = cVar;
            this.f36675d = new C9602d.C9604b(cVar);
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: P0 */
        public void mo2211P0() throws IOException {
            synchronized (this) {
                if (this.f36677f) {
                    throw new IOException("closed");
                } else if (this.f36673b) {
                    if (C9605e.f36658a.isLoggable(Level.FINE)) {
                        C9605e.f36658a.fine(String.format(">> CONNECTION %s", C9605e.f36659b.hex()));
                    }
                    this.f36672a.write(C9605e.f36659b.toByteArray());
                    this.f36672a.flush();
                }
            }
        }

        /* renamed from: a */
        public void m2210a(int i, byte b, C10260c cVar, int i2) throws IOException {
            m2209a(i, i2, (byte) 0, b);
            if (i2 > 0) {
                this.f36672a.mo706a(cVar, i2);
            }
        }

        /* renamed from: a */
        public void m2209a(int i, int i2, byte b, byte b2) throws IOException {
            if (C9605e.f36658a.isLoggable(Level.FINE)) {
                C9605e.f36658a.fine(C9607b.m2224a(false, i, i2, b, b2));
            }
            int i3 = this.f36676e;
            if (i2 > i3) {
                C9605e.m2229b("FRAME_SIZE_ERROR length > %d: %d", new Object[]{Integer.valueOf(i3), Integer.valueOf(i2)});
                throw null;
            } else if ((Integer.MIN_VALUE & i) == 0) {
                C9605e.m2231b(this.f36672a, i2);
                this.f36672a.writeByte(b & 255);
                this.f36672a.writeByte(b2 & 255);
                this.f36672a.writeInt(i & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
            } else {
                C9605e.m2229b("reserved bit set: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a */
        public void mo2208a(int i, long j) throws IOException {
            synchronized (this) {
                if (this.f36677f) {
                    throw new IOException("closed");
                } else if (j == 0 || j > 2147483647L) {
                    C9605e.m2229b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[]{Long.valueOf(j)});
                    throw null;
                } else {
                    m2209a(i, 4, (byte) 8, (byte) 0);
                    this.f36672a.writeInt((int) j);
                    this.f36672a.flush();
                }
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a */
        public void mo2207a(int i, ErrorCode errorCode) throws IOException {
            synchronized (this) {
                if (this.f36677f) {
                    throw new IOException("closed");
                } else if (errorCode.httpCode != -1) {
                    m2209a(i, 4, (byte) 3, (byte) 0);
                    this.f36672a.writeInt(errorCode.httpCode);
                    this.f36672a.flush();
                } else {
                    throw new IllegalArgumentException();
                }
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a */
        public void mo2206a(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            synchronized (this) {
                if (this.f36677f) {
                    throw new IOException("closed");
                } else if (errorCode.httpCode != -1) {
                    m2209a(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.f36672a.writeInt(i);
                    this.f36672a.writeInt(errorCode.httpCode);
                    if (bArr.length > 0) {
                        this.f36672a.write(bArr);
                    }
                    this.f36672a.flush();
                } else {
                    C9605e.m2229b("errorCode.httpCode == -1", new Object[0]);
                    throw null;
                }
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a */
        public void mo2205a(C9612g gVar) throws IOException {
            synchronized (this) {
                if (!this.f36677f) {
                    this.f36676e = gVar.m2184b(this.f36676e);
                    m2209a(0, 0, (byte) 4, (byte) 1);
                    this.f36672a.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a */
        public void mo2204a(boolean z, int i, int i2) throws IOException {
            synchronized (this) {
                if (!this.f36677f) {
                    m2209a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
                    this.f36672a.writeInt(i);
                    this.f36672a.writeInt(i2);
                    this.f36672a.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a */
        public void mo2203a(boolean z, int i, C10260c cVar, int i2) throws IOException {
            synchronized (this) {
                if (!this.f36677f) {
                    byte b = 0;
                    if (z) {
                        b = (byte) 1;
                    }
                    m2210a(i, b, cVar, i2);
                } else {
                    throw new IOException("closed");
                }
            }
        }

        /* renamed from: a */
        public void m2202a(boolean z, int i, List<C9601c> list) throws IOException {
            if (!this.f36677f) {
                this.f36675d.m2240a(list);
                long size = this.f36674c.size();
                int min = (int) Math.min(this.f36676e, size);
                long j = min;
                byte b = size == j ? (byte) 4 : (byte) 0;
                byte b2 = b;
                if (z) {
                    b2 = (byte) (b | 1);
                }
                m2209a(i, min, (byte) 1, b2);
                this.f36672a.mo706a(this.f36674c, j);
                if (size > j) {
                    m2199b(i, size - j);
                    return;
                }
                return;
            }
            throw new IOException("closed");
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a */
        public void mo2201a(boolean z, boolean z2, int i, int i2, List<C9601c> list) throws IOException {
            synchronized (this) {
                if (z2) {
                    throw new UnsupportedOperationException();
                } else if (!this.f36677f) {
                    m2202a(z, i, list);
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: a2 */
        public int mo2200a2() {
            return this.f36676e;
        }

        /* renamed from: b */
        public final void m2199b(int i, long j) throws IOException {
            while (j > 0) {
                int min = (int) Math.min(this.f36676e, j);
                long j2 = min;
                j -= j2;
                m2209a(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
                this.f36672a.mo706a(this.f36674c, j2);
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        /* renamed from: b */
        public void mo2198b(C9612g gVar) throws IOException {
            synchronized (this) {
                if (!this.f36677f) {
                    int i = 0;
                    m2209a(0, gVar.m2185b() * 6, (byte) 4, (byte) 0);
                    while (i < 10) {
                        if (gVar.m2183c(i)) {
                            this.f36672a.writeShort(i == 4 ? 3 : i == 7 ? 4 : i);
                            this.f36672a.writeInt(gVar.m2187a(i));
                        }
                        i++;
                    }
                    this.f36672a.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this) {
                this.f36677f = true;
                this.f36672a.close();
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
        public void flush() throws IOException {
            synchronized (this) {
                if (!this.f36677f) {
                    this.f36672a.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ IOException m2234a(String str, Object[] objArr) throws IOException {
        m2227d(str, objArr);
        throw null;
    }

    /* renamed from: b */
    public static int m2232b(int i, byte b, short s) throws IOException {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        m2227d("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }

    /* renamed from: b */
    public static int m2230b(AbstractC10264e eVar) throws IOException {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    /* renamed from: b */
    public static /* synthetic */ IllegalArgumentException m2229b(String str, Object[] objArr) {
        m2228c(str, objArr);
        throw null;
    }

    /* renamed from: b */
    public static void m2231b(AbstractC10263d dVar, int i) throws IOException {
        dVar.writeByte((i >>> 16) & 255);
        dVar.writeByte((i >>> 8) & 255);
        dVar.writeByte(i & 255);
    }

    /* renamed from: c */
    public static IllegalArgumentException m2228c(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* renamed from: d */
    public static IOException m2227d(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9613h
    /* renamed from: a */
    public AbstractC9598a mo2181a(AbstractC10264e eVar, boolean z) {
        return new C9608c(eVar, 4096, z);
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9613h
    /* renamed from: a */
    public AbstractC9600b mo2182a(AbstractC10263d dVar, boolean z) {
        return new C9609d(dVar, z);
    }
}
