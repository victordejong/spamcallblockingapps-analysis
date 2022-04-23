package com.google.android.gms.ads.internal.util;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzap.class */
public final class zzap extends Exception {
    private final int errorCode;

    public zzap(String str, int i) {
        super(str);
        this.errorCode = i;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
