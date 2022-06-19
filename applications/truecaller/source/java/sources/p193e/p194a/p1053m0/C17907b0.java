package p193e.p194a.p1053m0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.b0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b0.class */
public final class C17907b0 implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final C20592g f50898a;

    /* renamed from: b */
    public final boolean f50899b;

    public C17907b0(C20592g c20592g, boolean z) {
        l.e(c20592g, "featuresRegistry");
        this.f50898a = c20592g;
        this.f50899b = z;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("conversation_id");
        if (queryParameter != null) {
            long parseLong = Long.parseLong(queryParameter);
            String queryParameter2 = uri.getQueryParameter("filter");
            if (queryParameter2 == null) {
                throw new IllegalStateException();
            }
            int parseInt = Integer.parseInt(queryParameter2);
            String queryParameter3 = uri.getQueryParameter("split_criteria");
            if (queryParameter3 == null) {
                throw new IllegalStateException();
            }
            int parseInt2 = Integer.parseInt(queryParameter3);
            StringBuilder m8728C = C22128a.m8728C("\n    SELECT\n        m._id AS message_id,\n        m.date AS message_date,\n        m.status AS message_status,\n        m.transport AS message_transport,\n        m.important AS message_important,\n        m.sequence_number AS message_sequence_number,\n        m.raw_id AS message_raw_message_id,\n        m.info17 AS message_forwarding_id,\n        be._id AS entity_id,\n        be.type AS entity_mime_type,\n        be.entity_info1 AS entity_content,\n        be.entity_info2 AS entity_status,\n        CAST(be.entity_info3 AS INTEGER) AS entity_size,\n        CASE be.entity_type\n             WHEN 1 THEN be.entity_info5\n             WHEN 3 THEN be.entity_info5\n             WHEN 2 THEN be.entity_info5\n             WHEN 7 THEN be.entity_info2\n             ELSE -1\n        END AS entity_width,\n        CASE be.entity_type\n             WHEN 1 THEN be.entity_info6\n             WHEN 3 THEN be.entity_info6\n             WHEN 2 THEN be.entity_info6\n             WHEN 7 THEN be.entity_info3\n             ELSE -1\n        END AS entity_height,\n        CASE be.entity_type\n             WHEN 4 THEN be.entity_info4\n             WHEN 2 THEN be.entity_info7\n             ELSE -1\n        END AS entity_duration,\n        CASE be.entity_type\n             WHEN 1 THEN be.entity_info4\n             WHEN 2 THEN be.entity_info4\n             WHEN 7 THEN be.entity_info5\n             WHEN 6 THEN be.entity_info4\n             ELSE ''\n        END AS entity_thumbnail,\n        CASE be.entity_type\n             WHEN 7 THEN be.entity_info4\n             WHEN 5 THEN be.entity_info4\n             ELSE ''\n        END AS entity_filename,\n        CASE be.entity_type\n             WHEN 6 THEN be.entity_info5\n             ELSE ''\n        END AS entity_vcard_name,\n        CASE be.entity_type\n             WHEN 6 THEN be.entity_info6\n             ELSE -1\n        END AS entity_vcard_contacts_count,\n        CASE be.entity_type\n             WHEN 7 THEN be.entity_info6\n             ELSE ''\n        END AS entity_description,\n        CASE be.entity_type\n             WHEN 7 THEN be.entity_info7\n             ELSE ''\n        END AS entity_source,\n        te.entity_info1 AS entity_text,\n        ml.link AS entity_link,\n        p.type AS participant_type,\n        p.normalized_destination AS participant_normalized_destination,\n        p.tc_im_peer_id AS participant_peer_id,\n        ac.contact_name AS participant_name\n    FROM msg_entities be\n        LEFT JOIN msg_messages m\n            ON m._id = be.message_id\n        LEFT JOIN msg_entities te\n            ON te.message_id = be.message_id AND\n            te.type = 'text/plain'\n        LEFT JOIN msg_links ml\n            ON ml.message_id = be.message_id AND\n            be.type = 'text/plain'\n        LEFT JOIN msg_participants p\n            ON p._id = m.participant_id\n        LEFT JOIN aggregated_contact ac\n            ON ac._id = p.aggregated_contact_id\n    WHERE m.transport IN (2, 0, 1, \n            4, 7)\n        AND m.conversation_id = ?\n");
            StringBuilder m8558w = C22128a.m8558w(' ');
            boolean z = false;
            m8558w.append(C8582g0.m28319a(this.f50898a, this.f50899b, parseInt, parseInt2, false));
            m8728C.append(m8558w.toString());
            if (str != null) {
                m8728C.append(" AND (" + str + ')');
            }
            if (str2 != null) {
                C22128a.m8691L0(" ORDER BY ", str2, m8728C);
            }
            String sb = m8728C.toString();
            l.d(sb, "StringBuilder().apply(builderAction).toString()");
            String str3 = sb;
            if (strArr != null) {
                if (strArr.length == 0) {
                    z = true;
                }
                str3 = sb;
                if (!z) {
                    StringBuilder m8728C2 = C22128a.m8728C("SELECT ");
                    m8728C2.append(C25225a.m3990M1(strArr, null, null, null, 0, null, null, 63));
                    m8728C2.append(" FROM (");
                    m8728C2.append(sb);
                    m8728C2.append(')');
                    str3 = m8728C2.toString();
                }
            }
            Cursor rawQuery = abstractC8448a.m28528m().rawQuery(str3, (String[]) i.t0(new String[]{String.valueOf(parseLong)}, strArr2 != null ? strArr2 : new String[0]));
            Context context = abstractC8448a.getContext();
            if (context != null && rawQuery != null) {
                l.d(context, "it");
                rawQuery.setNotificationUri(context.getContentResolver(), C8582g0.m28294z());
            }
            return rawQuery;
        }
        throw new IllegalStateException();
    }
}
