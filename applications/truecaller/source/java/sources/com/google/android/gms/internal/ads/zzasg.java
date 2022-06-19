package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasg.class */
public final class zzasg implements Runnable {
    public final /* synthetic */ zzasj zza;
    public final /* synthetic */ zzasl zzb;

    public zzasg(zzasl zzaslVar, zzasj zzasjVar) {
        this.zzb = zzaslVar;
        this.zza = zzasjVar;
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
            ((zzata) sparseArray2.valueAt(i)).zzg();
        }
    }
}
