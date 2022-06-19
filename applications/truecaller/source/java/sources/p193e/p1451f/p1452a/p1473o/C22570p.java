package p193e.p1451f.p1452a.p1473o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.o.p */
/* loaded from: classes-dex2jar.jar:e/f/a/o/p.class */
public final class C22570p implements AbstractC22562i {

    /* renamed from: a */
    public final Set<AbstractC22598k<?>> f62507a = Collections.newSetFromMap(new WeakHashMap());

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
    public void onDestroy() {
        Iterator it = ((ArrayList) C22623j.m8019e(this.f62507a)).iterator();
        while (it.hasNext()) {
            ((AbstractC22598k) it.next()).onDestroy();
        }
    }

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
    public void onStart() {
        Iterator it = ((ArrayList) C22623j.m8019e(this.f62507a)).iterator();
        while (it.hasNext()) {
            ((AbstractC22598k) it.next()).onStart();
        }
    }

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
    public void onStop() {
        Iterator it = ((ArrayList) C22623j.m8019e(this.f62507a)).iterator();
        while (it.hasNext()) {
            ((AbstractC22598k) it.next()).onStop();
        }
    }
}
