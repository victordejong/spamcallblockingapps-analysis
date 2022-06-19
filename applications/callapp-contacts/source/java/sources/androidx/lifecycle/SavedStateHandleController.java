package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.AbstractC1253j;
import androidx.savedstate.AbstractC2774d;
import androidx.savedstate.C2770b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController.class */
final class SavedStateHandleController implements AbstractC1261n {

    /* renamed from: a */
    final C1281x f4799a;

    /* renamed from: b */
    private final String f4800b;

    /* renamed from: c */
    private boolean f4801c = false;

    /* renamed from: androidx.lifecycle.SavedStateHandleController$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController$a.class */
    static final class C1226a implements C2770b.AbstractC2771a {
        C1226a() {
        }

        @Override // androidx.savedstate.C2770b.AbstractC2771a
        /* renamed from: a */
        public final void mo39932a(AbstractC2774d abstractC2774d) {
            if (abstractC2774d instanceof AbstractC1239ad) {
                C1238ac viewModelStore = ((AbstractC1239ad) abstractC2774d).getViewModelStore();
                C2770b savedStateRegistry = abstractC2774d.getSavedStateRegistry();
                for (String str : viewModelStore.m43309a()) {
                    SavedStateHandleController.m43321a(viewModelStore.m43308a(str), savedStateRegistry, abstractC2774d.getLifecycle());
                }
                if (viewModelStore.m43309a().isEmpty()) {
                    return;
                }
                savedStateRegistry.m39935a(C1226a.class);
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    SavedStateHandleController(String str, C1281x c1281x) {
        this.f4800b = str;
        this.f4799a = c1281x;
    }

    /* renamed from: a */
    public static SavedStateHandleController m43319a(C2770b c2770b, AbstractC1253j abstractC1253j, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, C1281x.m43277a(c2770b.m39934a(str), bundle));
        savedStateHandleController.m43320a(c2770b, abstractC1253j);
        m43318b(c2770b, abstractC1253j);
        return savedStateHandleController;
    }

    /* renamed from: a */
    public static void m43321a(AbstractC1231aa abstractC1231aa, C2770b c2770b, AbstractC1253j abstractC1253j) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) abstractC1231aa.m43314b("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.f4801c) {
            return;
        }
        savedStateHandleController.m43320a(c2770b, abstractC1253j);
        m43318b(c2770b, abstractC1253j);
    }

    /* renamed from: a */
    private void m43320a(C2770b c2770b, AbstractC1253j abstractC1253j) {
        if (!this.f4801c) {
            this.f4801c = true;
            abstractC1253j.addObserver(this);
            c2770b.m39933a(this.f4800b, this.f4799a.f4855c);
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner");
    }

    /* renamed from: b */
    private static void m43318b(final C2770b c2770b, final AbstractC1253j abstractC1253j) {
        AbstractC1253j.EnumC1256b currentState = abstractC1253j.getCurrentState();
        if (currentState == AbstractC1253j.EnumC1256b.INITIALIZED || currentState.isAtLeast(AbstractC1253j.EnumC1256b.STARTED)) {
            c2770b.m39935a(C1226a.class);
        } else {
            abstractC1253j.addObserver(new AbstractC1261n() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.AbstractC1261n
                /* renamed from: a */
                public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                    if (enumC1255a == AbstractC1253j.EnumC1255a.ON_START) {
                        abstractC1253j.removeObserver(this);
                        c2770b.m39935a(C1226a.class);
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.AbstractC1261n
    /* renamed from: a */
    public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
        if (enumC1255a == AbstractC1253j.EnumC1255a.ON_DESTROY) {
            this.f4801c = false;
            abstractC1263p.getLifecycle().removeObserver(this);
        }
    }
}
