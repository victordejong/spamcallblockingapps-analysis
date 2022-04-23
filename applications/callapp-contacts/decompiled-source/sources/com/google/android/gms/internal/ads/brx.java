package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brx.class */
final class brx implements dbi<SQLiteDatabase> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ css f24972a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public brx(brs brsVar, css cssVar) {
        this.f24972a = cssVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f24972a.a(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzd.zzex(valueOf.length() != 0 ? "Error executing function on offline buffered ping database: ".concat(valueOf) : new String("Error executing function on offline buffered ping database: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzd.zzex(valueOf.length() != 0 ? "Failed to get offline buffered ping database: ".concat(valueOf) : new String("Failed to get offline buffered ping database: "));
    }
}
