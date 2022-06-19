package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: n3.b0.a.g$c */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$c.class */
public class g$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f71615a;

    /* renamed from: b */
    public final /* synthetic */ g f71616b;

    public g$c(g gVar, ArrayList arrayList) {
        this.f71616b = gVar;
        this.f71615a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f71615a.iterator();
        while (it.hasNext()) {
            this.f71616b.animateAddImpl((RecyclerView.AbstractC0313c0) it.next());
        }
        this.f71615a.clear();
        this.f71616b.mAdditionsList.remove(this.f71615a);
    }
}
