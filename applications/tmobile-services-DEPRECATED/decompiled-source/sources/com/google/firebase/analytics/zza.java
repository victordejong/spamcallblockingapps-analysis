package com.google.firebase.analytics;

import com.google.android.gms.internal.measurement.zzag;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/zza.class */
final class zza implements Callable<String> {
    private final /* synthetic */ FirebaseAnalytics zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(FirebaseAnalytics firebaseAnalytics) {
        this.zza = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        zzag zzagVar;
        zzagVar = this.zza.zzb;
        return zzagVar.m13431d0();
    }
}
