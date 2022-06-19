package p193e.p194a.p1053m0.p1054b1.p1055m;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17917j;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.m.a */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/m/a.class */
public final class C17920a extends AbstractC17917j {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: a */
    public int mo15546a() {
        return 72;
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: b */
    public void mo15545b(SQLiteDatabase sQLiteDatabase, int i) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS msg_thread_stats");
        sQLiteDatabase.execSQL("\n    CREATE TABLE msg_thread_stats (\n    latest_message_id INTEGER,\n    latest_message_status INTEGER,\n    latest_message_media_count INTEGER DEFAULT(0),\n    latest_message_media_type TEXT,\n    unread_messages_count INTEGER DEFAULT(0),\n    latest_sim_token TEXT DEFAULT('-1'),\n    date_sorting INTEGER DEFAULT(0),\n    snippet_text TEXT DEFAULT(''),\n    actions_dismissed INTEGER DEFAULT(0),\n    filter INTEGER NOT NULL,\n    conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE,\n    UNIQUE(filter, conversation_id) ON CONFLICT REPLACE)\n");
        sQLiteDatabase.execSQL("CREATE INDEX idx_msg_thread_stats_latest_message_id ON msg_thread_stats (latest_message_id)");
        sQLiteDatabase.execSQL("\n            UPDATE msg_messages\n                SET category = CASE category\n                    WHEN 1 THEN 2\n                    WHEN 2 THEN 3\n                    ELSE IFNULL(category, 2)\n                END\n        ");
        sQLiteDatabase.execSQL("\n            UPDATE msg_messages\n                SET category = 2\n                WHERE status = 3\n        ");
        sQLiteDatabase.execSQL("\n            INSERT INTO msg_thread_stats (\n                latest_message_id,\n                latest_message_status,\n                unread_messages_count,\n                latest_sim_token,\n                date_sorting,\n                filter,\n                conversation_id)\n            SELECT\n                _id,\n                status,\n                SUM(NOT read),\n                sim_token,\n                date,\n                filter,\n                conversation_id\n            FROM (SELECT *, category AS filter FROM msg_messages\n                UNION\n                SELECT *, 1 AS filter FROM msg_messages)\n            GROUP BY conversation_id, filter\n            ORDER BY date DESC\n            ");
        sQLiteDatabase.execSQL("\n            UPDATE msg_thread_stats\n                SET latest_message_media_count = (SELECT COUNT(*)\n                FROM msg_entities\n                WHERE message_id = latest_message_id\n                    AND type != 'text/plain'),\n            latest_message_media_type = (SELECT type\n                FROM msg_entities\n                WHERE message_id = latest_message_id\n                    AND type != 'text/plain'\n                LIMIT 1),\n            snippet_text = (SELECT content\n                FROM msg_entities\n                WHERE message_id = latest_message_id\n                    AND type = 'text/plain')\n            ");
        sQLiteDatabase.execSQL("\n            DELETE\n            FROM msg_conversations\n            WHERE _id NOT IN (SELECT DISTINCT conversation_id FROM msg_messages)\n        ");
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: d */
    public int mo15544d() {
        return 0;
    }
}
