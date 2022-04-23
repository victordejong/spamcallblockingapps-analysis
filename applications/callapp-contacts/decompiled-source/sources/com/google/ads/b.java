package com.google.ads;

import com.explorestack.iab.vast.VastError;
import com.google.android.gms.ads.AdSize;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/ads/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public static final b f20262b = new b(-1, -2, "mb");

    /* renamed from: c  reason: collision with root package name */
    public static final b f20263c = new b(320, 50, "mb");

    /* renamed from: d  reason: collision with root package name */
    public static final b f20264d = new b(VastError.ERROR_CODE_GENERAL_WRAPPER, 250, "as");
    public static final b e = new b(468, 60, "as");
    public static final b f = new b(728, 90, "as");
    public static final b g = new b(160, 600, "as");

    /* renamed from: a  reason: collision with root package name */
    public final AdSize f20265a;

    public b(int i, int i2) {
        this(new AdSize(i, i2));
    }

    private b(int i, int i2, String str) {
        this(new AdSize(i, i2));
    }

    public b(AdSize adSize) {
        this.f20265a = adSize;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f20265a.equals(((b) obj).f20265a);
    }

    public final int hashCode() {
        return this.f20265a.hashCode();
    }

    public final String toString() {
        return this.f20265a.toString();
    }
}
