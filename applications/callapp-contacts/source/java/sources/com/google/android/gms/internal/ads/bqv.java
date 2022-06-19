package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqv.class */
public final class bqv {

    /* renamed from: a */
    private final bqt f44514a;

    /* renamed from: b */
    private final dbs f44515b;

    public bqv(bqt bqtVar, dbs dbsVar) {
        this.f44514a = bqtVar;
        this.f44515b = dbsVar;
    }

    /* renamed from: a */
    public final void m17663a(css<SQLiteDatabase, Void> cssVar) {
        dbs dbsVar = this.f44515b;
        bqt bqtVar = this.f44514a;
        bqtVar.getClass();
        dbh.m16901a(dbsVar.mo16890a(bqu.m17664a(bqtVar)), new bqx(this, cssVar), this.f44515b);
    }
}
