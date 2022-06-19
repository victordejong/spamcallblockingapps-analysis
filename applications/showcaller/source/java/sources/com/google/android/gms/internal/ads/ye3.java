package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ye3.class */
final class ye3 extends af3 {
    public /* synthetic */ ye3(ze3 ze3Var) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.af3
    /* renamed from: a */
    public final <L> List<L> mo8840a(Object obj, long j) {
        re3 re3Var = (re3) bh3.m16341v(obj, j);
        re3 re3Var2 = re3Var;
        if (!re3Var.zza()) {
            int size = re3Var.size();
            re3Var2 = re3Var.mo8859a(size == 0 ? 10 : size + size);
            bh3.m16340w(obj, j, re3Var2);
        }
        return re3Var2;
    }

    @Override // com.google.android.gms.internal.ads.af3
    /* renamed from: b */
    public final void mo8839b(Object obj, long j) {
        ((re3) bh3.m16341v(obj, j)).mo10354b();
    }

    @Override // com.google.android.gms.internal.ads.af3
    /* renamed from: c */
    public final <E> void mo8838c(Object obj, Object obj2, long j) {
        re3 re3Var = (re3) bh3.m16341v(obj, j);
        re3<E> re3Var2 = (re3) bh3.m16341v(obj2, j);
        int size = re3Var.size();
        int size2 = re3Var2.size();
        re3<E> re3Var3 = re3Var;
        if (size > 0) {
            re3Var3 = re3Var;
            if (size2 > 0) {
                re3Var3 = re3Var;
                if (!re3Var.zza()) {
                    re3Var3 = re3Var.mo8859a(size2 + size);
                }
                re3Var3.addAll(re3Var2);
            }
        }
        if (size <= 0) {
            re3Var3 = re3Var2;
        }
        bh3.m16340w(obj, j, re3Var3);
    }
}
