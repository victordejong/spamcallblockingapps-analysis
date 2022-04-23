package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/aq.class */
final class aq implements Callable<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f6964a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ k f6965b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f6966c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ f f6967d;
    final /* synthetic */ Bundle e;
    final /* synthetic */ d f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(d dVar, int i, k kVar, String str, f fVar, Bundle bundle) {
        this.f = dVar;
        this.f6964a = i;
        this.f6965b = kVar;
        this.f6966c = str;
        this.f6967d = fVar;
        this.e = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f.f6977d.a(this.f6964a, this.f.f6976c.getPackageName(), this.f6965b.a(), this.f6966c, this.e);
    }
}
