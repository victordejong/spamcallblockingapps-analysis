package com.google.android.gms.dynamic;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/zaa.class */
final class zaa implements OnDelegateCreatedListener<T> {
    private final /* synthetic */ DeferredLifecycleHelper zarj;

    public zaa(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.zarj = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.OnDelegateCreatedListener
    public final void onDelegateCreated(LifecycleDelegate lifecycleDelegate) {
        LinkedList linkedList;
        LinkedList linkedList2;
        LifecycleDelegate lifecycleDelegate2;
        this.zarj.zarf = lifecycleDelegate;
        linkedList = this.zarj.zarh;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            lifecycleDelegate2 = this.zarj.zarf;
            ((DeferredLifecycleHelper.zaa) it.next()).zaa(lifecycleDelegate2);
        }
        linkedList2 = this.zarj.zarh;
        linkedList2.clear();
        this.zarj.zarg = null;
    }
}
