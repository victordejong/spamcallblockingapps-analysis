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
import s1.z.c.l;
/* renamed from: e.a.m0.x */
/* loaded from: classes8-dex2jar.jar:e/a/m0/x.class */
public final class C18135x implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("last_id");
        String queryParameter2 = uri.getQueryParameter("chunk_size");
        String str3 = "";
        String m8543z2 = queryParameter2 != null ? C22128a.m8543z2("LIMIT ", queryParameter2) : "";
        if (queryParameter != null) {
            str3 = C22128a.m8543z2("AND m._id<", queryParameter);
        }
        String m8721D2 = C22128a.m8721D2("\n    SELECT\n            m._id                                      AS message_id,\n            m.raw_address                              AS message_sender_raw_address,\n            m.date                                     AS message_date,\n            m.conversation_id                          AS message_conversation_id,\n            m.transport                          AS message_transport,\n            e.entity_info1                            AS message_content,\n            m.category                                 AS category,\n            p.normalized_destination                AS normalized_address,\n            act.contact_name                          AS message_sender_name\n            FROM msg_messages m\n                LEFT JOIN msg_entities e ON m._id = e.message_id \n                LEFT JOIN msg_participants p ON m.participant_id = p._id\n                LEFT JOIN aggregated_contact act\n                    ON act._id = p.aggregated_contact_id\n         WHERE ", C22128a.m8725C2("(transport = 0 OR transport = 4 OR (transport = 2 ", "AND im_business_state = 1)) ", str3), " ORDER BY m._id DESC ", m8543z2);
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        Object[] array = new ArrayList().toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor rawQuery = m28528m.rawQuery(m8721D2, (String[]) array);
        l.d(rawQuery, "provider.database.rawQue…String>().toTypedArray())");
        return rawQuery;
    }
}
