package com.android.billingclient.api;

import java.util.ArrayList;
/* renamed from: com.android.billingclient.api.f */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f.class */
public class C3902f {

    /* renamed from: a */
    private boolean f12302a;

    /* renamed from: b */
    private String f12303b;

    /* renamed from: c */
    private String f12304c;

    /* renamed from: d */
    private String f12305d;

    /* renamed from: e */
    private String f12306e;

    /* renamed from: f */
    private int f12307f = 0;

    /* renamed from: g */
    private ArrayList<SkuDetails> f12308g;

    /* renamed from: h */
    private boolean f12309h;

    /* renamed from: com.android.billingclient.api.f$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f$a.class */
    public static class C3903a {

        /* renamed from: a */
        private String f12310a;

        /* renamed from: b */
        private String f12311b;

        /* renamed from: c */
        private String f12312c;

        /* renamed from: d */
        private String f12313d;

        /* renamed from: e */
        private int f12314e = 0;

        /* renamed from: f */
        private ArrayList<SkuDetails> f12315f;

        /* renamed from: g */
        private boolean f12316g;

        /* synthetic */ C3903a(C3940w c3940w) {
        }

        /* renamed from: a */
        public C3902f m23783a() {
            ArrayList<SkuDetails> arrayList = this.f12315f;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<SkuDetails> arrayList2 = this.f12315f;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                if (arrayList2.get(i) == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.f12315f.size() > 1) {
                SkuDetails skuDetails = this.f12315f.get(0);
                String m23858d = skuDetails.m23858d();
                ArrayList<SkuDetails> arrayList3 = this.f12315f;
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    SkuDetails skuDetails2 = arrayList3.get(i2);
                    if (!m23858d.equals("play_pass_subs") && !skuDetails2.m23858d().equals("play_pass_subs") && !m23858d.equals(skuDetails2.m23858d())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String m23857e = skuDetails.m23857e();
                ArrayList<SkuDetails> arrayList4 = this.f12315f;
                int size3 = arrayList4.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    SkuDetails skuDetails3 = arrayList4.get(i3);
                    if (!m23858d.equals("play_pass_subs") && !skuDetails3.m23858d().equals("play_pass_subs") && !m23857e.equals(skuDetails3.m23857e())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            C3902f c3902f = new C3902f(null);
            c3902f.f12302a = true ^ this.f12315f.get(0).m23857e().isEmpty();
            c3902f.f12303b = this.f12310a;
            c3902f.f12306e = this.f12313d;
            c3902f.f12304c = this.f12311b;
            c3902f.f12305d = this.f12312c;
            c3902f.f12307f = this.f12314e;
            c3902f.f12308g = this.f12315f;
            c3902f.f12309h = this.f12316g;
            return c3902f;
        }

        /* renamed from: b */
        public C3903a m23782b(SkuDetails skuDetails) {
            ArrayList<SkuDetails> arrayList = new ArrayList<>();
            arrayList.add(skuDetails);
            this.f12315f = arrayList;
            return this;
        }
    }

    /* synthetic */ C3902f(C3940w c3940w) {
    }

    /* renamed from: e */
    public static C3903a m23796e() {
        return new C3903a(null);
    }

    /* renamed from: a */
    public String m23800a() {
        return this.f12304c;
    }

    /* renamed from: b */
    public String m23799b() {
        return this.f12305d;
    }

    /* renamed from: c */
    public int m23798c() {
        return this.f12307f;
    }

    /* renamed from: d */
    public boolean m23797d() {
        return this.f12309h;
    }

    /* renamed from: f */
    public final ArrayList<SkuDetails> m23795f() {
        ArrayList<SkuDetails> arrayList = new ArrayList<>();
        arrayList.addAll(this.f12308g);
        return arrayList;
    }

    /* renamed from: g */
    public final String m23794g() {
        return this.f12303b;
    }

    /* renamed from: h */
    public final boolean m23793h() {
        return (!this.f12309h && this.f12303b == null && this.f12306e == null && this.f12307f == 0 && !this.f12302a) ? false : true;
    }

    /* renamed from: i */
    public final String m23792i() {
        return this.f12306e;
    }
}
