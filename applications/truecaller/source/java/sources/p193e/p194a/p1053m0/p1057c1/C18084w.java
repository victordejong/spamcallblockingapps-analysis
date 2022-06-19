package p193e.p194a.p1053m0.p1057c1;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.w */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/w.class */
public final class C18084w implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        if (str != null) {
            String queryParameter = uri.getQueryParameter("start_date");
            if (queryParameter == null) {
                throw new IllegalArgumentException("Start date is required");
            }
            String queryParameter2 = uri.getQueryParameter("end_date");
            if (queryParameter2 == null) {
                throw new IllegalArgumentException("End date is required");
            }
            Cursor rawQuery = abstractC8448a.m28528m().rawQuery(C22128a.m8717E2("\n               SELECT SUM(count) as count FROM (\n                   ", C22128a.m8717E2("\n            SELECT COUNT() as count FROM msg_messages \n                WHERE ", "\n            date BETWEEN ? AND ? AND\n            classification != 1 AND \n            transport != 5 AND\n            (status & 2) = 0 AND\n            (status & 1) = 0\n        ", " AND category = 3 AND conversation_id IN (\n                        SELECT _id\n                            FROM (\n                                \n    SELECT \n        c._id AS _id,  \n        c.type AS type,  \n        c.tc_group_id AS tc_group_id, \n        c.has_outgoing_messages AS outgoing_message_count, \n        c.white_list_count AS white_list_count, \n        c.blacklist_count AS blacklist_count, \n        c.top_spammer_count AS top_spammer_count, \n        c.phonebook_count AS phonebook_count, \n        c.split_criteria AS split_criteria, \n        ts.latest_message_id AS latest_message_id, \n        ts.unread_messages_count AS unread_messages_count,  \n        ts.marked_unread AS marked_unread, \n        ts.filter AS filter, \n        COUNT(a.contact_spam_type) > 0 AS is_spam\n        \n    FROM msg_conversations c \n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id \n        LEFT JOIN msg_participants p on cp.participant_id = p._id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id \n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n\n                                WHERE ts.filter = 3 AND split_criteria = 1\n                                GROUP BY cp.conversation_id\n                            )\n                            WHERE ", str, "\n                        )    \n        "), "\n                      UNION ALL\n                   ", C22128a.m8717E2("\n            SELECT COUNT() as count FROM msg_messages \n                WHERE ", "\n            date BETWEEN ? AND ? AND\n            classification != 1 AND \n            transport != 5 AND\n            (status & 2) = 0 AND\n            (status & 1) = 0\n        ", " AND conversation_id IN (\n                        SELECT _id\n                            FROM (\n                                \n    SELECT \n        c._id AS _id,  \n        c.type AS type,  \n        c.tc_group_id AS tc_group_id, \n        c.has_outgoing_messages AS outgoing_message_count, \n        c.white_list_count AS white_list_count, \n        c.blacklist_count AS blacklist_count, \n        c.top_spammer_count AS top_spammer_count, \n        c.phonebook_count AS phonebook_count, \n        c.split_criteria AS split_criteria, \n        ts.latest_message_id AS latest_message_id, \n        ts.unread_messages_count AS unread_messages_count,  \n        ts.marked_unread AS marked_unread, \n        ts.filter AS filter, \n        COUNT(a.contact_spam_type) > 0 AS is_spam\n        \n    FROM msg_conversations c \n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id \n        LEFT JOIN msg_participants p on cp.participant_id = p._id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id \n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n\n                                WHERE split_criteria = 0\n                                GROUP BY cp.conversation_id\n                            )\n                            WHERE ", str, "\n                        )\n        "), "\n                )\n            "), new String[]{queryParameter, queryParameter2, queryParameter, queryParameter2});
            l.d(rawQuery, "provider.database.rawQue…tDate, endDate)\n        )");
            return rawQuery;
        }
        throw new IllegalArgumentException("Spam tab conversations selection is required");
    }
}
