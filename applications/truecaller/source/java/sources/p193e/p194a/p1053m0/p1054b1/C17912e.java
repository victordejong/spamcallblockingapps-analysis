package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.e */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/e.class */
public final class C17912e extends AbstractC17917j {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: a */
    public int mo15546a() {
        return 68;
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: b */
    public void mo15545b(SQLiteDatabase sQLiteDatabase, int i) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n            INSERT OR IGNORE INTO msg_thread_stats (\n            conversation_id,\n            filter,\n            latest_message_id,\n            latest_message_status,\n            latest_message_entities_types,\n            latest_sim_token,\n            date_sorting,\n            actions_dismissed,\n            snippet_text,\n            unread_messages_count\n            )\n            SELECT\n            _id,\n            1,\n            latest_message_id,\n            latest_message_status,\n            latest_message_entities_types,\n            latest_sim_token,\n            date_sorting,\n            actions_dismissed,\n            snippet_text,\n            unread_messages_count\n            FROM msg_conversations\n        ");
        sQLiteDatabase.execSQL("\n\t        CREATE TEMPORARY TABLE temp_conversations_table AS SELECT\n             _id,\n            type,\n            tc_group_id,\n            has_outgoing_messages,\n\t\t\tphonebook_count,\n\t\t\twhite_list_count,\n\t\t\tblacklist_count,\n\t\t\ttop_spammer_count,\n\t\t\tsplit_criteria,\n\t\t\thas_spam_messages\n            FROM msg_conversations\n        ");
        sQLiteDatabase.execSQL("\n            DROP TABLE msg_conversations\n        ");
        sQLiteDatabase.execSQL("\n           CREATE TABLE msg_conversations(\n           _id INTEGER PRIMARY KEY AUTOINCREMENT,\n           type INTEGER DEFAULT(0),\n           tc_group_id TEXT,\n           has_outgoing_messages INTEGER DEFAULT(0),\n           phonebook_count INTEGER DEFAULT(0),\n           white_list_count INTEGER DEFAULT(0),\n           blacklist_count INTEGER DEFAULT(0),\n           top_spammer_count INTEGER DEFAULT(0),\n           split_criteria INTEGER DEFAULT(0),\n           has_spam_messages INTEGER DEFAULT(0)\n           )\n        ");
        sQLiteDatabase.execSQL("\n           INSERT INTO msg_conversations SELECT * FROM temp_conversations_table\n        ");
        sQLiteDatabase.execSQL("\n            DROP TABLE temp_conversations_table\n        ");
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: d */
    public int mo15544d() {
        return 0;
    }
}
