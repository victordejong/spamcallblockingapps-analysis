package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.h */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h.class */
public final class C0636h {

    /* renamed from: a */
    private String f3204a;

    /* renamed from: com.android.billingclient.api.h$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h$a.class */
    public static final class C0637a {

        /* renamed from: a */
        private String f3205a;

        /* synthetic */ C0637a(C0674z c0674z) {
        }

        /* renamed from: a */
        public C0636h m11478a() {
            String str = this.f3205a;
            if (str != null) {
                C0636h c0636h = new C0636h(null);
                c0636h.f3204a = str;
                return c0636h;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        /* renamed from: b */
        public C0637a m11477b(String str) {
            this.f3205a = str;
            return this;
        }
    }

    /* synthetic */ C0636h(C0674z c0674z) {
    }

    /* renamed from: b */
    public static C0637a m11480b() {
        return new C0637a(null);
    }

    /* renamed from: a */
    public String m11481a() {
        return this.f3204a;
    }
}
