package androidx.work;

import android.os.Build;
/* renamed from: androidx.work.b */
/* loaded from: classes-dex2jar.jar:androidx/work/b.class */
public final class C1234b {

    /* renamed from: a */
    public static final C1234b f5276a = new C1235a().m30565a();

    /* renamed from: b */
    private NetworkType f5277b;

    /* renamed from: c */
    private boolean f5278c;

    /* renamed from: d */
    private boolean f5279d;

    /* renamed from: e */
    private boolean f5280e;

    /* renamed from: f */
    private boolean f5281f;

    /* renamed from: g */
    private long f5282g;

    /* renamed from: h */
    private long f5283h;

    /* renamed from: i */
    private C1236c f5284i;

    /* renamed from: androidx.work.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$a.class */
    public static final class C1235a {

        /* renamed from: a */
        boolean f5285a = false;

        /* renamed from: b */
        boolean f5286b = false;

        /* renamed from: c */
        NetworkType f5287c = NetworkType.NOT_REQUIRED;

        /* renamed from: d */
        boolean f5288d = false;

        /* renamed from: e */
        boolean f5289e = false;

        /* renamed from: f */
        long f5290f = -1;

        /* renamed from: g */
        long f5291g = -1;

        /* renamed from: h */
        C1236c f5292h = new C1236c();

        /* renamed from: a */
        public C1234b m30565a() {
            return new C1234b(this);
        }

        /* renamed from: b */
        public C1235a m30564b(NetworkType networkType) {
            this.f5287c = networkType;
            return this;
        }
    }

    public C1234b() {
        this.f5277b = NetworkType.NOT_REQUIRED;
        this.f5282g = -1L;
        this.f5283h = -1L;
        this.f5284i = new C1236c();
    }

    C1234b(C1235a c1235a) {
        this.f5277b = NetworkType.NOT_REQUIRED;
        this.f5282g = -1L;
        this.f5283h = -1L;
        this.f5284i = new C1236c();
        this.f5278c = c1235a.f5285a;
        int i = Build.VERSION.SDK_INT;
        this.f5279d = i >= 23 && c1235a.f5286b;
        this.f5277b = c1235a.f5287c;
        this.f5280e = c1235a.f5288d;
        this.f5281f = c1235a.f5289e;
        if (i >= 24) {
            this.f5284i = c1235a.f5292h;
            this.f5282g = c1235a.f5290f;
            this.f5283h = c1235a.f5291g;
        }
    }

    public C1234b(C1234b c1234b) {
        this.f5277b = NetworkType.NOT_REQUIRED;
        this.f5282g = -1L;
        this.f5283h = -1L;
        this.f5284i = new C1236c();
        this.f5278c = c1234b.f5278c;
        this.f5279d = c1234b.f5279d;
        this.f5277b = c1234b.f5277b;
        this.f5280e = c1234b.f5280e;
        this.f5281f = c1234b.f5281f;
        this.f5284i = c1234b.f5284i;
    }

    /* renamed from: a */
    public C1236c m30582a() {
        return this.f5284i;
    }

    /* renamed from: b */
    public NetworkType m30581b() {
        return this.f5277b;
    }

    /* renamed from: c */
    public long m30580c() {
        return this.f5282g;
    }

    /* renamed from: d */
    public long m30579d() {
        return this.f5283h;
    }

    /* renamed from: e */
    public boolean m30578e() {
        return this.f5284i.m30561c() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1234b.class != obj.getClass()) {
            return false;
        }
        C1234b c1234b = (C1234b) obj;
        if (this.f5278c != c1234b.f5278c || this.f5279d != c1234b.f5279d || this.f5280e != c1234b.f5280e || this.f5281f != c1234b.f5281f || this.f5282g != c1234b.f5282g || this.f5283h != c1234b.f5283h || this.f5277b != c1234b.f5277b) {
            return false;
        }
        return this.f5284i.equals(c1234b.f5284i);
    }

    /* renamed from: f */
    public boolean m30577f() {
        return this.f5280e;
    }

    /* renamed from: g */
    public boolean m30576g() {
        return this.f5278c;
    }

    /* renamed from: h */
    public boolean m30575h() {
        return this.f5279d;
    }

    public int hashCode() {
        int hashCode = this.f5277b.hashCode();
        boolean z = this.f5278c;
        boolean z2 = this.f5279d;
        boolean z3 = this.f5280e;
        boolean z4 = this.f5281f;
        long j = this.f5282g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f5283h;
        return (((((((((((((hashCode * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f5284i.hashCode();
    }

    /* renamed from: i */
    public boolean m30574i() {
        return this.f5281f;
    }

    /* renamed from: j */
    public void m30573j(C1236c c1236c) {
        this.f5284i = c1236c;
    }

    /* renamed from: k */
    public void m30572k(NetworkType networkType) {
        this.f5277b = networkType;
    }

    /* renamed from: l */
    public void m30571l(boolean z) {
        this.f5280e = z;
    }

    /* renamed from: m */
    public void m30570m(boolean z) {
        this.f5278c = z;
    }

    /* renamed from: n */
    public void m30569n(boolean z) {
        this.f5279d = z;
    }

    /* renamed from: o */
    public void m30568o(boolean z) {
        this.f5281f = z;
    }

    /* renamed from: p */
    public void m30567p(long j) {
        this.f5282g = j;
    }

    /* renamed from: q */
    public void m30566q(long j) {
        this.f5283h = j;
    }
}
