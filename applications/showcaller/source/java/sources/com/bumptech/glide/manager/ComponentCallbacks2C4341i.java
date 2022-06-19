package com.bumptech.glide.manager;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
/* renamed from: com.bumptech.glide.manager.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/i.class */
final class ComponentCallbacks2C4341i implements AbstractC4343k, ComponentCallbacks2 {
    @Override // com.bumptech.glide.manager.AbstractC4343k
    /* renamed from: a */
    public void mo22826a(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        onTrimMemory(20);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
    }
}
