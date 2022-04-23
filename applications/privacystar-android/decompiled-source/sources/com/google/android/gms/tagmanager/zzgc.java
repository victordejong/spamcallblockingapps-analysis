package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzgc.class */
public final class zzgc implements ComponentCallbacks2 {
    private final /* synthetic */ TagManager zzbgh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgc(TagManager tagManager) {
        this.zzbgh = tagManager;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i == 20) {
            this.zzbgh.dispatch();
        }
    }
}
