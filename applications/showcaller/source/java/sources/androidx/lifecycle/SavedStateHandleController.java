package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.savedstate.AbstractC1047c;
import androidx.savedstate.SavedStateRegistry;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController.class */
final class SavedStateHandleController implements AbstractC0795f {

    /* renamed from: d */
    private boolean f3691d;

    /* renamed from: androidx.lifecycle.SavedStateHandleController$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController$a.class */
    static final class C0786a implements SavedStateRegistry.AbstractC1043a {
        C0786a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.AbstractC1043a
        /* renamed from: a */
        public void mo31186a(AbstractC1047c abstractC1047c) {
            if (abstractC1047c instanceof AbstractC0819u) {
                C0818t mo32344p = ((AbstractC0819u) abstractC1047c).mo32344p();
                SavedStateRegistry mo31180r = abstractC1047c.mo31180r();
                for (String str : mo32344p.m32346c()) {
                    SavedStateHandleController.m32417h(mo32344p.m32347b(str), mo31180r, abstractC1047c.mo32372a());
                }
                if (mo32344p.m32346c().isEmpty()) {
                    return;
                }
                mo31180r.m31187e(C0786a.class);
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    /* renamed from: h */
    static void m32417h(AbstractC0813r abstractC0813r, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) abstractC0813r.m32353c("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.m32415j()) {
            return;
        }
        savedStateHandleController.m32416i(savedStateRegistry, lifecycle);
        m32414k(savedStateRegistry, lifecycle);
    }

    /* renamed from: k */
    private static void m32414k(final SavedStateRegistry savedStateRegistry, final Lifecycle lifecycle) {
        Lifecycle.State mo32397b = lifecycle.mo32397b();
        if (mo32397b == Lifecycle.State.INITIALIZED || mo32397b.isAtLeast(Lifecycle.State.STARTED)) {
            savedStateRegistry.m31187e(C0786a.class);
        } else {
            lifecycle.mo32398a(new AbstractC0795f() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.AbstractC0795f
                /* renamed from: c */
                public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        lifecycle.mo32396c(this);
                        savedStateRegistry.m31187e(C0786a.class);
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f3691d = false;
            abstractC0797h.mo32372a().mo32396c(this);
        }
    }

    /* renamed from: i */
    void m32416i(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        if (this.f3691d) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f3691d = true;
        lifecycle.mo32398a(this);
        throw null;
    }

    /* renamed from: j */
    boolean m32415j() {
        return this.f3691d;
    }
}
