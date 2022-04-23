package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a.class */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29394a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f29395b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ca f29396c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ca caVar, String str, long j) {
        this.f29396c = caVar;
        this.f29394a = str;
        this.f29395b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ca.a(this.f29396c, this.f29394a, this.f29395b);
    }
}
