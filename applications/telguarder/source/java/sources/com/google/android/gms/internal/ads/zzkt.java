package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkt.class */
final class zzkt {
    private static final long[] zzass = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private int state;
    private final byte[] zzapa = new byte[8];

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    public static long zza(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (zzass[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    public static int zzao(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = zzass;
            if (i3 >= jArr.length) {
                i2 = -1;
                break;
            } else if ((jArr[i3] & i) != 0) {
                i2 = i3 + 1;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    public final void reset() {
        this.state = 0;
        this.length = 0;
    }

    public final long zza(zzjz zzjzVar, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.state == 0) {
            if (!zzjzVar.zza(this.zzapa, 0, 1, z)) {
                return -1L;
            }
            int zzao = zzao(this.zzapa[0] & 255);
            this.length = zzao;
            if (zzao == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        int i2 = this.length;
        if (i2 > i) {
            this.state = 0;
            return -2L;
        }
        if (i2 != 1) {
            zzjzVar.readFully(this.zzapa, 1, i2 - 1);
        }
        this.state = 0;
        return zza(this.zzapa, this.length, z2);
    }

    public final int zzgw() {
        return this.length;
    }
}
