package com.google.android.gms.iid;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.gcm.zzj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzag.class */
public final class zzag extends zzj {
    private final /* synthetic */ zzaf zzdc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzag(zzaf zzafVar, Looper looper) {
        super(looper);
        this.zzdc = zzafVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzdc.zze(message);
    }
}
