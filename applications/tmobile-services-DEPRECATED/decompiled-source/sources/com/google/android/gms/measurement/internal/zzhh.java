package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhh.class */
public final class zzhh implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f9411f;

    /* renamed from: g */
    private final /* synthetic */ String f9412g;

    /* renamed from: h */
    private final /* synthetic */ long f9413h;

    /* renamed from: i */
    private final /* synthetic */ Bundle f9414i;

    /* renamed from: j */
    private final /* synthetic */ boolean f9415j;

    /* renamed from: k */
    private final /* synthetic */ boolean f9416k;

    /* renamed from: l */
    private final /* synthetic */ boolean f9417l;

    /* renamed from: m */
    private final /* synthetic */ String f9418m;

    /* renamed from: n */
    private final /* synthetic */ zzgy f9419n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhh(zzgy zzgyVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f9419n = zzgyVar;
        this.f9411f = str;
        this.f9412g = str2;
        this.f9413h = j;
        this.f9414i = bundle;
        this.f9415j = z;
        this.f9416k = z2;
        this.f9417l = z3;
        this.f9418m = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9419n.m11275V(this.f9411f, this.f9412g, this.f9413h, this.f9414i, this.f9415j, this.f9416k, this.f9417l, this.f9418m);
    }
}
