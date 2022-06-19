package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import e.m.a.f.l.a.d;
import e.m.a.f.l.a.p3;
import e.m.a.f.l.a.v0;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzfs.class */
public final /* synthetic */ class zzfs implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzgj f6405a;

    /* renamed from: b */
    public final /* synthetic */ String f6406b;

    /* renamed from: c */
    public final /* synthetic */ Bundle f6407c;

    public /* synthetic */ zzfs(zzgj zzgjVar, String str, Bundle bundle) {
        this.f6405a = zzgjVar;
        this.f6406b = str;
        this.f6407c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgj zzgjVar = this.f6405a;
        String str = this.f6406b;
        Bundle bundle = this.f6407c;
        d dVar = zzgjVar.a.c;
        zzkp.E(dVar);
        dVar.d();
        dVar.e();
        zzap zzapVar = new zzap(((v0) dVar).a, "", str, "dep", 0L, 0L, bundle);
        zzkr zzkrVar = ((p3) dVar).b.g;
        zzkp.E(zzkrVar);
        byte[] zzbq = zzkrVar.w(zzapVar).zzbq();
        ((v0) dVar).a.zzay().n.m38588c("Saving default event parameters, appId, data size", ((v0) dVar).a.m.m38594d(str), Integer.valueOf(zzbq.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(HiAnalyticsConstant.BI_KEY_APP_ID, str);
        contentValues.put("parameters", zzbq);
        try {
            if (dVar.w().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return;
            }
            ((v0) dVar).a.zzay().f.m38589b("Failed to insert default event parameters (got -1). appId", zzeh.p(str));
        } catch (SQLiteException e) {
            ((v0) dVar).a.zzay().f.m38588c("Error storing default event parameters. appId", zzeh.p(str), e);
        }
    }
}
