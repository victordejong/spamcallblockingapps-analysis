package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gb.class */
public final class gb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29674a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29675b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f29676c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f29677d;
    final /* synthetic */ boolean e;
    final /* synthetic */ boolean f;
    final /* synthetic */ boolean g;
    final /* synthetic */ String h;
    final /* synthetic */ gv i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(gv gvVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.i = gvVar;
        this.f29674a = str;
        this.f29675b = str2;
        this.f29676c = j;
        this.f29677d = bundle;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.i.a(this.f29674a, this.f29675b, this.f29676c, this.f29677d, this.e, this.f, this.g, this.h);
    }
}
