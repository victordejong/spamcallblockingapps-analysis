package com.android.billingclient.api;

import com.android.billingclient.api.i;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p.class */
final class p implements Callable<i.a> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7004a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f7005b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(d dVar, String str) {
        this.f7005b = dVar;
        this.f7004a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ i.a call() throws Exception {
        return d.a(this.f7005b, this.f7004a);
    }
}
