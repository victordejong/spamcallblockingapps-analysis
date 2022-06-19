package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.truecaller.log.AssertionUtil;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
/* renamed from: e.a.m0.v0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/v0.class */
public class C18132v0 implements C8456a.AbstractC8458b {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8458b
    /* renamed from: a */
    public Uri mo15466a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, Uri uri2) {
        String asString = contentValues.getAsString("value");
        AssertionUtil.AlwaysFatal.isTrue(!TextUtils.isEmpty(asString), new String[0]);
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        ContentValues contentValues2 = new ContentValues(1);
        contentValues2.put("is_top_spammer", Boolean.TRUE);
        contentValues2.put("top_spam_score", contentValues.getAsInteger("count"));
        if (m28528m.update("msg_participants", contentValues2, "normalized_destination=? COLLATE NOCASE", new String[]{asString}) > 0) {
            abstractC8448a.m28532i(C17891a1.C17902k.m15675H());
        }
        return uri;
    }
}
