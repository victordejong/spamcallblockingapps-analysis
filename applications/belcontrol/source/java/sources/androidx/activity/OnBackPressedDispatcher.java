package androidx.activity;

import android.annotation.SuppressLint;
import java.util.ArrayDeque;
import java.util.Iterator;
import me;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    public final Runnable f371a;

    /* renamed from: b */
    public final ArrayDeque<AbstractC1268d> f372b = new ArrayDeque<>();

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f371a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    /* renamed from: a */
    public void m7050a(qe qeVar, AbstractC1268d abstractC1268d) {
        me lifecycle = qeVar.getLifecycle();
        if (lifecycle.b() == me.b.a) {
            return;
        }
        abstractC1268d.m2920a(new LifecycleOnBackPressedCancellable(this, lifecycle, abstractC1268d));
    }

    /* renamed from: b */
    public AbstractC0266c m7049b(AbstractC1268d abstractC1268d) {
        this.f372b.add(abstractC1268d);
        a aVar = new a(this, abstractC1268d);
        abstractC1268d.m2920a(aVar);
        return aVar;
    }

    /* renamed from: c */
    public void m7048c() {
        Iterator<AbstractC1268d> descendingIterator = this.f372b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC1268d next = descendingIterator.next();
            if (next.m2918c()) {
                next.m2919b();
                return;
            }
        }
        Runnable runnable = this.f371a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
