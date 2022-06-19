package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.ux */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ux.class */
public final class HandlerC3559ux extends cnz {
    public HandlerC3559ux(Looper looper) {
        super(looper);
    }

    @Override // com.google.android.gms.internal.ads.cnz
    /* renamed from: a */
    public final void mo7050a(Message message) {
        try {
            super.mo7050a(message);
        } catch (Throwable th) {
            C2341q.m14744c();
            C3567ve.m7000a(C2341q.m14740g().m7083i(), th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            C2341q.m14740g().m7095a(e, "AdMobHandler.handleMessage");
        }
    }
}
