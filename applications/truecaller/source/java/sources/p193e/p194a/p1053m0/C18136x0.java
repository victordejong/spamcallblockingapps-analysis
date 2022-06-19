package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.u.i;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.m0.x0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/x0.class */
public final class C18136x0 implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        List<String> queryParameters = uri.getQueryParameters("ids");
        l.d(queryParameters, "ids");
        AssertionUtil.AlwaysFatal.isTrue(!queryParameters.isEmpty(), new String[0]);
        String u = h.u("?", ",", queryParameters.size());
        l.d(u, "StringUtils.repeat(\"?\", \",\", ids.size)");
        List m3962T1 = C25225a.m3962T1(String.valueOf(100));
        ArrayList arrayList = new ArrayList(C25225a.m4004J(queryParameters, 10));
        for (String str3 : queryParameters) {
            arrayList.add(str3.toString());
        }
        Object[] array = i.l0(m3962T1, arrayList).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor rawQuery = abstractC8448a.m28528m().rawQuery(C22128a.m8543z2("\n            SELECT\n            m._id                                      AS message_id,\n            m.status                                   AS message_status,\n            m.raw_address                              AS message_sender_raw_address,\n            m.sim_token                                AS message_sim_token,\n            m.date                                     AS message_date,\n            m.conversation_id                          AS message_conversation_id,\n            m.classification                           AS classification,\n            m.language                                 AS language,\n            m.transport                                AS transport,\n            e.entity_info1                                  AS message_content,\n            c.split_criteria                           AS conversation_split_criteria,\n            ac.data1                       AS message_search_warning,\n            a.contact_badges                  AS contact_badges,\n            a.contact_name                                     AS message_sender_name\n            FROM msg_messages m\n                LEFT JOIN msg_entities e \n                    ON e.message_id = m._id\n                LEFT JOIN msg_conversations c \n                    ON c._id = m.conversation_id\n                LEFT JOIN msg_participants p\n                    ON p._id = m.participant_id\n                LEFT JOIN aggregated_contact a \n                    ON p.aggregated_contact_id = a._id\n                LEFT JOIN (\n                    SELECT data1, aggregated_contact_id FROM aggregated_contact_data \n                        WHERE \n                            data_type = 13 AND \n                            data1 = ? \n                        GROUP BY aggregated_contact_id\n                ) ac \n                    ON ac.aggregated_contact_id = p.aggregated_contact_id\n         WHERE ", C22128a.m8725C2("m._id IN(", u, ") AND m.classification = 0")), (String[]) array);
        l.d(rawQuery, "provider.database.rawQue…messagesSelection\", args)");
        return rawQuery;
    }
}
