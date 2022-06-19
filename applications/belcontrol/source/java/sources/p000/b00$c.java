package p000;

import androidx.recyclerview.widget.RecyclerView$b0;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: b00$c */
/* loaded from: classes-dex2jar.jar:b00$c.class */
public class b00$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f1706a;

    /* renamed from: b */
    public final /* synthetic */ b00 f1707b;

    public b00$c(b00 b00Var, ArrayList arrayList) {
        this.f1707b = b00Var;
        this.f1706a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f1706a.iterator();
        while (it.hasNext()) {
            this.f1707b.Q((RecyclerView$b0) it.next());
        }
        this.f1706a.clear();
        this.f1707b.l.remove(this.f1706a);
    }
}
