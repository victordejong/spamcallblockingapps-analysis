package com.google.android.gms.wearable;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.WearableListenerService;
/* renamed from: com.google.android.gms.wearable.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/z.class */
final class RunnableC14375z implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ DataHolder f52346a;

    /* renamed from: b */
    private final /* synthetic */ WearableListenerService.BinderC14208d f52347b;

    public RunnableC14375z(WearableListenerService.BinderC14208d binderC14208d, DataHolder dataHolder) {
        this.f52347b = binderC14208d;
        this.f52346a = dataHolder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        new C14229h(this.f52346a).mo11351a();
    }
}
