package androidx.savedstate;

import androidx.annotation.NonNull;
import androidx.lifecycle.LifecycleOwner;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistryOwner.class */
public interface SavedStateRegistryOwner extends LifecycleOwner {
    @NonNull
    SavedStateRegistry getSavedStateRegistry();
}
