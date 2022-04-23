package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.if  reason: invalid class name */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/if.class */
final class Cif implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentName f29832a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ij f29833b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cif(ij ijVar, ComponentName componentName) {
        this.f29833b = ijVar;
        this.f29832a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ik.a(this.f29833b.f29839b, this.f29832a);
    }
}
