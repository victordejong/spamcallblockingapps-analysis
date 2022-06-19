package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbb.class */
public final class zzbb extends zzan {
    private BaseImplementation.ResultHolder<Status> zzdf;

    public zzbb(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.zzdf = resultHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        if (r6 > 1) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zze(int r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder<com.google.android.gms.common.api.Status> r0 = r0.zzdf
            if (r0 != 0) goto L10
            java.lang.String r0 = "LocationClientImpl"
            java.lang.String r1 = "onRemoveGeofencesResult called multiple times"
            int r0 = android.util.Log.wtf(r0, r1)
            return
        L10:
            r0 = r6
            if (r0 < 0) goto L1b
            r0 = r6
            r7 = r0
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
            r7 = r0
            goto L30
        L2e:
            r0 = 1
            r7 = r0
        L30:
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L38
            goto L3b
        L38:
            r0 = 13
            r7 = r0
        L3b:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status
            r1 = r0
            r2 = r7
            r3 = 0
            r1.<init>(r2, r3)
            r8 = r0
            r0 = r5
            com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder<com.google.android.gms.common.api.Status> r0 = r0.zzdf
            r1 = r8
            r0.setResult(r1)
            r0 = r5
            r1 = 0
            r0.zzdf = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.location.zzbb.zze(int):void");
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zza(int i, PendingIntent pendingIntent) {
        zze(i);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zza(int i, String[] strArr) {
        Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzb(int i, String[] strArr) {
        zze(i);
    }
}
