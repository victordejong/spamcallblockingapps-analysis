package okhttp3;

import com.google.firebase.perf.FirebasePerformance;
import javax.annotation.Nullable;
import okhttp3.C2087r;
import okhttp3.internal.p092b.C1992f;
/* renamed from: okhttp3.z */
/* loaded from: classes-dex2jar.jar:okhttp3/z.class */
public final class C2104z {

    /* renamed from: a */
    final C2089s f5467a;

    /* renamed from: b */
    final String f5468b;

    /* renamed from: c */
    final C2087r f5469c;
    @Nullable

    /* renamed from: d */
    final AbstractC1953aa f5470d;

    /* renamed from: e */
    final Object f5471e;

    /* renamed from: f */
    private volatile C1964d f5472f;

    /* renamed from: okhttp3.z$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/z$a.class */
    public static class C2105a {

        /* renamed from: a */
        C2089s f5473a;

        /* renamed from: b */
        String f5474b;

        /* renamed from: c */
        C2087r.C2088a f5475c;

        /* renamed from: d */
        AbstractC1953aa f5476d;

        /* renamed from: e */
        Object f5477e;

        public C2105a() {
            this.f5474b = FirebasePerformance.HttpMethod.GET;
            this.f5475c = new C2087r.C2088a();
        }

        C2105a(C2104z c2104z) {
            this.f5473a = c2104z.f5467a;
            this.f5474b = c2104z.f5468b;
            this.f5476d = c2104z.f5470d;
            this.f5477e = c2104z.f5471e;
            this.f5475c = c2104z.f5469c.m1965b();
        }

        /* renamed from: a */
        public C2105a m1814a(String str) {
            String str2;
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str2 = "http:" + str.substring(3);
                } else {
                    str2 = str;
                    if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                        str2 = "https:" + str.substring(4);
                    }
                }
                C2089s m1936e = C2089s.m1936e(str2);
                if (m1936e != null) {
                    return m1809a(m1936e);
                }
                throw new IllegalArgumentException("unexpected url: " + str2);
            }
            throw new NullPointerException("url == null");
        }

        /* renamed from: a */
        public C2105a m1813a(String str, String str2) {
            this.f5475c.m1957c(str, str2);
            return this;
        }

        /* renamed from: a */
        public C2105a m1812a(String str, @Nullable AbstractC1953aa abstractC1953aa) {
            if (str != null) {
                if (str.length() == 0) {
                    throw new IllegalArgumentException("method.length() == 0");
                }
                if (abstractC1953aa != null && !C1992f.m2381c(str)) {
                    throw new IllegalArgumentException("method " + str + " must not have a request body.");
                } else if (abstractC1953aa != null || !C1992f.m2382b(str)) {
                    this.f5474b = str;
                    this.f5476d = abstractC1953aa;
                    return this;
                } else {
                    throw new IllegalArgumentException("method " + str + " must have a request body.");
                }
            }
            throw new NullPointerException("method == null");
        }

        /* renamed from: a */
        public C2105a m1811a(AbstractC1953aa abstractC1953aa) {
            return m1812a(FirebasePerformance.HttpMethod.POST, abstractC1953aa);
        }

        /* renamed from: a */
        public C2105a m1810a(C2087r c2087r) {
            this.f5475c = c2087r.m1965b();
            return this;
        }

        /* renamed from: a */
        public C2105a m1809a(C2089s c2089s) {
            if (c2089s != null) {
                this.f5473a = c2089s;
                return this;
            }
            throw new NullPointerException("url == null");
        }

        /* renamed from: a */
        public C2104z m1815a() {
            if (this.f5473a != null) {
                return new C2104z(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: b */
        public C2105a m1808b(String str) {
            this.f5475c.m1959b(str);
            return this;
        }
    }

    C2104z(C2105a c2105a) {
        this.f5467a = c2105a.f5473a;
        this.f5468b = c2105a.f5474b;
        this.f5469c = c2105a.f5475c.m1962a();
        this.f5470d = c2105a.f5476d;
        this.f5471e = c2105a.f5477e != null ? c2105a.f5477e : this;
    }

    @Nullable
    /* renamed from: a */
    public String m1822a(String str) {
        return this.f5469c.m1968a(str);
    }

    /* renamed from: a */
    public C2089s m1823a() {
        return this.f5467a;
    }

    /* renamed from: b */
    public String m1821b() {
        return this.f5468b;
    }

    /* renamed from: c */
    public C2087r m1820c() {
        return this.f5469c;
    }

    @Nullable
    /* renamed from: d */
    public AbstractC1953aa m1819d() {
        return this.f5470d;
    }

    /* renamed from: e */
    public C2105a m1818e() {
        return new C2105a(this);
    }

    /* renamed from: f */
    public C1964d m1817f() {
        C1964d c1964d = this.f5472f;
        if (c1964d == null) {
            c1964d = C1964d.m2451a(this.f5469c);
            this.f5472f = c1964d;
        }
        return c1964d;
    }

    /* renamed from: g */
    public boolean m1816g() {
        return this.f5467a.m1939d();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f5468b);
        sb.append(", url=");
        sb.append(this.f5467a);
        sb.append(", tag=");
        Object obj = this.f5471e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
