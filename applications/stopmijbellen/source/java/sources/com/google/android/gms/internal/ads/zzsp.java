package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsp.class */
public final class zzsp extends zzst {
    public static final /* synthetic */ int zza = 0;
    private static final zzfuf<Integer> zzb = zzfuf.zzb(zzsc.zza);
    private static final zzfuf<Integer> zzc = zzfuf.zzb(zzsd.zza);
    private final AtomicReference<zzsi> zzd;
    private final zzry zze;

    @Deprecated
    public zzsp() {
        zzsi zzsiVar = zzsi.zzB;
        throw null;
    }

    public zzsp(Context context) {
        zzry zzryVar = new zzry();
        zzsi zzc2 = zzsi.zzc(context);
        this.zze = zzryVar;
        this.zzd = new AtomicReference<>(zzc2);
    }

    public static int zza(zzab zzabVar, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(zzabVar.zzd)) {
            String zzf = zzf(str);
            String zzf2 = zzf(zzabVar.zzd);
            if (zzf2 == null || zzf == null) {
                return (!z || zzf2 != null) ? 0 : 1;
            } else if (zzf2.startsWith(zzf) || zzf.startsWith(zzf2)) {
                return 3;
            } else {
                return zzfn.zzad(zzf2, "-")[0].equals(zzfn.zzad(zzf, "-")[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    public static String zzf(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    public static boolean zzh(int i, boolean z) {
        int i2 = i & 7;
        boolean z2 = false;
        if (i2 != 4) {
            if (z) {
                if (i2 != 3) {
                    return false;
                }
            }
            return z2;
        }
        z2 = true;
        return z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01cd  */
    @Override // com.google.android.gms.internal.ads.zzst
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.ads.zzin[], com.google.android.gms.internal.ads.zzsb[]> zzb(com.google.android.gms.internal.ads.zzss r9, int[][][] r10, int[] r11, com.google.android.gms.internal.ads.zzpz r12, com.google.android.gms.internal.ads.zzcd r13) throws com.google.android.gms.internal.ads.zzgg {
        /*
            Method dump skipped, instructions count: 2601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsp.zzb(com.google.android.gms.internal.ads.zzss, int[][][], int[], com.google.android.gms.internal.ads.zzpz, com.google.android.gms.internal.ads.zzcd):android.util.Pair");
    }

    public final zzsi zzc() {
        return this.zzd.get();
    }

    public final void zzg(zzsk zzskVar) {
        zzsi zzsiVar = new zzsi(zzskVar);
        if (!this.zzd.getAndSet(zzsiVar).equals(zzsiVar)) {
            zzm();
        }
    }
}
