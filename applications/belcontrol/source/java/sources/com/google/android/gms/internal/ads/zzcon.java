package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcon.class */
public final /* synthetic */ class zzcon implements Callable {
    private final zzdzw zzfwq;
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    public zzcon(zzdzw zzdzwVar, zzdzw zzdzwVar2, zzdzw zzdzwVar3) {
        this.zzgig = zzdzwVar;
        this.zzfym = zzdzwVar2;
        this.zzfwq = zzdzwVar3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzcoz((zzcpg) this.zzgig.get(), (JSONObject) this.zzfym.get(), (zzatw) this.zzfwq.get());
    }
}
