package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehg.class */
public final class zzehg implements zzfwm<SQLiteDatabase> {
    public final /* synthetic */ zzfhh zza;

    public zzehg(zzehh zzehhVar, zzfhh zzfhhVar) {
        this.zza = zzfhhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzciz.zzg(valueOf.length() != 0 ? "Failed to get offline buffered ping database: ".concat(valueOf) : new String("Failed to get offline buffered ping database: "));
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(SQLiteDatabase sQLiteDatabase) {
        try {
            this.zza.zza(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzciz.zzg(valueOf.length() != 0 ? "Error executing function on offline buffered ping database: ".concat(valueOf) : new String("Error executing function on offline buffered ping database: "));
        }
    }
}
