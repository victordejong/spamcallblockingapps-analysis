package com.bumptech.glide.manager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
/* renamed from: com.bumptech.glide.manager.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/i.class */
final class ComponentCallbacks2C3940i implements ComponentCallbacks2, AbstractC3942k {
    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        onTrimMemory(20);
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }
}
