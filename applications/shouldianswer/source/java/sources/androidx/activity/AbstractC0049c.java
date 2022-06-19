package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.c */
/* loaded from: classes-dex2jar.jar:androidx/activity/c.class */
public abstract class AbstractC0049c {

    /* renamed from: a */
    private boolean f109a;

    /* renamed from: b */
    private CopyOnWriteArrayList<AbstractC0045a> f110b = new CopyOnWriteArrayList<>();

    public AbstractC0049c(boolean z) {
        this.f109a = z;
    }

    /* renamed from: a */
    public void m7990a(AbstractC0045a abstractC0045a) {
        this.f110b.add(abstractC0045a);
    }

    /* renamed from: a */
    public final void m7989a(boolean z) {
        this.f109a = z;
    }

    /* renamed from: a */
    public final boolean m7991a() {
        return this.f109a;
    }

    /* renamed from: b */
    public final void m7988b() {
        Iterator<AbstractC0045a> it = this.f110b.iterator();
        while (it.hasNext()) {
            it.next().mo7994a();
        }
    }

    /* renamed from: b */
    public void m7987b(AbstractC0045a abstractC0045a) {
        this.f110b.remove(abstractC0045a);
    }

    /* renamed from: c */
    public abstract void mo5480c();
}
