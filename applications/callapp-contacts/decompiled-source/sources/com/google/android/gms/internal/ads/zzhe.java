package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzhe.class */
public final class zzhe extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final int f28631a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28632b;

    private zzhe(int i, String str, Throwable th, int i2) {
        super(null, th);
        this.f28631a = i;
        this.f28632b = i2;
    }

    public static zzhe a(IOException iOException) {
        return new zzhe(0, null, iOException, -1);
    }

    public static zzhe a(Exception exc, int i) {
        return new zzhe(1, null, exc, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhe a(RuntimeException runtimeException) {
        return new zzhe(2, null, runtimeException, -1);
    }
}
