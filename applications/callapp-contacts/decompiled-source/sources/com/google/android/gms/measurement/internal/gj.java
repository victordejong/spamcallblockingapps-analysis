package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gj.class */
public final class gj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29696a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29697b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29698c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f29699d;
    final /* synthetic */ gv e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gj(gv gvVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.e = gvVar;
        this.f29696a = atomicReference;
        this.f29697b = str2;
        this.f29698c = str3;
        this.f29699d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.t.m().a(this.f29696a, this.f29697b, this.f29698c, this.f29699d);
    }
}
