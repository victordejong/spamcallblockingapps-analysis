package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afh.class */
public final class afh {

    /* renamed from: a */
    final int f40146a;

    /* renamed from: b */
    public final int f40147b;

    /* renamed from: c */
    public final int f40148c;

    private afh(int i, int i2, int i3) {
        this.f40146a = i;
        this.f40148c = i2;
        this.f40147b = i3;
    }

    /* renamed from: a */
    public static afh m18777a() {
        return new afh(0, 0, 0);
    }

    /* renamed from: a */
    public static afh m18776a(int i, int i2) {
        return new afh(1, i, i2);
    }

    /* renamed from: a */
    public static afh m18775a(zzvt zzvtVar) {
        return zzvtVar.zzcir ? new afh(3, 0, 0) : zzvtVar.zzcit ? new afh(2, 0, 0) : zzvtVar.zzbsb ? m18777a() : m18776a(zzvtVar.widthPixels, zzvtVar.heightPixels);
    }

    /* renamed from: b */
    public static afh m18774b() {
        return new afh(4, 0, 0);
    }

    /* renamed from: c */
    public static afh m18773c() {
        return new afh(5, 0, 0);
    }

    /* renamed from: d */
    public final boolean m18772d() {
        return this.f40146a == 3;
    }
}
