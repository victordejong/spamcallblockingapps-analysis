package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.z0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/z0.class */
public final class C18017z0 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("CREATE TABLE profile_view_events_temp (tc_id TEXT NOT NULL, timestamp INT NOT NULL, type TEXT NOT NULL DEFAULT 'OUTGOING', source TEXT)");
        sQLiteDatabase.execSQL("INSERT INTO profile_view_events_temp (tc_id, timestamp) SELECT tc_id, timestamp from profile_view_events");
        sQLiteDatabase.execSQL("DROP TABLE profile_view_events");
        sQLiteDatabase.execSQL("ALTER TABLE profile_view_events_temp RENAME TO profile_view_events");
        sQLiteDatabase.execSQL("INSERT INTO profile_view_events (tc_id, timestamp, type) SELECT tc_id, timestamp, 'INCOMING' as type from history where type = 6 AND tc_id IS NOT NULL AND timestamp IS NOT NULL");
    }
}
