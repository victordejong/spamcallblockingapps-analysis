package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqv.class */
public final class bqv {

    /* renamed from: a  reason: collision with root package name */
    private final bqt f24911a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f24912b;

    public bqv(bqt bqtVar, dbs dbsVar) {
        this.f24911a = bqtVar;
        this.f24912b = dbsVar;
    }

    public final void a(css<SQLiteDatabase, Void> cssVar) {
        dbs dbsVar = this.f24912b;
        bqt bqtVar = this.f24911a;
        bqtVar.getClass();
        dbh.a(dbsVar.a(bqu.a(bqtVar)), new bqx(this, cssVar), this.f24912b);
    }
}
