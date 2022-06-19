package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$c.class */
class c$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ArrayList f2342b;

    /* renamed from: c */
    final /* synthetic */ c f2343c;

    c$c(c cVar, ArrayList arrayList) {
        this.f2343c = cVar;
        this.f2342b = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f2342b.iterator();
        while (it.hasNext()) {
            this.f2343c.Q((RecyclerView$a0) it.next());
        }
        this.f2342b.clear();
        this.f2343c.l.remove(this.f2342b);
    }
}
