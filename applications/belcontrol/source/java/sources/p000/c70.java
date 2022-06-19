package p000;
/* renamed from: c70 */
/* loaded from: classes-dex2jar.jar:c70.class */
public class c70 {

    /* renamed from: a */
    public String f2162a;

    /* renamed from: b */
    public d50 f2163b;

    /* renamed from: c */
    public String f2164c;

    /* renamed from: d */
    public String f2165d;

    /* renamed from: e */
    public u40 f2166e;

    /* renamed from: f */
    public u40 f2167f;

    /* renamed from: g */
    public long f2168g;

    /* renamed from: h */
    public long f2169h;

    /* renamed from: i */
    public long f2170i;

    /* renamed from: j */
    public s40 f2171j;

    /* renamed from: k */
    public int f2172k;

    /* renamed from: l */
    public q40 f2173l;

    /* renamed from: m */
    public long f2174m;

    /* renamed from: n */
    public long f2175n;

    /* renamed from: o */
    public long f2176o;

    /* renamed from: p */
    public long f2177p;

    /* renamed from: c70$a */
    /* loaded from: classes-dex2jar.jar:c70$a.class */
    public static class C0286a {

        /* renamed from: a */
        public String f2178a;

        /* renamed from: b */
        public d50 f2179b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0286a.class != obj.getClass()) {
                return false;
            }
            C0286a c0286a = (C0286a) obj;
            if (this.f2179b == c0286a.f2179b) {
                return this.f2178a.equals(c0286a.f2178a);
            }
            return false;
        }

        public int hashCode() {
            return (this.f2178a.hashCode() * 31) + this.f2179b.hashCode();
        }
    }

    static {
        x40.f("WorkSpec");
    }

    public c70(c70 c70Var) {
        this.f2163b = d50.ENQUEUED;
        u40 u40Var = u40.c;
        this.f2166e = u40Var;
        this.f2167f = u40Var;
        this.f2171j = s40.i;
        this.f2173l = q40.a;
        this.f2174m = 30000L;
        this.f2177p = -1L;
        this.f2162a = c70Var.f2162a;
        this.f2164c = c70Var.f2164c;
        this.f2163b = c70Var.f2163b;
        this.f2165d = c70Var.f2165d;
        this.f2166e = new u40(c70Var.f2166e);
        this.f2167f = new u40(c70Var.f2167f);
        this.f2168g = c70Var.f2168g;
        this.f2169h = c70Var.f2169h;
        this.f2170i = c70Var.f2170i;
        this.f2171j = new s40(c70Var.f2171j);
        this.f2172k = c70Var.f2172k;
        this.f2173l = c70Var.f2173l;
        this.f2174m = c70Var.f2174m;
        this.f2175n = c70Var.f2175n;
        this.f2176o = c70Var.f2176o;
        this.f2177p = c70Var.f2177p;
    }

    public c70(String str, String str2) {
        this.f2163b = d50.ENQUEUED;
        u40 u40Var = u40.c;
        this.f2166e = u40Var;
        this.f2167f = u40Var;
        this.f2171j = s40.i;
        this.f2173l = q40.a;
        this.f2174m = 30000L;
        this.f2177p = -1L;
        this.f2162a = str;
        this.f2164c = str2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* renamed from: a */
    public long m5443a() {
        boolean z = false;
        if (m5441c()) {
            if (this.f2173l == q40.b) {
                z = true;
            }
            return this.f2175n + Math.min(18000000L, (long) (z ? this.f2174m * this.f2172k : Math.scalb((float) this.f2174m, this.f2172k - 1)));
        }
        char c = 0;
        if (!m5440d()) {
            ?? r0 = this.f2175n;
            char c2 = r0;
            if (r0 == 0) {
                c2 = System.currentTimeMillis();
            }
            return c2 + this.f2168g;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ?? r02 = this.f2175n;
        char c3 = r02 == 0 ? currentTimeMillis + this.f2168g : r02;
        long j = this.f2170i;
        ?? r03 = this.f2169h;
        boolean z2 = false;
        if (j != r03) {
            z2 = true;
        }
        int i = (r02 > 0L ? 1 : (r02 == 0L ? 0 : -1));
        if (z2) {
            if (i == 0) {
                c = j * (-1);
            }
            return c3 + r03 + c;
        }
        if (i != 0) {
            c = r03;
        }
        return c3 + c;
    }

    /* renamed from: b */
    public boolean m5442b() {
        return !s40.i.equals(this.f2171j);
    }

    /* renamed from: c */
    public boolean m5441c() {
        return this.f2163b == d50.ENQUEUED && this.f2172k > 0;
    }

    /* renamed from: d */
    public boolean m5440d() {
        return this.f2169h != 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || c70.class != obj.getClass()) {
            return false;
        }
        c70 c70Var = (c70) obj;
        if (this.f2168g != c70Var.f2168g || this.f2169h != c70Var.f2169h || this.f2170i != c70Var.f2170i || this.f2172k != c70Var.f2172k || this.f2174m != c70Var.f2174m || this.f2175n != c70Var.f2175n || this.f2176o != c70Var.f2176o || this.f2177p != c70Var.f2177p || !this.f2162a.equals(c70Var.f2162a) || this.f2163b != c70Var.f2163b || !this.f2164c.equals(c70Var.f2164c)) {
            return false;
        }
        String str = this.f2165d;
        if (str != null) {
            if (!str.equals(c70Var.f2165d)) {
                return false;
            }
        } else if (c70Var.f2165d != null) {
            return false;
        }
        if (!this.f2166e.equals(c70Var.f2166e) || !this.f2167f.equals(c70Var.f2167f) || !this.f2171j.equals(c70Var.f2171j)) {
            return false;
        }
        if (this.f2173l != c70Var.f2173l) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f2162a.hashCode();
        int hashCode2 = this.f2163b.hashCode();
        int hashCode3 = this.f2164c.hashCode();
        String str = this.f2165d;
        int hashCode4 = str != null ? str.hashCode() : 0;
        int hashCode5 = this.f2166e.hashCode();
        int hashCode6 = this.f2167f.hashCode();
        long j = this.f2168g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f2169h;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.f2170i;
        int i3 = (int) (j3 ^ (j3 >>> 32));
        int hashCode7 = this.f2171j.hashCode();
        int i4 = this.f2172k;
        int hashCode8 = this.f2173l.hashCode();
        long j4 = this.f2174m;
        int i5 = (int) (j4 ^ (j4 >>> 32));
        long j5 = this.f2175n;
        int i6 = (int) (j5 ^ (j5 >>> 32));
        long j6 = this.f2176o;
        int i7 = (int) (j6 ^ (j6 >>> 32));
        long j7 = this.f2177p;
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2) * 31) + i3) * 31) + hashCode7) * 31) + i4) * 31) + hashCode8) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)));
    }

    public String toString() {
        return "{WorkSpec: " + this.f2162a + "}";
    }
}
