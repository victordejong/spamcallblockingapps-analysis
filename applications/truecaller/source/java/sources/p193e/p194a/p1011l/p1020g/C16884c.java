package p193e.p194a.p1011l.p1020g;

import android.database.Cursor;
import android.net.Uri;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.gift.GoldGiftContactReader$readContact$2", f = "GoldGiftContactReader.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.l.g.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/c.class */
public final class C16884c extends i implements p<i0, d<? super C16883b>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C16885d f47420e;

    /* renamed from: f */
    public final /* synthetic */ Uri f47421f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16884c(C16885d c16885d, Uri uri, d dVar) {
        super(2, dVar);
        this.f47420e = c16885d;
        this.f47421f = uri;
    }

    /* renamed from: i */
    public final d<s> m16804i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16884c(this.f47420e, this.f47421f, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00b9, code lost:
        if (r0 != null) goto L15;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16803k(java.lang.Object r8, java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1020g.C16884c.m16803k(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* renamed from: s */
    public final Object m16802s(Object obj) {
        Cursor cursor;
        Throwable th;
        C25225a.m3932a3(obj);
        try {
            cursor = this.f47420e.f47423b.getContentResolver().query(this.f47421f, new String[]{"display_name", "data1"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndex("display_name"));
                        l.d(string, "c.getString(c.getColumnIndex(Phone.DISPLAY_NAME))");
                        AbstractC8621z abstractC8621z = this.f47420e.f47422a;
                        String string2 = cursor.getString(cursor.getColumnIndex("data1"));
                        l.d(string2, "c.getString(c.getColumnIndex(Phone.NUMBER))");
                        String mo28181j = abstractC8621z.mo28181j(string2);
                        if (mo28181j == null) {
                            cursor.close();
                            return null;
                        }
                        C16883b c16883b = new C16883b(string, mo28181j);
                        cursor.close();
                        return c16883b;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor == null) {
                return null;
            }
            cursor.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }
}
