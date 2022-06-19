package p000;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: d */
/* loaded from: classes-dex2jar.jar:d.class */
public abstract class AbstractC1268d {

    /* renamed from: a */
    public boolean f5733a;

    /* renamed from: b */
    public CopyOnWriteArrayList<AbstractC0266c> f5734b = new CopyOnWriteArrayList<>();

    public AbstractC1268d(boolean z) {
        this.f5733a = z;
    }

    /* renamed from: a */
    public void m2920a(AbstractC0266c abstractC0266c) {
        this.f5734b.add(abstractC0266c);
    }

    /* renamed from: b */
    public abstract void m2919b();

    /* renamed from: c */
    public final boolean m2918c() {
        return this.f5733a;
    }

    /* renamed from: d */
    public final void m2917d() {
        Iterator<AbstractC0266c> it = this.f5734b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    /* renamed from: e */
    public void m2916e(AbstractC0266c abstractC0266c) {
        this.f5734b.remove(abstractC0266c);
    }

    /* renamed from: f */
    public final void m2915f(boolean z) {
        this.f5733a = z;
    }
}
