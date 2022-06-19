package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/zaa.class */
final class zaa implements OnDelegateCreatedListener {
    public final /* synthetic */ DeferredLifecycleHelper zaa;

    public zaa(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.zaa = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.OnDelegateCreatedListener
    public final void onDelegateCreated(LifecycleDelegate lifecycleDelegate) {
        LinkedList linkedList;
        LinkedList linkedList2;
        LifecycleDelegate lifecycleDelegate2;
        this.zaa.zaa = lifecycleDelegate;
        linkedList = this.zaa.zac;
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            lifecycleDelegate2 = this.zaa.zaa;
            ((zah) it2.next()).zab(lifecycleDelegate2);
        }
        linkedList2 = this.zaa.zac;
        linkedList2.clear();
        this.zaa.zab = null;
    }
}
