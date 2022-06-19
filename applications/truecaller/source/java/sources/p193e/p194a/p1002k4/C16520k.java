package p193e.p194a.p1002k4;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.placepicker.PlacePickerPresenter$onCurrentLocationClicked$1", f = "PlacePickerPresenter.kt", l = {126}, m = "invokeSuspend")
/* renamed from: e.a.k4.k */
/* loaded from: classes11-dex2jar.jar:e/a/k4/k.class */
public final class C16520k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f46449e;

    /* renamed from: f */
    public final /* synthetic */ C16512i f46450f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16520k(C16512i c16512i, d dVar) {
        super(2, dVar);
        this.f46450f = c16512i;
    }

    /* renamed from: i */
    public final d<s> m17282i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16520k(this.f46450f, dVar);
    }

    /* renamed from: k */
    public final Object m17281k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16520k(this.f46450f, dVar).m17280s(s.a);
    }

    /* renamed from: s */
    public final Object m17280s(Object obj) {
        a aVar = a.a;
        int i = this.f46449e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C16512i c16512i = this.f46450f;
            this.f46449e = 1;
            if (c16512i.m17299Kj(this) == aVar) {
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
