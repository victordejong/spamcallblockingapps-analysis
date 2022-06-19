package p193e.p194a.p1080o.p1081a.p1082a.p1084b;

import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType;
import java.util.ArrayList;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1101n.C18787a;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.ui.reasonpicker.ondemand.OnDemandReasonPickerDialogPresenter$showReasons$1", f = "OnDemandReasonPickerDialogPresenter.kt", l = {41}, m = "invokeSuspend")
/* renamed from: e.a.o.a.a.b.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/f.class */
public final class C18525f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52261e;

    /* renamed from: f */
    public final /* synthetic */ C18526g f52262f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18525f(C18526g c18526g, d dVar) {
        super(2, dVar);
        this.f52262f = c18526g;
    }

    /* renamed from: i */
    public final d<s> m14815i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18525f(this.f52262f, dVar);
    }

    /* renamed from: k */
    public final Object m14814k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18525f(this.f52262f, dVar).m14813s(s.a);
    }

    /* renamed from: s */
    public final Object m14813s(Object obj) {
        a aVar = a.a;
        int i = this.f52261e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18882c abstractC18882c = this.f52262f.f52266g;
            this.f52261e = 1;
            Object mo14361a = abstractC18882c.mo14361a(this);
            obj = mo14361a;
            if (mo14361a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : (Iterable) obj) {
            if (Boolean.valueOf(((C18787a) obj2).f52777d == PredefinedCallReasonType.Predefined).booleanValue()) {
                arrayList.add(obj2);
            }
        }
        AbstractC18524e abstractC18524e = (AbstractC18524e) this.f52262f.f57683a;
        if (abstractC18524e != null) {
            abstractC18524e.mo14818rc(arrayList);
        }
        return s.a;
    }
}
