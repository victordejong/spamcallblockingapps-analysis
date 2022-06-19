package p193e.p194a.p1053m0.p1057c1;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.i0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/i0.class */
public final class C18065i0 {
    /* renamed from: a */
    public void m15507a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        StringBuilder sb = new StringBuilder();
        sb.append("\n           CREATE TEMP TABLE ");
        sb.append("msg_thread_stats_temp");
        sb.append("\n           AS\n           SELECT conversation_id, filter, ");
        String[] strArr = C17891a1.C17905n.f50897a;
        l.d(strArr, "MODIFIABLE_COLUMNS");
        C22128a.m8666T0(sb, C25225a.m3990M1(strArr, null, null, null, 0, null, null, 63), "\n           FROM msg_thread_stats;\n           CREATE INDEX idx_", "msg_thread_stats_temp", " ON ");
        sb.append("msg_thread_stats_temp");
        sb.append(" (conversation_id, filter)\n        ");
        sQLiteDatabase.execSQL(sb.toString());
        sQLiteDatabase.execSQL("DELETE FROM msg_thread_stats");
        sQLiteDatabase.execSQL("\n            INSERT INTO msg_thread_stats (\n                filter,\n                conversation_id,\n                unread_messages_count)\n            SELECT\n                filter,\n                conversation_id,\n                SUM(NOT read)\n            FROM (SELECT *, category AS filter FROM msg_messages\n                UNION\n                SELECT *, 1 AS filter FROM msg_messages\n                )\n            GROUP BY conversation_id, filter\n            ");
        sQLiteDatabase.execSQL("\n            UPDATE msg_thread_stats\n                SET\n                    latest_message_id = (SELECT _id\n                        FROM msg_messages\n                        WHERE transport != 5 AND msg_thread_stats.conversation_id = conversation_id\n                            AND msg_thread_stats.filter IN (category, 1)\n                        ORDER BY sequence_number DESC, date DESC, _id DESC\n                        LIMIT 1) \n        ");
        sQLiteDatabase.execSQL("\n            UPDATE msg_thread_stats SET history_events_count = \n                (SELECT history_events_count FROM msg_conversations \n                    WHERE _id = msg_thread_stats.conversation_id)\n        ");
        l.d(strArr, "MODIFIABLE_COLUMNS");
        for (String str : strArr) {
            sQLiteDatabase.execSQL(C22128a.m8606k(C22128a.m8688M("\n                UPDATE msg_thread_stats\n                SET ", str, " = IFNULL((SELECT ", str, "\n                    FROM "), "msg_thread_stats_temp", "\n                    WHERE msg_thread_stats.conversation_id = conversation_id\n                        AND msg_thread_stats.filter = filter), ", str, ")\n            "));
        }
        sQLiteDatabase.execSQL("DROP TABLE msg_thread_stats_temp");
    }
}
