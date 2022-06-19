package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcb.class */
public final class zzdcb implements zzdfi<zzdby> {
    private final Context context;
    private final zzdzv zzghl;

    public zzdcb(zzdzv zzdzvVar, Context context) {
        this.zzghl = zzdzvVar;
        this.context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdby> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdca
            private final zzdcb zzhbi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhbi = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhbi.zzatd();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0048, code lost:
        if (r0 == 5) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzdby zzatd() throws java.lang.Exception {
        /*
            r6 = this;
            android.content.IntentFilter r0 = new android.content.IntentFilter
            r1 = r0
            java.lang.String r2 = "android.intent.action.BATTERY_CHANGED"
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            android.content.Context r0 = r0.context
            r1 = 0
            r2 = r7
            android.content.Intent r0 = r0.registerReceiver(r1, r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L54
            r0 = r7
            java.lang.String r1 = "status"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r9 = r0
            r0 = r7
            java.lang.String r1 = "level"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r10 = r0
            r0 = r7
            java.lang.String r1 = "scale"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r11 = r0
            r0 = r10
            double r0 = (double) r0
            r1 = r11
            double r1 = (double) r1
            double r0 = r0 / r1
            r12 = r0
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L4b
            r0 = r12
            r14 = r0
            r0 = r9
            r1 = 5
            if (r0 != r1) goto L59
        L4b:
            r0 = 1
            r8 = r0
            r0 = r12
            r14 = r0
            goto L59
        L54:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r14 = r0
        L59:
            com.google.android.gms.internal.ads.zzdby r0 = new com.google.android.gms.internal.ads.zzdby
            r1 = r0
            r2 = r14
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdcb.zzatd():com.google.android.gms.internal.ads.zzdby");
    }
}
