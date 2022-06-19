package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bma.class */
public final class bma {

    /* renamed from: a */
    private final bly f11518a;

    /* renamed from: b */
    private final crs f11519b;

    public bma(bly blyVar, crs crsVar) {
        this.f11518a = blyVar;
        this.f11519b = crsVar;
    }

    /* renamed from: a */
    public final void m11800a(ckg<SQLiteDatabase, Void> ckgVar) {
        crs crsVar = this.f11519b;
        bly blyVar = this.f11518a;
        blyVar.getClass();
        crg.m10781a(crsVar.mo10767a(blz.m11802a(blyVar)), new bmc(this, ckgVar), this.f11519b);
    }
}
