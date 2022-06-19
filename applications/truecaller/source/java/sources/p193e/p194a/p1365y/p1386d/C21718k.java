package p193e.p194a.p1365y.p1386d;

import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.UnmutedException;
import p1727n3.p1788g.C26180f;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1389g.C21746d;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$loadFlashState$1", f = "FlashPendingManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.y.d.k */
/* loaded from: classes9-dex2jar.jar:e/a/y/d/k.class */
public final class C21718k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C21713j f60508e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21718k(C21713j c21713j, d dVar) {
        super(2, dVar);
        this.f60508e = c21713j;
    }

    /* renamed from: i */
    public final d<s> m9154i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21718k(this.f60508e, dVar);
    }

    /* renamed from: k */
    public final Object m9153k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21718k c21718k = new C21718k(this.f60508e, dVar);
        s sVar = s.a;
        c21718k.m9152s(sVar);
        return sVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* renamed from: s */
    public final Object m9152s(Object obj) {
        Cursor cursor;
        Throwable th;
        C25225a.m3932a3(obj);
        C26180f<String, C21746d> c26180f = null;
        try {
            try {
                cursor = this.f60508e.f60495d.getContentResolver().query(C21719l.f60510b, C21700b.f60472a, null, null, null);
                c26180f = c26180f;
                if (cursor != 0) {
                    while (cursor.moveToNext()) {
                        try {
                            int i = cursor.getInt(cursor.getColumnIndex("flash_enabled"));
                            String string = cursor.getString(cursor.getColumnIndex(AnalyticsConstants.PHONE));
                            int i2 = cursor.getInt(cursor.getColumnIndex("version"));
                            c26180f = this.f60508e.f60493b;
                            c26180f.put(string, new C21746d(string, i2, i != 0));
                        } catch (Exception e) {
                            Cursor cursor2 = cursor;
                            c26180f = cursor;
                            C10480a.m26061I1(new UnmutedException.C4147f("Failed to Query in Flash"));
                            if (cursor != null) {
                                cursor.close();
                            }
                            return s.a;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != false) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    C25225a.m4016G(cursor, null);
                    c26180f = c26180f;
                }
                if (cursor != 0) {
                    cursor.close();
                }
            } catch (Throwable th3) {
                cursor = c26180f;
                th = th3;
            }
        } catch (Exception e2) {
            cursor = null;
        }
        return s.a;
    }
}
