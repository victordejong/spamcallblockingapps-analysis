package android.arch.lifecycle;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:android/arch/lifecycle/ViewModelStore.class */
public class ViewModelStore {
    private final HashMap<String, ViewModel> mMap = new HashMap<>();

    public final void clear() {
        for (ViewModel viewModel : this.mMap.values()) {
            viewModel.onCleared();
        }
        this.mMap.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ViewModel get(String str) {
        return this.mMap.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void put(String str, ViewModel viewModel) {
        ViewModel put = this.mMap.put(str, viewModel);
        if (put != null) {
            put.onCleared();
        }
    }
}
