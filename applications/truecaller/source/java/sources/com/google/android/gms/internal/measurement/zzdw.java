package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdw.class */
public final class zzdw extends zzdt {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ Activity zzb;
    public final /* synthetic */ zzed zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdw(zzed zzedVar, Bundle bundle, Activity activity) {
        super(zzedVar.zza, true);
        this.zzc = zzedVar;
        this.zza = bundle;
        this.zzb = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        Bundle bundle;
        zzcc zzccVar;
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
        zzccVar = this.zzc.zza.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.onActivityCreated(new ObjectWrapper(this.zzb), bundle, this.zzi);
    }
}
