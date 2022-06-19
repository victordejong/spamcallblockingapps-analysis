package androidx.work;

import android.os.Build;
/* renamed from: androidx.work.b */
/* loaded from: classes-dex2jar.jar:androidx/work/b.class */
public final class C0548b {

    /* renamed from: i */
    public static final C0548b f2962i = new C0549a().m11768a();

    /* renamed from: a */
    private NetworkType f2963a;

    /* renamed from: b */
    private boolean f2964b;

    /* renamed from: c */
    private boolean f2965c;

    /* renamed from: d */
    private boolean f2966d;

    /* renamed from: e */
    private boolean f2967e;

    /* renamed from: f */
    private long f2968f;

    /* renamed from: g */
    private long f2969g;

    /* renamed from: h */
    private C0550c f2970h;

    /* renamed from: androidx.work.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$a.class */
    public static final class C0549a {

        /* renamed from: a */
        boolean f2971a = false;

        /* renamed from: b */
        boolean f2972b = false;

        /* renamed from: c */
        NetworkType f2973c = NetworkType.NOT_REQUIRED;

        /* renamed from: d */
        boolean f2974d = false;

        /* renamed from: e */
        boolean f2975e = false;

        /* renamed from: f */
        long f2976f = -1;

        /* renamed from: g */
        long f2977g = -1;

        /* renamed from: h */
        C0550c f2978h = new C0550c();

        /* renamed from: a */
        public C0548b m11768a() {
            return new C0548b(this);
        }

        /* renamed from: b */
        public C0549a m11767b(NetworkType networkType) {
            this.f2973c = networkType;
            return this;
        }
    }

    public C0548b() {
        this.f2963a = NetworkType.NOT_REQUIRED;
        this.f2968f = -1L;
        this.f2969g = -1L;
        this.f2970h = new C0550c();
    }

    C0548b(C0549a c0549a) {
        this.f2963a = NetworkType.NOT_REQUIRED;
        this.f2968f = -1L;
        this.f2969g = -1L;
        this.f2970h = new C0550c();
        this.f2964b = c0549a.f2971a;
        int i = Build.VERSION.SDK_INT;
        this.f2965c = i >= 23 && c0549a.f2972b;
        this.f2963a = c0549a.f2973c;
        this.f2966d = c0549a.f2974d;
        this.f2967e = c0549a.f2975e;
        if (i >= 24) {
            this.f2970h = c0549a.f2978h;
            this.f2968f = c0549a.f2976f;
            this.f2969g = c0549a.f2977g;
        }
    }

    public C0548b(C0548b c0548b) {
        this.f2963a = NetworkType.NOT_REQUIRED;
        this.f2968f = -1L;
        this.f2969g = -1L;
        this.f2970h = new C0550c();
        this.f2964b = c0548b.f2964b;
        this.f2965c = c0548b.f2965c;
        this.f2963a = c0548b.f2963a;
        this.f2966d = c0548b.f2966d;
        this.f2967e = c0548b.f2967e;
        this.f2970h = c0548b.f2970h;
    }

    /* renamed from: a */
    public C0550c m11785a() {
        return this.f2970h;
    }

    /* renamed from: b */
    public NetworkType m11784b() {
        return this.f2963a;
    }

    /* renamed from: c */
    public long m11783c() {
        return this.f2968f;
    }

    /* renamed from: d */
    public long m11782d() {
        return this.f2969g;
    }

    /* renamed from: e */
    public boolean m11781e() {
        return this.f2970h.m11764c() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0548b.class != obj.getClass()) {
            return false;
        }
        C0548b c0548b = (C0548b) obj;
        if (this.f2964b != c0548b.f2964b || this.f2965c != c0548b.f2965c || this.f2966d != c0548b.f2966d || this.f2967e != c0548b.f2967e || this.f2968f != c0548b.f2968f || this.f2969g != c0548b.f2969g || this.f2963a != c0548b.f2963a) {
            return false;
        }
        return this.f2970h.equals(c0548b.f2970h);
    }

    /* renamed from: f */
    public boolean m11780f() {
        return this.f2966d;
    }

    /* renamed from: g */
    public boolean m11779g() {
        return this.f2964b;
    }

    /* renamed from: h */
    public boolean m11778h() {
        return this.f2965c;
    }

    public int hashCode() {
        int hashCode = this.f2963a.hashCode();
        boolean z = this.f2964b;
        boolean z2 = this.f2965c;
        boolean z3 = this.f2966d;
        boolean z4 = this.f2967e;
        long j = this.f2968f;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f2969g;
        return (((((((((((((hashCode * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f2970h.hashCode();
    }

    /* renamed from: i */
    public boolean m11777i() {
        return this.f2967e;
    }

    /* renamed from: j */
    public void m11776j(C0550c c0550c) {
        this.f2970h = c0550c;
    }

    /* renamed from: k */
    public void m11775k(NetworkType networkType) {
        this.f2963a = networkType;
    }

    /* renamed from: l */
    public void m11774l(boolean z) {
        this.f2966d = z;
    }

    /* renamed from: m */
    public void m11773m(boolean z) {
        this.f2964b = z;
    }

    /* renamed from: n */
    public void m11772n(boolean z) {
        this.f2965c = z;
    }

    /* renamed from: o */
    public void m11771o(boolean z) {
        this.f2967e = z;
    }

    /* renamed from: p */
    public void m11770p(long j) {
        this.f2968f = j;
    }

    /* renamed from: q */
    public void m11769q(long j) {
        this.f2969g = j;
    }
}
