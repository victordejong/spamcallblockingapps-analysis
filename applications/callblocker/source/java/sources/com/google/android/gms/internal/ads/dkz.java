package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkz.class */
public final class dkz extends cnz {

    /* renamed from: a */
    private final /* synthetic */ dkw f14601a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dkz(dkw dkwVar, Looper looper) {
        super(looper);
        this.f14601a = dkwVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f14601a.m9294a(message);
    }
}
