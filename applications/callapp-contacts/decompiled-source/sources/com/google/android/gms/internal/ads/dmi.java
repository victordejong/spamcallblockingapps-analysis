package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmi.class */
public abstract class dmi {

    /* renamed from: a  reason: collision with root package name */
    int f26956a;

    /* renamed from: b  reason: collision with root package name */
    int f26957b;

    /* renamed from: c  reason: collision with root package name */
    int f26958c;

    /* renamed from: d  reason: collision with root package name */
    dmp f26959d;
    private boolean e;

    private dmi() {
        this.f26957b = 100;
        this.f26958c = Integer.MAX_VALUE;
        this.e = false;
    }

    public static long a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dmi a(byte[] bArr, int i, int i2, boolean z) {
        dmk dmkVar = new dmk(bArr, i, i2, z);
        try {
            dmkVar.c(i2);
            return dmkVar;
        } catch (zzenn e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract int a() throws IOException;

    public abstract void a(int i) throws zzenn;

    public abstract double b() throws IOException;

    public abstract boolean b(int i) throws IOException;

    public abstract float c() throws IOException;

    public abstract int c(int i) throws zzenn;

    public abstract long d() throws IOException;

    public abstract void d(int i);

    public abstract long e() throws IOException;

    public abstract int f() throws IOException;

    public abstract long g() throws IOException;

    public abstract int h() throws IOException;

    public abstract boolean i() throws IOException;

    public abstract String j() throws IOException;

    public abstract String k() throws IOException;

    public abstract dlw l() throws IOException;

    public abstract int m() throws IOException;

    public abstract int n() throws IOException;

    public abstract int o() throws IOException;

    public abstract long p() throws IOException;

    public abstract int q() throws IOException;

    public abstract long r() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long s() throws IOException;

    public abstract boolean t() throws IOException;

    public abstract int u();
}
