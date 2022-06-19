package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoy.class */
public final class zzaoy extends Handler {
    public final /* synthetic */ zzaoz zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaoy(zzaoz zzaozVar, Looper looper) {
        super(looper);
        this.zza = zzaozVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zza.zzs(message);
    }
}
