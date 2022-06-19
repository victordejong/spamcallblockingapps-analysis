package com.google.android.gms.dynamic;

import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/zac.class */
final class zac implements DeferredLifecycleHelper.zaa {
    private final /* synthetic */ DeferredLifecycleHelper zarj;
    private final /* synthetic */ Bundle zarl;

    public zac(DeferredLifecycleHelper deferredLifecycleHelper, Bundle bundle) {
        this.zarj = deferredLifecycleHelper;
        this.zarl = bundle;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final int getState() {
        return 1;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final void zaa(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.zarj.zarf;
        lifecycleDelegate2.onCreate(this.zarl);
    }
}
