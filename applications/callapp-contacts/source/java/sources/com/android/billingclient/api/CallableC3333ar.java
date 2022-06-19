package com.android.billingclient.api;

import android.os.Bundle;
import java.util.Arrays;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.ar */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ar.class */
final class CallableC3333ar implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ C3339f f12567a;

    /* renamed from: b */
    final /* synthetic */ C3347k f12568b;

    /* renamed from: c */
    final /* synthetic */ C3337d f12569c;

    public CallableC3333ar(C3337d c3337d, C3339f c3339f, C3347k c3347k) {
        this.f12569c = c3337d;
        this.f12567a = c3339f;
        this.f12568b = c3347k;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f12569c.f12576d.mo13361a(this.f12569c.f12575c.getPackageName(), Arrays.asList(this.f12567a.f12596c), this.f12568b.m38184a());
    }
}
