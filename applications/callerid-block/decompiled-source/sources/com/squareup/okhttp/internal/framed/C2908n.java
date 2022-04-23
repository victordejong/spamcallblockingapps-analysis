package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.internal.framed.AbstractC2868a;
import com.squareup.okhttp.p089u.C2975i;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.List;
import java.util.zip.Deflater;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Okio;
import okio.Sink;
/* renamed from: com.squareup.okhttp.internal.framed.n */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/n.class */
public final class C2908n implements AbstractC2911o {

    /* renamed from: a */
    static final byte[] f12292a;

    /* renamed from: com.squareup.okhttp.internal.framed.n$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/n$a.class */
    static final class C2909a implements AbstractC2868a {

        /* renamed from: b */
        private final BufferedSource f12293b;

        /* renamed from: c */
        private final boolean f12294c;

        /* renamed from: d */
        private final C2901j f12295d;

        C2909a(BufferedSource bufferedSource, boolean z) {
            this.f12293b = bufferedSource;
            this.f12295d = new C2901j(bufferedSource);
            this.f12294c = z;
        }

        /* renamed from: B */
        private void m1061B(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            boolean z = true;
            if (i2 == 4) {
                int readInt = this.f12293b.readInt();
                if (this.f12294c != ((readInt & 1) == 1)) {
                    z = false;
                }
                aVar.ping(z, readInt, 0);
                return;
            }
            m1054a("TYPE_PING length: %d != 4", Integer.valueOf(i2));
            throw null;
        }

