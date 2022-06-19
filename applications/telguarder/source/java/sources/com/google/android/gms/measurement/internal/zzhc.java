package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhc.class */
public final class zzhc implements zzkj {
    final /* synthetic */ zzhn zza;

    public zzhc(zzhn zzhnVar) {
        this.zza = zzhnVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    public final void zza(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.zza.zzs("auto", "_err", bundle);
            return;
        }
        zzhn zzhnVar = this.zza;
        zzfl.zzP();
        zzhnVar.zzx("auto", "_err", zzhnVar.zzx.zzax().currentTimeMillis(), bundle, false, true, false, str);
    }
}
