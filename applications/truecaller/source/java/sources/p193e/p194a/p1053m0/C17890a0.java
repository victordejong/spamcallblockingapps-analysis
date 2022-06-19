package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.a0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/a0.class */
public final class C17890a0 implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("group_by_type");
        boolean parseBoolean = queryParameter != null ? Boolean.parseBoolean(queryParameter) : false;
        StringBuilder m8728C = C22128a.m8728C("\n    SELECT\n        SUM(e.entity_info3) AS ms_total_size,\n        e.entity_type AS ms_entity_type,\n        c._id AS ms_conversation_id\n    FROM msg_entities e\n        LEFT JOIN msg_messages m ON e.message_id = m._id\n        LEFT JOIN msg_conversations c ON m.conversation_id = c._id \n    WHERE m.transport = 2 AND e.entity_info2 = 0\n    ");
        if (str != null) {
            m8728C.append(" AND (" + str + ") ");
        }
        if (parseBoolean) {
            m8728C.append("\n    GROUP BY ms_entity_type\n");
        }
        m8728C.append("\n    ORDER BY CASE \n        WHEN ms_entity_type = 1 THEN 0\n        WHEN ms_entity_type = 2 THEN 1\n        WHEN ms_entity_type = 5 THEN 2\n        WHEN ms_entity_type = 4 THEN 3\n        ELSE 4 END; \n");
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
}
