package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.CancellationSignal;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.z */
/* loaded from: classes8-dex2jar.jar:e/a/m0/z.class */
public final class C18139z implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("filter");
        ArrayList arrayList = new ArrayList();
        StringBuilder m8728C = C22128a.m8728C("\n    SELECT\n        SUM(e.entity_info3) AS media_size,\n        c._id AS media_coversation_id,\n        p.type AS participant_type,\n        p.normalized_destination AS participant_address,\n        a.contact_name AS participant_name,\n        IFNULL(a.contact_phonebook_id, -1) AS participant_pb_id,\n        a.contact_image_url AS participant_avatar,\n        ig.title AS group_title,\n        ig.avatar AS group_avatar\n    FROM msg_entities e\n        LEFT JOIN msg_messages m ON e.message_id = m._id\n        LEFT JOIN msg_conversations c ON c._id = m.conversation_id\n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id\n        LEFT JOIN msg_participants p on cp.participant_id = p._id\n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n        LEFT JOIN msg_im_group_info ig on p.normalized_destination = ig.im_group_id AND p.type = 4\n    WHERE m.transport = 2 AND e.entity_info2 = 0 AND\n             entity_type IN (4, 1, 2, 5)\n    ");
        if (queryParameter != null) {
            if ((queryParameter.length() > 0 ? queryParameter : null) != null) {
                m8728C.append(" AND (participant_name LIKE ? OR group_title LIKE ?)");
                arrayList.addAll(i.T(new String[]{'%' + queryParameter + '%', '%' + queryParameter + '%'}));
            }
        }
        if (str != null) {
            m8728C.append(" AND (" + str + ')');
        }
        if (strArr2 != null) {
            i.c(arrayList, strArr2);
        }
        m8728C.append(" GROUP BY c._id");
        m8728C.append(" HAVING media_size > 0");
        m8728C.append(" ORDER BY media_size DESC");
        String sb = m8728C.toString();
        l.d(sb, "StringBuilder().apply(builderAction).toString()");
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor rawQuery = m28528m.rawQuery(sb, (String[]) array);
        l.d(rawQuery, "provider.database.rawQue…ery, args.toTypedArray())");
        return rawQuery;
    }
}
