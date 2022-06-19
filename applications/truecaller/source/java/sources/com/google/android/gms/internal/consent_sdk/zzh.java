package com.google.android.gms.internal.consent_sdk;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzh.class */
public final class zzh implements zzcp<zze> {
    private final zzct<Executor> zza;

    public zzh(zzct<Executor> zzctVar) {
        this.zza = zzctVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zze(this.zza.zza());
    }
}
