package p193e.p194a.p1193r5;

import com.truecaller.whoviewedme.WhoViewedMePresenterView;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.whoviewedme.WhoViewedMeListPresenterImpl$onDeleteSelectedItems$1", f = "WhoViewedMeListPresenter.kt", l = {319}, m = "invokeSuspend")
/* renamed from: e.a.r5.g0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/g0.class */
public final class C19947g0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56404e;

    /* renamed from: f */
    public final /* synthetic */ C19949h0 f56405f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19947g0(C19949h0 c19949h0, d dVar) {
        super(2, dVar);
        this.f56405f = c19949h0;
    }

    /* renamed from: i */
    public final d<s> m11792i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19947g0(this.f56405f, dVar);
    }

    /* renamed from: k */
    public final Object m11791k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19947g0(this.f56405f, dVar).m11790s(s.a);
    }

    /* renamed from: s */
    public final Object m11790s(Object obj) {
        a aVar = a.a;
        int i = this.f56404e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C19949h0 c19949h0 = this.f56405f;
            AbstractC19954i0 abstractC19954i0 = c19949h0.f56415i;
            Set<Long> set = c19949h0.f56411e;
            this.f56404e = 1;
            if (abstractC19954i0.mo11760c(set, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f56405f.f56411e.clear();
        WhoViewedMePresenterView whoViewedMePresenterView = (WhoViewedMePresenterView) this.f56405f.f57683a;
        if (whoViewedMePresenterView != null) {
            whoViewedMePresenterView.mo11695e();
        }
        this.f56405f.mo11776ie();
        return s.a;
    }
}