        /* renamed from: C */
        private void m1060C(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            if (i2 == 8) {
                int readInt = this.f12293b.readInt();
                int readInt2 = this.f12293b.readInt();
                ErrorCode fromSpdy3Rst = ErrorCode.fromSpdy3Rst(readInt2);
                if (fromSpdy3Rst != null) {
                    aVar.mo1187f(readInt & Integer.MAX_VALUE, fromSpdy3Rst);
                } else {
                    m1054a("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt2));
                    throw null;
                }
            } else {
                m1054a("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i2));
                throw null;
            }
        }

        /* renamed from: F */
        private void m1059F(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            int readInt = this.f12293b.readInt();
            boolean z = false;
            if (i2 == (readInt * 8) + 4) {
                C2907m mVar = new C2907m();
                for (int i3 = 0; i3 < readInt; i3++) {
                    int readInt2 = this.f12293b.readInt();
                    mVar.m1063k(readInt2 & 16777215, ((-16777216) & readInt2) >>> 24, this.f12293b.readInt());
                }
                if ((i & 1) != 0) {
                    z = true;
                }
                aVar.mo1186g(z, mVar);
                return;
            }
            m1054a("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i2), Integer.valueOf(readInt));
            throw null;
        }

        /* renamed from: K */
        private void m1058K(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            int readInt = this.f12293b.readInt();
            aVar.mo1185h(false, (i & 1) != 0, readInt & Integer.MAX_VALUE, -1, this.f12295d.m1078f(i2 - 4), HeadersMode.SPDY_REPLY);
        }

        /* renamed from: O */
        private void m1057O(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            int readInt = this.f12293b.readInt();
            int readInt2 = this.f12293b.readInt();
            this.f12293b.readShort();
            List<C2888e> f = this.f12295d.m1078f(i2 - 10);
            aVar.mo1185h((i & 2) != 0, (i & 1) != 0, readInt & Integer.MAX_VALUE, readInt2 & Integer.MAX_VALUE, f, HeadersMode.SPDY_SYN_STREAM);
        }

        /* renamed from: U */
        private void m1055U(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            if (i2 == 8) {
                int readInt = this.f12293b.readInt();
                long readInt2 = this.f12293b.readInt() & Integer.MAX_VALUE;
                if (readInt2 != 0) {
                    aVar.windowUpdate(readInt & Integer.MAX_VALUE, readInt2);
                } else {
                    m1054a("windowSizeIncrement was 0", Long.valueOf(readInt2));
                    throw null;
                }
            } else {
                m1054a("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i2));
                throw null;
            }
        }

        /* renamed from: a */
        private static IOException m1054a(String str, Object... objArr) {
            throw new IOException(String.format(str, objArr));
        }

        /* renamed from: p */
        private void m1053p(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            if (i2 == 8) {
                int readInt = this.f12293b.readInt();
                int readInt2 = this.f12293b.readInt();
                ErrorCode fromSpdyGoAway = ErrorCode.fromSpdyGoAway(readInt2);
                if (fromSpdyGoAway != null) {
                    aVar.mo1184i(readInt & Integer.MAX_VALUE, fromSpdyGoAway, ByteString.EMPTY);
                } else {
                    m1054a("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
                    throw null;
                }
            } else {
                m1054a("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i2));
                throw null;
            }
        }

        /* renamed from: x */
        private void m1051x(AbstractC2868a.AbstractC2869a aVar, int i, int i2) {
            aVar.mo1185h(false, false, this.f12293b.readInt() & Integer.MAX_VALUE, -1, this.f12295d.m1078f(i2 - 4), HeadersMode.SPDY_HEADERS);
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a
        /* renamed from: P */
        public boolean mo1056P(AbstractC2868a.AbstractC2869a aVar) {
            boolean z = false;
            try {
                int readInt = this.f12293b.readInt();
                int readInt2 = this.f12293b.readInt();
                boolean z2 = (Integer.MIN_VALUE & readInt) != 0;
                int i = ((-16777216) & readInt2) >>> 24;
                int i2 = readInt2 & 16777215;
                if (z2) {
                    int i3 = (2147418112 & readInt) >>> 16;
                    if (i3 == 3) {
                        switch (readInt & 65535) {
                            case 1:
                                m1057O(aVar, i, i2);
                                return true;
                            case 2:
                                m1058K(aVar, i, i2);
                                return true;
                            case 3:
                                m1060C(aVar, i, i2);
                                return true;
                            case 4:
                                m1059F(aVar, i, i2);
                                return true;
                            case 5:
                            default:
                                this.f12293b.skip(i2);
                                return true;
                            case 6:
                                m1061B(aVar, i, i2);
                                return true;
                            case 7:
                                m1053p(aVar, i, i2);
                                return true;
                            case 8:
                                m1051x(aVar, i, i2);
                                return true;
                            case 9:
                                m1055U(aVar, i, i2);
                                return true;
                        }
                    } else {
                        throw new ProtocolException("version != 3: " + i3);
                    }
                } else {
                    if ((i & 1) != 0) {
                        z = true;
                    }
                    aVar.data(z, readInt & Integer.MAX_VALUE, this.f12293b, i2);
                    return true;
                }
            } catch (IOException e) {
                return false;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f12295d.m1081c();
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a
        /* renamed from: q */
        public void mo1052q() {
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.n$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/n$b.class */
    static final class C2910b implements AbstractC2870b {

        /* renamed from: b */
        private final BufferedSink f12296b;

        /* renamed from: c */
        private final Buffer f12297c;

        /* renamed from: d */
        private final BufferedSink f12298d;

        /* renamed from: e */
        private final boolean f12299e;

        /* renamed from: f */
        private boolean f12300f;

        C2910b(BufferedSink bufferedSink, boolean z) {
            this.f12296b = bufferedSink;
            this.f12299e = z;
            Deflater deflater = new Deflater();
            deflater.setDictionary(C2908n.f12292a);
            Buffer buffer = new Buffer();
            this.f12297c = buffer;
            this.f12298d = Okio.buffer((Sink) new DeflaterSink((Sink) buffer, deflater));
        }

        /* renamed from: p */
        private void m1045p(List<C2888e> list) {
            this.f12298d.writeInt(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ByteString byteString = list.get(i).f12237a;
                this.f12298d.writeInt(byteString.size());
                this.f12298d.write(byteString);
                ByteString byteString2 = list.get(i).f12238b;
                this.f12298d.writeInt(byteString2.size());
                this.f12298d.write(byteString2);
            }
            this.f12298d.flush();
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: Q */
        public void mo1050Q(boolean z, boolean z2, int i, int i2, List<C2888e> list) {
            synchronized (this) {
                if (!this.f12300f) {
                    m1045p(list);
                    int size = (int) (this.f12297c.size() + 10);
                    int i3 = z2 ? 2 : 0;
                    this.f12296b.writeInt(-2147287039);
                    this.f12296b.writeInt(((((z ? 1 : 0) | i3) & 255) << 24) | (size & 16777215));
                    this.f12296b.writeInt(i & Integer.MAX_VALUE);
                    this.f12296b.writeInt(Integer.MAX_VALUE & i2);
                    this.f12296b.writeShort(0);
                    this.f12296b.writeAll(this.f12297c);
                    this.f12296b.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: S */
        public void mo1049S(C2907m mVar) {
            synchronized (this) {
                if (!this.f12300f) {
                    int l = mVar.m1062l();
                    this.f12296b.writeInt(-2147287036);
                    this.f12296b.writeInt((((l * 8) + 4) & 16777215) | 0);
                    this.f12296b.writeInt(l);
                    for (int i = 0; i <= 10; i++) {
                        if (mVar.m1066h(i)) {
                            this.f12296b.writeInt(((mVar.m1072b(i) & 255) << 24) | (i & 16777215));
                            this.f12296b.writeInt(mVar.m1071c(i));
                        }
                    }
                    this.f12296b.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        /* renamed from: a */
        void m1048a(int i, int i2, Buffer buffer, int i3) {
            if (!this.f12300f) {
                long j = i3;
                if (j <= 16777215) {
                    this.f12296b.writeInt(i & Integer.MAX_VALUE);
                    this.f12296b.writeInt(((i2 & 255) << 24) | (16777215 & i3));
                    if (i3 > 0) {
                        this.f12296b.write(buffer, j);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i3);
            }
            throw new IOException("closed");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                this.f12300f = true;
                C2975i.m658b(this.f12296b, this.f12298d);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void connectionPreface() {
            synchronized (this) {
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void data(boolean z, int i, Buffer buffer, int i2) {
            synchronized (this) {
                m1048a(i, z ? 1 : 0, buffer, i2);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: f */
        public void mo1047f(int i, ErrorCode errorCode) {
            synchronized (this) {
                if (this.f12300f) {
                    throw new IOException("closed");
                } else if (errorCode.spdyRstCode != -1) {
                    this.f12296b.writeInt(-2147287037);
                    this.f12296b.writeInt(8);
                    this.f12296b.writeInt(i & Integer.MAX_VALUE);
                    this.f12296b.writeInt(errorCode.spdyRstCode);
                    this.f12296b.flush();
                } else {
                    throw new IllegalArgumentException();
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void flush() {
            synchronized (this) {
                if (!this.f12300f) {
                    this.f12296b.flush();
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: k */
        public void mo1046k(C2907m mVar) {
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public int maxDataLength() {
            return 16383;
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void ping(boolean z, int i, int i2) {
            synchronized (this) {
                if (!this.f12300f) {
                    boolean z2 = false;
                    if (this.f12299e != ((i & 1) == 1)) {
                        z2 = true;
                    }
                    if (z == z2) {
                        this.f12296b.writeInt(-2147287034);
                        this.f12296b.writeInt(4);
                        this.f12296b.writeInt(i);
                        this.f12296b.flush();
                    } else {
                        throw new IllegalArgumentException("payload != reply");
                    }
                } else {
                    throw new IOException("closed");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void pushPromise(int i, int i2, List<C2888e> list) {
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        /* renamed from: t */
        public void mo1044t(int i, ErrorCode errorCode, byte[] bArr) {
            synchronized (this) {
                if (this.f12300f) {
                    throw new IOException("closed");
                } else if (errorCode.spdyGoAwayCode != -1) {
                    this.f12296b.writeInt(-2147287033);
                    this.f12296b.writeInt(8);
                    this.f12296b.writeInt(i);
                    this.f12296b.writeInt(errorCode.spdyGoAwayCode);
                    this.f12296b.flush();
                } else {
                    throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2870b
        public void windowUpdate(int i, long j) {
            synchronized (this) {
                if (this.f12300f) {
                    throw new IOException("closed");
                } else if (j == 0 || j > 2147483647L) {
                    throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j);
                } else {
                    this.f12296b.writeInt(-2147287031);
                    this.f12296b.writeInt(8);
                    this.f12296b.writeInt(i);
                    this.f12296b.writeInt((int) j);
                    this.f12296b.flush();
                }
            }
        }
    }

    static {
        try {
            f12292a = "������\u0007options������\u0004head������\u0004post������\u0003put������\u0006delete������\u0005trace������\u0006accept������\u000eaccept-charset������\u000faccept-encoding������\u000faccept-language������\raccept-ranges������\u0003age������\u0005allow������\rauthorization������\rcache-control������\nconnection������\fcontent-base������\u0010content-encoding������\u0010content-language������\u000econtent-length������\u0010content-location������\u000bcontent-md5������\rcontent-range������\fcontent-type������\u0004date������\u0004etag������\u0006expect������\u0007expires������\u0004from������\u0004host������\bif-match������\u0011if-modified-since������\rif-none-match������\bif-range������\u0013if-unmodified-since������\rlast-modified������\blocation������\fmax-forwards������\u0006pragma������\u0012proxy-authenticate������\u0013proxy-authorization������\u0005range������\u0007referer������\u000bretry-after������\u0006server������\u0002te������\u0007trailer������\u0011transfer-encoding������\u0007upgrade������\nuser-agent������\u0004vary������\u0003via������\u0007warning������\u0010www-authenticate������\u0006method������\u0003get������\u0006status������\u0006200 OK������\u0007version������\bHTTP/1.1������\u0003url������\u0006public������\nset-cookie������\nkeep-alive������\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(C2975i.f12521c.name());
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }

    @Override // com.squareup.okhttp.internal.framed.AbstractC2911o
    /* renamed from: a */
    public AbstractC2868a mo1043a(BufferedSource bufferedSource, boolean z) {
        return new C2909a(bufferedSource, z);
    }

    @Override // com.squareup.okhttp.internal.framed.AbstractC2911o
    /* renamed from: b */
    public AbstractC2870b mo1042b(BufferedSink bufferedSink, boolean z) {
        return new C2910b(bufferedSink, z);
    }
}
