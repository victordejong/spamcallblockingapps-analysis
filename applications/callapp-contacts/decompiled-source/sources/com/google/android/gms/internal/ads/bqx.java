package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqx.class */
final class bqx implements dbi<SQLiteDatabase> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ css f24915a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bqx(bqv bqvVar, css cssVar) {
        this.f24915a = cssVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f24915a.a(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzd.zzex(valueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(valueOf) : new String("Error executing function on offline signal database: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzd.zzex(valueOf.length() != 0 ? "Failed to get offline signal database: ".concat(valueOf) : new String("Failed to get offline signal database: "));
    }
}
