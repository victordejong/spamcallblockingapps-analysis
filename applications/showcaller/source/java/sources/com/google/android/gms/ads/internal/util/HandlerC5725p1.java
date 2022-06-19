package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.au2;
/* renamed from: com.google.android.gms.ads.internal.util.p1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/p1.class */
public final class HandlerC5725p1 extends au2 {
    public HandlerC5725p1(Looper looper) {
        super(looper);
    }

    @Override // com.google.android.gms.internal.ads.au2
    /* renamed from: a */
    public final void mo16483a(Message message) {
        try {
            super.mo16483a(message);
        } catch (Throwable th) {
            C5667s.m18160d();
            C5679c2.m18060o(C5667s.m18156h().m12229q(), th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            C5667s.m18156h().m12235k(e, "AdMobHandler.handleMessage");
        }
    }
}
