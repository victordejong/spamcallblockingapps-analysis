package com.google.android.gms.wearable;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.WearableListenerService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/z.class */
final class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ DataHolder f30171a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ WearableListenerService.d f30172b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(WearableListenerService.d dVar, DataHolder dataHolder) {
        this.f30172b = dVar;
        this.f30171a = dataHolder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        new h(this.f30171a).a();
    }
}
