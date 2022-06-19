package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C0628l;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
public class RunnableC0621e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f2420a;

    /* renamed from: b */
    public final /* synthetic */ C0628l f2421b;

    public RunnableC0621e(C0628l c0628l, ArrayList arrayList) {
        this.f2421b = c0628l;
        this.f2420a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it2 = this.f2420a.iterator();
        while (it2.hasNext()) {
            C0628l.C0629a c0629a = (C0628l.C0629a) it2.next();
            C0628l c0628l = this.f2421b;
            Objects.requireNonNull(c0628l);
            RecyclerView.AbstractC0558a0 abstractC0558a0 = c0629a.f2458a;
            View view = null;
            View view2 = abstractC0558a0 == null ? null : abstractC0558a0.f2224a;
            RecyclerView.AbstractC0558a0 abstractC0558a02 = c0629a.f2459b;
            if (abstractC0558a02 != null) {
                view = abstractC0558a02.f2224a;
            }
            if (view2 != null) {
                ViewPropertyAnimator duration = view2.animate().setDuration(c0628l.f2251f);
                c0628l.f2457r.add(c0629a.f2458a);
                duration.translationX(c0629a.f2462e - c0629a.f2460c);
                duration.translationY(c0629a.f2463f - c0629a.f2461d);
                duration.alpha(0.0f).setListener(new C0626j(c0628l, c0629a, duration, view2)).start();
            }
            if (view != null) {
                ViewPropertyAnimator animate = view.animate();
                c0628l.f2457r.add(c0629a.f2459b);
                animate.translationX(0.0f).translationY(0.0f).setDuration(c0628l.f2251f).alpha(1.0f).setListener(new C0627k(c0628l, c0629a, animate, view)).start();
            }
        }
        this.f2420a.clear();
        this.f2421b.f2453n.remove(this.f2420a);
    }
}
