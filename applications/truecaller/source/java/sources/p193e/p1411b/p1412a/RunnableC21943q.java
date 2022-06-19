package p193e.p1411b.p1412a;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: e.b.a.q */
/* loaded from: classes-dex2jar.jar:e/b/a/q.class */
public class RunnableC21943q implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C21944r f60929a;

    public RunnableC21943q(C21944r c21944r) {
        this.f60929a = c21944r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        if (this.f60929a.f60934d == null) {
            return;
        }
        C21942p<T> c21942p = this.f60929a.f60934d;
        V v = c21942p.f60927a;
        if (v != 0) {
            C21944r c21944r = this.f60929a;
            synchronized (c21944r) {
                Iterator it = new ArrayList(c21944r.f60931a).iterator();
                while (it.hasNext()) {
                    ((AbstractC21939m) it.next()).onResult(v);
                }
            }
            return;
        }
        C21944r c21944r2 = this.f60929a;
        Throwable th = c21942p.f60928b;
        synchronized (c21944r2) {
            ArrayList arrayList = new ArrayList(c21944r2.f60932b);
            if (arrayList.isEmpty()) {
                return;
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((AbstractC21939m) it2.next()).onResult(th);
            }
        }
    }
}
