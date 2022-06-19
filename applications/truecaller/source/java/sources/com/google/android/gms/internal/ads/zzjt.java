package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjt.class */
public final class zzjt extends zzjx {
    public static final /* synthetic */ int zza = 0;
    private static final zzfpw<Integer> zzb = zzfpw.zzc(zzjh.zza);
    private static final zzfpw<Integer> zzc = zzfpw.zzc(zzji.zza);
    private final AtomicReference<zzjn> zzd;
    private final zzjd zze;

    @Deprecated
    public zzjt() {
        zzjn zzjnVar = zzjn.zzA;
        throw null;
    }

    public zzjt(Context context) {
        zzjd zzjdVar = new zzjd();
        zzjn zzc2 = zzjn.zzc(context);
        this.zze = zzjdVar;
        this.zzd = new AtomicReference<>(zzc2);
    }

    public static boolean zzf(int i, boolean z) {
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

    public static String zzg(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    public static int zzh(zzafv zzafvVar, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(zzafvVar.zzc)) {
            String zzg = zzg(str);
            String zzg2 = zzg(zzafvVar.zzc);
            if (zzg2 == null || zzg == null) {
                return (!z || zzg2 != null) ? 0 : 1;
            } else if (zzg2.startsWith(zzg) || zzg.startsWith(zzg2)) {
                return 3;
            } else {
                return zzamq.zzu(zzg2, StringConstant.DASH)[0].equals(zzamq.zzu(zzg, StringConstant.DASH)[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    public final zzjn zzc() {
        return this.zzd.get();
    }

    public final void zzd(zzjo zzjoVar) {
        zzjn zzjnVar = new zzjn(zzjoVar);
        if (!this.zzd.getAndSet(zzjnVar).equals(zzjnVar)) {
            zzl();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:161:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01cd  */
    @Override // com.google.android.gms.internal.ads.zzjx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.ads.zzahx[], com.google.android.gms.internal.ads.zzjg[]> zze(com.google.android.gms.internal.ads.zzjw r9, int[][][] r10, int[] r11, com.google.android.gms.internal.ads.zzhf r12, com.google.android.gms.internal.ads.zzaiq r13) throws com.google.android.gms.internal.ads.zzaeg {
        /*
            Method dump skipped, instructions count: 2498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjt.zze(com.google.android.gms.internal.ads.zzjw, int[][][], int[], com.google.android.gms.internal.ads.zzhf, com.google.android.gms.internal.ads.zzaiq):android.util.Pair");
    }
}
