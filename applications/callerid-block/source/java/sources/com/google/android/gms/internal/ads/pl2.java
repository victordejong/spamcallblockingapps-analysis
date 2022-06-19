package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pl2.class */
public final class pl2 {

    /* renamed from: a */
    private static final int[] f8133a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f8134b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f8135c = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: d */
    public static final /* synthetic */ int f8136d = 0;

    /* renamed from: a */
    public static zzit m6191a(sr2 sr2Var, String str, String str2, zzkq zzkqVar) {
        int i = f8134b[(sr2Var.m5605l() & 192) >> 6];
        int m5605l = sr2Var.m5605l();
        int i2 = f8135c[(m5605l & 56) >> 3];
        int i3 = i2;
        if ((m5605l & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzit.m4487b(str, "audio/ac3", null, -1, -1, i3, i, null, zzkqVar, 0, str2);
    }

    /* renamed from: b */
    public static zzit m6190b(sr2 sr2Var, String str, String str2, zzkq zzkqVar) {
        sr2Var.m5607j(2);
        int i = f8134b[(sr2Var.m5605l() & 192) >> 6];
        int m5605l = sr2Var.m5605l();
        int i2 = f8135c[(m5605l & 14) >> 1];
        int i3 = i2;
        if ((m5605l & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzit.m4487b(str, "audio/eac3", null, -1, -1, i3, i, null, zzkqVar, 0, str2);
    }

    /* renamed from: c */
    public static int m6189c(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f8133a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }
}
