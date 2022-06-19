package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xz2.class */
abstract class xz2<V, C> extends nz2<V, C> {

    /* renamed from: s */
    private List<wz2<V>> f32368s;

    public xz2(zzfoe<? extends r03<? extends V>> zzfoeVar, boolean z) {
        super(zzfoeVar, true, true);
        ArrayList emptyList = zzfoeVar.isEmpty() ? Collections.emptyList() : mx2.m13063a(zzfoeVar.size());
        for (int i = 0; i < zzfoeVar.size(); i++) {
            emptyList.add(null);
        }
        this.f32368s = emptyList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.nz2
    /* renamed from: M */
    final void mo8645M() {
        List<wz2<V>> list = this.f32368s;
        if (list != null) {
            mo8632u(mo9013X(list));
        }
    }

    @Override // com.google.android.gms.internal.ads.nz2
    /* renamed from: N */
    public final void mo8644N(int i) {
        super.mo8644N(i);
        this.f32368s = null;
    }

    @Override // com.google.android.gms.internal.ads.nz2
    /* renamed from: W */
    final void mo8643W(int i, V v) {
        List<wz2<V>> list = this.f32368s;
        if (list != null) {
            list.set(i, new wz2<>(v));
        }
    }

    /* renamed from: X */
    abstract C mo9013X(List<wz2<V>> list);
}
