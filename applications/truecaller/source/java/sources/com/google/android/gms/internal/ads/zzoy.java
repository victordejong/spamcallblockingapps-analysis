package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoy.class */
public final class zzoy {
    private final byte[] zza;
    private final int zzb;
    private int zzc;
    private int zzd;

    public zzoy(byte[] bArr) {
        this.zza = bArr;
        this.zzb = bArr.length;
    }

    public final boolean zza() {
        byte b = this.zza[this.zzc];
        int i = this.zzd;
        zzc(1);
        return 1 == (((b & 255) >> i) & 1);
    }

    public final int zzb(int i) {
        int i2 = this.zzc;
        int min = Math.min(i, 8 - this.zzd);
        int i3 = i2 + 1;
        int i4 = ((this.zza[i2] & 255) >> this.zzd) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.zza[i3] & 255) << min;
            min += 8;
            i3++;
        }
        zzc(i);
        return ((-1) >>> (32 - i)) & i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
        if (r5 == 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(int r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = 8
            int r0 = r0 / r1
            r6 = r0
            r0 = r4
            int r0 = r0.zzc
            r1 = r6
            int r0 = r0 + r1
            r7 = r0
            r0 = r4
            r1 = r7
            r0.zzc = r1
            r0 = r5
            r1 = r6
            r2 = 8
            int r1 = r1 * r2
            int r0 = r0 - r1
            r1 = r4
            int r1 = r1.zzd
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.zzd = r1
            r0 = r7
            r6 = r0
            r0 = r8
            r5 = r0
            r0 = r8
            r1 = 7
            if (r0 <= r1) goto L44
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r4
            r1 = r6
            r0.zzc = r1
            r0 = r8
            r1 = 8
            int r0 = r0 - r1
            r5 = r0
            r0 = r4
            r1 = r5
            r0.zzd = r1
        L44:
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r6
            if (r0 < 0) goto L6d
            r0 = r4
            int r0 = r0.zzb
            r7 = r0
            r0 = r6
            r1 = r7
            if (r0 < r1) goto L6a
            r0 = r9
            r10 = r0
            r0 = r6
            r1 = r7
            if (r0 != r1) goto L6d
            r0 = r9
            r10 = r0
            r0 = r5
            if (r0 != 0) goto L6d
        L6a:
            r0 = 1
            r10 = r0
        L6d:
            r0 = r10
            com.google.android.gms.internal.ads.zzakt.zzd(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoy.zzc(int):void");
    }

    public final int zzd() {
        return (this.zzc * 8) + this.zzd;
    }
}
