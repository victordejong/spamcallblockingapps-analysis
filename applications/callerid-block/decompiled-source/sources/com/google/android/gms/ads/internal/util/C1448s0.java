package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.util.s0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/s0.class */
public final class C1448s0 extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ C1450t0 f5625a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1448s0(C1450t0 t0Var) {
        this.f5625a = t0Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f5625a.m8720e(context, intent);
    }
}
