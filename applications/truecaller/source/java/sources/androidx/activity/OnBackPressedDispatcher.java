package androidx.activity;

import java.util.ArrayDeque;
import java.util.Iterator;
import p1727n3.p1728a.AbstractC25368a;
import p1727n3.p1728a.AbstractC25369b;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    public final Runnable f72a;

    /* renamed from: b */
    public final ArrayDeque<AbstractC25369b> f73b = new ArrayDeque<>();

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    public class C0018a implements AbstractC25368a {

        /* renamed from: a */
        public final AbstractC25369b f74a;

        public C0018a(AbstractC25369b abstractC25369b) {
            OnBackPressedDispatcher.this = r4;
            this.f74a = abstractC25369b;
        }

        @Override // p1727n3.p1728a.AbstractC25368a
        public void cancel() {
            OnBackPressedDispatcher.this.f73b.remove(this.f74a);
            this.f74a.removeCancellable(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f72a = runnable;
    }

    /* renamed from: a */
    public void m43175a(AbstractC26992b0 abstractC26992b0, AbstractC25369b abstractC25369b) {
        AbstractC27028u lifecycle = abstractC26992b0.getLifecycle();
        if (((C26994c0) lifecycle).f75501c == AbstractC27028u.EnumC27030b.DESTROYED) {
            return;
        }
        abstractC25369b.addCancellable(new LifecycleOnBackPressedCancellable(this, lifecycle, abstractC25369b));
    }

    /* renamed from: b */
    public void m43174b() {
        Iterator<AbstractC25369b> descendingIterator = this.f73b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC25369b next = descendingIterator.next();
            if (next.isEnabled()) {
                next.handleOnBackPressed();
                return;
            }
        }
        Runnable runnable = this.f72a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
