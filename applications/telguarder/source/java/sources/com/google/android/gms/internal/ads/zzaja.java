package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaja.class */
public final class zzaja implements zzdyu<zzaiz, ParcelFileDescriptor> {
    private final /* synthetic */ zzait zzdiq;

    public zzaja(zzajb zzajbVar, zzait zzaitVar) {
        this.zzdiq = zzaitVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final /* synthetic */ zzdzw<ParcelFileDescriptor> zzf(zzaiz zzaizVar) throws Exception {
        zzbaa zzbaaVar = new zzbaa();
        zzaizVar.zza(this.zzdiq, new zzajd(this, zzbaaVar));
        return zzbaaVar;
    }
}
