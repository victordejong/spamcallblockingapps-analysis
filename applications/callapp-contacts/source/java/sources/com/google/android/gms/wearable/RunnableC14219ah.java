package com.google.android.gms.wearable;

import com.google.android.gms.wearable.WearableListenerService;
import com.google.android.gms.wearable.internal.C14339l;
import com.google.android.gms.wearable.internal.zzaw;
/* renamed from: com.google.android.gms.wearable.ah */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ah.class */
final class RunnableC14219ah implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzaw f52213a;

    /* renamed from: b */
    private final /* synthetic */ WearableListenerService.BinderC14208d f52214b;

    public RunnableC14219ah(WearableListenerService.BinderC14208d binderC14208d, zzaw zzawVar) {
        this.f52214b = binderC14208d;
        this.f52213a = zzawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14339l c14339l;
        this.f52213a.zza(WearableListenerService.this);
        zzaw zzawVar = this.f52213a;
        c14339l = WearableListenerService.this.f52192h;
        zzawVar.zza(c14339l);
    }
}
