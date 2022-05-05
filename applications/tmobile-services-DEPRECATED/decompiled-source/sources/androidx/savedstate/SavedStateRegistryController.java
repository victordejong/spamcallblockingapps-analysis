package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistryController.class */
public final class SavedStateRegistryController {

    /* renamed from: a */
    private final SavedStateRegistryOwner f4934a;

    /* renamed from: b */
    private final SavedStateRegistry f4935b = new SavedStateRegistry();

    private SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.f4934a = savedStateRegistryOwner;
    }

    @NonNull
    /* renamed from: a */
    public static SavedStateRegistryController m17008a(@NonNull SavedStateRegistryOwner savedStateRegistryOwner) {
        return new SavedStateRegistryController(savedStateRegistryOwner);
    }

    @NonNull
    /* renamed from: b */
    public SavedStateRegistry m17007b() {
        return this.f4935b;
    }

    @MainThread
    /* renamed from: c */
    public void m17006c(@Nullable Bundle bundle) {
        Lifecycle lifecycle = this.f4934a.getLifecycle();
        if (lifecycle.mo18230b() == Lifecycle.State.INITIALIZED) {
            lifecycle.mo18231a(new Recreator(this.f4934a));
            this.f4935b.m17014b(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    @MainThread
    /* renamed from: d */
    public void m17005d(@NonNull Bundle bundle) {
        this.f4935b.m17013c(bundle);
    }
}
