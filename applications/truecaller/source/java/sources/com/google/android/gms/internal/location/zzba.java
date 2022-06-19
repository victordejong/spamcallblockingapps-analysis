package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzba.class */
public final class zzba extends zzan {
    private BaseImplementation.ResultHolder<Status> zzdf;

    public zzba(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.zzdf = resultHolder;
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zza(int i, PendingIntent pendingIntent) {
        Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        if (r6 > 1) goto L10;
     */
    @Override // com.google.android.gms.internal.location.zzam
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(int r6, java.lang.String[] r7) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder<com.google.android.gms.common.api.Status> r0 = r0.zzdf
            if (r0 != 0) goto L10
            java.lang.String r0 = "LocationClientImpl"
            java.lang.String r1 = "onAddGeofenceResult called multiple times"
            int r0 = android.util.Log.wtf(r0, r1)
            return
        L10:
            r0 = r6
            if (r0 < 0) goto L1b
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 1
            if (r0 <= r1) goto L30
        L1b:
            r0 = 1000(0x3e8, float:1.401E-42)
            r1 = r6
            if (r0 > r1) goto L2e
            r0 = r6
            r1 = 1002(0x3ea, float:1.404E-42)
            if (r0 > r1) goto L2e
            r0 = r6
            r8 = r0
            goto L30
        L2e:
            r0 = 1
            r8 = r0
        L30:
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L38
            goto L3b
        L38:
            r0 = 13
            r8 = r0
        L3b:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status
            r1 = r0
            r2 = r8
            r3 = 0
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r5
            com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder<com.google.android.gms.common.api.Status> r0 = r0.zzdf
            r1 = r7
            r0.setResult(r1)
            r0 = r5
            r1 = 0
            r0.zzdf = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.location.zzba.zza(int, java.lang.String[]):void");
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzb(int i, String[] strArr) {
        Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
    }
}
