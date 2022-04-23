package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzei.class */
public final class zzei extends zzbq {

    /* renamed from: ID */
    private static final String f190ID = zza.RANDOM.toString();
    private static final String zzbdy = zzb.MIN.toString();
    private static final String zzbdz = zzb.MAX.toString();

    public zzei() {
        super(f190ID, new String[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r11 <= r13) goto L_0x0067;
     */
    @Override // com.google.android.gms.tagmanager.zzbq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzp zze(java.util.Map<java.lang.String, com.google.android.gms.internal.measurement.zzp> r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = com.google.android.gms.tagmanager.zzei.zzbdy
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.measurement.zzp r0 = (com.google.android.gms.internal.measurement.zzp) r0
            r9 = r0
            r0 = r8
            java.lang.String r1 = com.google.android.gms.tagmanager.zzei.zzbdz
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.measurement.zzp r0 = (com.google.android.gms.internal.measurement.zzp) r0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x005f
            r0 = r9
            com.google.android.gms.internal.measurement.zzp r1 = com.google.android.gms.tagmanager.zzgj.zzqg()
            if (r0 == r1) goto L_0x005f
            r0 = r10
            if (r0 == 0) goto L_0x005f
            r0 = r10
            com.google.android.gms.internal.measurement.zzp r1 = com.google.android.gms.tagmanager.zzgj.zzqg()
            if (r0 == r1) goto L_0x005f
            r0 = r9
            com.google.android.gms.tagmanager.zzgi r0 = com.google.android.gms.tagmanager.zzgj.zzd(r0)
            r8 = r0
            r0 = r10
            com.google.android.gms.tagmanager.zzgi r0 = com.google.android.gms.tagmanager.zzgj.zzd(r0)
            r10 = r0
            r0 = r8
            com.google.android.gms.tagmanager.zzgi r1 = com.google.android.gms.tagmanager.zzgj.zzqe()
            if (r0 == r1) goto L_0x005f
            r0 = r10
            com.google.android.gms.tagmanager.zzgi r1 = com.google.android.gms.tagmanager.zzgj.zzqe()
            if (r0 == r1) goto L_0x005f
            r0 = r8
            double r0 = r0.doubleValue()
            r11 = r0
            r0 = r10
            double r0 = r0.doubleValue()
            r13 = r0
            r0 = r11
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x005f
            goto L_0x0067
        L_0x005f:
            r0 = 0
            r11 = r0
            r0 = 4746794007244308480(0x41dfffffffc00000, double:2.147483647E9)
            r13 = r0
        L_0x0067:
            double r0 = java.lang.Math.random()
            r1 = r13
            r2 = r11
            double r1 = r1 - r2
            double r0 = r0 * r1
            r1 = r11
            double r0 = r0 + r1
            long r0 = java.lang.Math.round(r0)
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            com.google.android.gms.internal.measurement.zzp r0 = com.google.android.gms.tagmanager.zzgj.zzj(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzei.zze(java.util.Map):com.google.android.gms.internal.measurement.zzp");
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }
}
