package com.android.billingclient.api;

import android.os.Bundle;
import java.util.Arrays;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ar.class */
final class ar implements Callable<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f6968a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ k f6969b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d f6970c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(d dVar, f fVar, k kVar) {
        this.f6970c = dVar;
        this.f6968a = fVar;
        this.f6969b = kVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f6970c.f6977d.a(this.f6970c.f6976c.getPackageName(), Arrays.asList(this.f6968a.f6980c), this.f6969b.a());
    }
}
