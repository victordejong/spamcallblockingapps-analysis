package okhttp3;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;
import okhttp3.internal.C1999c;
import p000a.AbstractC0007d;
import p000a.C0005c;
import p000a.C0009f;
/* renamed from: okhttp3.v */
/* loaded from: classes-dex2jar.jar:okhttp3/v.class */
public final class C2095v extends AbstractC1953aa {

    /* renamed from: a */
    public static final C2094u f5378a = C2094u.m1896a("multipart/mixed");

    /* renamed from: b */
    public static final C2094u f5379b = C2094u.m1896a("multipart/alternative");

    /* renamed from: c */
    public static final C2094u f5380c = C2094u.m1896a("multipart/digest");

    /* renamed from: d */
    public static final C2094u f5381d = C2094u.m1896a("multipart/parallel");

    /* renamed from: e */
    public static final C2094u f5382e = C2094u.m1896a("multipart/form-data");

    /* renamed from: f */
    private static final byte[] f5383f = {58, 32};

    /* renamed from: g */
    private static final byte[] f5384g = {13, 10};

    /* renamed from: h */
    private static final byte[] f5385h = {45, 45};

    /* renamed from: i */
    private final C0009f f5386i;

    /* renamed from: j */
    private final C2094u f5387j;

    /* renamed from: k */
    private final C2094u f5388k;

    /* renamed from: l */
    private final List<C2097b> f5389l;

    /* renamed from: m */
    private long f5390m = -1;

    /* renamed from: okhttp3.v$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/v$a.class */
    public static final class C2096a {

        /* renamed from: a */
        private final C0009f f5391a;

        /* renamed from: b */
        private C2094u f5392b;

        /* renamed from: c */
        private final List<C2097b> f5393c;

        public C2096a() {
            this(UUID.randomUUID().toString());
        }

        public C2096a(String str) {
            this.f5392b = C2095v.f5378a;
            this.f5393c = new ArrayList();
            this.f5391a = C0009f.m8114a(str);
        }

        /* renamed from: a */
        public C2096a m1887a(String str, String str2) {
            return m1885a(C2097b.m1884a(str, str2));
        }

        /* renamed from: a */
        public C2096a m1886a(C2094u c2094u) {
            if (c2094u != null) {
                if (c2094u.m1897a().equals("multipart")) {
                    this.f5392b = c2094u;
                    return this;
                }
                throw new IllegalArgumentException("multipart != " + c2094u);
            }
            throw new NullPointerException("type == null");
        }

        /* renamed from: a */
        public C2096a m1885a(C2097b c2097b) {
            if (c2097b != null) {
                this.f5393c.add(c2097b);
                return this;
            }
            throw new NullPointerException("part == null");
        }

