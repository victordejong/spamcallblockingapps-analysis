package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.util.b2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/b2.class */
public final class C5675b2 extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ C5679c2 f18445a;

    public /* synthetic */ C5675b2(C5679c2 c5679c2, C5671a2 c5671a2) {
        this.f18445a = c5679c2;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.f18445a.f18455e = true;
        } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
        } else {
            this.f18445a.f18455e = false;
        }
    }
}
