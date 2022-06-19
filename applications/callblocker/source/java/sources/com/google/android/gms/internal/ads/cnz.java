package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnz.class */
public class cnz extends Handler {

    /* renamed from: a */
    private static cny f13425a = null;

    public cnz() {
    }

    public cnz(Looper looper) {
        super(looper);
    }

    public cnz(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    /* renamed from: a */
    public void mo7050a(Message message) {
        super.dispatchMessage(message);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        mo7050a(message);
    }
}
