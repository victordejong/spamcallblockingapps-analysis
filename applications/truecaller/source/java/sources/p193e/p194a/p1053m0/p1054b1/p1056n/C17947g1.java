package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.g1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/g1.class */
public final class C17947g1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "\n                UPDATE msg_conversations SET is_spam = (SELECT COUNT(aggregated_contact.contact_spam_type)\n                    FROM aggregated_contact\n                    WHERE aggregated_contact._id IN (SELECT msg_participants.aggregated_contact_id\n                            FROM msg_participants\n                            WHERE msg_participants._id IN (SELECT msg_conversation_participants.participant_id FROM msg_conversation_participants WHERE \nmsg_conversation_participants.conversation_id = msg_conversations._id)))\n            ", "\n                UPDATE msg_conversations\n                SET split_criteria = CASE\n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL OR ((top_spammer_count = 1 OR is_spam = 1) AND type NOT IN (2,3)\n)) = 1 THEN 0\n                WHEN (history_events_count OR type NOT IN (2, 3)\n                    OR phonebook_count)\n                    = 1 THEN 2\n                ELSE 1 END\n            ");
    }
}
