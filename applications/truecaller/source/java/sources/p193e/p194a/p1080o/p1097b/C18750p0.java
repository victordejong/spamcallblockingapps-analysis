package p193e.p194a.p1080o.p1097b;

import android.database.sqlite.SQLiteException;
import com.truecaller.log.AssertionUtil;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.contextcall.utils.SqliteExceptionsKt$runSafeWithContext$2", f = "SqliteExceptions.kt", l = {28}, m = "invokeSuspend")
/* renamed from: e.a.o.b.p0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/p0.class */
public final class C18750p0 extends i implements p<i0, d<? super T>, Object> {

    /* renamed from: e */
    public int f52684e;

    /* renamed from: f */
    public final /* synthetic */ l f52685f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18750p0(l lVar, d dVar) {
        super(2, dVar);
        this.f52685f = lVar;
    }

    /* renamed from: i */
    public final d<s> m14555i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C18750p0(this.f52685f, dVar);
    }

    /* renamed from: k */
    public final Object m14554k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C18750p0(this.f52685f, dVar).m14553s(s.a);
    }

    /* renamed from: s */
    public final Object m14553s(Object obj) {
        a aVar = a.a;
        int i = this.f52684e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                l lVar = this.f52685f;
                this.f52684e = 1;
                Object d = lVar.d(this);
                obj = d;
                if (d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
        } catch (SQLiteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            C17891a1.C17902k.m15587o0(e);
            obj = null;
        }
        return obj;
    }
}
