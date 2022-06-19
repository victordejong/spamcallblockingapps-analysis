package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmt.class */
public final class zzmt implements Runnable {
    private final /* synthetic */ zzms zzbdl;
    private final /* synthetic */ zzmy zzbem;

    public zzmt(zzms zzmsVar, zzmy zzmyVar) {
        this.zzbdl = zzmsVar;
        this.zzbem = zzmyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.zzbem.release();
        sparseArray = this.zzbdl.zzbdx;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.zzbdl.zzbdx;
            ((zznm) sparseArray2.valueAt(i)).disable();
        }
    }
}
