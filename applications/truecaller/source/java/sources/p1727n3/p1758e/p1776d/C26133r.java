package p1727n3.p1758e.p1776d;

import java.util.List;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
/* renamed from: n3.e.d.r */
/* loaded from: classes-dex2jar.jar:n3/e/d/r.class */
public class C26133r implements AbstractC26030d<Void> {

    /* renamed from: a */
    public final /* synthetic */ List f72865a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC26075l0 f72866b;

    /* renamed from: c */
    public final /* synthetic */ C26135t f72867c;

    public C26133r(C26135t c26135t, List list, AbstractC26075l0 abstractC26075l0) {
        this.f72867c = c26135t;
        this.f72865a = list;
        this.f72866b = abstractC26075l0;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    /* renamed from: a */
    public void mo2689a(Throwable th) {
        this.f72867c.f72874e = null;
        if (!this.f72865a.isEmpty()) {
            for (AbstractC26002q abstractC26002q : this.f72865a) {
                ((AbstractC26059z) this.f72866b).m2763d(abstractC26002q);
            }
            this.f72865a.clear();
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    public void onSuccess(Void r4) {
        this.f72867c.f72874e = null;
    }
}
