package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj.class */
final class zzbj extends zzbg {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ Activity zzb;
    final /* synthetic */ zzbq zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbj(zzbq zzbqVar, Bundle bundle, Activity activity) {
        super(zzbqVar.zza, true);
        this.zzc = zzbqVar;
        this.zza = bundle;
        this.zzb = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        Bundle bundle;
        zzp zzpVar;
        if (this.zza != null) {
            Bundle bundle2 = new Bundle();
            bundle = bundle2;
            if (this.zza.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.zza.get("com.google.app_measurement.screen_service");
                bundle = bundle2;
                if (obj instanceof Bundle) {
                    bundle2.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                    bundle = bundle2;
                }
            }
        } else {
            bundle = null;
        }
        zzpVar = this.zzc.zza.zzk;
        zzpVar.onActivityCreated(ObjectWrapper.wrap(this.zzb), bundle, this.zzi);
    }
}
