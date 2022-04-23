package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gc.class */
public final class gc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29678a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29679b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Object f29680c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f29681d;
    final /* synthetic */ gv e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gc(gv gvVar, String str, String str2, Object obj, long j) {
        this.e = gvVar;
        this.f29678a = str;
        this.f29679b = str2;
        this.f29680c = obj;
        this.f29681d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.a(this.f29678a, this.f29679b, this.f29680c, this.f29681d);
    }
}
