package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzhe.class */
public final class zzhe extends Exception {

    /* renamed from: a */
    private final int f50227a;

    /* renamed from: b */
    private final int f50228b;

    private zzhe(int i, String str, Throwable th, int i2) {
        super(null, th);
        this.f50227a = i;
        this.f50228b = i2;
    }

    /* renamed from: a */
    public static zzhe m13626a(IOException iOException) {
        return new zzhe(0, null, iOException, -1);
    }

    /* renamed from: a */
    public static zzhe m13625a(Exception exc, int i) {
        return new zzhe(1, null, exc, i);
    }

    /* renamed from: a */
    public static zzhe m13624a(RuntimeException runtimeException) {
        return new zzhe(2, null, runtimeException, -1);
    }
}
