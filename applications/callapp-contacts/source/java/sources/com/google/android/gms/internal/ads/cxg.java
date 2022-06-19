package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxg.class */
public class cxg extends Handler {
    private static cxj zzhyh;

    public cxg() {
    }

    public cxg(Looper looper) {
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
