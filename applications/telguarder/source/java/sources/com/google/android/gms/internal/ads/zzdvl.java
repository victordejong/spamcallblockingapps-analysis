package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvl.class */
public class zzdvl extends Handler {
    private static zzdvo zzhvf;

    public zzdvl() {
    }

    public zzdvl(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        zzb(message);
    }

    public void zzb(Message message) {
        super.dispatchMessage(message);
    }
}
