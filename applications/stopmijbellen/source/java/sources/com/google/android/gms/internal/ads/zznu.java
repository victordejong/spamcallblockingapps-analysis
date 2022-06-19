package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznu.class */
public final class zznu extends Handler {
    public final /* synthetic */ zznw zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznu(zznw zznwVar, Looper looper) {
        super(looper);
        this.zza = zznwVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        zznw.zza(this.zza, message);
    }
}
