package com.android.billingclient.api;

import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    boolean f6978a;

    /* renamed from: b  reason: collision with root package name */
    public String f6979b;

    /* renamed from: c  reason: collision with root package name */
    public String f6980c;

    /* renamed from: d  reason: collision with root package name */
    public String f6981d;
    public String e;
    public int f = 0;
    ArrayList<k> g;
    public boolean h;

    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public ArrayList<k> f6982a;

        /* renamed from: b  reason: collision with root package name */
        private String f6983b;

        /* renamed from: c  reason: collision with root package name */
        private String f6984c;

        /* renamed from: d  reason: collision with root package name */
        private String f6985d;
        private String e;
        private int f = 0;
        private boolean g;

        private a() {
        }

        public /* synthetic */ a(w wVar) {
        }

        public final f a() {
            ArrayList<k> arrayList = this.f6982a;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<k> arrayList2 = this.f6982a;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                if (arrayList2.get(i) == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.f6982a.size() > 1) {
                k kVar = this.f6982a.get(0);
                String b2 = kVar.b();
                ArrayList<k> arrayList3 = this.f6982a;
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    k kVar2 = arrayList3.get(i2);
                    if (!b2.equals("play_pass_subs") && !kVar2.b().equals("play_pass_subs") && !b2.equals(kVar2.b())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String g = kVar.g();
                ArrayList<k> arrayList4 = this.f6982a;
                int size3 = arrayList4.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    k kVar3 = arrayList4.get(i3);
                    if (!b2.equals("play_pass_subs") && !kVar3.b().equals("play_pass_subs") && !g.equals(kVar3.g())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            f fVar = new f(null);
            fVar.f6978a = true ^ this.f6982a.get(0).g().isEmpty();
            fVar.f6979b = this.f6983b;
            fVar.e = this.e;
            fVar.f6980c = this.f6984c;
            fVar.f6981d = this.f6985d;
            fVar.f = this.f;
            fVar.g = this.f6982a;
            fVar.h = this.g;
            return fVar;
        }
    }

    private f() {
    }

    /* synthetic */ f(w wVar) {
    }
}
