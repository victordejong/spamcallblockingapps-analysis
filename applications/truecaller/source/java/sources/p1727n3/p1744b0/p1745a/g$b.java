package p1727n3.p1744b0.p1745a;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: n3.b0.a.g$b */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$b.class */
public class g$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f71613a;

    /* renamed from: b */
    public final /* synthetic */ g f71614b;

    public g$b(g gVar, ArrayList arrayList) {
        this.f71614b = gVar;
        this.f71613a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f71613a.iterator();
        while (it.hasNext()) {
            this.f71614b.animateChangeImpl((g$i) it.next());
        }
        this.f71613a.clear();
        this.f71614b.mChangesList.remove(this.f71613a);
    }
}
