package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.c0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c0.class */
public final class C18021c0 implements C8456a.AbstractC8462f {

    /* renamed from: a */
    public final AbstractC18094f f50914a;

    public C18021c0(AbstractC18094f abstractC18094f) {
        l.e(abstractC18094f, "messageLinksHelper");
        this.f50914a = abstractC18094f;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    public Uri mo15464c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues) {
        Long asLong;
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        l.d(m28528m, "provider.database");
        long insert = m28528m.insert("msg_entities", null, contentValues);
        if (insert > -1 && (asLong = contentValues.getAsLong("message_id")) != null) {
            long longValue = asLong.longValue();
            String asString = contentValues.getAsString("type");
            String asString2 = contentValues.getAsString("entity_info1");
            if (!(!l.a(asString, "text/plain"))) {
                boolean z = true;
                if (asString2 != null) {
                    z = asString2.length() == 0;
                }
                if (!z) {
                    this.f50914a.mo15493a(m28528m, longValue, insert, asString2);
                }
            }
        }
        Uri m28516a = c8456a.m28516a(insert);
        l.d(m28516a, "helper.getContentUri(id)");
        return m28516a;
    }
}
