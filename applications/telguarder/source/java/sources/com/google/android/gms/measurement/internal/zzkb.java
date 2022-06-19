package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzkb.class */
public final class zzkb implements zzkj {
    final /* synthetic */ zzkd zza;

    public zzkb(zzkd zzkdVar) {
        this.zza = zzkdVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    public final void zza(String str, Bundle bundle) {
        zzfl zzflVar;
        if (!TextUtils.isEmpty(str)) {
            this.zza.zzau().zzh(new zzka(this, str, bundle));
            return;
        }
        zzflVar = this.zza.zzl;
        zzflVar.zzat().zzb().zza("AppId not known when logging error event");
    }
}
