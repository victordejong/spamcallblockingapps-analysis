package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.e2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/e2.class */
public final class C17940e2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "ALTER TABLE msg_thread_stats ADD COLUMN history_events_count INTEGER DEFAULT(0)", "UPDATE msg_thread_stats SET history_events_count = (SELECT history_events_count FROM msg_conversations WHERE _id = conversation_id)");
    }
}
