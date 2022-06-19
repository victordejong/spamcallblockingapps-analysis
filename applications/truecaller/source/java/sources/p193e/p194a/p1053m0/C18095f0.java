package p193e.p194a.p1053m0;

import android.content.ContentUris;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.truecaller.log.AssertionUtil;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
/* renamed from: e.a.m0.f0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/f0.class */
public class C18095f0 implements C8456a.AbstractC8462f, C8456a.AbstractC8461e {

    /* renamed from: a */
    public static final String[] f51015a = {"_id"};

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8461e
    /* renamed from: b */
    public int mo15465b(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr) {
        AssertionUtil.isTrue(str == null, "Selection is not supported for this operation");
        long parseId = ContentUris.parseId(uri);
        AssertionUtil.isTrue(parseId != -1, new String[0]);
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        AssertionUtil.isTrue(m28528m.inTransaction(), "This method can work properly only in transaction");
        int delete = m28528m.delete("msg_messages", "_id=?", new String[]{String.valueOf(parseId)});
        if (delete > 0) {
            abstractC8448a.m28532i(C8582g0.m28294z());
        }
        return delete;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0208  */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r1v25, types: [long] */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r2v2 */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.net.Uri mo15464c(p193e.p194a.p372b0.p413i.AbstractC8448a r11, p193e.p194a.p372b0.p413i.p414e.C8456a r12, android.net.Uri r13, android.content.ContentValues r14) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C18095f0.mo15464c(e.a.b0.i.a, e.a.b0.i.e.a, android.net.Uri, android.content.ContentValues):android.net.Uri");
    }
}
