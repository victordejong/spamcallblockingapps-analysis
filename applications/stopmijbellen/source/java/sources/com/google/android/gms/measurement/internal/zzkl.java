package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkl.class */
public final class zzkl implements zzkt {
    public final /* synthetic */ zzkn zza;

    public zzkl(zzkn zzknVar) {
        this.zza = zzknVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzkt
    public final void zza(String str, String str2, Bundle bundle) {
        zzfu zzfuVar;
        zzfu zzfuVar2;
        if (!TextUtils.isEmpty(str)) {
            this.zza.zzav().zzh(new zzkk(this, str, "_err", bundle));
            return;
        }
        zzfuVar = this.zza.zzm;
        if (zzfuVar == null) {
            return;
        }
        zzfuVar2 = this.zza.zzm;
        zzfuVar2.zzau().zzb().zzb("AppId not known when logging event", "_err");
    }
}
