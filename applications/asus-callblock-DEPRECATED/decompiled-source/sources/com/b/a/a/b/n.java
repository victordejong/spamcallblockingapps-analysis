package com.b.a.a.b;

import b.c;
import b.d;
import b.e;
import b.f;
import b.g;
import b.k;
import b.p;
import com.b.a.a.b.b;
import com.b.a.a.h;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.List;
import java.util.zip.Deflater;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/n.class */
public final class n implements q {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f3259a;

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/n$a.class */
    static final class a implements com.b.a.a.b.b {

        /* renamed from: a  reason: collision with root package name */
        private final e f3260a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f3261b;
        private final j c;

        a(e eVar, boolean z) {
            this.f3260a = eVar;
            this.c = new j(this.f3260a);
            this.f3261b = z;
        }

        private static IOException a(String str, Object... objArr) {
            throw new IOException(String.format(str, objArr));
        }

        private void a(b.a aVar, int i, int i2) {
            boolean z = true;
            int g = this.f3260a.g();
            if (i2 != (g * 8) + 4) {
                throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i2), Integer.valueOf(g));
            }
            m mVar = new m();
            for (int i3 = 0; i3 < g; i3++) {
                int g2 = this.f3260a.g();
                mVar.a(g2 & 16777215, ((-16777216) & g2) >>> 24, this.f3260a.g());
            }
            if ((i & 1) == 0) {
                z = false;
            }
            aVar.a(z, mVar);
        }

        @Override // com.b.a.a.b.b
        public final void a() {
        }

        @Override // com.b.a.a.b.b
        public final boolean a(b.a aVar) {
            boolean z;
            boolean z2 = false;
            boolean z3 = false;
            try {
                int g = this.f3260a.g();
                int g2 = this.f3260a.g();
                boolean z4 = (Integer.MIN_VALUE & g) != 0;
                int i = ((-16777216) & g2) >>> 24;
                int i2 = 16777215 & g2;
                if (z4) {
                    int i3 = (2147418112 & g) >>> 16;
                    if (i3 == 3) {
                        switch (g & 65535) {
                            case 1:
                                int g3 = this.f3260a.g();
                                this.f3260a.g();
                                this.f3260a.f();
                                List<d> a2 = this.c.a(i2 - 10);
                                boolean z5 = (i & 1) != 0;
                                if ((i & 2) != 0) {
                                    z3 = true;
                                }
                                aVar.a(z3, z5, g3 & Integer.MAX_VALUE, a2, e.SPDY_SYN_STREAM);
                                z = true;
                                break;
                            case 2:
                                aVar.a(false, (i & 1) != 0, this.f3260a.g() & Integer.MAX_VALUE, this.c.a(i2 - 4), e.SPDY_REPLY);
                                z = true;
                                break;
                            case 3:
                                if (i2 == 8) {
                                    int g4 = this.f3260a.g();
                                    int g5 = this.f3260a.g();
                                    com.b.a.a.b.a a3 = com.b.a.a.b.a.a(g5);
                                    if (a3 != null) {
                                        aVar.a(g4 & Integer.MAX_VALUE, a3);
                                        z = true;
                                        break;
                                    } else {
                                        throw a("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(g5));
                                    }
                                } else {
                                    throw a("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i2));
                                }
                            case 4:
                                a(aVar, i, i2);
                                z = true;
                                break;
                            case 5:
                            default:
                                this.f3260a.g(i2);
                                z = true;
                                break;
                            case 6:
                                if (i2 == 4) {
                                    int g6 = this.f3260a.g();
                                    aVar.a(this.f3261b == ((g6 & 1) == 1), g6, 0);
                                    z = true;
                                    break;
                                } else {
                                    throw a("TYPE_PING length: %d != 4", Integer.valueOf(i2));
                                }
                            case 7:
                                if (i2 == 8) {
                                    int g7 = this.f3260a.g();
                                    int g8 = this.f3260a.g();
                                    if (com.b.a.a.b.a.c(g8) != null) {
                                        aVar.a(g7 & Integer.MAX_VALUE, f.f321b);
                                        z = true;
                                        break;
                                    } else {
                                        throw a("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(g8));
                                    }
                                } else {
                                    throw a("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i2));
                                }
                            case 8:
                                aVar.a(false, false, this.f3260a.g() & Integer.MAX_VALUE, this.c.a(i2 - 4), e.SPDY_HEADERS);
                                z = true;
                                break;
                            case 9:
                                if (i2 == 8) {
                                    int g9 = this.f3260a.g();
                                    long g10 = this.f3260a.g() & Integer.MAX_VALUE;
                                    if (g10 != 0) {
                                        aVar.a(g9 & Integer.MAX_VALUE, g10);
                                        z = true;
                                        break;
                                    } else {
                                        throw a("windowSizeIncrement was 0", Long.valueOf(g10));
                                    }
                                } else {
                                    throw a("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i2));
                                }
                        }
                    } else {
                        throw new ProtocolException("version != 3: " + i3);
                    }
                } else {
                    if ((i & 1) != 0) {
                        z2 = true;
                    }
                    aVar.a(z2, g & Integer.MAX_VALUE, this.f3260a, i2);
                    z = true;
                }
            } catch (IOException e) {
                z = false;
            }
            return z;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.c.f3251b.close();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/n$b.class */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final d f3262a;

        /* renamed from: b  reason: collision with root package name */
        private final c f3263b = new c();
        private final d c;
        private final boolean d;
        private boolean e;

        b(d dVar, boolean z) {
            this.f3262a = dVar;
            this.d = z;
            Deflater deflater = new Deflater();
            deflater.setDictionary(n.f3259a);
            this.c = k.a(new g((p) this.f3263b, deflater));
        }

        private void a(List<d> list) {
            if (this.f3263b.f318b != 0) {
                throw new IllegalStateException();
            }
            this.c.e(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                f fVar = list.get(i).h;
                this.c.e(fVar.c.length);
                this.c.b(fVar);
                f fVar2 = list.get(i).i;
                this.c.e(fVar2.c.length);
                this.c.b(fVar2);
            }
            this.c.flush();
        }

        @Override // com.b.a.a.b.c
        public final void a() {
            synchronized (this) {
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(int i, long j) {
            synchronized (this) {
                if (this.e) {
                    throw new IOException("closed");
                } else if (j == 0 || j > 2147483647L) {
                    throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j);
                } else {
                    this.f3262a.e(-2147287031);
                    this.f3262a.e(8);
                    this.f3262a.e(i);
                    this.f3262a.e((int) j);
                    this.f3262a.flush();
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(int i, com.b.a.a.b.a aVar) {
            synchronized (this) {
                if (this.e) {
                    throw new IOException("closed");
                } else if (aVar.t == -1) {
                    throw new IllegalArgumentException();
                } else {
                    this.f3262a.e(-2147287037);
                    this.f3262a.e(8);
                    this.f3262a.e(Integer.MAX_VALUE & i);
                    this.f3262a.e(aVar.t);
                    this.f3262a.flush();
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(int i, com.b.a.a.b.a aVar, byte[] bArr) {
            synchronized (this) {
                if (this.e) {
                    throw new IOException("closed");
                } else if (aVar.u == -1) {
                    throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
                } else {
                    this.f3262a.e(-2147287033);
                    this.f3262a.e(8);
                    this.f3262a.e(i);
                    this.f3262a.e(aVar.u);
                    this.f3262a.flush();
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(m mVar) {
        }

        @Override // com.b.a.a.b.c
        public final void a(boolean z, int i, int i2) {
            boolean z2 = true;
            synchronized (this) {
                if (this.e) {
                    throw new IOException("closed");
                }
                if (this.d == ((i & 1) == 1)) {
                    z2 = false;
                }
                if (z != z2) {
                    throw new IllegalArgumentException("payload != reply");
                }
                this.f3262a.e(-2147287034);
                this.f3262a.e(4);
                this.f3262a.e(i);
                this.f3262a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(boolean z, int i, c cVar, int i2) {
            synchronized (this) {
                int i3 = z ? 1 : 0;
                if (this.e) {
                    throw new IOException("closed");
                } else if (i2 > 16777215) {
                    throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i2);
                } else {
                    this.f3262a.e(Integer.MAX_VALUE & i);
                    this.f3262a.e(((i3 & 255) << 24) | (16777215 & i2));
                    if (i2 > 0) {
                        this.f3262a.a_(cVar, i2);
                    }
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(boolean z, int i, List<d> list) {
            int i2 = 0;
            synchronized (this) {
                if (this.e) {
                    throw new IOException("closed");
                }
                a(list);
                int i3 = (int) (10 + this.f3263b.f318b);
                if (z) {
                    i2 = 1;
                }
                this.f3262a.e(-2147287039);
                this.f3262a.e((((i2 | 0) & 255) << 24) | (i3 & 16777215));
                this.f3262a.e(Integer.MAX_VALUE & i);
                this.f3262a.e(0);
                this.f3262a.f(0);
                this.f3262a.a(this.f3263b);
                this.f3262a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final void b() {
            synchronized (this) {
                if (this.e) {
                    throw new IOException("closed");
                }
                this.f3262a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final void b(m mVar) {
            synchronized (this) {
                if (this.e) {
                    throw new IOException("closed");
                }
                int bitCount = Integer.bitCount(mVar.f3257a);
                this.f3262a.e(-2147287036);
                this.f3262a.e((((bitCount * 8) + 4) & 16777215) | 0);
                this.f3262a.e(bitCount);
                for (int i = 0; i <= 10; i++) {
                    if (mVar.a(i)) {
                        this.f3262a.e(((mVar.b(i) & 255) << 24) | (i & 16777215));
                        this.f3262a.e(mVar.d[i]);
                    }
                }
                this.f3262a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final int c() {
            return 16383;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (this) {
                this.e = true;
                h.a((Closeable) this.f3262a, (Closeable) this.c);
            }
        }
    }

    static {
        try {
            f3259a = "������\u0007options������\u0004head������\u0004post������\u0003put������\u0006delete������\u0005trace������\u0006accept������\u000eaccept-charset������\u000faccept-encoding������\u000faccept-language������\raccept-ranges������\u0003age������\u0005allow������\rauthorization������\rcache-control������\nconnection������\fcontent-base������\u0010content-encoding������\u0010content-language������\u000econtent-length������\u0010content-location������\u000bcontent-md5������\rcontent-range������\fcontent-type������\u0004date������\u0004etag������\u0006expect������\u0007expires������\u0004from������\u0004host������\bif-match������\u0011if-modified-since������\rif-none-match������\bif-range������\u0013if-unmodified-since������\rlast-modified������\blocation������\fmax-forwards������\u0006pragma������\u0012proxy-authenticate������\u0013proxy-authorization������\u0005range������\u0007referer������\u000bretry-after������\u0006server������\u0002te������\u0007trailer������\u0011transfer-encoding������\u0007upgrade������\nuser-agent������\u0004vary������\u0003via������\u0007warning������\u0010www-authenticate������\u0006method������\u0003get������\u0006status������\u0006200 OK������\u0007version������\bHTTP/1.1������\u0003url������\u0006public������\nset-cookie������\nkeep-alive������\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(h.c.name());
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }

    @Override // com.b.a.a.b.q
    public final com.b.a.a.b.b a(e eVar, boolean z) {
        return new a(eVar, z);
    }

    @Override // com.b.a.a.b.q
    public final c a(d dVar, boolean z) {
        return new b(dVar, z);
    }
}
