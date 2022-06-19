package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$b.class */
class c$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ArrayList f2340b;

    /* renamed from: c */
    final /* synthetic */ c f2341c;

    c$b(c cVar, ArrayList arrayList) {
        this.f2341c = cVar;
        this.f2340b = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f2340b.iterator();
        while (it.hasNext()) {
            this.f2341c.R((c$i) it.next());
        }
        this.f2340b.clear();
        this.f2341c.n.remove(this.f2340b);
    }
}
