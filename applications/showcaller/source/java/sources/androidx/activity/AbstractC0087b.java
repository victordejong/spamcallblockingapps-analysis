package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public abstract class AbstractC0087b {

    /* renamed from: a */
    private boolean f173a;

    /* renamed from: b */
    private CopyOnWriteArrayList<AbstractC0086a> f174b = new CopyOnWriteArrayList<>();

    public AbstractC0087b(boolean z) {
        this.f173a = z;
    }

    /* renamed from: a */
    public void m35756a(AbstractC0086a abstractC0086a) {
        this.f174b.add(abstractC0086a);
    }

    /* renamed from: b */
    public abstract void mo32735b();

    /* renamed from: c */
    public final boolean m35755c() {
        return this.f173a;
    }

    /* renamed from: d */
    public final void m35754d() {
        Iterator<AbstractC0086a> it = this.f174b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    /* renamed from: e */
    public void m35753e(AbstractC0086a abstractC0086a) {
        this.f174b.remove(abstractC0086a);
    }

    /* renamed from: f */
    public final void m35752f(boolean z) {
        this.f173a = z;
    }
}
