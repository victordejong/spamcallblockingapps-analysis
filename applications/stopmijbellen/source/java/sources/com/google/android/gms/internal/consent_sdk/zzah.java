package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzah.class */
final class zzah implements zzas {
    private final zzaj zza;
    private zzbc zzb;

    public /* synthetic */ zzah(zzaj zzajVar, zzaf zzafVar) {
        this.zza = zzajVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzas
    public final /* bridge */ /* synthetic */ zzas zza(zzbc zzbcVar) {
        this.zzb = zzbcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzas
    public final zzat zzb() {
        zzck.zzb(this.zzb, zzbc.class);
        return new zzai(this.zza, this.zzb, null);
    }
}
