package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.vk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vk.class */
public final class C3573vk extends BroadcastReceiver {

    /* renamed from: a */
    private final /* synthetic */ C3567ve f17510a;

    private C3573vk(C3567ve c3567ve) {
        this.f17510a = c3567ve;
    }

    public /* synthetic */ C3573vk(C3567ve c3567ve, C3569vg c3569vg) {
        this(c3567ve);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.f17510a.f17501d = true;
        } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
        } else {
            this.f17510a.f17501d = false;
        }
    }
}
