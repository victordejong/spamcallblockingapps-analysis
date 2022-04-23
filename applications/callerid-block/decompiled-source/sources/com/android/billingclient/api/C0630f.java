package com.android.billingclient.api;

import java.util.ArrayList;
/* renamed from: com.android.billingclient.api.f */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f.class */
public class C0630f {

    /* renamed from: a */
    private boolean f3184a;

    /* renamed from: b */
    private String f3185b;

    /* renamed from: c */
    private String f3186c;

    /* renamed from: d */
    private String f3187d;

    /* renamed from: e */
    private String f3188e;

    /* renamed from: f */
    private int f3189f = 0;

    /* renamed from: g */
    private ArrayList<SkuDetails> f3190g;

    /* renamed from: h */
    private boolean f3191h;

    /* renamed from: com.android.billingclient.api.f$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f$a.class */
    public static class C0631a {

        /* renamed from: a */
        private String f3192a;

        /* renamed from: b */
        private String f3193b;

        /* renamed from: c */
        private String f3194c;

        /* renamed from: d */
        private String f3195d;

        /* renamed from: e */
        private int f3196e = 0;

        /* renamed from: f */
        private ArrayList<SkuDetails> f3197f;

        /* renamed from: g */
        private boolean f3198g;

        /* synthetic */ C0631a(C0668w wVar) {
        }

        /* renamed from: a */
        public C0630f m11492a() {
            ArrayList<SkuDetails> arrayList = this.f3197f;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<SkuDetails> arrayList2 = this.f3197f;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                if (arrayList2.get(i) == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.f3197f.size() > 1) {
                SkuDetails skuDetails = this.f3197f.get(0);
                String d = skuDetails.m11539d();
                ArrayList<SkuDetails> arrayList3 = this.f3197f;
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    SkuDetails skuDetails2 = arrayList3.get(i2);
                    if (!d.equals("play_pass_subs") && !skuDetails2.m11539d().equals("play_pass_subs") && !d.equals(skuDetails2.m11539d())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String e = skuDetails.m11538e();
                ArrayList<SkuDetails> arrayList4 = this.f3197f;
                int size3 = arrayList4.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    SkuDetails skuDetails3 = arrayList4.get(i3);
                    if (!d.equals("play_pass_subs") && !skuDetails3.m11539d().equals("play_pass_subs") && !e.equals(skuDetails3.m11538e())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            C0630f fVar = new C0630f(null);
            fVar.f3184a = true ^ this.f3197f.get(0).m11538e().isEmpty();
            fVar.f3185b = this.f3192a;
            fVar.f3188e = this.f3195d;
            fVar.f3186c = this.f3193b;
            fVar.f3187d = this.f3194c;
            fVar.f3189f = this.f3196e;
            fVar.f3190g = this.f3197f;
            fVar.f3191h = this.f3198g;
            return fVar;
        }

        /* renamed from: b */
        public C0631a m11491b(SkuDetails skuDetails) {
            ArrayList<SkuDetails> arrayList = new ArrayList<>();
            arrayList.add(skuDetails);
            this.f3197f = arrayList;
            return this;
        }
    }

    /* synthetic */ C0630f(C0668w wVar) {
    }

    /* renamed from: e */
    public static C0631a m11505e() {
        return new C0631a(null);
    }

    /* renamed from: a */
    public String m11509a() {
        return this.f3186c;
    }

    /* renamed from: b */
    public String m11508b() {
        return this.f3187d;
    }

    /* renamed from: c */
    public int m11507c() {
        return this.f3189f;
    }

    /* renamed from: d */
    public boolean m11506d() {
        return this.f3191h;
    }

    /* renamed from: f */
    public final ArrayList<SkuDetails> m11504f() {
        ArrayList<SkuDetails> arrayList = new ArrayList<>();
        arrayList.addAll(this.f3190g);
        return arrayList;
    }

    /* renamed from: g */
    public final String m11503g() {
        return this.f3185b;
    }

    /* renamed from: h */
    final boolean m11502h() {
        return (!this.f3191h && this.f3185b == null && this.f3188e == null && this.f3189f == 0 && !this.f3184a) ? false : true;
    }

    /* renamed from: i */
    public final String m11501i() {
        return this.f3188e;
    }
}
