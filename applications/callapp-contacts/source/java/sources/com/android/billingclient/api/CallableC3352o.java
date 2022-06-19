package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.o */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o.class */
final class CallableC3352o implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ C3347k f12624a;

    /* renamed from: b */
    final /* synthetic */ String f12625b;

    /* renamed from: c */
    final /* synthetic */ C3337d f12626c;

    public CallableC3352o(C3337d c3337d, C3347k c3347k, String str) {
        this.f12626c = c3337d;
        this.f12624a = c3347k;
        this.f12625b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f12626c.f12576d.mo13363a(this.f12626c.f12575c.getPackageName(), this.f12624a.m38184a(), this.f12625b);
    }
}
