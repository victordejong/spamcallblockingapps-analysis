package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.f.a;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/al.class */
public final class al implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f6953a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f6954b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d f6955c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(d dVar, a aVar, b bVar) {
        this.f6955c = dVar;
        this.f6953a = aVar;
        this.f6954b = bVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        try {
            Bundle c2 = this.f6955c.f6977d.c(this.f6955c.f6976c.getPackageName(), this.f6953a.f6938a, a.b(this.f6955c.f6975b));
            d.a(this.f6955c, new ak(this, a.a(c2, "BillingClient"), a.b(c2, "BillingClient")));
            return null;
        } catch (Exception e) {
            d.a(this.f6955c, new aj(this, e));
            return null;
        }
    }
}
