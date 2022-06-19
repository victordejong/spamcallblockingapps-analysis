package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhl.class */
public final class zzhl implements zzkt {
    public final /* synthetic */ zzhw zza;

    public zzhl(zzhw zzhwVar) {
        this.zza = zzhwVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzkt
    public final void zza(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.zza.zzs("auto", "_err", bundle);
            return;
        }
        zzhw zzhwVar = this.zza;
        zzfu.zzP();
        zzhwVar.zzx("auto", "_err", zzhwVar.zzs.zzay().currentTimeMillis(), bundle, false, true, false, str);
    }
}
