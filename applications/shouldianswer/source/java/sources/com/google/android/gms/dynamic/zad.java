package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/zad.class */
final class zad implements DeferredLifecycleHelper.zaa {
    private final /* synthetic */ ViewGroup val$container;
    private final /* synthetic */ DeferredLifecycleHelper zarj;
    private final /* synthetic */ Bundle zarl;
    private final /* synthetic */ FrameLayout zarm;
    private final /* synthetic */ LayoutInflater zarn;

    public zad(DeferredLifecycleHelper deferredLifecycleHelper, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.zarj = deferredLifecycleHelper;
        this.zarm = frameLayout;
        this.zarn = layoutInflater;
        this.val$container = viewGroup;
        this.zarl = bundle;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final int getState() {
        return 2;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final void zaa(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        this.zarm.removeAllViews();
        FrameLayout frameLayout = this.zarm;
        lifecycleDelegate2 = this.zarj.zarf;
        frameLayout.addView(lifecycleDelegate2.onCreateView(this.zarn, this.val$container, this.zarl));
    }
}
