package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.h */
/* loaded from: classes8-dex2jar.jar:e/a/m0/h.class */
public final class C18098h implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        if (str != null) {
            Cursor rawQuery = abstractC8448a.m28528m().rawQuery(C22128a.m8562v(new Object[]{str}, 1, "\n            SELECT *\n            FROM aggregated_contact_data\n            WHERE _id = (\n                SELECT aggregated_contact_id \n                FROM raw_contact_data\n                WHERE %s\n                LIMIT 1\n            )\n        ", "java.lang.String.format(this, *args)"), strArr2);
            l.d(rawQuery, "provider.database.rawQue…(sqlQuery, selectionArgs)");
            return rawQuery;
        }
        throw new IllegalArgumentException("Missing selection for query: \n            SELECT *\n            FROM aggregated_contact_data\n            WHERE _id = (\n                SELECT aggregated_contact_id \n                FROM raw_contact_data\n                WHERE %s\n                LIMIT 1\n            )\n        ".toString());
    }
}
