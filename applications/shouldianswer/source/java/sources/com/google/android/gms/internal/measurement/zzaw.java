package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzgz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaw.class */
public final class zzaw extends zzx.zza {
    private final /* synthetic */ zzgz zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaw(zzx zzxVar, zzgz zzgzVar) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = zzgzVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    @Override // com.google.android.gms.internal.measurement.zzx.zza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zza() {
        /*
            r6 = this;
            r0 = 0
            r7 = r0
        L2:
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.measurement.zzx r1 = r1.zzd
            java.util.List r1 = com.google.android.gms.internal.measurement.zzx.zzd(r1)
            int r1 = r1.size()
            if (r0 >= r1) goto L43
            r0 = r6
            com.google.android.gms.measurement.internal.zzgz r0 = r0.zzc
            r1 = r6
            com.google.android.gms.internal.measurement.zzx r1 = r1.zzd
            java.util.List r1 = com.google.android.gms.internal.measurement.zzx.zzd(r1)
            r2 = r7
            java.lang.Object r1 = r1.get(r2)
            android.util.Pair r1 = (android.util.Pair) r1
            java.lang.Object r1 = r1.first
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3d
            r0 = r6
            com.google.android.gms.internal.measurement.zzx r0 = r0.zzd
            java.lang.String r0 = com.google.android.gms.internal.measurement.zzx.zzb(r0)
            java.lang.String r1 = "OnEventListener already registered."
            int r0 = android.util.Log.w(r0, r1)
            return
        L3d:
            int r7 = r7 + 1
            goto L2
        L43:
            com.google.android.gms.internal.measurement.zzx$zzb r0 = new com.google.android.gms.internal.measurement.zzx$zzb
            r1 = r0
            r2 = r6
            com.google.android.gms.measurement.internal.zzgz r2 = r2.zzc
            r1.<init>(r2)
            r8 = r0
            r0 = r6
            com.google.android.gms.internal.measurement.zzx r0 = r0.zzd
            java.util.List r0 = com.google.android.gms.internal.measurement.zzx.zzd(r0)
            android.util.Pair r1 = new android.util.Pair
            r2 = r1
            r3 = r6
            com.google.android.gms.measurement.internal.zzgz r3 = r3.zzc
            r4 = r8
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            r0 = r6
            com.google.android.gms.internal.measurement.zzx r0 = r0.zzd
            com.google.android.gms.internal.measurement.zzm r0 = com.google.android.gms.internal.measurement.zzx.zzc(r0)
            r1 = r8
            r0.registerOnMeasurementEventListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzaw.zza():void");
    }
}
