package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eea.class */
public final class eea implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f48832a;

    /* renamed from: b */
    private final /* synthetic */ int f48833b;

    /* renamed from: c */
    private final /* synthetic */ int f48834c;

    /* renamed from: d */
    private final /* synthetic */ float f48835d;

    /* renamed from: e */
    private final /* synthetic */ edt f48836e;

    public eea(edt edtVar, int i, int i2, int i3, float f) {
        this.f48836e = edtVar;
        this.f48832a = i;
        this.f48833b = i2;
        this.f48834c = i3;
        this.f48835d = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f48836e.f48818b.mo15136a(this.f48832a, this.f48833b);
    }
}
