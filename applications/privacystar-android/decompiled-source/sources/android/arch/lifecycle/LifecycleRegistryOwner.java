package android.arch.lifecycle;

import android.support.annotation.NonNull;
@Deprecated
/* loaded from: classes-dex2jar.jar:android/arch/lifecycle/LifecycleRegistryOwner.class */
public interface LifecycleRegistryOwner extends LifecycleOwner {
    @Override // android.arch.lifecycle.LifecycleOwner
    @NonNull
    LifecycleRegistry getLifecycle();
}
