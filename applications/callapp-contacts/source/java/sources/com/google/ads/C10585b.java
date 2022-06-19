package com.google.ads;

import com.explorestack.iab.vast.VastError;
import com.google.android.gms.ads.AdSize;
@Deprecated
/* renamed from: com.google.ads.b */
/* loaded from: classes3-dex2jar.jar:com/google/ads/b.class */
public final class C10585b {

    /* renamed from: b */
    public static final C10585b f34336b = new C10585b(-1, -2, "mb");

    /* renamed from: c */
    public static final C10585b f34337c = new C10585b(320, 50, "mb");

    /* renamed from: d */
    public static final C10585b f34338d = new C10585b(VastError.ERROR_CODE_GENERAL_WRAPPER, 250, "as");

    /* renamed from: e */
    public static final C10585b f34339e = new C10585b(468, 60, "as");

    /* renamed from: f */
    public static final C10585b f34340f = new C10585b(728, 90, "as");

    /* renamed from: g */
    public static final C10585b f34341g = new C10585b(160, 600, "as");

    /* renamed from: a */
    public final AdSize f34342a;

    public C10585b(int i, int i2) {
        this(new AdSize(i, i2));
    }

    private C10585b(int i, int i2, String str) {
        this(new AdSize(i, i2));
    }

    public C10585b(AdSize adSize) {
        this.f34342a = adSize;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C10585b)) {
            return false;
        }
        return this.f34342a.equals(((C10585b) obj).f34342a);
    }

    public final int hashCode() {
        return this.f34342a.hashCode();
    }

    public final String toString() {
        return this.f34342a.toString();
    }
}
