package p193e.p194a.p1080o.p1081a.p1089g.p1091h;

import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.reason.CallReason;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18589b;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p1129p5.AbstractC19223c0;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.a.g.h.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/h/e.class */
public final class C18612e extends AbstractC18589b<AbstractC18611d> implements AbstractC18610c {

    /* renamed from: e */
    public final AbstractC19223c0 f52398e;

    /* renamed from: f */
    public final AbstractC18868e f52399f;

    /* renamed from: g */
    public final f f52400g;

    @e(c = "com.truecaller.contextcall.ui.custommessage.editcallreason.EditCallReasonPresenter$onDoneClicked$1", f = "EditCallReasonPresenter.kt", l = {31}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.g.h.e$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/h/e$a.class */
    public static final class C18613a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52401e;

        /* renamed from: g */
        public final /* synthetic */ String f52403g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18613a(String str, d dVar) {
            super(2, dVar);
            C18612e.this = r5;
            this.f52403g = str;
        }

        /* renamed from: i */
        public final d<s> m14729i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18613a(this.f52403g, dVar);
        }

        /* renamed from: k */
        public final Object m14728k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18613a(this.f52403g, dVar).m14727s(s.a);
        }

        /* renamed from: s */
        public final Object m14727s(Object obj) {
            CallReason mo14730T3;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f52401e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18611d abstractC18611d = (AbstractC18611d) C18612e.this.f57683a;
                if (abstractC18611d != null && (mo14730T3 = abstractC18611d.mo14730T3()) != null) {
                    AbstractC18868e abstractC18868e = C18612e.this.f52399f;
                    CallReason copy$default = CallReason.copy$default(mo14730T3, 0, this.f52403g, 1, null);
                    this.f52401e = 1;
                    if (abstractC18868e.mo14382b(copy$default, this) == aVar) {
                        return aVar;
                    }
                }
                return sVar;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC18611d abstractC18611d2 = (AbstractC18611d) C18612e.this.f57683a;
            if (abstractC18611d2 != null) {
                abstractC18611d2.mo14720t7();
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18612e(AbstractC19223c0 abstractC19223c0, AbstractC18868e abstractC18868e, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18868e, "reasonRepository");
        l.e(fVar, "uiContext");
        this.f52398e = abstractC19223c0;
        this.f52399f = abstractC18868e;
        this.f52400g = fVar;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: G0 */
    public void mo14685G0() {
        AbstractC18611d abstractC18611d = (AbstractC18611d) this.f57683a;
        if (abstractC18611d != null) {
            abstractC18611d.mo14741s();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.o.a.g.h.d, PV, java.lang.Object, e.a.o.a.g.f] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC18611d) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo14742l(r0.mo14730T3().getReasonText());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: w1 */
    public void mo14681w1(String str) {
        if (!(str == null || r.p(str))) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18613a(str, null), 3, (Object) null);
            return;
        }
        AbstractC18611d abstractC18611d = (AbstractC18611d) this.f57683a;
        if (abstractC18611d == null) {
            return;
        }
        String mo13768b = this.f52398e.mo13768b(C3771R.string.call_context_empty_message, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…ll_context_empty_message)");
        abstractC18611d.mo14743a5(mo13768b);
    }
}
