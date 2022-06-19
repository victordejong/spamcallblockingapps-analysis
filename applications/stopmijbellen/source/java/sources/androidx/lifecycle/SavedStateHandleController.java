package androidx.lifecycle;

import androidx.lifecycle.AbstractC0516f;
import androidx.savedstate.AbstractC0661c;
import androidx.savedstate.C0657a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController.class */
final class SavedStateHandleController implements AbstractC0522h {

    /* renamed from: a */
    public final String f2014a;

    /* renamed from: b */
    public boolean f2015b = false;

    /* renamed from: c */
    public final C0541u f2016c;

    /* renamed from: androidx.lifecycle.SavedStateHandleController$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController$a.class */
    public static final class C0504a implements C0657a.AbstractC0658a {
        @Override // androidx.savedstate.C0657a.AbstractC0658a
        /* renamed from: a */
        public void mo7512a(AbstractC0661c abstractC0661c) {
            if (abstractC0661c instanceof AbstractC0514d0) {
                C0512c0 viewModelStore = ((AbstractC0514d0) abstractC0661c).getViewModelStore();
                C0657a savedStateRegistry = abstractC0661c.getSavedStateRegistry();
                Objects.requireNonNull(viewModelStore);
                Iterator it2 = new HashSet(viewModelStore.f2027a.keySet()).iterator();
                while (it2.hasNext()) {
                    SavedStateHandleController.m8009h(viewModelStore.f2027a.get((String) it2.next()), savedStateRegistry, abstractC0661c.getLifecycle());
                }
                if (new HashSet(viewModelStore.f2027a.keySet()).isEmpty()) {
                    return;
                }
                savedStateRegistry.m7513c(C0504a.class);
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    public SavedStateHandleController(String str, C0541u c0541u) {
        this.f2014a = str;
        this.f2016c = c0541u;
    }

    /* renamed from: h */
    public static void m8009h(AbstractC0546x abstractC0546x, C0657a c0657a, AbstractC0516f abstractC0516f) {
        SavedStateHandleController savedStateHandleController;
        Map<String, Object> map = abstractC0546x.f2082a;
        if (map == null) {
            savedStateHandleController = null;
        } else {
            synchronized (map) {
                savedStateHandleController = abstractC0546x.f2082a.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController2 = savedStateHandleController;
        if (savedStateHandleController2 == null || savedStateHandleController2.f2015b) {
            return;
        }
        savedStateHandleController2.m8008i(c0657a, abstractC0516f);
        m8007j(c0657a, abstractC0516f);
    }

    /* renamed from: j */
    public static void m8007j(final C0657a c0657a, final AbstractC0516f abstractC0516f) {
        AbstractC0516f.EnumC0519c enumC0519c = ((C0525k) abstractC0516f).f2038b;
        if (enumC0519c != AbstractC0516f.EnumC0519c.INITIALIZED) {
            if (!(enumC0519c.compareTo(AbstractC0516f.EnumC0519c.STARTED) >= 0)) {
                abstractC0516f.mo7992a(new AbstractC0522h() { // from class: androidx.lifecycle.SavedStateHandleController.1
                    @Override // androidx.lifecycle.AbstractC0522h
                    /* renamed from: d */
                    public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
                        if (enumC0518b == AbstractC0516f.EnumC0518b.ON_START) {
                            C0525k c0525k = (C0525k) abstractC0516f;
                            c0525k.m7989d("removeObserver");
                            c0525k.f2037a.mo1887e(this);
                            c0657a.m7513c(C0504a.class);
                        }
                    }
                });
                return;
            }
        }
        c0657a.m7513c(C0504a.class);
    }

    @Override // androidx.lifecycle.AbstractC0522h
    /* renamed from: d */
    public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
        if (enumC0518b == AbstractC0516f.EnumC0518b.ON_DESTROY) {
            this.f2015b = false;
            C0525k c0525k = (C0525k) abstractC0524j.getLifecycle();
            c0525k.m7989d("removeObserver");
            c0525k.f2037a.mo1887e(this);
        }
    }

    /* renamed from: i */
    public void m8008i(C0657a c0657a, AbstractC0516f abstractC0516f) {
        if (!this.f2015b) {
            this.f2015b = true;
            abstractC0516f.mo7992a(this);
            c0657a.m7514b(this.f2014a, this.f2016c.f2067d);
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner");
    }
}
