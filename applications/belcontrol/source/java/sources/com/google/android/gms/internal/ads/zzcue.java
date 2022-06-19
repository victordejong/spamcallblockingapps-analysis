package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcue.class */
public final /* synthetic */ class zzcue implements Callable {
    private final zzdzw zzfwq;
    private final zzdzw zzfym;
    private final zzctx zzguq;
    private final zzdnl zzgut;
    private final zzdmw zzguu;
    private final JSONObject zzguv;

    public zzcue(zzctx zzctxVar, zzdzw zzdzwVar, zzdzw zzdzwVar2, zzdnl zzdnlVar, zzdmw zzdmwVar, JSONObject jSONObject) {
        this.zzguq = zzctxVar;
        this.zzfym = zzdzwVar;
        this.zzfwq = zzdzwVar2;
        this.zzgut = zzdnlVar;
        this.zzguu = zzdmwVar;
        this.zzguv = jSONObject;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzguq.zza(this.zzfym, this.zzfwq, this.zzgut, this.zzguu, this.zzguv);
    }
}
