package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.AbstractC0360h;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    private final Runnable f125a;

    /* renamed from: b */
    final ArrayDeque<AbstractC0068b> f126b = new ArrayDeque<>();

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f125a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    /* renamed from: a */
    public void m15011a(AbstractC0360h hVar, AbstractC0068b bVar) {
        Lifecycle a = hVar.m12984a();
        if (a.m13018b() != Lifecycle.State.DESTROYED) {
            bVar.m15008a(new LifecycleOnBackPressedCancellable(this, a, bVar));
        }
    }

    /* renamed from: b */
    AbstractC0067a m15010b(AbstractC0068b bVar) {
        this.f126b.add(bVar);
        a aVar = new a(this, bVar);
        bVar.m15008a(aVar);
        return aVar;
    }

    /* renamed from: c */
    public void m15009c() {
        Iterator<AbstractC0068b> descendingIterator = this.f126b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0068b next = descendingIterator.next();
            if (next.m15006c()) {
                next.m15007b();
                return;
            }
        }
        Runnable runnable = this.f125a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
