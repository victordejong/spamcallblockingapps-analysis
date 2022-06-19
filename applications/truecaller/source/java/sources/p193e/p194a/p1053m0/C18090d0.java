package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.d0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/d0.class */
public final class C18090d0 implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        if (strArr == null) {
            String queryParameter = uri.getQueryParameter("message_id");
            if (queryParameter == null) {
                throw new IllegalStateException();
            }
            long parseLong = Long.parseLong(queryParameter);
            StringBuilder m8728C = C22128a.m8728C("\n    SELECT\n        c.tc_group_id AS conversation_group_id,\n        m.transport AS message_transport,\n        p.is_top_spammer AS participant_is_top_spammer,\n        p.filter_action AS participant_filter_action,\n        p.im_business_state AS participant_business_state,\n        p.type AS participant_type,\n        ac.contact_spam_type AS spam_type\n    FROM msg_messages m\n        LEFT JOIN msg_conversations c\n            ON m.conversation_id = c._id\n        LEFT JOIN msg_participants p\n            ON p._id = m.participant_id \n        LEFT JOIN aggregated_contact ac\n        ON p.aggregated_contact_id = ac._id\n    WHERE m._id = ?\n");
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
            Cursor rawQuery = m28528m.rawQuery(sb, (String[]) i.t0(new String[]{String.valueOf(parseLong)}, strArr2));
            l.d(rawQuery, "provider.database.rawQue… selectionArgs.orEmpty())");
            return rawQuery;
        }
        throw new IllegalArgumentException("A projection is not supported for this URI".toString());
    }
}
