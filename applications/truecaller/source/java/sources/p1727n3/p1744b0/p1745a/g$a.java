package p1727n3.p1744b0.p1745a;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: n3.b0.a.g$a */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$a.class */
public class g$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f71611a;

    /* renamed from: b */
    public final /* synthetic */ g f71612b;

    public g$a(g gVar, ArrayList arrayList) {
        this.f71612b = gVar;
        this.f71611a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f71611a.iterator();
        while (it.hasNext()) {
            g$j g_j = (g$j) it.next();
            this.f71612b.animateMoveImpl(g_j.f71645a, g_j.f71646b, g_j.f71647c, g_j.f71648d, g_j.f71649e);
        }
        this.f71611a.clear();
        this.f71612b.mMovesList.remove(this.f71611a);
    }
}
