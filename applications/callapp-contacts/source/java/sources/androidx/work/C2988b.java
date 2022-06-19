package androidx.work;

import android.os.Build;
/* renamed from: androidx.work.b */
/* loaded from: classes-dex2jar.jar:androidx/work/b.class */
public final class C2988b {

    /* renamed from: a */
    public static final C2988b f11129a = new C2989a().m39516a();

    /* renamed from: b */
    public EnumC3147l f11130b;

    /* renamed from: c */
    public boolean f11131c;

    /* renamed from: d */
    public boolean f11132d;

    /* renamed from: e */
    public boolean f11133e;

    /* renamed from: f */
    public boolean f11134f;

    /* renamed from: g */
    public long f11135g;

    /* renamed from: h */
    public long f11136h;

    /* renamed from: i */
    public C2990c f11137i;

    /* renamed from: androidx.work.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$a.class */
    public static final class C2989a {

        /* renamed from: a */
        public boolean f11138a = false;

        /* renamed from: b */
        boolean f11139b = false;

        /* renamed from: c */
        public EnumC3147l f11140c = EnumC3147l.NOT_REQUIRED;

        /* renamed from: d */
        boolean f11141d = false;

        /* renamed from: e */
        boolean f11142e = false;

        /* renamed from: f */
        long f11143f = -1;

        /* renamed from: g */
        long f11144g = -1;

        /* renamed from: h */
        C2990c f11145h = new C2990c();

        /* renamed from: a */
        public final C2989a m39515a(EnumC3147l enumC3147l) {
            this.f11140c = enumC3147l;
            return this;
        }

        /* renamed from: a */
        public final C2988b m39516a() {
            return new C2988b(this);
        }
    }

    public C2988b() {
        this.f11130b = EnumC3147l.NOT_REQUIRED;
        this.f11135g = -1L;
        this.f11136h = -1L;
        this.f11137i = new C2990c();
    }

    C2988b(C2989a c2989a) {
        this.f11130b = EnumC3147l.NOT_REQUIRED;
        this.f11135g = -1L;
        this.f11136h = -1L;
        this.f11137i = new C2990c();
        this.f11131c = c2989a.f11138a;
        this.f11132d = Build.VERSION.SDK_INT >= 23 && c2989a.f11139b;
        this.f11130b = c2989a.f11140c;
        this.f11133e = c2989a.f11141d;
        this.f11134f = c2989a.f11142e;
        if (Build.VERSION.SDK_INT >= 24) {
            this.f11137i = c2989a.f11145h;
            this.f11135g = c2989a.f11143f;
            this.f11136h = c2989a.f11144g;
        }
    }

    public C2988b(C2988b c2988b) {
        this.f11130b = EnumC3147l.NOT_REQUIRED;
        this.f11135g = -1L;
        this.f11136h = -1L;
        this.f11137i = new C2990c();
        this.f11131c = c2988b.f11131c;
        this.f11132d = c2988b.f11132d;
        this.f11130b = c2988b.f11130b;
        this.f11133e = c2988b.f11133e;
        this.f11134f = c2988b.f11134f;
        this.f11137i = c2988b.f11137i;
    }

    /* renamed from: a */
    public final boolean m39517a() {
        return this.f11137i.m39514a() > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2988b c2988b = (C2988b) obj;
        if (this.f11131c != c2988b.f11131c || this.f11132d != c2988b.f11132d || this.f11133e != c2988b.f11133e || this.f11134f != c2988b.f11134f || this.f11135g != c2988b.f11135g || this.f11136h != c2988b.f11136h || this.f11130b != c2988b.f11130b) {
            return false;
        }
        return this.f11137i.equals(c2988b.f11137i);
    }

    public final int hashCode() {
        int hashCode = this.f11130b.hashCode();
        boolean z = this.f11131c;
        boolean z2 = this.f11132d;
        boolean z3 = this.f11133e;
        boolean z4 = this.f11134f;
        long j = this.f11135g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f11136h;
        return (((((((((((((hashCode * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f11137i.hashCode();
    }
}
