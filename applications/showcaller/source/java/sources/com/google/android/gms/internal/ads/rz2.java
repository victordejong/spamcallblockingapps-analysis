package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rz2.class */
final class rz2 extends oz2 {
    public /* synthetic */ rz2(pz2 pz2Var) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.oz2
    /* renamed from: a */
    public final void mo11203a(sz2<?> sz2Var, Set<Throwable> set, Set<Throwable> set2) {
        Set set3;
        synchronized (sz2Var) {
            set3 = ((sz2) sz2Var).f29752m;
            if (set3 == null) {
                ((sz2) sz2Var).f29752m = set2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.oz2
    /* renamed from: b */
    public final int mo11202b(sz2<?> sz2Var) {
        int i;
        int i2;
        synchronized (sz2Var) {
            i = ((sz2) sz2Var).f29753n;
            i2 = i - 1;
            ((sz2) sz2Var).f29753n = i2;
        }
        return i2;
    }
}
