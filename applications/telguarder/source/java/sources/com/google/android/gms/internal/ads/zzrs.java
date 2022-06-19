package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrs.class */
public final class zzrs {
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;
    private final int zzbtz;

    public zzrs(float f, float f2, float f3, float f4, int i) {
        this.left = f;
        this.top = f2;
        this.right = f + f3;
        this.bottom = f2 + f4;
        this.zzbtz = i;
    }

    public final float zzmn() {
        return this.left;
    }

    public final float zzmo() {
        return this.top;
    }

    public final float zzmp() {
        return this.right;
    }

    public final float zzmq() {
        return this.bottom;
    }

    public final int zzmr() {
        return this.zzbtz;
    }
}
