package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gp.class */
public final class gp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Boolean f29709a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29710b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gp(gv gvVar, Boolean bool) {
        this.f29710b = gvVar;
        this.f29709a = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29710b.a(this.f29709a, true);
    }
}
