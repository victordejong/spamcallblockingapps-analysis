package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.f.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/af.class */
public final class af extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    boolean f6942a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ag f6943b;

    /* renamed from: c  reason: collision with root package name */
    private final j f6944c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ af(ag agVar, j jVar, ae aeVar) {
        this.f6943b = agVar;
        this.f6944c = jVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f6944c.a(a.a(intent, "BillingBroadcastManager"), a.a(intent.getExtras()));
    }
}
