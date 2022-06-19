package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.e */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/e.class */
public final class C17937e implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("DELETE FROM msg_messages WHERE transport = 6");
        sQLiteDatabase.execSQL("\n                CREATE TABLE msg_status_transport_info (\n                    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n                    raw_id TEXT NOT NULL,\n                    message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE\n                )\n            ");
        sQLiteDatabase.execSQL("CREATE INDEX idx_msg_status_transport_info_message_id  ON msg_status_transport_info (message_id)");
        sQLiteDatabase.execSQL("CREATE INDEX idx_msg_status_transport_info_raw_id  ON msg_status_transport_info (raw_id)");
    }
}
