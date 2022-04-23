package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gi.class */
public final class gi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29692a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29693b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29694c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ gv f29695d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gi(gv gvVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f29695d = gvVar;
        this.f29692a = atomicReference;
        this.f29693b = str2;
        this.f29694c = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29695d.t.m().a(this.f29692a, this.f29693b, this.f29694c);
    }
}
