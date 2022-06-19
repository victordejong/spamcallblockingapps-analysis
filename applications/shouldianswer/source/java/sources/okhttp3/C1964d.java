package okhttp3;

import com.google.android.gms.common.api.Api;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* renamed from: okhttp3.d */
/* loaded from: classes-dex2jar.jar:okhttp3/d.class */
public final class C1964d {

    /* renamed from: a */
    public static final C1964d f4758a = new C1965a().m2440a().m2437c();

    /* renamed from: b */
    public static final C1964d f4759b = new C1965a().m2438b().m2439a(Api.BaseClientBuilder.API_PRIORITY_OTHER, TimeUnit.SECONDS).m2437c();
    @Nullable

    /* renamed from: c */
    String f4760c;

    /* renamed from: d */
    private final boolean f4761d;

    /* renamed from: e */
    private final boolean f4762e;

    /* renamed from: f */
    private final int f4763f;

    /* renamed from: g */
    private final int f4764g;

    /* renamed from: h */
    private final boolean f4765h;

    /* renamed from: i */
    private final boolean f4766i;

    /* renamed from: j */
    private final boolean f4767j;

    /* renamed from: k */
    private final int f4768k;

    /* renamed from: l */
    private final int f4769l;

    /* renamed from: m */
    private final boolean f4770m;

    /* renamed from: n */
    private final boolean f4771n;

    /* renamed from: o */
    private final boolean f4772o;

    /* renamed from: okhttp3.d$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/d$a.class */
    public static final class C1965a {

        /* renamed from: a */
        boolean f4773a;

        /* renamed from: b */
        boolean f4774b;

        /* renamed from: c */
        int f4775c = -1;

        /* renamed from: d */
        int f4776d = -1;

        /* renamed from: e */
        int f4777e = -1;

        /* renamed from: f */
        boolean f4778f;

        /* renamed from: g */
        boolean f4779g;

        /* renamed from: h */
        boolean f4780h;

        /* renamed from: a */
        public C1965a m2440a() {
            this.f4773a = true;
            return this;
        }

        /* renamed from: a */
        public C1965a m2439a(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f4776d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i);
        }

        /* renamed from: b */
        public C1965a m2438b() {
            this.f4778f = true;
            return this;
        }

        /* renamed from: c */
        public C1964d m2437c() {
            return new C1964d(this);
        }
    }

    C1964d(C1965a c1965a) {
        this.f4761d = c1965a.f4773a;
        this.f4762e = c1965a.f4774b;
        this.f4763f = c1965a.f4775c;
        this.f4764g = -1;
        this.f4765h = false;
        this.f4766i = false;
        this.f4767j = false;
        this.f4768k = c1965a.f4776d;
        this.f4769l = c1965a.f4777e;
        this.f4770m = c1965a.f4778f;
        this.f4771n = c1965a.f4779g;
        this.f4772o = c1965a.f4780h;
    }

    private C1964d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.f4761d = z;
        this.f4762e = z2;
        this.f4763f = i;
        this.f4764g = i2;
        this.f4765h = z3;
        this.f4766i = z4;
        this.f4767j = z5;
        this.f4768k = i3;
        this.f4769l = i4;
        this.f4770m = z6;
        this.f4771n = z7;
        this.f4772o = z8;
        this.f4760c = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00e8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okhttp3.C1964d m2451a(okhttp3.C2087r r16) {
        /*
            Method dump skipped, instructions count: 1293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.C1964d.m2451a(okhttp3.r):okhttp3.d");
    }

    /* renamed from: k */
    private String m2441k() {
        StringBuilder sb = new StringBuilder();
        if (this.f4761d) {
            sb.append("no-cache, ");
        }
        if (this.f4762e) {
            sb.append("no-store, ");
        }
        if (this.f4763f != -1) {
            sb.append("max-age=");
            sb.append(this.f4763f);
            sb.append(", ");
        }
        if (this.f4764g != -1) {
            sb.append("s-maxage=");
            sb.append(this.f4764g);
            sb.append(", ");
        }
        if (this.f4765h) {
            sb.append("private, ");
        }
        if (this.f4766i) {
            sb.append("public, ");
        }
        if (this.f4767j) {
            sb.append("must-revalidate, ");
        }
        if (this.f4768k != -1) {
            sb.append("max-stale=");
            sb.append(this.f4768k);
            sb.append(", ");
        }
        if (this.f4769l != -1) {
            sb.append("min-fresh=");
            sb.append(this.f4769l);
            sb.append(", ");
        }
        if (this.f4770m) {
            sb.append("only-if-cached, ");
        }
        if (this.f4771n) {
            sb.append("no-transform, ");
        }
        if (this.f4772o) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    /* renamed from: a */
    public boolean m2452a() {
        return this.f4761d;
    }

    /* renamed from: b */
    public boolean m2450b() {
        return this.f4762e;
    }

    /* renamed from: c */
    public int m2449c() {
        return this.f4763f;
    }

    /* renamed from: d */
    public boolean m2448d() {
        return this.f4765h;
    }

    /* renamed from: e */
    public boolean m2447e() {
        return this.f4766i;
    }

    /* renamed from: f */
    public boolean m2446f() {
        return this.f4767j;
    }

    /* renamed from: g */
    public int m2445g() {
        return this.f4768k;
    }

    /* renamed from: h */
    public int m2444h() {
        return this.f4769l;
    }

    /* renamed from: i */
    public boolean m2443i() {
        return this.f4770m;
    }

    /* renamed from: j */
    public boolean m2442j() {
        return this.f4772o;
    }

    public String toString() {
        String str = this.f4760c;
        if (str == null) {
            str = m2441k();
            this.f4760c = str;
        }
        return str;
    }
}
