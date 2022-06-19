package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.d1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/d1.class */
public final class C17935d1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN is_spam INTEGER DEFAULT(0)");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations SET is_spam = (SELECT COUNT(aggregated_contact.contact_spam_type)\n                    FROM aggregated_contact\n                    WHERE aggregated_contact._id IN (SELECT msg_participants.aggregated_contact_id\n                            FROM msg_participants\n                            WHERE msg_participants._id IN (SELECT msg_conversation_participants.participant_id FROM msg_conversation_participants WHERE \nmsg_conversation_participants.conversation_id = msg_conversations._id)))\n            ");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations\n                SET split_criteria = CASE\n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL OR ((top_spammer_count = 1 OR is_spam = 1) AND type NOT IN (2,3)\n)) = 1 THEN 0\n                WHEN (history_events_count OR type NOT IN (2, 3)\n                    OR phonebook_count)\n                    = 1 THEN 2\n                ELSE 1 END\n            ");
    }
}
