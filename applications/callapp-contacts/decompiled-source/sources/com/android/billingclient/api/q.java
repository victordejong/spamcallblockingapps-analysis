package com.android.billingclient.api;

import com.android.billingclient.api.g;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/q.class */
final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ z f7006a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r f7007b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(r rVar, z zVar) {
        this.f7007b = rVar;
        this.f7006a = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar = this.f7007b.f7010c;
        g.a a2 = g.a();
        a2.f6988a = this.f7006a.f7025b;
        a2.f6989b = this.f7006a.f7026c;
        mVar.b(a2.a(), this.f7006a.f7024a);
    }
}
