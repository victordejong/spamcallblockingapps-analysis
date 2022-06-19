package p193e.p1451f.p1452a.p1473o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.o.a */
/* loaded from: classes-dex2jar.jar:e/f/a/o/a.class */
public class C22554a implements AbstractC22561h {

    /* renamed from: a */
    public final Set<AbstractC22562i> f62483a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public boolean f62484b;

    /* renamed from: c */
    public boolean f62485c;

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22561h
    /* renamed from: a */
    public void mo8139a(AbstractC22562i abstractC22562i) {
        this.f62483a.remove(abstractC22562i);
    }

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22561h
    /* renamed from: b */
    public void mo8138b(AbstractC22562i abstractC22562i) {
        this.f62483a.add(abstractC22562i);
        if (this.f62485c) {
            abstractC22562i.onDestroy();
        } else if (this.f62484b) {
            abstractC22562i.onStart();
        } else {
            abstractC22562i.onStop();
        }
    }

    /* renamed from: c */
    public void m8142c() {
        this.f62485c = true;
        Iterator it = ((ArrayList) C22623j.m8019e(this.f62483a)).iterator();
        while (it.hasNext()) {
            ((AbstractC22562i) it.next()).onDestroy();
        }
    }

    /* renamed from: d */
    public void m8141d() {
        this.f62484b = true;
        Iterator it = ((ArrayList) C22623j.m8019e(this.f62483a)).iterator();
        while (it.hasNext()) {
            ((AbstractC22562i) it.next()).onStart();
        }
    }

    /* renamed from: e */
    public void m8140e() {
        this.f62484b = false;
        Iterator it = ((ArrayList) C22623j.m8019e(this.f62483a)).iterator();
        while (it.hasNext()) {
            ((AbstractC22562i) it.next()).onStop();
        }
    }
}
