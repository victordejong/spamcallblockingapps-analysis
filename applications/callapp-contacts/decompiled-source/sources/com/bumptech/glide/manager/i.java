package com.bumptech.glide.manager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/i.class */
final class i implements ComponentCallbacks2, k {
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
