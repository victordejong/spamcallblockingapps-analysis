package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoa.class */
public final class zzeoa implements zzery<zzeob> {
    private final zzfsn zza;
    private final Context zzb;

    public zzeoa(zzfsn zzfsnVar, Context context) {
        this.zza = zzfsnVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeob> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzenz
            private final zzeoa zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
        if (r0 == 5) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzeob zzb() throws java.lang.Exception {
        /*
            r6 = this;
            android.content.IntentFilter r0 = new android.content.IntentFilter
            r1 = r0
            java.lang.String r2 = "android.intent.action.BATTERY_CHANGED"
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            android.content.Context r0 = r0.zzb
            r1 = 0
            r2 = r7
            android.content.Intent r0 = r0.registerReceiver(r1, r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L4c
            r0 = r7
            java.lang.String r1 = "status"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r9 = r0
            r0 = r7
            java.lang.String r1 = "level"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            double r0 = (double) r0
            r1 = r7
            java.lang.String r2 = "scale"
            r3 = -1
            int r1 = r1.getIntExtra(r2, r3)
            double r1 = (double) r1
            double r0 = r0 / r1
            r10 = r0
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L43
            r0 = r10
            r12 = r0
            r0 = r9
            r1 = 5
            if (r0 != r1) goto L51
        L43:
            r0 = 1
            r8 = r0
            r0 = r10
            r12 = r0
            goto L51
        L4c:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r12 = r0
        L51:
            com.google.android.gms.internal.ads.zzeob r0 = new com.google.android.gms.internal.ads.zzeob
            r1 = r0
            r2 = r12
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeoa.zzb():com.google.android.gms.internal.ads.zzeob");
    }
}
