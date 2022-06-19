package p193e.p194a.p1349x;

import com.truecaller.ghost_call.GhostCallState;
import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p1349x.p1351h0.p1352b.C21342e;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ghost_call.GhostCallPresenter$listenToCallStateChanges$1", f = "GhostCallPresenter.kt", l = {112}, m = "invokeSuspend")
/* renamed from: e.a.x.s */
/* loaded from: classes9-dex2jar.jar:e/a/x/s.class */
public final class C21380s extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f59838e;

    /* renamed from: f */
    public final /* synthetic */ C21382t f59839f;

    /* renamed from: e.a.x.s$a */
    /* loaded from: classes9-dex2jar.jar:e/a/x/s$a.class */
    public static final class C21381a implements g<GhostCallState> {
        public C21381a() {
            C21380s.this = r4;
        }

        /* renamed from: a */
        public Object m9809a(GhostCallState ghostCallState, d<? super s> dVar) {
            AbstractC21376o abstractC21376o;
            int ordinal = ghostCallState.ordinal();
            if (ordinal == 0) {
                C21382t c21382t = C21380s.this.f59839f;
                AbstractC21376o abstractC21376o2 = (AbstractC21376o) c21382t.f57683a;
                if (abstractC21376o2 != null) {
                    abstractC21376o2.mo9818r0();
                }
                C21337a c21337a = c21382t.f59843f;
                C10480a.m26037O1(new C21342e(c21337a.f59734d.m17200a()), c21337a);
            } else if (ordinal == 1) {
                C21382t c21382t2 = C21380s.this.f59839f;
                AbstractC21376o abstractC21376o3 = (AbstractC21376o) c21382t2.f57683a;
                if (abstractC21376o3 != null) {
                    abstractC21376o3.mo9825C0();
                }
                AbstractC21376o abstractC21376o4 = (AbstractC21376o) c21382t2.f57683a;
                if (abstractC21376o4 != null) {
                    abstractC21376o4.mo9821W0(CallState.STATE_ACTIVE);
                }
            } else if (ordinal == 2 && (abstractC21376o = (AbstractC21376o) C21380s.this.f59839f.f57683a) != null) {
                abstractC21376o.mo9817t();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21380s(C21382t c21382t, d dVar) {
        super(2, dVar);
        this.f59839f = c21382t;
    }

    /* renamed from: i */
    public final d<s> m9812i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21380s(this.f59839f, dVar);
    }

    /* renamed from: k */
    public final Object m9811k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21380s(this.f59839f, dVar).m9810s(s.a);
    }

    /* renamed from: s */
    public final Object m9810s(Object obj) {
        a aVar = a.a;
        int i = this.f59838e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<GhostCallState> mo9829w = this.f59839f.f59844g.mo9829w();
            C21381a c21381a = new C21381a();
            this.f59838e = 1;
            if (mo9829w.c(c21381a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
