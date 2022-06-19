package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.n */
/* loaded from: classes8-dex2jar.jar:e/a/m0/n.class */
public final class C18113n implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        StringBuilder sb = new StringBuilder();
        sb.append("\n            SELECT\n                count()                                                     AS count,\n                m.date                                     AS message_date\n            FROM msg_entities e\n                LEFT JOIN msg_messages m ON e.message_id = m._id\n            WHERE (e.type='tenor/gif' OR e.type='image/gif')\n                AND e.entity_info2 = 0\n        ");
        if (!(str == null || str.length() == 0)) {
            C22128a.m8691L0(" AND ", str, sb);
        }
        String sb2 = sb.toString();
        l.d(sb2, "StringBuilder().apply(builderAction).toString()");
        Cursor rawQuery = abstractC8448a.m28528m().rawQuery(sb2, strArr2);
        l.d(rawQuery, "provider.database.rawQuery(sql, selectionArgs)");
        return rawQuery;
    }
}
