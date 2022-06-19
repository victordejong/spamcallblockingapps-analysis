package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
public class RunnableC0622f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f2422a;

    /* renamed from: b */
    public final /* synthetic */ C0628l f2423b;

    public RunnableC0622f(C0628l c0628l, ArrayList arrayList) {
        this.f2423b = c0628l;
        this.f2422a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it2 = this.f2422a.iterator();
        while (it2.hasNext()) {
            RecyclerView.AbstractC0558a0 abstractC0558a0 = (RecyclerView.AbstractC0558a0) it2.next();
            C0628l c0628l = this.f2423b;
            Objects.requireNonNull(c0628l);
            View view = abstractC0558a0.f2224a;
            ViewPropertyAnimator animate = view.animate();
            c0628l.f2454o.add(abstractC0558a0);
            animate.alpha(1.0f).setDuration(c0628l.f2248c).setListener(new C0624h(c0628l, abstractC0558a0, view, animate)).start();
        }
        this.f2422a.clear();
        this.f2423b.f2451l.remove(this.f2422a);
    }
}
