package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.CancellationSignal;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.h0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/h0.class */
public final class C18099h0 implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final C20592g f51018a;

    /* renamed from: b */
    public final boolean f51019b;

    public C18099h0(C20592g c20592g, boolean z) {
        l.e(c20592g, "featuresRegistry");
        this.f51018a = c20592g;
        this.f51019b = z;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("conversation_id");
        l.c(queryParameter);
        String queryParameter2 = uri.getQueryParameter("filter");
        Integer valueOf = queryParameter2 != null ? Integer.valueOf(Integer.parseInt(queryParameter2)) : null;
        l.c(valueOf);
        int intValue = valueOf.intValue();
        String queryParameter3 = uri.getQueryParameter("split_criteria");
        Integer num = null;
        if (queryParameter3 != null) {
            num = Integer.valueOf(Integer.parseInt(queryParameter3));
        }
        l.c(num);
        int intValue2 = num.intValue();
        StringBuilder m8692L = C22128a.m8692L("\n            SELECT\n                m._id                                      AS message_id,\n                m.status                                   AS message_status,\n                m.conversation_id                          AS message_conversation_id,\n                m.transport                                AS message_transport,\n                m.language                                 AS message_language,\n                m.date                                     AS message_date,\n                m.sequence_number                          AS message_sequence_number,\n                m.info11                        AS message_mentions,\n                e.entity_info1                                    AS message_content,\n                e.type                              AS message_content_type\n            FROM msg_messages m\n                LEFT JOIN msg_entities e ON m._id = e.message_id\n        ", " WHERE ", "message_conversation_id=?");
        C22128a.m8666T0(m8692L, C8582g0.m28318b(this.f51018a, this.f51019b, intValue, intValue2, false, 16), " AND ", "(message_status & 1)=0", " AND ");
        m8692L.append("message_transport IN (0, 4, 1, 7, 2)");
        m8692L.append(" AND message_content_type='text/plain'");
        if (str != null) {
            C22128a.m8691L0(" AND ", str, m8692L);
        }
        if (str2 != null) {
            C22128a.m8691L0(" ORDER BY ", str2, m8692L);
        }
        String sb = m8692L.toString();
        l.d(sb, "StringBuilder().apply(builderAction).toString()");
        ArrayList arrayList = new ArrayList();
        arrayList.add(queryParameter);
        if (strArr2 == null) {
            strArr2 = new String[0];
        }
        i.c(arrayList, strArr2);
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor rawQuery = m28528m.rawQuery(sb, (String[]) array);
        l.d(rawQuery, "provider.database.rawQue…sql, args.toTypedArray())");
        return rawQuery;
    }
}
