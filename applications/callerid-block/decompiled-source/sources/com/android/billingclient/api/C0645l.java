package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.android.billingclient.api.l */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l.class */
public class C0645l {

    /* renamed from: a */
    private String f3212a;

    /* renamed from: b */
    private List<String> f3213b;

    /* renamed from: com.android.billingclient.api.l$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l$a.class */
    public static class C0646a {

        /* renamed from: a */
        private String f3214a;

        /* renamed from: b */
        private List<String> f3215b;

        /* synthetic */ C0646a(C0626c0 c0Var) {
        }

        /* renamed from: a */
        public C0645l m11463a() {
            String str = this.f3214a;
            if (str == null) {
                throw new IllegalArgumentException("SKU type must be set");
            } else if (this.f3215b != null) {
                C0645l lVar = new C0645l();
                lVar.f3212a = str;
                lVar.f3213b = this.f3215b;
                return lVar;
            } else {
                throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
            }
        }

        /* renamed from: b */
        public C0646a m11462b(List<String> list) {
            this.f3215b = new ArrayList(list);
            return this;
        }

        /* renamed from: c */
        public C0646a m11461c(String str) {
            this.f3214a = str;
            return this;
        }
    }

    /* renamed from: c */
    public static C0646a m11466c() {
        return new C0646a(null);
    }

    /* renamed from: a */
    public String m11468a() {
        return this.f3212a;
    }

    /* renamed from: b */
    public List<String> m11467b() {
        return this.f3213b;
    }
}
