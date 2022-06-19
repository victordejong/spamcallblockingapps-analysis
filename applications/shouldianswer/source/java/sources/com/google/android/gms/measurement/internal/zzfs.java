package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfs.class */
public final class zzfs implements Runnable {
    private final /* synthetic */ zzga zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ Context zzd;
    private final /* synthetic */ zzew zze;
    private final /* synthetic */ BroadcastReceiver.PendingResult zzf;

    public zzfs(zzfq zzfqVar, zzga zzgaVar, long j, Bundle bundle, Context context, zzew zzewVar, BroadcastReceiver.PendingResult pendingResult) {
        this.zza = zzgaVar;
        this.zzb = j;
        this.zzc = bundle;
        this.zzd = context;
        this.zze = zzewVar;
        this.zzf = pendingResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (r0 <= 0) goto L8;
     */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzga r0 = r0.zza
            com.google.android.gms.measurement.internal.zzff r0 = r0.zzc()
            com.google.android.gms.measurement.internal.zzfk r0 = r0.zzh
            long r0 = r0.zza()
            r6 = r0
            r0 = r5
            long r0 = r0.zzb
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L30
            r0 = r8
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L2b
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L30
        L2b:
            r0 = r6
            r1 = 1
            long r0 = r0 - r1
            r10 = r0
        L30:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L42
            r0 = r5
            android.os.Bundle r0 = r0.zzc
            java.lang.String r1 = "click_timestamp"
            r2 = r10
            r0.putLong(r1, r2)
        L42:
            r0 = r5
            android.os.Bundle r0 = r0.zzc
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "referrer broadcast"
            r0.putString(r1, r2)
            r0 = r5
            android.content.Context r0 = r0.zzd
            r1 = 0
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.zza(r0, r1)
            com.google.android.gms.measurement.internal.zzhb r0 = r0.zzh()
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_cmp"
            r3 = r5
            android.os.Bundle r3 = r3.zzc
            r0.zza(r1, r2, r3)
            r0 = r5
            com.google.android.gms.measurement.internal.zzew r0 = r0.zze
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzx()
            java.lang.String r1 = "Install campaign recorded"
            r0.zza(r1)
            r0 = r5
            android.content.BroadcastReceiver$PendingResult r0 = r0.zzf
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L7f
            r0 = r12
            r0.finish()
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfs.run():void");
    }
}
