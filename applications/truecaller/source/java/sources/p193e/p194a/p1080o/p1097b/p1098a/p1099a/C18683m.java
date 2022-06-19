package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import com.truecaller.data.entity.CallContextMessage;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1097b.AbstractC18745n0;
import p193e.p194a.p1080o.p1097b.C18747o0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerViewPresenter$sendMidCallReason$1", f = "OnDemandCallReasonPickerViewPresenter.kt", l = {79}, m = "invokeSuspend")
/* renamed from: e.a.o.b.a.a.m */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/m.class */
public final class C18683m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52528e;

    /* renamed from: f */
    public final /* synthetic */ C18681l f52529f;

    /* renamed from: g */
    public final /* synthetic */ CallContextMessage f52530g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18683m(C18681l c18681l, CallContextMessage callContextMessage, d dVar) {
        super(2, dVar);
        this.f52529f = c18681l;
        this.f52530g = callContextMessage;
    }

    /* renamed from: i */
    public final d<s> m14633i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18683m(this.f52529f, this.f52530g, dVar);
    }

    /* renamed from: k */
    public final Object m14632k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18683m(this.f52529f, this.f52530g, dVar).m14631s(s.a);
    }

    /* renamed from: s */
    public final Object m14631s(Object obj) {
        AbstractC18677h abstractC18677h;
        a aVar = a.a;
        int i = this.f52528e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18745n0 abstractC18745n0 = this.f52529f.f52523f;
            CallContextMessage callContextMessage = this.f52530g;
            this.f52528e = 1;
            Object m14557a = ((C18747o0) abstractC18745n0).m14557a(callContextMessage, this);
            obj = m14557a;
            if (m14557a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        AbstractC18677h abstractC18677h2 = (AbstractC18677h) this.f52529f.f57683a;
        if (abstractC18677h2 != null) {
            abstractC18677h2.mo14644R();
        }
        if (!booleanValue && (abstractC18677h = (AbstractC18677h) this.f52529f.f57683a) != null) {
            abstractC18677h.mo14641V();
        }
        return s.a;
    }
}
