package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.ap */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ap.class */
final class CallableC3331ap implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ String f12558a;

    /* renamed from: b */
    final /* synthetic */ Bundle f12559b;

    /* renamed from: c */
    final /* synthetic */ C3337d f12560c;

    CallableC3331ap(C3337d c3337d, String str, Bundle bundle) {
        this.f12560c = c3337d;
        this.f12558a = str;
        this.f12559b = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f12560c.f12576d.mo13360b(this.f12560c.f12575c.getPackageName(), this.f12558a, this.f12559b);
    }
}
