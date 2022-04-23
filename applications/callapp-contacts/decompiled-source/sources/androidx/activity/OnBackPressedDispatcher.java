package androidx.activity;

import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.p;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a  reason: collision with root package name */
    final ArrayDeque<b> f525a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f526b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements androidx.activity.a, n {

        /* renamed from: b  reason: collision with root package name */
        private final j f528b;

        /* renamed from: c  reason: collision with root package name */
        private final b f529c;

        /* renamed from: d  reason: collision with root package name */
        private androidx.activity.a f530d;

        LifecycleOnBackPressedCancellable(j jVar, b bVar) {
            this.f528b = jVar;
            this.f529c = bVar;
            jVar.addObserver(this);
        }

        @Override // androidx.activity.a
        public final void a() {
            this.f528b.removeObserver(this);
            this.f529c.b(this);
            androidx.activity.a aVar = this.f530d;
            if (aVar != null) {
                aVar.a();
                this.f530d = null;
            }
        }

        @Override // androidx.lifecycle.n
        public final void a(p pVar, j.a aVar) {
            if (aVar == j.a.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                b bVar = this.f529c;
                onBackPressedDispatcher.f525a.add(bVar);
                a aVar2 = new a(bVar);
                bVar.a(aVar2);
                this.f530d = aVar2;
            } else if (aVar == j.a.ON_STOP) {
                androidx.activity.a aVar3 = this.f530d;
                if (aVar3 != null) {
                    aVar3.a();
                }
            } else if (aVar == j.a.ON_DESTROY) {
                a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    final class a implements androidx.activity.a {

        /* renamed from: b  reason: collision with root package name */
        private final b f532b;

        a(b bVar) {
            this.f532b = bVar;
        }

        @Override // androidx.activity.a
        public final void a() {
            OnBackPressedDispatcher.this.f525a.remove(this.f532b);
            this.f532b.b(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f525a = new ArrayDeque<>();
        this.f526b = runnable;
    }

    public final void a() {
        Iterator<b> descendingIterator = this.f525a.descendingIterator();
        while (descendingIterator.hasNext()) {
            b next = descendingIterator.next();
            if (next.f535a) {
                next.b();
                return;
            }
        }
        Runnable runnable = this.f526b;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void a(p pVar, b bVar) {
        j lifecycle = pVar.getLifecycle();
        if (lifecycle.getCurrentState() != j.b.DESTROYED) {
            bVar.a(new LifecycleOnBackPressedCancellable(lifecycle, bVar));
        }
    }
}
