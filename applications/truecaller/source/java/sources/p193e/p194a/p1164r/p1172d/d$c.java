package p193e.p194a.p1164r.p1172d;

import androidx.recyclerview.widget.RecyclerView;
import s1.z.c.l;
/* renamed from: e.a.r.d.d$c */
/* loaded from: classes16-dex2jar.jar:e/a/r/d/d$c.class */
public final class d$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ d f54799a;

    public d$c(d dVar) {
        this.f54799a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.f54799a.g;
        if (recyclerView != null) {
            recyclerView.scrollToPosition(0);
        } else {
            l.l("countriesRecyclerView");
            throw null;
        }
    }
}
