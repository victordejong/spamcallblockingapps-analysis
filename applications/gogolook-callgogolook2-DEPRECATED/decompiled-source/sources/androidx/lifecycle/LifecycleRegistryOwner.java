package androidx.lifecycle;

import androidx.annotation.NonNull;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistryOwner.class */
public interface LifecycleRegistryOwner extends LifecycleOwner {
    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    LifecycleRegistry getLifecycle();
}
