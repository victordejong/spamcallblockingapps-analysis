package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.gn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gn.class */
public final class RunnableC4333gn implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f19005a;

    /* renamed from: b */
    private final /* synthetic */ String f19006b;

    /* renamed from: c */
    private final /* synthetic */ long f19007c;

    /* renamed from: d */
    private final /* synthetic */ Bundle f19008d;

    /* renamed from: e */
    private final /* synthetic */ boolean f19009e;

    /* renamed from: f */
    private final /* synthetic */ boolean f19010f;

    /* renamed from: g */
    private final /* synthetic */ boolean f19011g;

    /* renamed from: h */
    private final /* synthetic */ String f19012h;

    /* renamed from: i */
    private final /* synthetic */ C4330gk f19013i;

    public RunnableC4333gn(C4330gk c4330gk, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f19013i = c4330gk;
        this.f19005a = str;
        this.f19006b = str2;
        this.f19007c = j;
        this.f19008d = bundle;
        this.f19009e = z;
        this.f19010f = z2;
        this.f19011g = z3;
        this.f19012h = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19013i.m4407a(this.f19005a, this.f19006b, this.f19007c, this.f19008d, this.f19009e, this.f19010f, this.f19011g, this.f19012h);
    }
}
