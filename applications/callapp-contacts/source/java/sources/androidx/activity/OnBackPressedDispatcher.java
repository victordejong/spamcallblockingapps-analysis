package androidx.activity;

import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1261n;
import androidx.lifecycle.AbstractC1263p;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    final ArrayDeque<AbstractC0124b> f234a;

    /* renamed from: b */
    private final Runnable f235b;

    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements AbstractC0121a, AbstractC1261n {

        /* renamed from: b */
        private final AbstractC1253j f237b;

        /* renamed from: c */
        private final AbstractC0124b f238c;

        /* renamed from: d */
        private AbstractC0121a f239d;

        LifecycleOnBackPressedCancellable(AbstractC1253j abstractC1253j, AbstractC0124b abstractC0124b) {
            OnBackPressedDispatcher.this = r4;
            this.f237b = abstractC1253j;
            this.f238c = abstractC0124b;
            abstractC1253j.addObserver(this);
        }

        @Override // androidx.activity.AbstractC0121a
        /* renamed from: a */
        public final void mo46393a() {
            this.f237b.removeObserver(this);
            this.f238c.m46390b(this);
            AbstractC0121a abstractC0121a = this.f239d;
            if (abstractC0121a != null) {
                abstractC0121a.mo46393a();
                this.f239d = null;
            }
        }

        @Override // androidx.lifecycle.AbstractC1261n
        /* renamed from: a */
        public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
            if (enumC1255a == AbstractC1253j.EnumC1255a.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                AbstractC0124b abstractC0124b = this.f238c;
                onBackPressedDispatcher.f234a.add(abstractC0124b);
                C0120a c0120a = new C0120a(abstractC0124b);
                abstractC0124b.m46391a(c0120a);
                this.f239d = c0120a;
            } else if (enumC1255a != AbstractC1253j.EnumC1255a.ON_STOP) {
                if (enumC1255a != AbstractC1253j.EnumC1255a.ON_DESTROY) {
                    return;
                }
                mo46393a();
            } else {
                AbstractC0121a abstractC0121a = this.f239d;
                if (abstractC0121a == null) {
                    return;
                }
                abstractC0121a.mo46393a();
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    final class C0120a implements AbstractC0121a {

        /* renamed from: b */
        private final AbstractC0124b f241b;

        C0120a(AbstractC0124b abstractC0124b) {
            OnBackPressedDispatcher.this = r4;
            this.f241b = abstractC0124b;
        }

        @Override // androidx.activity.AbstractC0121a
        /* renamed from: a */
        public final void mo46393a() {
            OnBackPressedDispatcher.this.f234a.remove(this.f241b);
            this.f241b.m46390b(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f234a = new ArrayDeque<>();
        this.f235b = runnable;
    }

    /* renamed from: a */
    public final void m46395a() {
        Iterator<AbstractC0124b> descendingIterator = this.f234a.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0124b next = descendingIterator.next();
            if (next.f244a) {
                next.mo43668b();
                return;
            }
        }
        Runnable runnable = this.f235b;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public final void m46394a(AbstractC1263p abstractC1263p, AbstractC0124b abstractC0124b) {
        AbstractC1253j lifecycle = abstractC1263p.getLifecycle();
        if (lifecycle.getCurrentState() == AbstractC1253j.EnumC1256b.DESTROYED) {
            return;
        }
        abstractC0124b.m46391a(new LifecycleOnBackPressedCancellable(lifecycle, abstractC0124b));
    }
}
