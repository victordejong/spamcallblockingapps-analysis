package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.y */
/* loaded from: classes8-dex2jar.jar:e/a/m0/y.class */
public final class C18137y implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        if (str == null) {
            if (!(strArr2 == null)) {
                throw new IllegalArgumentException("selectionArgs is not supported".toString());
            }
            if (!(strArr == null)) {
                throw new IllegalArgumentException("projection is not supported".toString());
            }
            if (!(str2 == null)) {
                throw new IllegalArgumentException("sortOrder is not supported".toString());
            }
            Cursor rawQuery = abstractC8448a.m28528m().rawQuery("\n        SELECT date AS business_im_date \n            FROM msg_messages\n            WHERE (status & 1) = 0 AND conversation_id IN \n                (SELECT _id FROM msg_conversations WHERE type=3)\n            ORDER BY date DESC LIMIT 1\n        ", strArr2);
            l.d(rawQuery, "provider.database.rawQuery(QUERY, selectionArgs)");
            return rawQuery;
        }
        throw new IllegalArgumentException("selection is not supported".toString());
    }
}
