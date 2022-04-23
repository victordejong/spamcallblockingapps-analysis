package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afh.class */
public final class afh {

    /* renamed from: a  reason: collision with root package name */
    final int f23216a;

    /* renamed from: b  reason: collision with root package name */
    public final int f23217b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23218c;

    private afh(int i, int i2, int i3) {
        this.f23216a = i;
        this.f23218c = i2;
        this.f23217b = i3;
    }

    public static afh a() {
        return new afh(0, 0, 0);
    }

    public static afh a(int i, int i2) {
        return new afh(1, i, i2);
    }

    public static afh a(zzvt zzvtVar) {
        return zzvtVar.zzcir ? new afh(3, 0, 0) : zzvtVar.zzcit ? new afh(2, 0, 0) : zzvtVar.zzbsb ? a() : a(zzvtVar.widthPixels, zzvtVar.heightPixels);
    }

    public static afh b() {
        return new afh(4, 0, 0);
    }

    public static afh c() {
        return new afh(5, 0, 0);
    }

    public final boolean d() {
        return this.f23216a == 3;
    }
}
