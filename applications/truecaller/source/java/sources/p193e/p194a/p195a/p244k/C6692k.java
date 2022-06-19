package p193e.p194a.p195a.p244k;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Telephony;
import java.util.List;
import p1727n3.p1788g.C26179e;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.a.a.k.k */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/k.class */
public class C6692k implements AbstractC6691j {

    /* renamed from: c */
    public static final Uri f22055c = Telephony.Threads.CONTENT_URI.buildUpon().appendQueryParameter("simple", "true").build();

    /* renamed from: d */
    public static final String[] f22056d = {"_id", "recipient_ids"};

    /* renamed from: e */
    public static final Uri f22057e = Uri.parse("content://mms-sms/canonical-addresses");

    /* renamed from: a */
    public final Context f22058a;

    /* renamed from: b */
    public C26179e<List<String>> f22059b = null;

    public C6692k(Context context) {
        this.f22058a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0116, code lost:
        if (r11 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0137, code lost:
        if (r11 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013a, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0141, code lost:
        r11 = new p1727n3.p1788g.C26179e<>(0);
        r7.f22059b = r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0179  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0141 -> B:58:0x0151). Please submit an issue!!! */
    @Override // p193e.p194a.p195a.p244k.AbstractC6691j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> mo30570a(long r8) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.C6692k.mo30570a(long):java.util.List");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6691j
    /* renamed from: b */
    public String mo30569b(long j, Uri uri) {
        List<String> mo30570a = mo30570a(j);
        if (mo30570a.isEmpty()) {
            return "";
        }
        if (mo30570a.size() == 1) {
            return mo30570a.get(0);
        }
        Cursor cursor = null;
        try {
            Cursor query = this.f22058a.getContentResolver().query(Uri.withAppendedPath(uri, "addr"), new String[]{"address", "charset"}, "type=137", null, null);
            if (query == null || !query.moveToFirst()) {
                if (query == null) {
                    return "";
                }
                query.close();
                return "";
            }
            cursor = query;
            String m2349h0 = C26232y.m2349h0(C26232y.m2487A0(query.getString(0), query.getInt(1)), query.getInt(1));
            query.close();
            return m2349h0;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0099, code lost:
        if (r8 == null) goto L31;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p1727n3.p1788g.C26179e<java.lang.String> m30568c() {
        /*
            r7 = this;
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            android.content.Context r0 = r0.f22058a     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            android.net.Uri r1 = p193e.p194a.p195a.p244k.C6692k.f22057e     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L80
            r0 = r10
            r9 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            java.lang.String r1 = "address"
            int r0 = r0.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r11 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            java.lang.String r1 = "_id"
            int r0 = r0.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r12 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r8 = r0
            n3.g.e r0 = new n3.g.e     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r13 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r8 = r0
            r0 = r13
            r1 = r10
            int r1 = r1.getCount()     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
        L4e:
            r0 = r10
            r9 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            boolean r0 = r0.moveToNext()     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            if (r0 == 0) goto L77
            r0 = r10
            r9 = r0
            r0 = r10
            r8 = r0
            r0 = r13
            r1 = r10
            r2 = r12
            long r1 = r1.getLong(r2)     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r2 = r10
            r3 = r11
            java.lang.String r2 = r2.getString(r3)     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            r0.m2609a(r1, r2)     // Catch: java.lang.Throwable -> L89 java.lang.RuntimeException -> L8d
            goto L4e
        L77:
            r0 = r10
            r0.close()
            r0 = r13
            return r0
        L80:
            r0 = r10
            if (r0 == 0) goto La2
            r0 = r10
            r8 = r0
            goto L9c
        L89:
            r8 = move-exception
            goto Lab
        L8d:
            r10 = move-exception
            r0 = r8
            r9 = r0
            r0 = r10
            r1 = 0
            java.lang.String[] r1 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> L89
            com.truecaller.log.AssertionUtil.shouldNeverHappen(r0, r1)     // Catch: java.lang.Throwable -> L89
            r0 = r8
            if (r0 == 0) goto La2
        L9c:
            r0 = r8
            r0.close()
        La2:
            n3.g.e r0 = new n3.g.e
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            return r0
        Lab:
            r0 = r9
            if (r0 == 0) goto Lb5
            r0 = r9
            r0.close()
        Lb5:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.C6692k.m30568c():n3.g.e");
    }
}
