package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ib2.class */
public final class ib2 implements wa2<gb2> {

    /* renamed from: a */
    private final s03 f24187a;

    /* renamed from: b */
    private final Context f24188b;

    public ib2(s03 s03Var, Context context) {
        this.f24187a = s03Var;
        this.f24188b = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.gb2 m14456a() {
        /*
            r9 = this;
            r0 = r9
            android.content.Context r0 = r0.f24188b
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.getNetworkOperator()
            r11 = r0
            boolean r0 = com.google.android.gms.common.util.C6237o.m16771m()
            if (r0 == 0) goto L32
            com.google.android.gms.internal.ads.cw<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C6679kw.f25677d6
            r12 = r0
            com.google.android.gms.internal.ads.iw r0 = com.google.android.gms.internal.ads.C7192yr.m8714c()
            r1 = r12
            java.lang.Object r0 = r0.m14263c(r1)
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
            com.google.android.gms.ads.internal.util.c2 r0 = com.google.android.gms.ads.internal.C5667s.m18160d()
            r0 = r9
            android.content.Context r0 = r0.f24188b
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.C5679c2.m18073e(r0, r1)
            r15 = r0
            r0 = -1
            r16 = r0
            r0 = r15
            if (r0 == 0) goto L89
            r0 = r9
            android.content.Context r0 = r0.f24188b
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
            r0 = -2
            r17 = r0
            r0 = 0
            r15 = r0
            r0 = -1
            r16 = r0
        L93:
            com.google.android.gms.internal.ads.gb2 r0 = new com.google.android.gms.internal.ads.gb2
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ib2.m14456a():com.google.android.gms.internal.ads.gb2");
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<gb2> zza() {
        return this.f24187a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.hb2

            /* renamed from: a */
            private final ib2 f23843a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23843a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f23843a.m14456a();
            }
        });
    }
}
