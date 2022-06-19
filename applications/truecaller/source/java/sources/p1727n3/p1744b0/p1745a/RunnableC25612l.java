package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import p1727n3.p1744b0.p1745a.C25601k;
import p193e.p194a.p195a.p200c.C5231d8;
import s1.z.c.l;
/* renamed from: n3.b0.a.l */
/* loaded from: classes-dex2jar.jar:n3/b0/a/l.class */
public class RunnableC25612l implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C25601k.C25609f f71766a;

    /* renamed from: b */
    public final /* synthetic */ int f71767b;

    /* renamed from: c */
    public final /* synthetic */ C25601k f71768c;

    public RunnableC25612l(C25601k c25601k, C25601k.C25609f c25609f, int i) {
        this.f71768c = c25601k;
        this.f71766a = c25609f;
        this.f71767b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        RecyclerView recyclerView = this.f71768c.f71733r;
        if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
            return;
        }
        C25601k.C25609f c25609f = this.f71766a;
        if (c25609f.f71762k || c25609f.f71756e.getAbsoluteAdapterPosition() == -1) {
            return;
        }
        RecyclerView.AbstractC0323l itemAnimator = this.f71768c.f71733r.getItemAnimator();
        if (itemAnimator == null || !itemAnimator.isRunning(null)) {
            C25601k c25601k = this.f71768c;
            int size = c25601k.f71731p.size();
            int i = 0;
            while (true) {
                z = false;
                if (i >= size) {
                    break;
                } else if (!c25601k.f71731p.get(i).f71763l) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                C25601k.AbstractC25605d abstractC25605d = this.f71768c.f71728m;
                RecyclerView.AbstractC0313c0 abstractC0313c0 = this.f71766a.f71756e;
                Objects.requireNonNull((C5231d8) abstractC25605d);
                l.e(abstractC0313c0, "viewHolder");
                return;
            }
        }
        this.f71768c.f71733r.post(this);
    }
}
