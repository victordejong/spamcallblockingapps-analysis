package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C0628l;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public class RunnableC0617d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f2412a;

    /* renamed from: b */
    public final /* synthetic */ C0628l f2413b;

    public RunnableC0617d(C0628l c0628l, ArrayList arrayList) {
        this.f2413b = c0628l;
        this.f2412a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it2 = this.f2412a.iterator();
        while (it2.hasNext()) {
            C0628l.C0630b c0630b = (C0628l.C0630b) it2.next();
            C0628l c0628l = this.f2413b;
            RecyclerView.AbstractC0558a0 abstractC0558a0 = c0630b.f2464a;
            int i = c0630b.f2465b;
            int i2 = c0630b.f2466c;
            int i3 = c0630b.f2467d;
            int i4 = c0630b.f2468e;
            Objects.requireNonNull(c0628l);
            View view = abstractC0558a0.f2224a;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (i5 != 0) {
                view.animate().translationX(0.0f);
            }
            if (i6 != 0) {
                view.animate().translationY(0.0f);
            }
            ViewPropertyAnimator animate = view.animate();
            c0628l.f2455p.add(abstractC0558a0);
            animate.setDuration(c0628l.f2250e).setListener(new C0625i(c0628l, abstractC0558a0, i5, view, i6, animate)).start();
        }
        this.f2412a.clear();
        this.f2413b.f2452m.remove(this.f2412a);
    }
}
