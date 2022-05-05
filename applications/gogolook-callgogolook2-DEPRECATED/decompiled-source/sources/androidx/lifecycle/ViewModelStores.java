package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelStores.class */
public class ViewModelStores {
    @NonNull
    @Deprecated
    @MainThread
    /* renamed from: of */
    public static ViewModelStore m37501of(@NonNull Fragment fragment) {
        return fragment.getViewModelStore();
    }

    @NonNull
    @Deprecated
    @MainThread
    /* renamed from: of */
    public static ViewModelStore m37500of(@NonNull FragmentActivity fragmentActivity) {
        return fragmentActivity.getViewModelStore();
    }
}
