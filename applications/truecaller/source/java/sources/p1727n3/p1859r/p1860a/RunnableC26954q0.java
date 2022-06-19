package p1727n3.p1859r.p1860a;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.r.a.q0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/q0.class */
public class RunnableC26954q0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f75438a;

    /* renamed from: b */
    public final /* synthetic */ Map f75439b;

    public RunnableC26954q0(AbstractC26949o0 abstractC26949o0, ArrayList arrayList, Map map) {
        this.f75438a = arrayList;
        this.f75439b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        int size = this.f75438a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f75438a.get(i);
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.setTransitionName((String) this.f75439b.get(view.getTransitionName()));
        }
    }
}
