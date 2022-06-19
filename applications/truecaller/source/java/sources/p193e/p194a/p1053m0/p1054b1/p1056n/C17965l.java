package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.l */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/l.class */
public final class C17965l implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("CREATE TABLE msg_im_unprocessed_events (\n                _id INTEGER PRIMARY KEY AUTOINCREMENT,\n                event BLOB NOT NULL,\n                im_group_id TEXT NOT NULL, \n                reference_raw_id TEXT NOT NULL,\n                seq_number INTEGER DEFAULT(-1),\n                event_type INTEGER DEFAULT(0))");
        sQLiteDatabase.execSQL("CREATE INDEX idx_msg_im_unprocessed_events_reference_raw_id ON msg_im_unprocessed_events (reference_raw_id)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_msg_im_unprocessed_events_seq_number ON msg_im_unprocessed_events (seq_number)");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS msg_im_unprocessed_history_events");
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS idx_msg_im_unprocessed_history_events_reference_raw_id");
    }
}
