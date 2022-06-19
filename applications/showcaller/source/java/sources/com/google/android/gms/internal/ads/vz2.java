package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vz2.class */
public final class vz2<V> extends xz2<V, List<V>> {
    public vz2(zzfoe<? extends r03<? extends V>> zzfoeVar, boolean z) {
        super(zzfoeVar, true);
        m12770T();
    }

    @Override // com.google.android.gms.internal.ads.xz2
    /* renamed from: X */
    public final /* bridge */ /* synthetic */ Object mo9013X(List list) {
        ArrayList m13063a = mx2.m13063a(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            wz2 wz2Var = (wz2) it.next();
            m13063a.add(wz2Var != null ? wz2Var.f31851a : null);
        }
        return Collections.unmodifiableList(m13063a);
    }
}
