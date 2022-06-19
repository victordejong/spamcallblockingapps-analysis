package androidx.work;

import android.os.Build;
/* renamed from: androidx.work.c */
/* loaded from: classes-dex2jar.jar:androidx/work/c.class */
public final class C1129c {

    /* renamed from: a */
    public static final C1129c f3895a = new C1130a().m17929a();

    /* renamed from: b */
    private EnumC1295m f3896b;

    /* renamed from: c */
    private boolean f3897c;

    /* renamed from: d */
    private boolean f3898d;

    /* renamed from: e */
    private boolean f3899e;

    /* renamed from: f */
    private boolean f3900f;

    /* renamed from: g */
    private long f3901g;

    /* renamed from: h */
    private long f3902h;

    /* renamed from: i */
    private C1131d f3903i;

    /* renamed from: androidx.work.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/c$a.class */
    public static final class C1130a {

        /* renamed from: a */
        boolean f3904a = false;

        /* renamed from: b */
        boolean f3905b = false;

        /* renamed from: c */
        EnumC1295m f3906c = EnumC1295m.NOT_REQUIRED;

        /* renamed from: d */
        boolean f3907d = false;

        /* renamed from: e */
        boolean f3908e = false;

        /* renamed from: f */
        long f3909f = -1;

        /* renamed from: g */
        long f3910g = -1;

        /* renamed from: h */
        C1131d f3911h = new C1131d();

        /* renamed from: a */
        public C1129c m17929a() {
            return new C1129c(this);
        }
    }

    public C1129c() {
        this.f3896b = EnumC1295m.NOT_REQUIRED;
        this.f3901g = -1L;
        this.f3902h = -1L;
        this.f3903i = new C1131d();
    }

    C1129c(C1130a c1130a) {
        this.f3896b = EnumC1295m.NOT_REQUIRED;
        this.f3901g = -1L;
        this.f3902h = -1L;
        this.f3903i = new C1131d();
        this.f3897c = c1130a.f3904a;
        this.f3898d = Build.VERSION.SDK_INT >= 23 && c1130a.f3905b;
        this.f3896b = c1130a.f3906c;
        this.f3899e = c1130a.f3907d;
        this.f3900f = c1130a.f3908e;
        if (Build.VERSION.SDK_INT >= 24) {
            this.f3903i = c1130a.f3911h;
            this.f3901g = c1130a.f3909f;
            this.f3902h = c1130a.f3910g;
        }
    }

    public C1129c(C1129c c1129c) {
        this.f3896b = EnumC1295m.NOT_REQUIRED;
        this.f3901g = -1L;
        this.f3902h = -1L;
        this.f3903i = new C1131d();
        this.f3897c = c1129c.f3897c;
        this.f3898d = c1129c.f3898d;
        this.f3896b = c1129c.f3896b;
        this.f3899e = c1129c.f3899e;
        this.f3900f = c1129c.f3900f;
        this.f3903i = c1129c.f3903i;
    }

    /* renamed from: a */
    public EnumC1295m m17946a() {
        return this.f3896b;
    }

    /* renamed from: a */
    public void m17945a(long j) {
        this.f3901g = j;
    }

    /* renamed from: a */
    public void m17944a(C1131d c1131d) {
        this.f3903i = c1131d;
    }

    /* renamed from: a */
    public void m17943a(EnumC1295m enumC1295m) {
        this.f3896b = enumC1295m;
    }

    /* renamed from: a */
    public void m17942a(boolean z) {
        this.f3897c = z;
    }

    /* renamed from: b */
    public void m17940b(long j) {
        this.f3902h = j;
    }

    /* renamed from: b */
    public void m17939b(boolean z) {
        this.f3898d = z;
    }

    /* renamed from: b */
    public boolean m17941b() {
        return this.f3897c;
    }

    /* renamed from: c */
    public void m17937c(boolean z) {
        this.f3899e = z;
    }

    /* renamed from: c */
    public boolean m17938c() {
        return this.f3898d;
    }

    /* renamed from: d */
    public void m17935d(boolean z) {
        this.f3900f = z;
    }

    /* renamed from: d */
    public boolean m17936d() {
        return this.f3899e;
    }

    /* renamed from: e */
    public boolean m17934e() {
        return this.f3900f;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj != null) {
                z = false;
                if (getClass() == obj.getClass()) {
                    C1129c c1129c = (C1129c) obj;
                    z = false;
                    if (this.f3897c == c1129c.f3897c) {
                        z = false;
                        if (this.f3898d == c1129c.f3898d) {
                            z = false;
                            if (this.f3899e == c1129c.f3899e) {
                                z = false;
                                if (this.f3900f == c1129c.f3900f) {
                                    z = false;
                                    if (this.f3901g == c1129c.f3901g) {
                                        z = false;
                                        if (this.f3902h == c1129c.f3902h) {
                                            z = false;
                                            if (this.f3896b == c1129c.f3896b) {
                                                z = this.f3903i.equals(c1129c.f3903i);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public long m17933f() {
        return this.f3901g;
    }

    /* renamed from: g */
    public long m17932g() {
        return this.f3902h;
    }

    /* renamed from: h */
    public C1131d m17931h() {
        return this.f3903i;
    }

    public int hashCode() {
        int i = 1;
        int hashCode = this.f3896b.hashCode();
        int i2 = this.f3897c ? 1 : 0;
        int i3 = this.f3898d ? 1 : 0;
        int i4 = this.f3899e ? 1 : 0;
        if (!this.f3900f) {
            i = 0;
        }
        return ((((((((i4 + ((i3 + ((i2 + (hashCode * 31)) * 31)) * 31)) * 31) + i) * 31) + ((int) (this.f3901g ^ (this.f3901g >>> 32)))) * 31) + ((int) (this.f3902h ^ (this.f3902h >>> 32)))) * 31) + this.f3903i.hashCode();
    }

    /* renamed from: i */
    public boolean m17930i() {
        return this.f3903i.m17926b() > 0;
    }
}
