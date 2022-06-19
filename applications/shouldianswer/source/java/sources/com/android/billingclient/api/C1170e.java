package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.e */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/e.class */
public class C1170e {

    /* renamed from: a */
    private String f3734a;

    /* renamed from: b */
    private String f3735b;

    /* renamed from: c */
    private C1176h f3736c;

    /* renamed from: d */
    private String f3737d;

    /* renamed from: e */
    private String f3738e;

    /* renamed from: f */
    private boolean f3739f;

    /* renamed from: g */
    private int f3740g = 0;

    /* renamed from: com.android.billingclient.api.e$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/e$a.class */
    public static class C1172a {

        /* renamed from: a */
        private String f3741a;

        /* renamed from: b */
        private String f3742b;

        /* renamed from: c */
        private C1176h f3743c;

        /* renamed from: d */
        private String f3744d;

        /* renamed from: e */
        private String f3745e;

        /* renamed from: f */
        private boolean f3746f;

        /* renamed from: g */
        private int f3747g;

        private C1172a() {
            this.f3747g = 0;
        }

        @Deprecated
        /* renamed from: a */
        public C1172a m3877a(String str) {
            if (this.f3743c == null) {
                this.f3741a = str;
                return this;
            }
            throw new RuntimeException("Sku details already set");
        }

        /* renamed from: a */
        public C1170e m3878a() {
            C1170e c1170e = new C1170e();
            c1170e.f3734a = this.f3741a;
            c1170e.f3735b = this.f3742b;
            c1170e.f3736c = this.f3743c;
            c1170e.f3737d = this.f3744d;
            c1170e.f3738e = this.f3745e;
            c1170e.f3739f = this.f3746f;
            c1170e.f3740g = this.f3747g;
            return c1170e;
        }

        @Deprecated
        /* renamed from: b */
        public C1172a m3876b(String str) {
            if (this.f3743c == null) {
                this.f3742b = str;
                return this;
            }
            throw new RuntimeException("Sku details already set");
        }
    }

    /* renamed from: i */
    public static C1172a m3879i() {
        return new C1172a();
    }

    /* renamed from: a */
    public String m3894a() {
        C1176h c1176h = this.f3736c;
        return c1176h != null ? c1176h.m3870a() : this.f3734a;
    }

    /* renamed from: b */
    public String m3889b() {
        C1176h c1176h = this.f3736c;
        return c1176h != null ? c1176h.m3869b() : this.f3735b;
    }

    /* renamed from: c */
    public C1176h m3887c() {
        return this.f3736c;
    }

    /* renamed from: d */
    public String m3885d() {
        return this.f3737d;
    }

    /* renamed from: e */
    public String m3883e() {
        return this.f3738e;
    }

    /* renamed from: f */
    public boolean m3882f() {
        return this.f3739f;
    }

    /* renamed from: g */
    public int m3881g() {
        return this.f3740g;
    }

    /* renamed from: h */
    public boolean m3880h() {
        return (!this.f3739f && this.f3738e == null && this.f3740g == 0) ? false : true;
    }
}
