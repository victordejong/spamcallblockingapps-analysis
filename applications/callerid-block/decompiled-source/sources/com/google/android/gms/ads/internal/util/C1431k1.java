package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: com.google.android.gms.ads.internal.util.k1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/k1.class */
final class C1431k1 extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ C1433l1 f5582a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1431k1(C1433l1 l1Var, f1 f1Var) {
        this.f5582a = l1Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        C1433l1 l1Var;
        boolean z;
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            l1Var = this.f5582a;
            z = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            l1Var = this.f5582a;
            z = false;
        } else {
            return;
        }
        l1Var.f5598c = z;
    }
}
