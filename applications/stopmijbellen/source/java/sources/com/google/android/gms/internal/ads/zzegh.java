package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegh.class */
public final class zzegh {
    private final zzegd zza;
    private final zzfxb zzb;

    public zzegh(zzegd zzegdVar, zzfxb zzfxbVar) {
        this.zza = zzegdVar;
        this.zzb = zzfxbVar;
    }

    public final void zza(zzfhh<SQLiteDatabase, Void> zzfhhVar) {
        zzfxb zzfxbVar = this.zzb;
        final zzegd zzegdVar = this.zza;
        zzfwq.zzr(zzfxbVar.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzegf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzegd.this.getWritableDatabase();
            }
        }), new zzegg(this, zzfhhVar), this.zzb);
    }
}
