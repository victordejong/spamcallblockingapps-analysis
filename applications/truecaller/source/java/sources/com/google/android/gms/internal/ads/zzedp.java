package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedp.class */
public final class zzedp implements zzfrz<SQLiteDatabase> {
    public final /* synthetic */ zzfdw zza;

    public zzedp(zzedq zzedqVar, zzfdw zzfdwVar) {
        this.zza = zzfdwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzcgt.zzf(valueOf.length() != 0 ? "Failed to get offline buffered ping database: ".concat(valueOf) : new String("Failed to get offline buffered ping database: "));
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(SQLiteDatabase sQLiteDatabase) {
        try {
            this.zza.zza(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzcgt.zzf(valueOf.length() != 0 ? "Error executing function on offline buffered ping database: ".concat(valueOf) : new String("Error executing function on offline buffered ping database: "));
        }
    }
}
