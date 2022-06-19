package p193e.p194a.p1349x;

import androidx.fragment.app.Fragment;
import n3.b.a.q;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p1349x.p1351h0.p1352b.C21344g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.x.p */
/* loaded from: classes9-dex2jar.jar:e/a/x/p.class */
public final class C21377p<O> implements AbstractC25373a<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ C21379r f59832a;

    /* renamed from: b */
    public final /* synthetic */ a f59833b;

    /* renamed from: c */
    public final /* synthetic */ q f59834c;

    /* renamed from: d */
    public final /* synthetic */ Fragment f59835d;

    public C21377p(C21379r c21379r, a aVar, q qVar, Fragment fragment) {
        this.f59832a = c21379r;
        this.f59833b = aVar;
        this.f59834c = qVar;
        this.f59835d = fragment;
    }

    @Override // p1727n3.p1728a.p1730e.AbstractC25373a
    /* renamed from: a */
    public void mo3695a(Boolean bool) {
        Boolean bool2 = bool;
        l.d(bool2, "isGranted");
        if (bool2.booleanValue()) {
            this.f59833b.invoke();
            return;
        }
        this.f59834c.show(this.f59835d.getChildFragmentManager(), (String) null);
        C21337a c21337a = this.f59832a.f59837a;
        C10480a.m26037O1(new C21344g(c21337a.f59734d.m17200a()), c21337a);
    }
}
