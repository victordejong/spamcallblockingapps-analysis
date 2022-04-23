package com.android.billingclient.api;

import java.util.List;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r.class */
public final class r implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7008a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f7009b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ m f7010c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d f7011d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(d dVar, String str, List list, String str2, m mVar) {
        this.f7011d = dVar;
        this.f7008a = str;
        this.f7009b = list;
        this.f7010c = mVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        d.a(this.f7011d, new q(this, this.f7011d.a(this.f7008a, this.f7009b)));
        return null;
    }
}
