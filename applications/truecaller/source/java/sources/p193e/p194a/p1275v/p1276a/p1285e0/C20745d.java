package p193e.p194a.p1275v.p1276a.p1285e0;

import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1275v.p1276a.C20847s;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.header.DetailsHeaderPresenter$maybeShowSpamInfo$1", f = "DetailsHeaderPresenter.kt", l = {Constants.ERR_WATERMARK_READ}, m = "invokeSuspend")
/* renamed from: e.a.v.a.e0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/e0/d.class */
public final class C20745d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f58368e;

    /* renamed from: f */
    public final /* synthetic */ C20743c f58369f;

    /* renamed from: g */
    public final /* synthetic */ C20847s f58370g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20745d(C20743c c20743c, C20847s c20847s, d dVar) {
        super(2, dVar);
        this.f58369f = c20743c;
        this.f58370g = c20847s;
    }

    /* renamed from: i */
    public final d<s> m10766i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20745d(this.f58369f, this.f58370g, dVar);
    }

    /* renamed from: k */
    public final Object m10765k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20745d(this.f58369f, this.f58370g, dVar).m10764s(s.a);
    }

    /* renamed from: s */
    public final Object m10764s(Object obj) {
        a aVar = a.a;
        int i = this.f58368e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C20743c c20743c = this.f58369f;
            C20847s c20847s = this.f58370g;
            this.f58368e = 1;
            Object m10768Ij = c20743c.m10768Ij(c20847s, this);
            obj = m10768Ij;
            if (m10768Ij == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C20749h c20749h = (C20749h) obj;
        if (c20749h != null) {
            AbstractC20742b abstractC20742b = (AbstractC20742b) this.f58369f.f57683a;
            if (abstractC20742b != null) {
                abstractC20742b.mo10772x1(c20749h);
            }
        } else {
            AbstractC20742b abstractC20742b2 = (AbstractC20742b) this.f58369f.f57683a;
            if (abstractC20742b2 != null) {
                abstractC20742b2.mo10782H1();
            }
        }
        return s.a;
    }
}
