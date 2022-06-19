package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.a0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/a0.class */
public final class C17922a0 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN group_id_day INTEGER NOT NULL DEFAULT(-1)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN group_id_minute INTEGER NOT NULL DEFAULT(-1)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN history_events_count INTEGER DEFAULT(0)");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations SET history_events_count = (SELECT COUNT() FROM msg_messages WHERE conversation_id=msg_conversations._id AND transport=5)\n            ");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations SET split_criteria = CASE \n                    type != 2 OR \n                    history_events_count > 0 OR \n                    phonebook_count OR \n                    white_list_count OR \n                    blacklist_count OR \n                    (top_spammer_count = 1 AND type != 2) OR \n                    has_outgoing_messages OR \n                    tc_group_id IS NOT NULL\n                WHEN 1 THEN 0 ELSE 1 END\n            ");
    }
}
