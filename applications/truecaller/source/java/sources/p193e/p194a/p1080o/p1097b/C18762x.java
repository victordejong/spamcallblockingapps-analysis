package p193e.p194a.p1080o.p1097b;

import android.database.sqlite.SQLiteException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1103p.p1106c.AbstractC18842c;
import p193e.p194a.p1080o.p1103p.p1106c.C18844e;
import p193e.p194a.p1080o.p1103p.p1106c.C18846g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.utils.IncomingCallContextRepositoryImpl$clearExpiredCallContexts$2", f = "IncomingCallContextRepository.kt", l = {96}, m = "invokeSuspend")
/* renamed from: e.a.o.b.x */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/x.class */
public final class C18762x extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52710e;

    /* renamed from: f */
    public final /* synthetic */ C18757w f52711f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18762x(C18757w c18757w, d dVar) {
        super(2, dVar);
        this.f52711f = c18757w;
    }

    /* renamed from: i */
    public final d<s> m14534i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18762x(this.f52711f, dVar);
    }

    /* renamed from: k */
    public final Object m14533k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18762x(this.f52711f, dVar).m14532s(s.a);
    }

    /* renamed from: s */
    public final Object m14532s(Object obj) {
        Object obj2 = s.a;
        Object obj3 = a.a;
        int i = this.f52710e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                long mo13819c = this.f52711f.f52690a.mo13819c();
                long j = C18763y.f52712a;
                AbstractC18842c abstractC18842c = this.f52711f.f52691b;
                this.f52710e = 1;
                C18846g c18846g = (C18846g) abstractC18842c;
                Object m15625b1 = C17891a1.C17902k.m15625b1(c18846g.f52916c, new C18844e(c18846g, mo13819c - j, null), this);
                if (m15625b1 != obj3) {
                    m15625b1 = obj2;
                }
                if (m15625b1 == obj3) {
                    return obj3;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
        } catch (SQLiteException e) {
            C17891a1.C17902k.m15587o0(e);
        }
        return obj2;
    }
}
