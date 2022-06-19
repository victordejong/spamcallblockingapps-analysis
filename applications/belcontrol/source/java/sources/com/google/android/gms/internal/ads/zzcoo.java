package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcoo.class */
public final /* synthetic */ class zzcoo implements Callable {
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    public zzcoo(zzdzw zzdzwVar, zzdzw zzdzwVar2) {
        this.zzgig = zzdzwVar;
        this.zzfym = zzdzwVar2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzcpd((JSONObject) this.zzgig.get(), (zzatw) this.zzfym.get());
    }
}
