package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdn.class */
public final class zzbdn extends zzbdd {
    public zzbdn(zzbbo zzbboVar) {
        super(zzbboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void abort() {
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final boolean zzfg(String str) {
        zzbbo zzbboVar = this.zzepn.get();
        if (zzbboVar != null) {
            zzbboVar.zza(zzfh(str), this);
        }
        zzd.zzex("VideoStreamNoopCache is doing nothing.");
        zza(str, zzfh(str), "noop", "Noop cache is a noop.");
        return false;
    }
}
