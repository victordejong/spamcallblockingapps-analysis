package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import e.c.a.a.a.e.a;
/* renamed from: com.android.billingclient.api.h0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h0.class */
final class C0638h0 extends BroadcastReceiver {

    /* renamed from: a */
    private final AbstractC0643k f3206a;

    /* renamed from: b */
    private boolean f3207b;

    /* renamed from: c */
    final /* synthetic */ C0640i0 f3208c;

    public /* synthetic */ C0638h0(C0640i0 c0640i0, AbstractC0643k abstractC0643k, C0635g0 c0635g0) {
        this.f3208c = c0640i0;
        this.f3206a = abstractC0643k;
    }

    /* renamed from: a */
    public final void m11476a(Context context, IntentFilter intentFilter) {
        C0638h0 c0638h0;
        if (!this.f3207b) {
            c0638h0 = this.f3208c.f3210b;
            context.registerReceiver(c0638h0, intentFilter);
            this.f3207b = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f3206a.m11469a(a.c(intent, "BillingBroadcastManager"), a.f(intent.getExtras()));
    }
}
