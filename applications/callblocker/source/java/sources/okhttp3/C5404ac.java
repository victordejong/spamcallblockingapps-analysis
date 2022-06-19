package okhttp3;

import java.io.Closeable;
import javax.annotation.Nullable;
import okhttp3.C5539s;
/* renamed from: okhttp3.ac */
/* loaded from: classes-dex2jar.jar:okhttp3/ac.class */
public final class C5404ac implements Closeable {

    /* renamed from: a */
    final C5400aa f22491a;

    /* renamed from: b */
    final EnumC5553y f22492b;

    /* renamed from: c */
    final int f22493c;

    /* renamed from: d */
    final String f22494d;
    @Nullable

    /* renamed from: e */
    final C5538r f22495e;

    /* renamed from: f */
    final C5539s f22496f;
    @Nullable

    /* renamed from: g */
    final AbstractC5406ad f22497g;
    @Nullable

    /* renamed from: h */
    final C5404ac f22498h;
    @Nullable

    /* renamed from: i */
    final C5404ac f22499i;
    @Nullable

    /* renamed from: j */
    final C5404ac f22500j;

    /* renamed from: k */
    final long f22501k;

    /* renamed from: l */
    final long f22502l;

    /* renamed from: m */
    private volatile C5413d f22503m;

    /* renamed from: okhttp3.ac$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/ac$a.class */
    public static class C5405a {

        /* renamed from: a */
        C5400aa f22504a;

        /* renamed from: b */
        EnumC5553y f22505b;

        /* renamed from: c */
        int f22506c;

        /* renamed from: d */
        String f22507d;
        @Nullable

        /* renamed from: e */
        C5538r f22508e;

        /* renamed from: f */
        C5539s.C5540a f22509f;

        /* renamed from: g */
        AbstractC5406ad f22510g;

        /* renamed from: h */
        C5404ac f22511h;

        /* renamed from: i */
        C5404ac f22512i;

        /* renamed from: j */
        C5404ac f22513j;

        /* renamed from: k */
        long f22514k;

        /* renamed from: l */
        long f22515l;

        public C5405a() {
            this.f22506c = -1;
            this.f22509f = new C5539s.C5540a();
        }

        C5405a(C5404ac c5404ac) {
            this.f22506c = -1;
            this.f22504a = c5404ac.f22491a;
            this.f22505b = c5404ac.f22492b;
            this.f22506c = c5404ac.f22493c;
            this.f22507d = c5404ac.f22494d;
            this.f22508e = c5404ac.f22495e;
            this.f22509f = c5404ac.f22496f.m279b();
            this.f22510g = c5404ac.f22497g;
            this.f22511h = c5404ac.f22498h;
            this.f22512i = c5404ac.f22499i;
            this.f22513j = c5404ac.f22500j;
            this.f22514k = c5404ac.f22501k;
            this.f22515l = c5404ac.f22502l;
        }

