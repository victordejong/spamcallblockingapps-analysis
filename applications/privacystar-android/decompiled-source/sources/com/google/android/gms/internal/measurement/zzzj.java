package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzzj.class */
public final class zzzj {
    private static final int zzcfn = 11;
    private static final int zzcfo = 12;
    private static final int zzcfp = 16;
    private static final int zzcfq = 26;
    public static final int[] zzcax = new int[0];
    public static final long[] zzcfr = new long[0];
    private static final float[] zzcfs = new float[0];
    private static final double[] zzcft = new double[0];
    private static final boolean[] zzcfu = new boolean[0];
    public static final String[] zzcfv = new String[0];
    private static final byte[][] zzcfw = new byte[0];
    public static final byte[] zzcfx = new byte[0];

    public static final int zzb(zzyx zzyxVar, int i) throws IOException {
        int position = zzyxVar.getPosition();
        zzyxVar.zzao(i);
        int i2 = 1;
        while (zzyxVar.zzug() == i) {
            zzyxVar.zzao(i);
            i2++;
        }
        zzyxVar.zzt(position, i);
        return i2;
    }
}
