package com.android.billingclient.api;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s.class */
public final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f7012a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v f7013b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(v vVar, g gVar) {
        this.f7013b = vVar;
        this.f7012a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        e eVar;
        e eVar2;
        obj = this.f7013b.f7016a;
        synchronized (obj) {
            eVar = this.f7013b.f7018c;
            if (eVar != null) {
                eVar2 = this.f7013b.f7018c;
                eVar2.b(this.f7012a);
            }
        }
    }
}
