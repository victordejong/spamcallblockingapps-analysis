package p1727n3.p1859r.p1860a;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.r.a.p0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/p0.class */
public class RunnableC26952p0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f75431a;

    /* renamed from: b */
    public final /* synthetic */ Map f75432b;

    public RunnableC26952p0(AbstractC26949o0 abstractC26949o0, ArrayList arrayList, Map map) {
        this.f75431a = arrayList;
        this.f75432b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        int size = this.f75431a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f75431a.get(i);
            AtomicInteger atomicInteger = C26614s.f74505a;
            String transitionName = view.getTransitionName();
            if (transitionName != null) {
                Iterator it = this.f75432b.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (transitionName.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                view.setTransitionName(str);
            }
        }
    }
}
