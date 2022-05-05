package androidx.lifecycle;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.ViewModelProvider;
import androidx.savedstate.SavedStateRegistry;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/AbstractSavedStateViewModelFactory.class */
public abstract class AbstractSavedStateViewModelFactory extends ViewModelProvider.KeyedFactory {

    /* renamed from: a */
    private final SavedStateRegistry f3960a;

    /* renamed from: b */
    private final Lifecycle f3961b;

    /* renamed from: c */
    private final Bundle f3962c;

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory, androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    /* renamed from: a */
    public final <T extends ViewModel> T mo18109a(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) mo18142c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    /* renamed from: b */
    void mo18140b(@NonNull ViewModel viewModel) {
        SavedStateHandleController.m18162h(viewModel, this.f3960a, this.f3961b);
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory
    @NonNull
    @RestrictTo
    /* renamed from: c */
    public final <T extends ViewModel> T mo18142c(@NonNull String str, @NonNull Class<T> cls) {
        SavedStateHandleController j = SavedStateHandleController.m18160j(this.f3960a, this.f3961b, str, this.f3962c);
        T t = (T) m18264d(str, cls, j.m18159k());
        t.m18146e("androidx.lifecycle.savedstate.vm.tag", j);
        return t;
    }

    @NonNull
    /* renamed from: d */
    protected abstract <T extends ViewModel> T m18264d(@NonNull String str, @NonNull Class<T> cls, @NonNull SavedStateHandle savedStateHandle);
}
