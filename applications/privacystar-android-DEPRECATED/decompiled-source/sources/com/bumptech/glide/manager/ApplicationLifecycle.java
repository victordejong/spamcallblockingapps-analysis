package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/ApplicationLifecycle.class */
class ApplicationLifecycle implements Lifecycle {
    @Override // com.bumptech.glide.manager.Lifecycle
    public void addListener(@NonNull LifecycleListener lifecycleListener) {
        lifecycleListener.onStart();
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void removeListener(@NonNull LifecycleListener lifecycleListener) {
    }
}
