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

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C0638h0(C0640i0 i0Var, AbstractC0643k kVar, C0635g0 g0Var) {
        this.f3208c = i0Var;
        this.f3206a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ AbstractC0643k m11475b(C0638h0 h0Var) {
        return h0Var.f3206a;
    }

    /* renamed from: a */
    public final void m11476a(Context context, IntentFilter intentFilter) {
        C0638h0 h0Var;
        if (!this.f3207b) {
            h0Var = this.f3208c.f3210b;
            context.registerReceiver(h0Var, intentFilter);
            this.f3207b = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f3206a.m11469a(a.c(intent, "BillingBroadcastManager"), a.f(intent.getExtras()));
    }
}
