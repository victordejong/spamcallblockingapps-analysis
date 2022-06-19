package p193e.p194a.p1080o.p1081a.p1082a.p1083a;

import com.truecaller.contextcall.p159db.reason.CallReason;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.ui.reasonpicker.onboarded.OnBoardedReasonPickerPresenter$fetchAndShowCallReasons$1", f = "OnBoardedReasonPickerPresenter.kt", l = {116}, m = "invokeSuspend")
/* renamed from: e.a.o.a.a.a.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/g.class */
public final class C18513g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52233e;

    /* renamed from: f */
    public final /* synthetic */ C18514h f52234f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18513g(C18514h c18514h, d dVar) {
        super(2, dVar);
        this.f52234f = c18514h;
    }

    /* renamed from: i */
    public final d<s> m14840i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18513g(this.f52234f, dVar);
    }

    /* renamed from: k */
    public final Object m14839k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18513g(this.f52234f, dVar).m14838s(s.a);
    }

    /* renamed from: s */
    public final Object m14838s(Object obj) {
        a aVar = a.a;
        int i = this.f52233e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18868e abstractC18868e = this.f52234f.f52238g;
            this.f52233e = 1;
            Object mo14383a = abstractC18868e.mo14383a(this);
            obj = mo14383a;
            if (mo14383a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List<CallReason> list = (List) obj;
        AbstractC18512f abstractC18512f = (AbstractC18512f) this.f52234f.f57683a;
        if (abstractC18512f != null) {
            abstractC18512f.mo14847Le(list);
        }
        return s.a;
    }
}
