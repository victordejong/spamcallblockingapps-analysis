package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.j;
import androidx.savedstate.b;
import androidx.savedstate.d;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController.class */
final class SavedStateHandleController implements n {

    /* renamed from: a  reason: collision with root package name */
    final x f2548a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2549b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2550c = false;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController$a.class */
    static final class a implements b.a {
        a() {
        }

        @Override // androidx.savedstate.b.a
        public final void a(d dVar) {
            if (dVar instanceof ad) {
                ac viewModelStore = ((ad) dVar).getViewModelStore();
                b savedStateRegistry = dVar.getSavedStateRegistry();
                for (String str : viewModelStore.a()) {
                    SavedStateHandleController.a(viewModelStore.a(str), savedStateRegistry, dVar.getLifecycle());
                }
                if (!viewModelStore.a().isEmpty()) {
                    savedStateRegistry.a(a.class);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    SavedStateHandleController(String str, x xVar) {
        this.f2549b = str;
        this.f2548a = xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SavedStateHandleController a(b bVar, j jVar, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, x.a(bVar.a(str), bundle));
        savedStateHandleController.a(bVar, jVar);
        b(bVar, jVar);
        return savedStateHandleController;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(aa aaVar, b bVar, j jVar) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) aaVar.b("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController != null && !savedStateHandleController.f2550c) {
            savedStateHandleController.a(bVar, jVar);
            b(bVar, jVar);
        }
    }

    private void a(b bVar, j jVar) {
        if (!this.f2550c) {
            this.f2550c = true;
            jVar.addObserver(this);
            bVar.a(this.f2549b, this.f2548a.f2596c);
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner");
    }

    private static void b(final b bVar, final j jVar) {
        j.b currentState = jVar.getCurrentState();
        if (currentState == j.b.INITIALIZED || currentState.isAtLeast(j.b.STARTED)) {
            bVar.a(a.class);
        } else {
            jVar.addObserver(new n() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.n
                public final void a(p pVar, j.a aVar) {
                    if (aVar == j.a.ON_START) {
                        j.this.removeObserver(this);
                        bVar.a(a.class);
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.n
    public final void a(p pVar, j.a aVar) {
        if (aVar == j.a.ON_DESTROY) {
            this.f2550c = false;
            pVar.getLifecycle().removeObserver(this);
        }
    }
}
