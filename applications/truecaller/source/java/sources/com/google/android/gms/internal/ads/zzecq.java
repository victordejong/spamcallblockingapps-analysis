package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecq.class */
public final class zzecq {
    private final zzecm zza;
    private final zzfsn zzb;

    public zzecq(zzecm zzecmVar, zzfsn zzfsnVar) {
        this.zza = zzecmVar;
        this.zzb = zzfsnVar;
    }

    public final void zza(zzfdw<SQLiteDatabase, Void> zzfdwVar) {
        zzfsd.zzp(this.zzb.zzb(zzeco.zza(this.zza)), new zzecp(this, zzfdwVar), this.zzb);
    }
}
