package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.k */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/k.class */
public final class C17961k implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "CREATE TABLE msg_im_unprocessed_history_events (\n                _id INTEGER PRIMARY KEY AUTOINCREMENT,\n                event BLOB NOT NULL,\n                im_group_id INTEGER DEFAULT(-1), \n                reference_raw_id INTEGER DEFAULT(-1),\n                event_type INTEGER DEFAULT(0))", "CREATE INDEX idx_msg_im_unprocessed_history_events_reference_raw_id ON msg_im_unprocessed_history_events (reference_raw_id)");
    }
}
