package androidx.activity;

import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0901i;
import androidx.lifecycle.AbstractC0903k;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    final ArrayDeque<AbstractC0049c> f93a;

    /* renamed from: b */
    private final Runnable f94b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements AbstractC0045a, AbstractC0901i {

        /* renamed from: b */
        private final AbstractC0896g f96b;

        /* renamed from: c */
        private final AbstractC0049c f97c;

        /* renamed from: d */
        private AbstractC0045a f98d;

        LifecycleOnBackPressedCancellable(AbstractC0896g abstractC0896g, AbstractC0049c abstractC0049c) {
            OnBackPressedDispatcher.this = r4;
            this.f96b = abstractC0896g;
            this.f97c = abstractC0049c;
            abstractC0896g.mo5108a(this);
        }

        @Override // androidx.activity.AbstractC0045a
        /* renamed from: a */
        public void mo7994a() {
            this.f96b.mo5103b(this);
            this.f97c.m7987b(this);
            AbstractC0045a abstractC0045a = this.f98d;
            if (abstractC0045a != null) {
                abstractC0045a.mo7994a();
                this.f98d = null;
            }
        }

        @Override // androidx.lifecycle.AbstractC0901i
        /* renamed from: a */
        public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
            if (enumC0897a == AbstractC0896g.EnumC0897a.ON_START) {
                this.f98d = OnBackPressedDispatcher.this.m7996a(this.f97c);
            } else if (enumC0897a != AbstractC0896g.EnumC0897a.ON_STOP) {
                if (enumC0897a != AbstractC0896g.EnumC0897a.ON_DESTROY) {
                    return;
                }
                mo7994a();
            } else {
                AbstractC0045a abstractC0045a = this.f98d;
                if (abstractC0045a == null) {
                    return;
                }
                abstractC0045a.mo7994a();
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    public class C0044a implements AbstractC0045a {

        /* renamed from: b */
        private final AbstractC0049c f100b;

        C0044a(AbstractC0049c abstractC0049c) {
            OnBackPressedDispatcher.this = r4;
            this.f100b = abstractC0049c;
        }

        @Override // androidx.activity.AbstractC0045a
        /* renamed from: a */
        public void mo7994a() {
            OnBackPressedDispatcher.this.f93a.remove(this.f100b);
            this.f100b.m7987b(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f93a = new ArrayDeque<>();
        this.f94b = runnable;
    }

    /* renamed from: a */
    AbstractC0045a m7996a(AbstractC0049c abstractC0049c) {
        this.f93a.add(abstractC0049c);
        C0044a c0044a = new C0044a(abstractC0049c);
        abstractC0049c.m7990a(c0044a);
        return c0044a;
    }

    /* renamed from: a */
    public void m7997a() {
        Iterator<AbstractC0049c> descendingIterator = this.f93a.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0049c next = descendingIterator.next();
            if (next.m7991a()) {
                next.mo5480c();
                return;
            }
        }
        Runnable runnable = this.f94b;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public void m7995a(AbstractC0903k abstractC0903k, AbstractC0049c abstractC0049c) {
        AbstractC0896g lifecycle = abstractC0903k.getLifecycle();
        if (lifecycle.mo5112a() == AbstractC0896g.EnumC0898b.DESTROYED) {
            return;
        }
        abstractC0049c.m7990a(new LifecycleOnBackPressedCancellable(lifecycle, abstractC0049c));
    }
}
