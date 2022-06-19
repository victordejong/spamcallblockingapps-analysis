package p193e.p194a.p1221t.p1222a.p1223a;

import java.util.List;
import s1.z.c.l;
/* renamed from: e.a.t.a.a.j */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/j.class */
public final class C20251j implements AbstractC20267s<List<? extends C20246f>> {

    /* renamed from: a */
    public final /* synthetic */ C20249i f57012a;

    /* renamed from: b */
    public final /* synthetic */ boolean f57013b;

    public C20251j(C20249i c20249i, boolean z) {
        this.f57012a = c20249i;
        this.f57013b = z;
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20267s
    /* renamed from: a */
    public void mo11298a(Throwable th) {
        AbstractC20248h abstractC20248h = (AbstractC20248h) this.f57012a.f57683a;
        if (abstractC20248h != null) {
            abstractC20248h.mo11275f(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20267s
    public void onSuccess(List<? extends C20246f> list) {
        List<? extends C20246f> list2 = list;
        l.e(list2, "response");
        AbstractC20248h abstractC20248h = (AbstractC20248h) this.f57012a.f57683a;
        if (abstractC20248h != null) {
            abstractC20248h.mo11275f(false);
        }
        AbstractC20248h abstractC20248h2 = (AbstractC20248h) this.f57012a.f57683a;
        if (abstractC20248h2 != 0) {
            abstractC20248h2.mo11274g(list2, this.f57013b);
        }
    }
}
