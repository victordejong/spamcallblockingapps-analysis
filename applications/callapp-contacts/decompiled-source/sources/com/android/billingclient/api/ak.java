package com.android.billingclient.api;

import com.android.billingclient.api.g;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ak.class */
final class ak implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f6950a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f6951b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ al f6952c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(al alVar, int i, String str) {
        this.f6952c = alVar;
        this.f6950a = i;
        this.f6951b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar = this.f6952c.f6954b;
        g.a a2 = g.a();
        a2.f6988a = this.f6950a;
        a2.f6989b = this.f6951b;
        bVar.a(a2.a());
    }
}
