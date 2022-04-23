package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o.class */
final class o implements Callable<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f7001a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7002b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d f7003c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(d dVar, k kVar, String str) {
        this.f7003c = dVar;
        this.f7001a = kVar;
        this.f7002b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        return this.f7003c.f6977d.a(this.f7003c.f6976c.getPackageName(), this.f7001a.a(), this.f7002b);
    }
}
