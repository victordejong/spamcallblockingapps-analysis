package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzm.class */
public final class zzm implements zzcp<zzj> {
    private final zzct<zzal> zza;
    private final zzct<zzp> zzb;
    private final zzct<zzaz> zzc;

    public zzm(zzct<zzal> zzctVar, zzct<zzp> zzctVar2, zzct<zzaz> zzctVar3) {
        this.zza = zzctVar;
        this.zzb = zzctVar2;
        this.zzc = zzctVar3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zzj(this.zza.zza(), this.zzb.zza(), this.zzc.zza());
    }
}
