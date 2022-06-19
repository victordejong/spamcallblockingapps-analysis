package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgq.class */
public final class zzgq extends Exception {

    /* renamed from: a */
    private final int f17747a;

    /* renamed from: b */
    private final int f17748b;

    private zzgq(int i, String str, Throwable th, int i2) {
        super(null, th);
        this.f17747a = i;
        this.f17748b = i2;
    }

    /* renamed from: a */
    public static zzgq m6541a(IOException iOException) {
        return new zzgq(0, null, iOException, -1);
    }

    /* renamed from: a */
    public static zzgq m6540a(Exception exc, int i) {
        return new zzgq(1, null, exc, i);
    }

    /* renamed from: a */
    public static zzgq m6539a(RuntimeException runtimeException) {
        return new zzgq(2, null, runtimeException, -1);
    }
}
