package com.android.billingclient.api;

import java.util.ArrayList;
/* renamed from: com.android.billingclient.api.f */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f.class */
public final class C3339f {

    /* renamed from: a */
    boolean f12594a;

    /* renamed from: b */
    public String f12595b;

    /* renamed from: c */
    public String f12596c;

    /* renamed from: d */
    public String f12597d;

    /* renamed from: e */
    public String f12598e;

    /* renamed from: f */
    public int f12599f = 0;

    /* renamed from: g */
    ArrayList<C3347k> f12600g;

    /* renamed from: h */
    public boolean f12601h;

    /* renamed from: com.android.billingclient.api.f$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f$a.class */
    public static final class C3340a {

        /* renamed from: a */
        public ArrayList<C3347k> f12602a;

        /* renamed from: b */
        private String f12603b;

        /* renamed from: c */
        private String f12604c;

        /* renamed from: d */
        private String f12605d;

        /* renamed from: e */
        private String f12606e;

        /* renamed from: f */
        private int f12607f = 0;

        /* renamed from: g */
        private boolean f12608g;

        private C3340a() {
        }

        public /* synthetic */ C3340a(C3360w c3360w) {
        }

        /* renamed from: a */
        public final C3339f m38192a() {
            ArrayList<C3347k> arrayList = this.f12602a;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<C3347k> arrayList2 = this.f12602a;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                if (arrayList2.get(i) == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.f12602a.size() > 1) {
                C3347k c3347k = this.f12602a.get(0);
                String m38183b = c3347k.m38183b();
                ArrayList<C3347k> arrayList3 = this.f12602a;
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    C3347k c3347k2 = arrayList3.get(i2);
                    if (!m38183b.equals("play_pass_subs") && !c3347k2.m38183b().equals("play_pass_subs") && !m38183b.equals(c3347k2.m38183b())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String m38178g = c3347k.m38178g();
                ArrayList<C3347k> arrayList4 = this.f12602a;
                int size3 = arrayList4.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    C3347k c3347k3 = arrayList4.get(i3);
                    if (!m38183b.equals("play_pass_subs") && !c3347k3.m38183b().equals("play_pass_subs") && !m38178g.equals(c3347k3.m38178g())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            C3339f c3339f = new C3339f(null);
            c3339f.f12594a = true ^ this.f12602a.get(0).m38178g().isEmpty();
            c3339f.f12595b = this.f12603b;
            c3339f.f12598e = this.f12606e;
            c3339f.f12596c = this.f12604c;
            c3339f.f12597d = this.f12605d;
            c3339f.f12599f = this.f12607f;
            c3339f.f12600g = this.f12602a;
            c3339f.f12601h = this.f12608g;
            return c3339f;
        }
    }

    private C3339f() {
    }

    /* synthetic */ C3339f(C3360w c3360w) {
    }
}
