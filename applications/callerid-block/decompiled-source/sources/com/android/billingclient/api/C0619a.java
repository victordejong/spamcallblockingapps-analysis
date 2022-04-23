package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.a */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a.class */
public final class C0619a {

    /* renamed from: a */
    private String f3175a;

    /* renamed from: com.android.billingclient.api.a$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a$a.class */
    public static final class C0620a {

        /* renamed from: a */
        private String f3176a;

        /* synthetic */ C0620a(C0650n nVar) {
        }

        /* renamed from: a */
        public C0619a m11531a() {
            String str = this.f3176a;
            if (str != null) {
                C0619a aVar = new C0619a(null);
                aVar.f3175a = str;
                return aVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        /* renamed from: b */
        public C0620a m11530b(String str) {
            this.f3176a = str;
            return this;
        }
    }

    /* synthetic */ C0619a(C0650n nVar) {
    }

    /* renamed from: b */
    public static C0620a m11533b() {
        return new C0620a(null);
    }

    /* renamed from: a */
    public String m11534a() {
        return this.f3175a;
    }
}
