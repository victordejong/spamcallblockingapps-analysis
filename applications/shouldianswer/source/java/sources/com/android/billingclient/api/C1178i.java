package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.android.billingclient.api.i */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i.class */
public class C1178i {

    /* renamed from: a */
    private String f3757a;

    /* renamed from: b */
    private List<String> f3758b;

    /* renamed from: com.android.billingclient.api.i$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i$a.class */
    public static class C1180a {

        /* renamed from: a */
        private String f3759a;

        /* renamed from: b */
        private List<String> f3760b;

        private C1180a() {
        }

        /* renamed from: a */
        public C1180a m3857a(String str) {
            this.f3759a = str;
            return this;
        }

        /* renamed from: a */
        public C1180a m3856a(List<String> list) {
            this.f3760b = list;
            return this;
        }

        /* renamed from: a */
        public C1178i m3858a() {
            C1178i c1178i = new C1178i();
            c1178i.f3757a = this.f3759a;
            c1178i.f3758b = new ArrayList(this.f3760b);
            return c1178i;
        }
    }

    /* renamed from: c */
    public static C1180a m3859c() {
        return new C1180a();
    }

    /* renamed from: a */
    public String m3863a() {
        return this.f3757a;
    }

    /* renamed from: b */
    public List<String> m3860b() {
        return this.f3758b;
    }
}
