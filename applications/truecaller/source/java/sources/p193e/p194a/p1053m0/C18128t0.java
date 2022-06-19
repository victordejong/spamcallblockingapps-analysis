package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.truecaller.log.AssertionUtil;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
/* renamed from: e.a.m0.t0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/t0.class */
public class C18128t0 implements C8456a.AbstractC8464h {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8464h
    /* renamed from: a */
    public int mo15463a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        boolean z;
        for (String str2 : contentValues.keySet()) {
            String[] strArr2 = C17891a1.C17905n.f50897a;
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (strArr2[i].equals(str2)) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            AssertionUtil.AlwaysFatal.isTrue(z, String.format("Conversation field '%s' is not approved for direct modification", str2));
        }
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        String queryParameter = uri.getQueryParameter("conversation_id");
        AssertionUtil.AlwaysFatal.isFalse(TextUtils.isEmpty(queryParameter), new String[0]);
        int update = m28528m.update("msg_thread_stats", contentValues, "conversation_id=?", new String[]{queryParameter});
        if (update > 0) {
            abstractC8448a.m28532i(C8582g0.m28306n());
        }
        return update;
    }
}
