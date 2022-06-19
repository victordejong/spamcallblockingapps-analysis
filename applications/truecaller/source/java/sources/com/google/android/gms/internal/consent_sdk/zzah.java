package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzah.class */
public final class zzah implements zzau {
    private zzbb zza;
    private final /* synthetic */ zzag zzb;

    private zzah(zzag zzagVar) {
        this.zzb = zzagVar;
    }

    public /* synthetic */ zzah(zzag zzagVar, zzaf zzafVar) {
        this(zzagVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzau
    public final zzar zza() {
        zzcu.zza(this.zza, zzbb.class);
        return new zzak(this.zzb, this.zza, null);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzau
    public final /* synthetic */ zzau zza(zzbb zzbbVar) {
        this.zza = (zzbb) zzcu.zza(zzbbVar);
        return this;
    }
}
