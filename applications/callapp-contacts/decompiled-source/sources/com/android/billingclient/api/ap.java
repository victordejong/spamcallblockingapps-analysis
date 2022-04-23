package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ap.class */
final class ap implements Callable<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f6961a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Bundle f6962b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d f6963c;

    ap(d dVar, String str, Bundle bundle) {
        this.f6963c = dVar;
        this.f6961a = str;
        this.f6962b = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f6963c.f6977d.b(this.f6963c.f6976c.getPackageName(), this.f6961a, this.f6962b);
    }
}
