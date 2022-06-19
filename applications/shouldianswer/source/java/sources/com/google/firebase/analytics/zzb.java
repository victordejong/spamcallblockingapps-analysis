package com.google.firebase.analytics;

import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzga;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/zzb.class */
final class zzb implements Callable<String> {
    private final /* synthetic */ FirebaseAnalytics zza;

    public zzb(FirebaseAnalytics firebaseAnalytics) {
        this.zza = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        String zzb;
        boolean z;
        String str;
        zzga zzgaVar;
        zzx zzxVar;
        zzb = this.zza.zzb();
        if (zzb != null) {
            return zzb;
        }
        z = this.zza.zzd;
        if (z) {
            zzxVar = this.zza.zzc;
            str = zzxVar.zzh();
        } else {
            zzgaVar = this.zza.zzb;
            str = zzgaVar.zzh().zzc(120000L);
        }
        if (str == null) {
            throw new TimeoutException();
        }
        this.zza.zza(str);
        return str;
    }
}
