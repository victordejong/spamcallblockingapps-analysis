package com.google.firebase.analytics;

import com.google.android.gms.measurement.internal.zzbt;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/zza.class */
final class zza implements Callable<String> {
    private final /* synthetic */ FirebaseAnalytics zzbse;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(FirebaseAnalytics firebaseAnalytics) {
        this.zzbse = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        String zzfx;
        zzbt zzbtVar;
        zzfx = this.zzbse.zzfx();
        if (zzfx != null) {
            return zzfx;
        }
        zzbtVar = this.zzbse.zzadj;
        String zzaj = zzbtVar.zzge().zzaj(120000L);
        if (zzaj == null) {
            throw new TimeoutException();
        }
        this.zzbse.zzcm(zzaj);
        return zzaj;
    }
}
