package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0;
/* renamed from: e.m.a.b.j.c0.i.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/u.class */
public final /* synthetic */ class C24118u implements C24105j0.AbstractC24106a {

    /* renamed from: a */
    public static final /* synthetic */ C24118u f66819a = new C24118u();

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0.AbstractC24106a
    /* renamed from: a */
    public final void mo5563a(SQLiteDatabase sQLiteDatabase) {
        String str = C24105j0.f66790c;
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))");
        sQLiteDatabase.execSQL("CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)");
        sQLiteDatabase.execSQL(C24105j0.f66790c);
    }
}
