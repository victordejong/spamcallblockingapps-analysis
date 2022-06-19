package p186o1;

import android.os.Build;
/* renamed from: o1.b */
/* loaded from: classes-dex2jar.jar:o1/b.class */
public final class C3816b {

    /* renamed from: i */
    public static final C3816b f12293i = new C3816b(new C3817a());

    /* renamed from: a */
    public EnumC3826i f12294a;

    /* renamed from: b */
    public boolean f12295b;

    /* renamed from: c */
    public boolean f12296c;

    /* renamed from: d */
    public boolean f12297d;

    /* renamed from: e */
    public boolean f12298e;

    /* renamed from: f */
    public long f12299f;

    /* renamed from: g */
    public long f12300g;

    /* renamed from: h */
    public C3818c f12301h;

    /* renamed from: o1.b$a */
    /* loaded from: classes-dex2jar.jar:o1/b$a.class */
    public static final class C3817a {

        /* renamed from: a */
        public EnumC3826i f12302a = EnumC3826i.NOT_REQUIRED;

        /* renamed from: b */
        public C3818c f12303b = new C3818c();
    }

    public C3816b() {
        this.f12294a = EnumC3826i.NOT_REQUIRED;
        this.f12299f = -1L;
        this.f12300g = -1L;
        this.f12301h = new C3818c();
    }

    public C3816b(C3817a c3817a) {
        this.f12294a = EnumC3826i.NOT_REQUIRED;
        this.f12299f = -1L;
        this.f12300g = -1L;
        this.f12301h = new C3818c();
        this.f12295b = false;
        int i = Build.VERSION.SDK_INT;
        this.f12296c = false;
        this.f12294a = c3817a.f12302a;
        this.f12297d = false;
        this.f12298e = false;
        if (i >= 24) {
            this.f12301h = c3817a.f12303b;
            this.f12299f = -1L;
            this.f12300g = -1L;
        }
    }

    public C3816b(C3816b c3816b) {
        this.f12294a = EnumC3826i.NOT_REQUIRED;
        this.f12299f = -1L;
        this.f12300g = -1L;
        this.f12301h = new C3818c();
        this.f12295b = c3816b.f12295b;
        this.f12296c = c3816b.f12296c;
        this.f12294a = c3816b.f12294a;
        this.f12297d = c3816b.f12297d;
        this.f12298e = c3816b.f12298e;
        this.f12301h = c3816b.f12301h;
    }

    /* renamed from: a */
    public boolean m1777a() {
        return this.f12301h.m1776a() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3816b.class != obj.getClass()) {
            return false;
        }
        C3816b c3816b = (C3816b) obj;
        if (this.f12295b != c3816b.f12295b || this.f12296c != c3816b.f12296c || this.f12297d != c3816b.f12297d || this.f12298e != c3816b.f12298e || this.f12299f != c3816b.f12299f || this.f12300g != c3816b.f12300g || this.f12294a != c3816b.f12294a) {
            return false;
        }
        return this.f12301h.equals(c3816b.f12301h);
    }

    public int hashCode() {
        int hashCode = this.f12294a.hashCode();
        boolean z = this.f12295b;
        boolean z2 = this.f12296c;
        boolean z3 = this.f12297d;
        boolean z4 = this.f12298e;
        long j = this.f12299f;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f12300g;
        return this.f12301h.hashCode() + (((((((((((((hashCode * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }
}
