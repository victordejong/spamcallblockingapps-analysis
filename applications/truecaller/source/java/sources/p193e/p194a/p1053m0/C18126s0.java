package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.s0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/s0.class */
public final class C18126s0 implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        if (str != null) {
            String m8562v = C22128a.m8562v(new Object[]{str}, 1, "\n            SELECT\n                r._id as im_reaction_id,\n                r.message_id as im_reaction_message_id,\n                r.emoji as im_reaction_emoji,\n                r.from_peer_id as im_reaction_from_peer_id,\n                r.send_date as im_reaction_date,\n                r.status as im_reaction_status,\n\n                m.conversation_id as im_conversation_id,\n                m.status as im_message_status,\n                \n                g.title as im_group_name,\n\n                i.normalized_number as im_participant_number,\n\n                ac.contact_name as im_participant_name,\n                ac.contact_image_url as im_participant_image_url,\n                IFNULL(ac.contact_phonebook_id, -1) as im_participant_phonebook_id\n\n            FROM msg_im_reactions r\n                LEFT JOIN msg_messages m ON m._id = r.message_id\n                LEFT JOIN msg_conversations c ON m.conversation_id = c._id\n                LEFT JOIN msg_im_group_info g ON g.im_group_id = c.tc_group_id\n                LEFT JOIN msg_im_users i ON i.im_peer_id = r.from_peer_id\n                LEFT JOIN data d ON d.data_type = 4\n                   AND d.data1 = i.normalized_number\n                LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n                    OR r.from_peer_id = rc.contact_im_id\n                LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n            WHERE %s\n            GROUP BY r._id\n        ", "java.lang.String.format(this, *args)");
            String str3 = m8562v;
            if (str2 != null) {
                str3 = C22128a.m8543z2(C22128a.m8543z2(m8562v, "ORDER BY "), str2);
            }
            Cursor rawQuery = abstractC8448a.m28528m().rawQuery(str3, strArr2);
            l.d(rawQuery, "provider.database.rawQue…(sqlQuery, selectionArgs)");
            return rawQuery;
        }
        throw new IllegalArgumentException("Add selection for query: \n            SELECT\n                r._id as im_reaction_id,\n                r.message_id as im_reaction_message_id,\n                r.emoji as im_reaction_emoji,\n                r.from_peer_id as im_reaction_from_peer_id,\n                r.send_date as im_reaction_date,\n                r.status as im_reaction_status,\n\n                m.conversation_id as im_conversation_id,\n                m.status as im_message_status,\n                \n                g.title as im_group_name,\n\n                i.normalized_number as im_participant_number,\n\n                ac.contact_name as im_participant_name,\n                ac.contact_image_url as im_participant_image_url,\n                IFNULL(ac.contact_phonebook_id, -1) as im_participant_phonebook_id\n\n            FROM msg_im_reactions r\n                LEFT JOIN msg_messages m ON m._id = r.message_id\n                LEFT JOIN msg_conversations c ON m.conversation_id = c._id\n                LEFT JOIN msg_im_group_info g ON g.im_group_id = c.tc_group_id\n                LEFT JOIN msg_im_users i ON i.im_peer_id = r.from_peer_id\n                LEFT JOIN data d ON d.data_type = 4\n                   AND d.data1 = i.normalized_number\n                LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n                    OR r.from_peer_id = rc.contact_im_id\n                LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n            WHERE %s\n            GROUP BY r._id\n        ");
    }
}
