package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.internal.zzgw;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbl.class */
public final class zzbl extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ zzgw f8269j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8270k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbl(zzag zzagVar, zzgw zzgwVar) {
        super(zzagVar);
        this.f8270k = zzagVar;
        this.f8269j = zzgwVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void mo13397a() throws android.os.RemoteException {
        /*
            r6 = this;
            r0 = 0
            r7 = r0
        L_0x0002:
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.measurement.zzag r1 = r1.f8270k
            java.util.List r1 = com.google.android.gms.internal.measurement.zzag.m13442W(r1)
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x0043
            r0 = r6
            com.google.android.gms.measurement.internal.zzgw r0 = r0.f8269j
            r1 = r6
            com.google.android.gms.internal.measurement.zzag r1 = r1.f8270k
            java.util.List r1 = com.google.android.gms.internal.measurement.zzag.m13442W(r1)
            r2 = r7
            java.lang.Object r1 = r1.get(r2)
            android.util.Pair r1 = (android.util.Pair) r1
            java.lang.Object r1 = r1.first
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003d
            r0 = r6
            com.google.android.gms.internal.measurement.zzag r0 = r0.f8270k
            java.lang.String r0 = com.google.android.gms.internal.measurement.zzag.m13459F(r0)
            java.lang.String r1 = "OnEventListener already registered."
            int r0 = android.util.Log.w(r0, r1)
            return
        L_0x003d:
            int r7 = r7 + 1
            goto L_0x0002
        L_0x0043:
            com.google.android.gms.internal.measurement.zzag$zzd r0 = new com.google.android.gms.internal.measurement.zzag$zzd
            r1 = r0
            r2 = r6
            com.google.android.gms.measurement.internal.zzgw r2 = r2.f8269j
            r1.<init>(r2)
            r8 = r0
            r0 = r6
            com.google.android.gms.internal.measurement.zzag r0 = r0.f8270k
            java.util.List r0 = com.google.android.gms.internal.measurement.zzag.m13442W(r0)
            android.util.Pair r1 = new android.util.Pair
            r2 = r1
            r3 = r6
            com.google.android.gms.measurement.internal.zzgw r3 = r3.f8269j
            r4 = r8
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            r0 = r6
            com.google.android.gms.internal.measurement.zzag r0 = r0.f8270k
            com.google.android.gms.internal.measurement.zzv r0 = com.google.android.gms.internal.measurement.zzag.m13450O(r0)
            r1 = r8
            r0.registerOnMeasurementEventListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbl.mo13397a():void");
    }
}
