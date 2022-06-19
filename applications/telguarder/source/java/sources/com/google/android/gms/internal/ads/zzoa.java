package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoa.class */
public final class zzoa extends zzob {
    private static final int[] zzbhk = new int[0];
    private final zzof zzbhl;
    private final AtomicReference<zznz> zzbhm;

    public zzoa() {
        this(null);
    }

    private zzoa(zzof zzofVar) {
        this.zzbhl = null;
        this.zzbhm = new AtomicReference<>(new zznz());
    }

    private static int zze(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        } else if (i2 != -1) {
            return i - i2;
        } else {
            return 1;
        }
    }

    private static boolean zze(int i, boolean z) {
        int i2 = i & 3;
        if (i2 != 3) {
            return z && i2 == 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:263:0x01f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c6  */
    @Override // com.google.android.gms.internal.ads.zzob
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.zzog[] zza(com.google.android.gms.internal.ads.zzib[] r7, com.google.android.gms.internal.ads.zznu[] r8, int[][][] r9) throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 2091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoa.zza(com.google.android.gms.internal.ads.zzib[], com.google.android.gms.internal.ads.zznu[], int[][][]):com.google.android.gms.internal.ads.zzog[]");
    }
}
