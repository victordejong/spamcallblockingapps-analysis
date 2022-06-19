package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
class c$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ArrayList f2338b;

    /* renamed from: c */
    final /* synthetic */ c f2339c;

    c$a(c cVar, ArrayList arrayList) {
        this.f2339c = cVar;
        this.f2338b = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f2338b.iterator();
        while (it.hasNext()) {
            c$j c_j = (c$j) it.next();
            this.f2339c.S(c_j.f2372a, c_j.f2373b, c_j.f2374c, c_j.f2375d, c_j.f2376e);
        }
        this.f2338b.clear();
        this.f2339c.m.remove(this.f2338b);
    }
}
