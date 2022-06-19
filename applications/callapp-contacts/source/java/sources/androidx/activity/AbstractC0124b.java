package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public abstract class AbstractC0124b {

    /* renamed from: a */
    public boolean f244a;

    /* renamed from: b */
    private CopyOnWriteArrayList<AbstractC0121a> f245b = new CopyOnWriteArrayList<>();

    public AbstractC0124b(boolean z) {
        this.f244a = z;
    }

    /* renamed from: a */
    public final void m46392a() {
        Iterator<AbstractC0121a> it2 = this.f245b.iterator();
        while (it2.hasNext()) {
            it2.next().mo46393a();
        }
    }

    /* renamed from: a */
    public final void m46391a(AbstractC0121a abstractC0121a) {
        this.f245b.add(abstractC0121a);
    }

    /* renamed from: b */
    public abstract void mo43668b();

    /* renamed from: b */
    public final void m46390b(AbstractC0121a abstractC0121a) {
        this.f245b.remove(abstractC0121a);
    }
}
