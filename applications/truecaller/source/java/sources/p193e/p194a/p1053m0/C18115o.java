package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.o */
/* loaded from: classes8-dex2jar.jar:e/a/m0/o.class */
public final class C18115o implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        if (strArr == null) {
            StringBuilder m8728C = C22128a.m8728C("SELECT * FROM (SELECT c.type, c._id AS conversation_id, gp.im_group_id AS group_id, gi.title AS group_name, gi.avatar AS group_avatar, gi.roles AS group_roles, GROUP_CONCAT(ac.contact_name) AS participants_names, GROUP_CONCAT(p.normalized_destination) AS participants_normalized_addresses, ts.archived_date AS archived_date, ts.snippet_text AS snippet_text, ts.latest_message_media_count AS latest_message_media_count, ts.latest_message_media_type AS latest_message_media_type, ts.date_sorting AS date_sorting, ts.latest_message_status AS latest_message_status, ts.latest_message_transport AS latest_message_transport FROM msg_conversations c LEFT JOIN msg_conversation_participants cp ON c._id = cp.conversation_id LEFT JOIN msg_thread_stats ts ON ts.conversation_id = c._id LEFT JOIN msg_im_group_participants gp ON c.tc_group_id = gp.im_group_id LEFT JOIN msg_im_group_info gi ON gp.im_group_id = gi.im_group_id LEFT JOIN msg_participants p ON p.tc_im_peer_id = gp.im_peer_id OR cp.participant_id = p._id LEFT JOIN aggregated_contact ac ON ac._id = p.aggregated_contact_id WHERE ts.filter = 1 GROUP BY c._id ) se WHERE se.type = 1 ");
            if (str != null) {
                m8728C.append(" AND (" + str + ')');
            }
            if (str2 != null) {
                C22128a.m8691L0(" ORDER BY ", str2, m8728C);
            }
            String sb = m8728C.toString();
            l.d(sb, "StringBuilder().apply(builderAction).toString()");
            SQLiteDatabase m28528m = abstractC8448a.m28528m();
            if (strArr2 == null) {
                strArr2 = new String[0];
            }
            Cursor rawQuery = m28528m.rawQuery(sb, strArr2);
            l.d(rawQuery, "provider.database.rawQue… selectionArgs.orEmpty())");
            return rawQuery;
        }
        throw new IllegalArgumentException("A projection is not supported for this URI".toString());
    }
}
