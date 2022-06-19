package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0522h;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.C0525k;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    public final Runnable f230a;

    /* renamed from: b */
    public final ArrayDeque<AbstractC0103b> f231b = new ArrayDeque<>();

    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements AbstractC0522h, AbstractC0102a {

        /* renamed from: a */
        public final AbstractC0516f f232a;

        /* renamed from: b */
        public final AbstractC0103b f233b;

        /* renamed from: c */
        public AbstractC0102a f234c;

        public LifecycleOnBackPressedCancellable(AbstractC0516f abstractC0516f, AbstractC0103b abstractC0103b) {
            OnBackPressedDispatcher.this = r4;
            this.f232a = abstractC0516f;
            this.f233b = abstractC0103b;
            abstractC0516f.mo7992a(this);
        }

        @Override // androidx.activity.AbstractC0102a
        public void cancel() {
            C0525k c0525k = (C0525k) this.f232a;
            c0525k.m7989d("removeObserver");
            c0525k.f2037a.mo1887e(this);
            this.f233b.f239b.remove(this);
            AbstractC0102a abstractC0102a = this.f234c;
            if (abstractC0102a != null) {
                abstractC0102a.cancel();
                this.f234c = null;
            }
        }

        @Override // androidx.lifecycle.AbstractC0522h
        /* renamed from: d */
        public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
            if (enumC0518b == AbstractC0516f.EnumC0518b.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                AbstractC0103b abstractC0103b = this.f233b;
                onBackPressedDispatcher.f231b.add(abstractC0103b);
                C0101a c0101a = new C0101a(abstractC0103b);
                abstractC0103b.f239b.add(c0101a);
                this.f234c = c0101a;
            } else if (enumC0518b != AbstractC0516f.EnumC0518b.ON_STOP) {
                if (enumC0518b != AbstractC0516f.EnumC0518b.ON_DESTROY) {
                    return;
                }
                cancel();
            } else {
                AbstractC0102a abstractC0102a = this.f234c;
                if (abstractC0102a == null) {
                    return;
                }
                abstractC0102a.cancel();
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    public class C0101a implements AbstractC0102a {

        /* renamed from: a */
        public final AbstractC0103b f236a;

        public C0101a(AbstractC0103b abstractC0103b) {
            OnBackPressedDispatcher.this = r4;
            this.f236a = abstractC0103b;
        }

        @Override // androidx.activity.AbstractC0102a
        public void cancel() {
            OnBackPressedDispatcher.this.f231b.remove(this.f236a);
            this.f236a.f239b.remove(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f230a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    /* renamed from: a */
    public void m8740a(AbstractC0524j abstractC0524j, AbstractC0103b abstractC0103b) {
        AbstractC0516f lifecycle = abstractC0524j.getLifecycle();
        if (((C0525k) lifecycle).f2038b == AbstractC0516f.EnumC0519c.DESTROYED) {
            return;
        }
        abstractC0103b.f239b.add(new LifecycleOnBackPressedCancellable(lifecycle, abstractC0103b));
    }

    /* renamed from: b */
    public void m8739b() {
        Iterator<AbstractC0103b> descendingIterator = this.f231b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0103b next = descendingIterator.next();
            if (next.f238a) {
                next.mo8142a();
                return;
            }
        }
        Runnable runnable = this.f230a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
