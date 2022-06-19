package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.a */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a.class */
public final class C3890a {

    /* renamed from: a */
    private String f12272a;

    /* renamed from: com.android.billingclient.api.a$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a$a.class */
    public static final class C3891a {

        /* renamed from: a */
        private String f12273a;

        /* synthetic */ C3891a(C3922n c3922n) {
        }

        /* renamed from: a */
        public C3890a m23850a() {
            if (this.f12273a != null) {
                C3890a c3890a = new C3890a(null);
                c3890a.f12272a = this.f12273a;
                return c3890a;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        /* renamed from: b */
        public C3891a m23849b(String str) {
            this.f12273a = str;
            return this;
        }
    }

    /* synthetic */ C3890a(C3922n c3922n) {
    }

    /* renamed from: b */
    public static C3891a m23852b() {
        return new C3891a(null);
    }

    /* renamed from: a */
    public String m23853a() {
        return this.f12272a;
    }
}