        /* renamed from: a */
        public C2095v m1888a() {
            if (!this.f5393c.isEmpty()) {
                return new C2095v(this.f5391a, this.f5392b, this.f5393c);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
    }

    /* renamed from: okhttp3.v$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/v$b.class */
    public static final class C2097b {
        @Nullable

        /* renamed from: a */
        final C2087r f5394a;

        /* renamed from: b */
        final AbstractC1953aa f5395b;

        private C2097b(@Nullable C2087r c2087r, AbstractC1953aa abstractC1953aa) {
            this.f5394a = c2087r;
            this.f5395b = abstractC1953aa;
        }

        /* renamed from: a */
        public static C2097b m1884a(String str, String str2) {
            return m1883a(str, null, AbstractC1953aa.m2497a((C2094u) null, str2));
        }

        /* renamed from: a */
        public static C2097b m1883a(String str, @Nullable String str2, AbstractC1953aa abstractC1953aa) {
            if (str != null) {
                StringBuilder sb = new StringBuilder("form-data; name=");
                C2095v.m1890a(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    C2095v.m1890a(sb, str2);
                }
                return m1882a(C2087r.m1967a("Content-Disposition", sb.toString()), abstractC1953aa);
            }
            throw new NullPointerException("name == null");
        }

        /* renamed from: a */
        public static C2097b m1882a(@Nullable C2087r c2087r, AbstractC1953aa abstractC1953aa) {
            if (abstractC1953aa != null) {
                if (c2087r != null && c2087r.m1968a("Content-Type") != null) {
                    throw new IllegalArgumentException("Unexpected header: Content-Type");
                }
                if (c2087r != null && c2087r.m1968a("Content-Length") != null) {
                    throw new IllegalArgumentException("Unexpected header: Content-Length");
                }
                return new C2097b(c2087r, abstractC1953aa);
            }
            throw new NullPointerException("body == null");
        }
    }

    C2095v(C0009f c0009f, C2094u c2094u, List<C2097b> list) {
        this.f5386i = c0009f;
        this.f5387j = c2094u;
        this.f5388k = C2094u.m1896a(c2094u + "; boundary=" + c0009f.mo8050a());
        this.f5389l = C1999c.m2338a(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* renamed from: a */
    private long m1891a(@Nullable AbstractC0007d abstractC0007d, boolean z) {
        AbstractC0007d abstractC0007d2;
        if (z) {
            abstractC0007d = new C0005c();
            abstractC0007d2 = abstractC0007d;
        } else {
            abstractC0007d2 = null;
        }
        int size = this.f5389l.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            C2097b c2097b = this.f5389l.get(i);
            C2087r c2087r = c2097b.f5394a;
            AbstractC1953aa abstractC1953aa = c2097b.f5395b;
            abstractC0007d.mo8088c(f5385h);
            abstractC0007d.mo8090b(this.f5386i);
            abstractC0007d.mo8088c(f5384g);
            if (c2087r != null) {
                int m1970a = c2087r.m1970a();
                for (int i2 = 0; i2 < m1970a; i2++) {
                    abstractC0007d.mo8089b(c2087r.m1969a(i2)).mo8088c(f5383f).mo8089b(c2087r.m1964b(i2)).mo8088c(f5384g);
                }
            }
            C2094u mo1893a = abstractC1953aa.mo1893a();
            if (mo1893a != null) {
                abstractC0007d.mo8089b("Content-Type: ").mo8089b(mo1893a.toString()).mo8088c(f5384g);
            }
            long mo1889b = abstractC1953aa.mo1889b();
            if (mo1889b != -1) {
                abstractC0007d.mo8089b("Content-Length: ").mo8082l(mo1889b).mo8088c(f5384g);
            } else if (z) {
                abstractC0007d2.m8119r();
                return -1L;
            }
            abstractC0007d.mo8088c(f5384g);
            if (z) {
                c += mo1889b;
            } else {
                abstractC1953aa.mo1892a(abstractC0007d);
            }
            abstractC0007d.mo8088c(f5384g);
        }
        abstractC0007d.mo8088c(f5385h);
        abstractC0007d.mo8090b(this.f5386i);
        abstractC0007d.mo8088c(f5385h);
        abstractC0007d.mo8088c(f5384g);
        char c2 = c;
        if (z) {
            c2 = c + abstractC0007d2.m8137b();
            abstractC0007d2.m8119r();
        }
        return c2;
    }

    /* renamed from: a */
    static StringBuilder m1890a(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\n') {
                sb.append("%0A");
            } else if (charAt == '\r') {
                sb.append("%0D");
            } else if (charAt != '\"') {
                sb.append(charAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
        return sb;
    }

    @Override // okhttp3.AbstractC1953aa
    /* renamed from: a */
    public C2094u mo1893a() {
        return this.f5388k;
    }

    @Override // okhttp3.AbstractC1953aa
    /* renamed from: a */
    public void mo1892a(AbstractC0007d abstractC0007d) {
        m1891a(abstractC0007d, false);
    }

    @Override // okhttp3.AbstractC1953aa
    /* renamed from: b */
    public long mo1889b() {
        long j = this.f5390m;
        if (j != -1) {
            return j;
        }
        long m1891a = m1891a((AbstractC0007d) null, true);
        this.f5390m = m1891a;
        return m1891a;
    }
}
