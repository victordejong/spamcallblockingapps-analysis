package p193e.p194a.p1275v.p1276a;

import android.os.Handler;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p413i.AbstractC8449b;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.v.a.h */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/h.class */
public final class C20763h extends AbstractC8449b {

    /* renamed from: d */
    public final /* synthetic */ C20826q f58395d;

    @e(c = "com.truecaller.details_view.ui.DetailsPresenter$aggregatedContactContentObserver$1$onDelayedChange$1", f = "DetailsPresenter.kt", l = {100}, m = "invokeSuspend")
    /* renamed from: e.a.v.a.h$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/h$a.class */
    public static final class C20764a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f58396e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20764a(d dVar) {
            super(2, dVar);
            C20763h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m10720i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20764a(dVar);
        }

        /* renamed from: k */
        public final Object m10719k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20764a(dVar).m10718s(s.a);
        }

        /* renamed from: s */
        public final Object m10718s(Object obj) {
            a aVar = a.a;
            int i = this.f58396e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C20826q c20826q = C20763h.this.f58395d;
                this.f58396e = 1;
                if (c20826q.m10650Lj(this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20763h(C20826q c20826q, Handler handler) {
        super(handler, 300L);
        this.f58395d = c20826q;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8449b
    /* renamed from: a */
    public void mo9046a() {
        C20826q c20826q = this.f58395d;
        s1.a.a.a.v0.f.d.w2(c20826q, c20826q.f58511i, (j0) null, new C20764a(null), 2, (Object) null);
    }
}
