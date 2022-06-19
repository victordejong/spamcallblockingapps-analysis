package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs.class */
public final class zzdfs implements zzdfi<zzdft> {
    private final Context context;
    private final zzdzv zzghl;

    public zzdfs(zzdzv zzdzvVar, Context context) {
        this.zzghl = zzdzvVar;
        this.context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdft> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdfv
            private final zzdfs zzhdu;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhdu = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhdu.zzats();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzdft zzats() throws java.lang.Exception {
        /*
            r9 = this;
            r0 = r9
            android.content.Context r0 = r0.context
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.getNetworkOperator()
            r11 = r0
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastR()
            if (r0 == 0) goto L32
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzdag
            r12 = r0
            com.google.android.gms.internal.ads.zzabl r0 = com.google.android.gms.internal.ads.zzwr.zzqr()
            r1 = r12
            java.lang.Object r0 = r0.zzd(r1)
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
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkr()
            r0 = r9
            android.content.Context r0 = r0.context
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzp(r0, r1)
            r15 = r0
            r0 = -1
            r16 = r0
            r0 = r15
            if (r0 == 0) goto L89
            r0 = r9
            android.content.Context r0 = r0.context
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
            r16 = r0
            r0 = r12
            android.net.NetworkInfo$DetailedState r0 = r0.getDetailedState()
            int r0 = r0.ordinal()
            r17 = r0
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
            r0 = -2
            r16 = r0
            r0 = 0
            r15 = r0
            r0 = -1
            r17 = r0
        L93:
            com.google.android.gms.internal.ads.zzdft r0 = new com.google.android.gms.internal.ads.zzdft
            r1 = r0
            r2 = r11
            r3 = r16
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r17
            r1.<init>(r2, r3, r4, r5, r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdfs.zzats():com.google.android.gms.internal.ads.zzdft");
    }
}
