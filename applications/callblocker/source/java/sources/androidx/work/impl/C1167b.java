package androidx.work.impl;

import androidx.lifecycle.C0877n;
import androidx.work.AbstractC1296n;
import androidx.work.impl.utils.p057a.C1269c;
/* renamed from: androidx.work.impl.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b.class */
public class C1167b implements AbstractC1296n {

    /* renamed from: c */
    private final C0877n<AbstractC1296n.AbstractC1298a> f3978c = new C0877n<>();

    /* renamed from: d */
    private final C1269c<AbstractC1296n.AbstractC1298a.C1301c> f3979d = C1269c.m17587d();

    public C1167b() {
        m17826a(AbstractC1296n.f4339b);
    }

    /* renamed from: a */
    public void m17826a(AbstractC1296n.AbstractC1298a abstractC1298a) {
        this.f3978c.mo19195a((C0877n<AbstractC1296n.AbstractC1298a>) abstractC1298a);
        if (abstractC1298a instanceof AbstractC1296n.AbstractC1298a.C1301c) {
            this.f3979d.mo17589a((C1269c<AbstractC1296n.AbstractC1298a.C1301c>) ((AbstractC1296n.AbstractC1298a.C1301c) abstractC1298a));
        } else if (!(abstractC1298a instanceof AbstractC1296n.AbstractC1298a.C1299a)) {
        } else {
            this.f3979d.mo17588a(((AbstractC1296n.AbstractC1298a.C1299a) abstractC1298a).m17535a());
        }
    }
}
