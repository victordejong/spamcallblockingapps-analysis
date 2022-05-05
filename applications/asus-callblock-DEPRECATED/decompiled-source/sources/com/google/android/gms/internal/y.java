package com.google.android.gms.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f4228a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    public static final long[] f4229b = new long[0];
    public static final float[] c = new float[0];
    public static final double[] d = new double[0];
    public static final boolean[] e = new boolean[0];
    public static final String[] f = new String[0];
    public static final byte[][] g = new byte[0];
    public static final byte[] h = new byte[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        return i & 7;
    }

    public static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static final int a(n nVar, int i) {
        int i2 = 1;
        int i3 = nVar.i();
        nVar.b(i);
        while (nVar.a() == i) {
            nVar.b(i);
            i2++;
        }
        nVar.e(i3);
        return i2;
    }

    public static int b(int i) {
        return i >>> 3;
    }
}