        /* renamed from: a */
        private void m792a(String str, C5404ac c5404ac) {
            if (c5404ac.f22497g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (c5404ac.f22498h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (c5404ac.f22499i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (c5404ac.f22500j == null) {
                return;
            }
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }

        /* renamed from: d */
        private void m782d(C5404ac c5404ac) {
            if (c5404ac.f22497g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        /* renamed from: a */
        public C5405a m796a(int i) {
            this.f22506c = i;
            return this;
        }

        /* renamed from: a */
        public C5405a m795a(long j) {
            this.f22514k = j;
            return this;
        }

        /* renamed from: a */
        public C5405a m794a(String str) {
            this.f22507d = str;
            return this;
        }

        /* renamed from: a */
        public C5405a m793a(String str, String str2) {
            this.f22509f.m274a(str, str2);
            return this;
        }

        /* renamed from: a */
        public C5405a m791a(C5400aa c5400aa) {
            this.f22504a = c5400aa;
            return this;
        }

        /* renamed from: a */
        public C5405a m790a(@Nullable C5404ac c5404ac) {
            if (c5404ac != null) {
                m792a("networkResponse", c5404ac);
            }
            this.f22511h = c5404ac;
            return this;
        }

        /* renamed from: a */
        public C5405a m789a(@Nullable AbstractC5406ad abstractC5406ad) {
            this.f22510g = abstractC5406ad;
            return this;
        }

        /* renamed from: a */
        public C5405a m788a(@Nullable C5538r c5538r) {
            this.f22508e = c5538r;
            return this;
        }

        /* renamed from: a */
        public C5405a m787a(C5539s c5539s) {
            this.f22509f = c5539s.m279b();
            return this;
        }

        /* renamed from: a */
        public C5405a m786a(EnumC5553y enumC5553y) {
            this.f22505b = enumC5553y;
            return this;
        }

        /* renamed from: a */
        public C5404ac m797a() {
            if (this.f22504a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f22505b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f22506c < 0) {
                throw new IllegalStateException("code < 0: " + this.f22506c);
            }
            if (this.f22507d != null) {
                return new C5404ac(this);
            }
            throw new IllegalStateException("message == null");
        }

        /* renamed from: b */
        public C5405a m785b(long j) {
            this.f22515l = j;
            return this;
        }

        /* renamed from: b */
        public C5405a m784b(@Nullable C5404ac c5404ac) {
            if (c5404ac != null) {
                m792a("cacheResponse", c5404ac);
            }
            this.f22512i = c5404ac;
            return this;
        }

        /* renamed from: c */
        public C5405a m783c(@Nullable C5404ac c5404ac) {
            if (c5404ac != null) {
                m782d(c5404ac);
            }
            this.f22513j = c5404ac;
            return this;
        }
    }

    C5404ac(C5405a c5405a) {
        this.f22491a = c5405a.f22504a;
        this.f22492b = c5405a.f22505b;
        this.f22493c = c5405a.f22506c;
        this.f22494d = c5405a.f22507d;
        this.f22495e = c5405a.f22508e;
        this.f22496f = c5405a.f22509f.m276a();
        this.f22497g = c5405a.f22510g;
        this.f22498h = c5405a.f22511h;
        this.f22499i = c5405a.f22512i;
        this.f22500j = c5405a.f22513j;
        this.f22501k = c5405a.f22514k;
        this.f22502l = c5405a.f22515l;
    }

    @Nullable
    /* renamed from: a */
    public String m809a(String str) {
        return m808a(str, null);
    }

    @Nullable
    /* renamed from: a */
    public String m808a(String str, @Nullable String str2) {
        String m282a = this.f22496f.m282a(str);
        if (m282a != null) {
            str2 = m282a;
        }
        return str2;
    }

    /* renamed from: a */
    public C5400aa m810a() {
        return this.f22491a;
    }

    /* renamed from: b */
    public int m807b() {
        return this.f22493c;
    }

    /* renamed from: c */
    public boolean m806c() {
        return this.f22493c >= 200 && this.f22493c < 300;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f22497g == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        this.f22497g.close();
    }

    /* renamed from: d */
    public C5538r m805d() {
        return this.f22495e;
    }

    /* renamed from: e */
    public C5539s m804e() {
        return this.f22496f;
    }

    @Nullable
    /* renamed from: f */
    public AbstractC5406ad m803f() {
        return this.f22497g;
    }

    /* renamed from: g */
    public C5405a m802g() {
        return new C5405a(this);
    }

    @Nullable
    /* renamed from: h */
    public C5404ac m801h() {
        return this.f22500j;
    }

    /* renamed from: i */
    public C5413d m800i() {
        C5413d c5413d = this.f22503m;
        if (c5413d == null) {
            c5413d = C5413d.m769a(this.f22496f);
            this.f22503m = c5413d;
        }
        return c5413d;
    }

    /* renamed from: j */
    public long m799j() {
        return this.f22501k;
    }

    /* renamed from: k */
    public long m798k() {
        return this.f22502l;
    }

    public String toString() {
        return "Response{protocol=" + this.f22492b + ", code=" + this.f22493c + ", message=" + this.f22494d + ", url=" + this.f22491a.m827a() + '}';
    }
}
