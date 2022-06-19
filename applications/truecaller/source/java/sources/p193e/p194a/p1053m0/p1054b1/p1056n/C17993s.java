package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.s */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/s.class */
public final class C17993s implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "\n                UPDATE msg_conversations SET type = 2\n                WHERE _id IN (\n                    SELECT\n                        c._id AS _id\n                    FROM msg_conversations c\n                        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id\n                        LEFT JOIN msg_participants p on cp.participant_id = p._id\n                    WHERE c.type = 0 AND (p.normalized_destination GLOB '*[A-Za-z]*' OR length(p.normalized_destination) <= 6)\n                )\n            ", "\n                UPDATE msg_conversations SET split_criteria = CASE \n                    type != 2 OR \n                    phonebook_count OR \n                    white_list_count OR \n                    blacklist_count OR \n                    (top_spammer_count = 1 AND type != 2) OR \n                    has_outgoing_messages OR\n                    tc_group_id IS NOT NULL\n                WHEN 1 THEN 0 ELSE 1 END\n            ");
    }
}
