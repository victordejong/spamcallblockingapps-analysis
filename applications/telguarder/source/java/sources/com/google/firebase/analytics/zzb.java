package com.google.firebase.analytics;

import com.google.android.gms.internal.measurement.zzbr;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/zzb.class */
final class zzb implements Callable<String> {
    final /* synthetic */ FirebaseAnalytics zza;

    public zzb(FirebaseAnalytics firebaseAnalytics) {
        this.zza = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() throws Exception {
        zzbr zzbrVar;
        zzbrVar = this.zza.zzb;
        return zzbrVar.zzF();
    }
}
