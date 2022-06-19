package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.android.billingclient.api.l */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l.class */
public class C3917l {

    /* renamed from: a */
    private String f12330a;

    /* renamed from: b */
    private List<String> f12331b;

    /* renamed from: com.android.billingclient.api.l$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l$a.class */
    public static class C3918a {

        /* renamed from: a */
        private String f12332a;

        /* renamed from: b */
        private List<String> f12333b;

        /* synthetic */ C3918a(C3897c0 c3897c0) {
        }

        /* renamed from: a */
        public C3917l m23754a() {
            if (this.f12332a != null) {
                if (this.f12333b == null) {
                    throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
                }
                C3917l c3917l = new C3917l();
                c3917l.f12330a = this.f12332a;
                c3917l.f12331b = this.f12333b;
                return c3917l;
            }
            throw new IllegalArgumentException("SKU type must be set");
        }

        /* renamed from: b */
        public C3918a m23753b(List<String> list) {
            this.f12333b = new ArrayList(list);
            return this;
        }

        /* renamed from: c */
        public C3918a m23752c(String str) {
            this.f12332a = str;
            return this;
        }
    }

    /* renamed from: c */
    public static C3918a m23757c() {
        return new C3918a(null);
    }

    /* renamed from: a */
    public String m23759a() {
        return this.f12330a;
    }

    /* renamed from: b */
    public List<String> m23758b() {
        return this.f12331b;
    }
}
