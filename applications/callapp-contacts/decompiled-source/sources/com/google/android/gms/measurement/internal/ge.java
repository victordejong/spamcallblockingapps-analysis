package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ge.class */
public final class ge implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f29684a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29685b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ge(gv gvVar, long j) {
        this.f29685b = gvVar;
        this.f29684a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29685b.a(this.f29684a, true);
        this.f29685b.t.m().a(new AtomicReference<>());
    }
}
