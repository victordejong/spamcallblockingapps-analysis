package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.p360f.C13304a;
/* renamed from: com.android.billingclient.api.af */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/af.class */
final class C3321af extends BroadcastReceiver {

    /* renamed from: a */
    boolean f12539a;

    /* renamed from: b */
    final /* synthetic */ C3322ag f12540b;

    /* renamed from: c */
    private final AbstractC3346j f12541c;

    public /* synthetic */ C3321af(C3322ag c3322ag, AbstractC3346j abstractC3346j, C3320ae c3320ae) {
        this.f12540b = c3322ag;
        this.f12541c = abstractC3346j;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f12541c.mo28296a(C13304a.m13378a(intent, "BillingBroadcastManager"), C13304a.m13377a(intent.getExtras()));
    }
}
