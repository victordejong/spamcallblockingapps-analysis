package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrg.class */
public final class zzbrg implements zzfrk<zzbre, ParcelFileDescriptor> {
    public final /* synthetic */ zzbqy zza;

    public zzbrg(zzbrk zzbrkVar, zzbqy zzbqyVar) {
        this.zza = zzbqyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final /* bridge */ /* synthetic */ zzfsm<ParcelFileDescriptor> zza(zzbre zzbreVar) throws Exception {
        zzchl zzchlVar = new zzchl();
        zzbreVar.zze(this.zza, new zzbrf(this, zzchlVar));
        return zzchlVar;
    }
}
