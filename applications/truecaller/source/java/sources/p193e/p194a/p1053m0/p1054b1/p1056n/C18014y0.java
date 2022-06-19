package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.y0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/y0.class */
public final class C18014y0 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_thread_stats ADD COLUMN latest_message_history_type INTEGER DEFAULT (-1)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_thread_stats ADD COLUMN latest_message_history_action INTEGER DEFAULT (-1)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_thread_stats ADD COLUMN latest_message_history_filter_source TEXT");
        sQLiteDatabase.execSQL("\n            UPDATE msg_thread_stats \n                SET latest_message_history_type = \n                    IFNULL ((SELECT info2 FROM msg_messages WHERE _id = latest_message_id AND transport = 5), -1)\n        ");
        sQLiteDatabase.execSQL("\n            UPDATE msg_thread_stats \n                SET latest_message_history_action = \n                    IFNULL ((SELECT info5 FROM msg_messages WHERE _id = latest_message_id AND transport = 5), -1)\n        ");
        sQLiteDatabase.execSQL("\n            UPDATE msg_thread_stats \n                SET latest_message_history_filter_source =\n                    (SELECT info6 FROM msg_messages WHERE _id = latest_message_id AND transport = 5)    \n        ");
    }
}
