package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyw.class */
final class dyw implements dyu {

    /* renamed from: a  reason: collision with root package name */
    private final int f27429a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27430b;

    /* renamed from: c  reason: collision with root package name */
    private final ecy f27431c;

    public dyw(dyt dytVar) {
        ecy ecyVar = dytVar.f27424a;
        this.f27431c = ecyVar;
        ecyVar.c(12);
        this.f27429a = ecyVar.i();
        this.f27430b = ecyVar.i();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    public final int a() {
        return this.f27430b;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    public final int b() {
        int i = this.f27429a;
        int i2 = i;
        if (i == 0) {
            i2 = this.f27431c.i();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    public final boolean c() {
        return this.f27429a != 0;
    }
}
