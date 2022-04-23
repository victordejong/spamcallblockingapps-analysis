package com.android.billingclient.api;

import com.android.billingclient.api.C0633g;
/* renamed from: com.android.billingclient.api.o0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o0.class */
final class RunnableC0653o0 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f3226b;

    /* renamed from: c */
    final /* synthetic */ String f3227c;

    /* renamed from: d */
    final /* synthetic */ CallableC0655p0 f3228d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0653o0(CallableC0655p0 p0Var, int i, String str) {
        this.f3228d = p0Var;
        this.f3226b = i;
        this.f3227c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0622b bVar = this.f3228d.f3232b;
        C0633g.C0634a c = C0633g.m11487c();
        c.m11482c(this.f3226b);
        c.m11483b(this.f3227c);
        bVar.m11528a(c.m11484a());
    }
}
