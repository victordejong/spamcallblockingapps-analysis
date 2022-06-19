package androidx.activity;

import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0867f;
import androidx.lifecycle.AbstractC0869h;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    final ArrayDeque<AbstractC0081c> f183a;

    /* renamed from: b */
    private final Runnable f184b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements AbstractC0077a, AbstractC0867f {

        /* renamed from: b */
        private final AbstractC0864e f186b;

        /* renamed from: c */
        private final AbstractC0081c f187c;

        /* renamed from: d */
        private AbstractC0077a f188d;

        LifecycleOnBackPressedCancellable(AbstractC0864e abstractC0864e, AbstractC0081c abstractC0081c) {
            OnBackPressedDispatcher.this = r4;
            this.f186b = abstractC0864e;
            this.f187c = abstractC0081c;
            abstractC0864e.mo19219a(this);
        }

        @Override // androidx.activity.AbstractC0077a
        /* renamed from: a */
        public void mo22286a() {
            this.f186b.mo19214b(this);
            this.f187c.m22279b(this);
            if (this.f188d != null) {
                this.f188d.mo22286a();
                this.f188d = null;
            }
        }

        @Override // androidx.lifecycle.AbstractC0867f
        /* renamed from: a */
        public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
            if (enumC0865a == AbstractC0864e.EnumC0865a.ON_START) {
                this.f188d = OnBackPressedDispatcher.this.m22288a(this.f187c);
            } else if (enumC0865a == AbstractC0864e.EnumC0865a.ON_STOP) {
                if (this.f188d == null) {
                    return;
                }
                this.f188d.mo22286a();
            } else if (enumC0865a != AbstractC0864e.EnumC0865a.ON_DESTROY) {
            } else {
                mo22286a();
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    public class C0076a implements AbstractC0077a {

        /* renamed from: b */
        private final AbstractC0081c f190b;

        C0076a(AbstractC0081c abstractC0081c) {
            OnBackPressedDispatcher.this = r4;
            this.f190b = abstractC0081c;
        }

        @Override // androidx.activity.AbstractC0077a
        /* renamed from: a */
        public void mo22286a() {
            OnBackPressedDispatcher.this.f183a.remove(this.f190b);
            this.f190b.m22279b(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f183a = new ArrayDeque<>();
        this.f184b = runnable;
    }

    /* renamed from: a */
    AbstractC0077a m22288a(AbstractC0081c abstractC0081c) {
        this.f183a.add(abstractC0081c);
        C0076a c0076a = new C0076a(abstractC0081c);
        abstractC0081c.m22282a(c0076a);
        return c0076a;
    }

    /* renamed from: a */
    public void m22289a() {
        Iterator<AbstractC0081c> descendingIterator = this.f183a.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0081c next = descendingIterator.next();
            if (next.m22283a()) {
                next.mo19690c();
                return;
            }
        }
        if (this.f184b != null) {
            this.f184b.run();
        }
    }

    /* renamed from: a */
    public void m22287a(AbstractC0869h abstractC0869h, AbstractC0081c abstractC0081c) {
        AbstractC0864e mo19203b = abstractC0869h.mo19203b();
        if (mo19203b.mo19223a() == AbstractC0864e.EnumC0866b.DESTROYED) {
            return;
        }
        abstractC0081c.m22282a(new LifecycleOnBackPressedCancellable(mo19203b, abstractC0081c));
    }
}
