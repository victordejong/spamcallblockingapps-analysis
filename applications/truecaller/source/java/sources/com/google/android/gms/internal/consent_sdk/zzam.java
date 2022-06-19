package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzam.class */
public final class zzam implements zzcp<zzaj> {
    private final zzct<Application> zza;
    private final zzct<zzal> zzb;
    private final zzct<Executor> zzc;

    public zzam(zzct<Application> zzctVar, zzct<zzal> zzctVar2, zzct<Executor> zzctVar3) {
        this.zza = zzctVar;
        this.zzb = zzctVar2;
        this.zzc = zzctVar3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zzaj(this.zza.zza(), this.zzb.zza(), this.zzc.zza());
    }
}
