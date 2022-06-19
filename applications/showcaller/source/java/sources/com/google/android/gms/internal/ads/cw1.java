package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cw1.class */
public final class cw1 implements f03<SQLiteDatabase> {

    /* renamed from: a */
    final /* synthetic */ cn2 f21393a;

    public cw1(dw1 dw1Var, cn2 cn2Var) {
        this.f21393a = cn2Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        ei0.m15467c(valueOf.length() != 0 ? "Failed to get offline buffered ping database: ".concat(valueOf) : new String("Failed to get offline buffered ping database: "));
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f21393a.mo8162a(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            ei0.m15467c(valueOf.length() != 0 ? "Error executing function on offline buffered ping database: ".concat(valueOf) : new String("Error executing function on offline buffered ping database: "));
        }
    }
}
