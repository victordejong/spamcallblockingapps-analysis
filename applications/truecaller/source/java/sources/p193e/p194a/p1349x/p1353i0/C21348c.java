package p193e.p194a.p1349x.p1353i0;

import com.truecaller.ghost_call.GhostCallState;
import com.truecaller.incallui.callui.callergradient.GradientColors;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
@e(c = "com.truecaller.ghost_call.callergradient.GhostCallCallerGradientPresenter$listenToCallStateChanges$1", f = "GhostCallCallerGradientPresenter.kt", l = {43}, m = "invokeSuspend")
/* renamed from: e.a.x.i0.c */
/* loaded from: classes9-dex2jar.jar:e/a/x/i0/c.class */
public final class C21348c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f59764e;

    /* renamed from: f */
    public final /* synthetic */ C21350d f59765f;

    /* renamed from: e.a.x.i0.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/x/i0/c$a.class */
    public static final class C21349a implements g<GhostCallState> {
        public C21349a() {
            C21348c.this = r4;
        }

        /* renamed from: a */
        public Object m9869a(GhostCallState ghostCallState, d<? super s> dVar) {
            C21350d c21350d = C21348c.this.f59765f;
            Objects.requireNonNull(c21350d);
            GradientColors gradientColors = GradientColors.IDENTIFIED;
            float f = ghostCallState.ordinal() != 0 ? 0.55f : 0.8f;
            AbstractC21347b abstractC21347b = (AbstractC21347b) c21350d.f57683a;
            if (abstractC21347b != null) {
                abstractC21347b.mo9873a(gradientColors, f, 300L);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21348c(C21350d c21350d, d dVar) {
        super(2, dVar);
        this.f59765f = c21350d;
    }

    /* renamed from: i */
    public final d<s> m9872i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21348c(this.f59765f, dVar);
    }

    /* renamed from: k */
    public final Object m9871k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21348c(this.f59765f, dVar).m9870s(s.a);
    }

    /* renamed from: s */
    public final Object m9870s(Object obj) {
        a aVar = a.a;
        int i = this.f59764e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<GhostCallState> mo9829w = this.f59765f.f59768e.mo9829w();
            C21349a c21349a = new C21349a();
            this.f59764e = 1;
            if (mo9829w.c(c21349a, this) == aVar) {
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
