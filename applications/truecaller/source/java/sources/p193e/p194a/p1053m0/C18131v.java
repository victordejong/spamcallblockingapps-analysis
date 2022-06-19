package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.v */
/* loaded from: classes8-dex2jar.jar:e/a/m0/v.class */
public final class C18131v implements C8456a.AbstractC8462f {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    public Uri mo15464c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        l.d(m28528m, "provider.database");
        String queryParameter = uri.getQueryParameter("raw_message_id");
        if (queryParameter != null) {
            Long m13584U0 = C19291g.m13584U0(m28528m, "msg_messages", "_id", "transport = 2 AND raw_id = ?", new String[]{queryParameter});
            ?? r18 = true;
            if (m13584U0 != null) {
                long longValue = m13584U0.longValue();
                contentValues.put("message_id", Long.valueOf(longValue));
                String asString = contentValues.getAsString("from_peer_id");
                l.d(asString, "values.getAsString(ImReactionsTable.FROM_PEER_ID)");
                Long m13584U02 = C19291g.m13584U0(m28528m, "msg_im_reactions", "send_date", "message_id = ? AND from_peer_id = ?", new String[]{String.valueOf(longValue), asString});
                if (m13584U02 != null) {
                    long longValue2 = m13584U02.longValue();
                    Long asLong = contentValues.getAsLong("send_date");
                    l.d(asLong, "values.getAsLong(ImReactionsTable.DATE)");
                    r18 = true;
                    if (longValue2 < asLong.longValue()) {
                        m28528m.delete("msg_im_reactions", "message_id = ? AND from_peer_id = ?", new String[]{String.valueOf(longValue), asString});
                    }
                }
                String asString2 = contentValues.getAsString("emoji");
                ?? r25 = true;
                if (asString2 != null) {
                    r25 = asString2.length() == 0;
                }
                r18 = r25 != false ? true : m28528m.insert("msg_im_reactions", null, contentValues);
            }
            Uri m28516a = c8456a.m28516a(r18 == true ? 1L : 0L);
            l.d(m28516a, "helper.getContentUri(ins…r.database, uri, values))");
            return m28516a;
        }
        throw new IllegalStateException();
    }
}
