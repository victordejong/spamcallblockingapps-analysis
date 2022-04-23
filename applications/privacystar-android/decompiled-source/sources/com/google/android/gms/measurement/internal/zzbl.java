package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbl.class */
final class zzbl implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzbt zzaoj;
    private final /* synthetic */ zzap zzaok;
    private final /* synthetic */ long zzaol;
    private final /* synthetic */ Bundle zzaom;
    private final /* synthetic */ BroadcastReceiver.PendingResult zzrf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbl(zzbj zzbjVar, zzbt zzbtVar, long j, Bundle bundle, Context context, zzap zzapVar, BroadcastReceiver.PendingResult pendingResult) {
        this.zzaoj = zzbtVar;
        this.zzaol = j;
        this.zzaom = bundle;
        this.val$context = context;
        this.zzaok = zzapVar;
        this.zzrf = pendingResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (r0 <= 0) goto L_0x002b;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzbt r0 = r0.zzaoj
            com.google.android.gms.measurement.internal.zzba r0 = r0.zzgp()
            com.google.android.gms.measurement.internal.zzbd r0 = r0.zzanj
            long r0 = r0.get()
            r6 = r0
            r0 = r5
            long r0 = r0.zzaol
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0030
            r0 = r8
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002b
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0030
        L_0x002b:
            r0 = r6
            r1 = 1
            long r0 = r0 - r1
            r10 = r0
        L_0x0030:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0042
            r0 = r5
            android.os.Bundle r0 = r0.zzaom
            java.lang.String r1 = "click_timestamp"
            r2 = r10
            r0.putLong(r1, r2)
        L_0x0042:
            r0 = r5
            android.os.Bundle r0 = r0.zzaom
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "referrer broadcast"
            r0.putString(r1, r2)
            r0 = r5
            android.content.Context r0 = r0.val$context
            com.google.android.gms.measurement.AppMeasurement r0 = com.google.android.gms.measurement.AppMeasurement.getInstance(r0)
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_cmp"
            r3 = r5
            android.os.Bundle r3 = r3.zzaom
            r0.logEventInternal(r1, r2, r3)
            r0 = r5
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzaok
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjl()
            java.lang.String r1 = "Install campaign recorded"
            r0.zzbx(r1)
            r0 = r5
            android.content.BroadcastReceiver$PendingResult r0 = r0.zzrf
            if (r0 == 0) goto L_0x0079
            r0 = r5
            android.content.BroadcastReceiver$PendingResult r0 = r0.zzrf
            r0.finish()
        L_0x0079:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzbl.run():void");
    }
}
