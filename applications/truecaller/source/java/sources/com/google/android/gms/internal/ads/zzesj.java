package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesj.class */
public final class zzesj implements zzery<zzesh> {
    private final zzfsn zza;
    private final Context zzb;

    public zzesj(zzfsn zzfsnVar, Context context) {
        this.zza = zzfsnVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzesh> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzesi
            private final zzesj zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzesh zzb() throws java.lang.Exception {
        /*
            r9 = this;
            r0 = r9
            android.content.Context r0 = r0.zzb
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.getNetworkOperator()
            r11 = r0
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.m38774c()
            if (r0 == 0) goto L32
            com.google.android.gms.internal.ads.zzbjd<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzbjl.zzgd
            r12 = r0
            com.google.android.gms.internal.ads.zzbjj r0 = com.google.android.gms.internal.ads.zzbet.zzc()
            r1 = r12
            java.lang.Object r0 = r0.zzc(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L32
            r0 = 0
            r13 = r0
            goto L38
        L32:
            r0 = r10
            int r0 = r0.getNetworkType()
            r13 = r0
        L38:
            r0 = r10
            int r0 = r0.getPhoneType()
            r14 = r0
            com.google.android.gms.ads.internal.util.zzs r0 = com.google.android.gms.ads.internal.zzt.zzc()
            r0 = r9
            android.content.Context r0 = r0.zzb
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.zzs.zzE(r0, r1)
            r15 = r0
            r0 = -1
            r16 = r0
            r0 = r15
            if (r0 == 0) goto L89
            r0 = r9
            android.content.Context r0 = r0.zzb
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            r10 = r0
            r0 = r10
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L7d
            r0 = r12
            int r0 = r0.getType()
            r17 = r0
            r0 = r12
            android.net.NetworkInfo$DetailedState r0 = r0.getDetailedState()
            int r0 = r0.ordinal()
            r16 = r0
            goto L80
        L7d:
            r0 = -1
            r17 = r0
        L80:
            r0 = r10
            boolean r0 = r0.isActiveNetworkMetered()
            r15 = r0
            goto L93
        L89:
            r0 = -1
            r16 = r0
            r0 = 0
            r15 = r0
            r0 = -2
            r17 = r0
        L93:
            com.google.android.gms.internal.ads.zzesh r0 = new com.google.android.gms.internal.ads.zzesh
            r1 = r0
            r2 = r11
            r3 = r17
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r1.<init>(r2, r3, r4, r5, r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzesj.zzb():com.google.android.gms.internal.ads.zzesh");
    }
}
