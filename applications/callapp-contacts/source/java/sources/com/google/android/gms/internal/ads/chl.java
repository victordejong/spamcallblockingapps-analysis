package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chl.class */
public final class chl implements chb<chi> {

    /* renamed from: a */
    final Context f45799a;

    /* renamed from: b */
    private final dbs f45800b;

    public chl(dbs dbsVar, Context context) {
        this.f45800b = dbsVar;
        this.f45799a = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<chi> mo17449a() {
        return this.f45800b.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.chk

            /* renamed from: a */
            private final chl f45798a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45798a = this;
            }

            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r9 = this;
                    r0 = r9
                    com.google.android.gms.internal.ads.chl r0 = r0.f45798a
                    r10 = r0
                    r0 = r10
                    android.content.Context r0 = r0.f45799a
                    java.lang.String r1 = "phone"
                    java.lang.Object r0 = r0.getSystemService(r1)
                    android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
                    r11 = r0
                    r0 = r11
                    java.lang.String r0 = r0.getNetworkOperator()
                    r12 = r0
                    boolean r0 = com.google.android.gms.common.util.C12110n.m19010l()
                    if (r0 == 0) goto L39
                    com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42875eZ
                    r13 = r0
                    com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
                    r1 = r13
                    java.lang.Object r0 = r0.m18571a(r1)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 == 0) goto L39
                    r0 = 0
                    r14 = r0
                    goto L3f
                L39:
                    r0 = r11
                    int r0 = r0.getNetworkType()
                    r14 = r0
                L3f:
                    r0 = r11
                    int r0 = r0.getPhoneType()
                    r15 = r0
                    com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
                    r0 = r10
                    android.content.Context r0 = r0.f45799a
                    java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
                    boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzp(r0, r1)
                    r16 = r0
                    r0 = -1
                    r17 = r0
                    r0 = r16
                    if (r0 == 0) goto L93
                    r0 = r10
                    android.content.Context r0 = r0.f45799a
                    java.lang.String r1 = "connectivity"
                    java.lang.Object r0 = r0.getSystemService(r1)
                    android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
                    r13 = r0
                    r0 = r13
                    android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
                    r11 = r0
                    r0 = r11
                    if (r0 == 0) goto L86
                    r0 = r11
                    int r0 = r0.getType()
                    r17 = r0
                    r0 = r11
                    android.net.NetworkInfo$DetailedState r0 = r0.getDetailedState()
                    int r0 = r0.ordinal()
                    r18 = r0
                    goto L89
                L86:
                    r0 = -1
                    r18 = r0
                L89:
                    r0 = r13
                    boolean r0 = r0.isActiveNetworkMetered()
                    r16 = r0
                    goto L9d
                L93:
                    r0 = -2
                    r17 = r0
                    r0 = 0
                    r16 = r0
                    r0 = -1
                    r18 = r0
                L9d:
                    com.google.android.gms.internal.ads.chi r0 = new com.google.android.gms.internal.ads.chi
                    r1 = r0
                    r2 = r12
                    r3 = r17
                    r4 = r14
                    r5 = r15
                    r6 = r16
                    r7 = r18
                    r1.<init>(r2, r3, r4, r5, r6, r7)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.chk.call():java.lang.Object");
            }
        });
    }
}
