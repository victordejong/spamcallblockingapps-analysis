package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaud.class */
public final class zzaud implements Runnable {
    public final /* synthetic */ zzaug zza;
    public final /* synthetic */ zzaui zzb;

    public zzaud(zzaui zzauiVar, zzaug zzaugVar) {
        this.zzb = zzauiVar;
        this.zza = zzaugVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.zza.zza();
        sparseArray = this.zzb.zzn;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.zzb.zzn;
            ((zzaux) sparseArray2.valueAt(i)).zzi();
        }
    }
}
