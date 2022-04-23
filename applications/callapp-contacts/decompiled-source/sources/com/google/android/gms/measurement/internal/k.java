package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k.class */
public final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ fo f29927a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ l f29928b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(l lVar, fo foVar) {
        this.f29928b = lVar;
        this.f29927a = foVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29927a.W_();
        if (kk.a()) {
            this.f29927a.d().a(this);
            return;
        }
        boolean b2 = this.f29928b.b();
        this.f29928b.f29954d = 0L;
        if (b2) {
            this.f29928b.a();
        }
    }
}
