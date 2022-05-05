package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzho.class */
public final class zzho implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9433f;

    /* renamed from: g */
    private final /* synthetic */ String f9434g;

    /* renamed from: h */
    private final /* synthetic */ String f9435h;

    /* renamed from: i */
    private final /* synthetic */ String f9436i;

    /* renamed from: j */
    private final /* synthetic */ boolean f9437j;

    /* renamed from: k */
    private final /* synthetic */ zzgy f9438k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzho(zzgy zzgyVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f9438k = zzgyVar;
        this.f9433f = atomicReference;
        this.f9434g = str;
        this.f9435h = str2;
        this.f9436i = str3;
        this.f9437j = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9438k.f9354a.m11372P().m11191S(this.f9433f, this.f9434g, this.f9435h, this.f9436i, this.f9437j);
    }
}
