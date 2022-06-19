package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.aq */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/aq.class */
final class CallableC3332aq implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ int f12561a;

    /* renamed from: b */
    final /* synthetic */ C3347k f12562b;

    /* renamed from: c */
    final /* synthetic */ String f12563c;

    /* renamed from: d */
    final /* synthetic */ C3339f f12564d;

    /* renamed from: e */
    final /* synthetic */ Bundle f12565e;

    /* renamed from: f */
    final /* synthetic */ C3337d f12566f;

    public CallableC3332aq(C3337d c3337d, int i, C3347k c3347k, String str, C3339f c3339f, Bundle bundle) {
        this.f12566f = c3337d;
        this.f12561a = i;
        this.f12562b = c3347k;
        this.f12563c = str;
        this.f12564d = c3339f;
        this.f12565e = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f12566f.f12576d.mo13366a(this.f12561a, this.f12566f.f12575c.getPackageName(), this.f12562b.m38184a(), this.f12563c, this.f12565e);
    }
}
