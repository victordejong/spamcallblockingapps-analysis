package p1727n3.p1834m0;

import android.os.Build;
/* renamed from: n3.m0.d */
/* loaded from: classes-dex2jar.jar:n3/m0/d.class */
public final class C26825d {

    /* renamed from: i */
    public static final C26825d f75057i = new C26825d(new C26826a());

    /* renamed from: a */
    public EnumC26841q f75058a;

    /* renamed from: b */
    public boolean f75059b;

    /* renamed from: c */
    public boolean f75060c;

    /* renamed from: d */
    public boolean f75061d;

    /* renamed from: e */
    public boolean f75062e;

    /* renamed from: f */
    public long f75063f;

    /* renamed from: g */
    public long f75064g;

    /* renamed from: h */
    public C26827e f75065h;

    /* renamed from: n3.m0.d$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/d$a.class */
    public static final class C26826a {

        /* renamed from: a */
        public boolean f75066a = false;

        /* renamed from: b */
        public boolean f75067b = false;

        /* renamed from: c */
        public EnumC26841q f75068c = EnumC26841q.NOT_REQUIRED;

        /* renamed from: d */
        public boolean f75069d = false;

        /* renamed from: e */
        public long f75070e = -1;

        /* renamed from: f */
        public long f75071f = -1;

        /* renamed from: g */
        public C26827e f75072g = new C26827e();
    }

    public C26825d() {
        this.f75058a = EnumC26841q.NOT_REQUIRED;
        this.f75063f = -1L;
        this.f75064g = -1L;
        this.f75065h = new C26827e();
    }

    public C26825d(C26826a c26826a) {
        this.f75058a = EnumC26841q.NOT_REQUIRED;
        this.f75063f = -1L;
        this.f75064g = -1L;
        this.f75065h = new C26827e();
        this.f75059b = c26826a.f75066a;
        int i = Build.VERSION.SDK_INT;
        this.f75060c = c26826a.f75067b;
        this.f75058a = c26826a.f75068c;
        this.f75061d = c26826a.f75069d;
        this.f75062e = false;
        if (i >= 24) {
            this.f75065h = c26826a.f75072g;
            this.f75063f = c26826a.f75070e;
            this.f75064g = c26826a.f75071f;
        }
    }

    public C26825d(C26825d c26825d) {
        this.f75058a = EnumC26841q.NOT_REQUIRED;
        this.f75063f = -1L;
        this.f75064g = -1L;
        this.f75065h = new C26827e();
        this.f75059b = c26825d.f75059b;
        this.f75060c = c26825d.f75060c;
        this.f75058a = c26825d.f75058a;
        this.f75061d = c26825d.f75061d;
        this.f75062e = c26825d.f75062e;
        this.f75065h = c26825d.f75065h;
    }

    /* renamed from: a */
    public boolean m1308a() {
        return this.f75065h.m1307a() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C26825d.class != obj.getClass()) {
            return false;
        }
        C26825d c26825d = (C26825d) obj;
        if (this.f75059b != c26825d.f75059b || this.f75060c != c26825d.f75060c || this.f75061d != c26825d.f75061d || this.f75062e != c26825d.f75062e || this.f75063f != c26825d.f75063f || this.f75064g != c26825d.f75064g || this.f75058a != c26825d.f75058a) {
            return false;
        }
        return this.f75065h.equals(c26825d.f75065h);
    }

    public int hashCode() {
        int hashCode = this.f75058a.hashCode();
        boolean z = this.f75059b;
        boolean z2 = this.f75060c;
        boolean z3 = this.f75061d;
        boolean z4 = this.f75062e;
        long j = this.f75063f;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f75064g;
        return this.f75065h.hashCode() + (((((((((((((hashCode * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }
}
