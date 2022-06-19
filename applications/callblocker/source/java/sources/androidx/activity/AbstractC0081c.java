package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.c */
/* loaded from: classes-dex2jar.jar:androidx/activity/c.class */
public abstract class AbstractC0081c {

    /* renamed from: a */
    private boolean f199a;

    /* renamed from: b */
    private CopyOnWriteArrayList<AbstractC0077a> f200b = new CopyOnWriteArrayList<>();

    public AbstractC0081c(boolean z) {
        this.f199a = z;
    }

    /* renamed from: a */
    public void m22282a(AbstractC0077a abstractC0077a) {
        this.f200b.add(abstractC0077a);
    }

    /* renamed from: a */
    public final void m22281a(boolean z) {
        this.f199a = z;
    }

    /* renamed from: a */
    public final boolean m22283a() {
        return this.f199a;
    }

    /* renamed from: b */
    public final void m22280b() {
        Iterator<AbstractC0077a> it = this.f200b.iterator();
        while (it.hasNext()) {
            it.next().mo22286a();
        }
    }

    /* renamed from: b */
    public void m22279b(AbstractC0077a abstractC0077a) {
        this.f200b.remove(abstractC0077a);
    }

    /* renamed from: c */
    public abstract void mo19690c();
}
