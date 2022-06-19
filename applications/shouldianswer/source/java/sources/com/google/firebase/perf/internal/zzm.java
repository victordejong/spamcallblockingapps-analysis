package com.google.firebase.perf.internal;

import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzcp;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzm.class */
public final class zzm extends zzq {
    private zzcp zzdk;

    public zzm(zzcp zzcpVar) {
        this.zzdk = zzcpVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0086 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zza(com.google.android.gms.internal.firebase-perf.zzcp r6, int r7) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.internal.zzm.zza(com.google.android.gms.internal.firebase-perf.zzcp, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzb(com.google.android.gms.internal.firebase-perf.zzcp r6, int r7) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.internal.zzm.zzb(com.google.android.gms.internal.firebase-perf.zzcp, int):boolean");
    }

    @Override // com.google.firebase.perf.internal.zzq
    public final boolean zzac() {
        boolean z;
        if (!zzb(this.zzdk, 0)) {
            String valueOf = String.valueOf(this.zzdk.getName());
            Log.w("FirebasePerformance", valueOf.length() != 0 ? "Invalid Trace:".concat(valueOf) : new String("Invalid Trace:"));
            return false;
        }
        zzcp zzcpVar = this.zzdk;
        if (zzcpVar.zzes() > 0) {
            z = true;
            break;
        }
        for (com.google.android.gms.internal.firebase_perf.zzcp zzcpVar2 : zzcpVar.zzev()) {
            if (zzcpVar2.zzes() > 0) {
                z = true;
                break;
            }
        }
        z = false;
        if (!z || zza(this.zzdk, 0)) {
            return true;
        }
        String valueOf2 = String.valueOf(this.zzdk.getName());
        Log.w("FirebasePerformance", valueOf2.length() != 0 ? "Invalid Counters for Trace:".concat(valueOf2) : new String("Invalid Counters for Trace:"));
        return false;
    }
}
