package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.h */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h.class */
public final class C3908h {

    /* renamed from: a */
    private String f12322a;

    /* renamed from: com.android.billingclient.api.h$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h$a.class */
    public static final class C3909a {

        /* renamed from: a */
        private String f12323a;

        /* synthetic */ C3909a(C3946z c3946z) {
        }

        /* renamed from: a */
        public C3908h m23769a() {
            if (this.f12323a != null) {
                C3908h c3908h = new C3908h(null);
                c3908h.f12322a = this.f12323a;
                return c3908h;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        /* renamed from: b */
        public C3909a m23768b(String str) {
            this.f12323a = str;
            return this;
        }
    }

    /* synthetic */ C3908h(C3946z c3946z) {
    }

    /* renamed from: b */
    public static C3909a m23771b() {
        return new C3909a(null);
    }

    /* renamed from: a */
    public String m23772a() {
        return this.f12322a;
    }
}
