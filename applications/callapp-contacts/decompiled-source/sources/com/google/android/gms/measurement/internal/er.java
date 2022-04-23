package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/er.class */
public final class er implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ fv f29581a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ es f29582b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public er(es esVar, fv fvVar) {
        this.f29582b = esVar;
        this.f29581a = fvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        es.a(this.f29582b, this.f29581a);
        this.f29582b.a(this.f29581a.g);
    }
}
