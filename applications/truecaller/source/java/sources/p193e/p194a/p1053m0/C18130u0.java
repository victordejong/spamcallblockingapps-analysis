package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
/* renamed from: e.a.m0.u0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/u0.class */
public class C18130u0 implements C8456a.AbstractC8457a {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8457a
    /* renamed from: a */
    public int mo15467a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr, int i) {
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        String m8725C2 = !TextUtils.isEmpty(str) ? C22128a.m8725C2("normalized_destination IN (SELECT value FROM topspammers WHERE (", str, " COLLATE NOCASE))") : null;
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("is_top_spammer", Boolean.FALSE);
        contentValues.put("top_spam_score", (Integer) 0);
        if (m28528m.update("msg_participants", contentValues, m8725C2, strArr) > 0) {
            abstractC8448a.m28532i(C17891a1.C17902k.m15675H());
        }
        return i;
    }
}
