package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhn.class */
public final class zzhn extends Handler {
    private final /* synthetic */ zzhk zzagh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhn(zzhk zzhkVar, Looper looper) {
        super(looper);
        this.zzagh = zzhkVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzagh.zza(message);
    }
}
