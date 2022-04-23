package com.android.billingclient.api;

import com.google.android.gms.internal.f.a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/aj.class */
final class aj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Exception f6948a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ al f6949b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(al alVar, Exception exc) {
        this.f6949b = alVar;
        this.f6948a = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f6948a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        a.a("BillingClient", sb.toString());
        this.f6949b.f6954b.a(y.q);
    }
}
