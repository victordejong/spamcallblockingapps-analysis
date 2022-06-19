package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoh.class */
public abstract class zzoh {
    private zzok zzbhv;

    public final void invalidate() {
        zzok zzokVar = this.zzbhv;
        if (zzokVar != null) {
            zzokVar.zzep();
        }
    }

    public abstract zzoj zza(zzib[] zzibVarArr, zznu zznuVar) throws zzhe;

    public final void zza(zzok zzokVar) {
        this.zzbhv = zzokVar;
    }

    public abstract void zzd(Object obj);
}
