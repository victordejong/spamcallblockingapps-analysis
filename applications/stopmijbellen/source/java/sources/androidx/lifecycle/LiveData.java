package androidx.lifecycle;

import android.support.p012v4.media.C0082b;
import android.view.View;
import androidx.fragment.app.AbstractC0397a0;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0444l;
import androidx.lifecycle.AbstractC0516f;
import java.util.Map;
import java.util.Objects;
import p162m.C3542a;
import p173n.C3686b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData.class */
public abstract class LiveData<T> {

    /* renamed from: k */
    public static final Object f1994k = new Object();

    /* renamed from: d */
    public boolean f1998d;

    /* renamed from: e */
    public volatile Object f1999e;

    /* renamed from: f */
    public volatile Object f2000f;

    /* renamed from: h */
    public boolean f2002h;

    /* renamed from: i */
    public boolean f2003i;

    /* renamed from: a */
    public final Object f1995a = new Object();

    /* renamed from: b */
    public C3686b<AbstractC0531p<? super T>, LiveData<T>.AbstractC0502c> f1996b = new C3686b<>();

    /* renamed from: c */
    public int f1997c = 0;

    /* renamed from: j */
    public final Runnable f2004j = new RunnableC0500a();

    /* renamed from: g */
    public int f2001g = -1;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$LifecycleBoundObserver.class */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0502c implements AbstractC0522h {

        /* renamed from: e */
        public final AbstractC0524j f2005e;

        /* renamed from: f */
        public final /* synthetic */ LiveData f2006f;

        @Override // androidx.lifecycle.AbstractC0522h
        /* renamed from: d */
        public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
            AbstractC0516f.EnumC0519c enumC0519c = ((C0525k) this.f2005e.getLifecycle()).f2038b;
            if (enumC0519c == AbstractC0516f.EnumC0519c.DESTROYED) {
                this.f2006f.mo7433g(this.f2008a);
                return;
            }
            AbstractC0516f.EnumC0519c enumC0519c2 = null;
            while (enumC0519c2 != enumC0519c) {
                m8012h(mo8010j());
                enumC0519c2 = enumC0519c;
                enumC0519c = ((C0525k) this.f2005e.getLifecycle()).f2038b;
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0502c
        /* renamed from: i */
        public void mo8011i() {
            C0525k c0525k = (C0525k) this.f2005e.getLifecycle();
            c0525k.m7989d("removeObserver");
            c0525k.f2037a.mo1887e(this);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0502c
        /* renamed from: j */
        public boolean mo8010j() {
            return ((C0525k) this.f2005e.getLifecycle()).f2038b.compareTo(AbstractC0516f.EnumC0519c.STARTED) >= 0;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$a.class */
    public class RunnableC0500a implements Runnable {
        public RunnableC0500a() {
            LiveData.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1995a) {
                obj = LiveData.this.f2000f;
                LiveData.this.f2000f = LiveData.f1994k;
            }
            LiveData.this.mo7432h(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$b.class */
    public class C0501b extends LiveData<T>.AbstractC0502c {
        public C0501b(LiveData liveData, AbstractC0531p<? super T> abstractC0531p) {
            super(abstractC0531p);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0502c
        /* renamed from: j */
        public boolean mo8010j() {
            return true;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveData$c.class */
    public abstract class AbstractC0502c {

        /* renamed from: a */
        public final AbstractC0531p<? super T> f2008a;

        /* renamed from: b */
        public boolean f2009b;

        /* renamed from: c */
        public int f2010c = -1;

        public AbstractC0502c(AbstractC0531p<? super T> abstractC0531p) {
            LiveData.this = r4;
            this.f2008a = abstractC0531p;
        }

        /* renamed from: h */
        public void m8012h(boolean z) {
            if (z == this.f2009b) {
                return;
            }
            this.f2009b = z;
            LiveData liveData = LiveData.this;
            int i = z ? 1 : -1;
            int i2 = liveData.f1997c;
            liveData.f1997c = i + i2;
            if (!liveData.f1998d) {
                liveData.f1998d = true;
                while (true) {
                    try {
                        int i3 = liveData.f1997c;
                        if (i2 == i3) {
                            break;
                        }
                        boolean z2 = i2 == 0 && i3 > 0;
                        boolean z3 = i2 > 0 && i3 == 0;
                        if (z2) {
                            liveData.mo7435e();
                        } else if (z3) {
                            liveData.mo7434f();
                        }
                        i2 = i3;
                    } finally {
                        liveData.f1998d = false;
                    }
                }
            }
            if (!this.f2009b) {
                return;
            }
            LiveData.this.m8014c(this);
        }

        /* renamed from: i */
        public void mo8011i() {
        }

        /* renamed from: j */
        public abstract boolean mo8010j();
    }

    public LiveData() {
        Object obj = f1994k;
        this.f2000f = obj;
        this.f1999e = obj;
    }

    /* renamed from: a */
    public static void m8016a(String str) {
        if (C3542a.m2201M().mo2197v()) {
            return;
        }
        throw new IllegalStateException(C0082b.m8755g("Cannot invoke ", str, " on a background thread"));
    }

    /* renamed from: b */
    public final void m8015b(LiveData<T>.AbstractC0502c abstractC0502c) {
        boolean z;
        if (!abstractC0502c.f2009b) {
            return;
        }
        if (!abstractC0502c.mo8010j()) {
            abstractC0502c.m8012h(false);
            return;
        }
        int i = abstractC0502c.f2010c;
        int i2 = this.f2001g;
        if (i >= i2) {
            return;
        }
        abstractC0502c.f2010c = i2;
        AbstractC0531p<? super T> abstractC0531p = abstractC0502c.f2008a;
        Object obj = this.f1999e;
        DialogInterface$OnCancelListenerC0444l.C0448d c0448d = (DialogInterface$OnCancelListenerC0444l.C0448d) abstractC0531p;
        Objects.requireNonNull(c0448d);
        if (((AbstractC0524j) obj) == null) {
            return;
        }
        z = DialogInterface$OnCancelListenerC0444l.this.mShowsDialog;
        if (!z) {
            return;
        }
        View requireView = DialogInterface$OnCancelListenerC0444l.this.requireView();
        if (requireView.getParent() != null) {
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
        }
        if (DialogInterface$OnCancelListenerC0444l.this.mDialog == null) {
            return;
        }
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(DialogInterface$OnCancelListenerC0444l.this.mDialog);
        }
        DialogInterface$OnCancelListenerC0444l.this.mDialog.setContentView(requireView);
    }

    /* renamed from: c */
    public void m8014c(LiveData<T>.AbstractC0502c abstractC0502c) {
        LiveData<T>.AbstractC0502c abstractC0502c2;
        if (this.f2002h) {
            this.f2003i = true;
            return;
        }
        this.f2002h = true;
        do {
            this.f2003i = false;
            if (abstractC0502c == null) {
                C3686b<AbstractC0531p<? super T>, LiveData<T>.AbstractC0502c>.C3690d m1890b = this.f1996b.m1890b();
                while (true) {
                    abstractC0502c2 = abstractC0502c;
                    if (!m1890b.hasNext()) {
                        break;
                    }
                    m8015b((AbstractC0502c) ((Map.Entry) m1890b.next()).getValue());
                    if (this.f2003i) {
                        abstractC0502c2 = abstractC0502c;
                        break;
                    }
                }
            } else {
                m8015b(abstractC0502c);
                abstractC0502c2 = null;
            }
            abstractC0502c = abstractC0502c2;
        } while (this.f2003i);
        this.f2002h = false;
    }

    /* renamed from: d */
    public void m8013d(AbstractC0531p<? super T> abstractC0531p) {
        m8016a("observeForever");
        C0501b c0501b = new C0501b(this, abstractC0531p);
        LiveData<T>.AbstractC0502c mo1888d = this.f1996b.mo1888d(abstractC0531p, c0501b);
        if (!(mo1888d instanceof LifecycleBoundObserver)) {
            if (mo1888d != null) {
                return;
            }
            c0501b.m8012h(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    /* renamed from: e */
    public void mo7435e() {
    }

    /* renamed from: f */
    public void mo7434f() {
    }

    /* renamed from: g */
    public void mo7433g(AbstractC0531p<? super T> abstractC0531p) {
        m8016a("removeObserver");
        LiveData<T>.AbstractC0502c mo1887e = this.f1996b.mo1887e(abstractC0531p);
        if (mo1887e == null) {
            return;
        }
        mo1887e.mo8011i();
        mo1887e.m8012h(false);
    }

    /* renamed from: h */
    public abstract void mo7432h(T t);
}
