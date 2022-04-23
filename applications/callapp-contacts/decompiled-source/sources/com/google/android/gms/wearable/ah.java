package com.google.android.gms.wearable;

import com.google.android.gms.wearable.WearableListenerService;
import com.google.android.gms.wearable.internal.l;
import com.google.android.gms.wearable.internal.zzaw;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ah.class */
final class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzaw f30077a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ WearableListenerService.d f30078b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(WearableListenerService.d dVar, zzaw zzawVar) {
        this.f30078b = dVar;
        this.f30077a = zzawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l lVar;
        this.f30077a.zza(WearableListenerService.this);
        zzaw zzawVar = this.f30077a;
        lVar = WearableListenerService.this.h;
        zzawVar.zza(lVar);
    }
}
