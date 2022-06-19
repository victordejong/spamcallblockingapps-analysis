package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.b */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/b.class */
public final class C17909b extends AbstractC17917j {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: a */
    public int mo15546a() {
        return 58;
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: b */
    public void mo15545b(SQLiteDatabase sQLiteDatabase, int i) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n            CREATE TEMPORARY TABLE temp_conversations_table AS SELECT\n            c._id AS _id,\n            c.type AS type,\n            c.tc_group_id AS tc_group_id,\n            c.latest_message_id AS latest_message_id,\n            c.latest_message_status AS latest_message_status,\n            GROUP_CONCAT(e.type,'|') AS latest_message_entities_types,\n            c.latest_sim_token AS latest_sim_token,\n            c.date_sorting AS date_sorting,\n            c.unread_messages_count AS unread_messages_count,\n            c.snippet_text AS snippet_text,\n            c.actions_dismissed AS actions_dismissed,\n            c.has_outgoing_messages AS has_outgoing_messages,\n            c.filter AS filter,\n            c.hidden_number_status AS hidden_number_status\n            FROM msg_conversations c LEFT JOIN msg_entities e ON c.latest_message_id = e.message_id\n            GROUP BY c._id\n        ");
        sQLiteDatabase.execSQL("\n            DROP TABLE msg_conversations\n        ");
        sQLiteDatabase.execSQL("\n            CREATE TABLE msg_conversations (\n            _id INTEGER PRIMARY KEY AUTOINCREMENT,\n            type INTEGER DEFAULT(0),\n            tc_group_id TEXT,\n            latest_message_id INTEGER,\n            latest_message_status INTEGER,\n            latest_message_entities_types TEXT DEFAULT(''),\n            latest_sim_token TEXT DEFAULT('-1'),\n            date_sorting INTEGER,\n            unread_messages_count INTEGER DEFAULT(0),\n            snippet_text TEXT DEFAULT(''),\n            actions_dismissed INTEGER DEFAULT(0),\n            has_outgoing_messages INTEGER DEFAULT(0),\n            filter INTEGER DEFAULT(0),\n            hidden_number_status INTEGER DEFAULT(2))\n        ");
        sQLiteDatabase.execSQL("\n           INSERT INTO msg_conversations SELECT * FROM temp_conversations_table\n        ");
        sQLiteDatabase.execSQL("\n            DROP TABLE temp_conversations_table\n        ");
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: d */
    public int mo15544d() {
        return 0;
    }
}
