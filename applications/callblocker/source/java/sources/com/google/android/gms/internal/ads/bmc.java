package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmc.class */
public final class bmc implements crh<SQLiteDatabase> {

    /* renamed from: a */
    private final /* synthetic */ ckg f11522a;

    public bmc(bma bmaVar, ckg ckgVar) {
        this.f11522a = ckgVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f11522a.mo11170a(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            C3556uu.m6749c(valueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(valueOf) : new String("Error executing function on offline signal database: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        C3556uu.m6749c(valueOf.length() != 0 ? "Failed to get offline signal database: ".concat(valueOf) : new String("Failed to get offline signal database: "));
    }
}
