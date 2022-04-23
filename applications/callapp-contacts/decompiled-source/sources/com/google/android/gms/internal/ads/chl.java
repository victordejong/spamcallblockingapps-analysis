package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chl.class */
public final class chl implements chb<chi> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25841a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25842b;

    public chl(dbs dbsVar, Context context) {
        this.f25842b = dbsVar;
        this.f25841a = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<chi> a() {
        return this.f25842b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.chk

            /* renamed from: a  reason: collision with root package name */
            private final chl f25840a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25840a = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x005c  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0093  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r9 = this;
                    r0 = r9
                    com.google.android.gms.internal.ads.chl r0 = r0.f25840a
                    r10 = r0
                    r0 = r10
                    android.content.Context r0 = r0.f25841a
                    java.lang.String r1 = "phone"
                    java.lang.Object r0 = r0.getSystemService(r1)
                    android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
                    r11 = r0
                    r0 = r11
                    java.lang.String r0 = r0.getNetworkOperator()
                    r12 = r0
                    boolean r0 = com.google.android.gms.common.util.n.l()
                    if (r0 == 0) goto L_0x0039
                    com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.eZ
                    r13 = r0
                    com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
                    r1 = r13
                    java.lang.Object r0 = r0.a(r1)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 == 0) goto L_0x0039
                    r0 = 0
                    r14 = r0
                    goto L_0x003f
                L_0x0039:
                    r0 = r11
                    int r0 = r0.getNetworkType()
                    r14 = r0
                L_0x003f:
                    r0 = r11
                    int r0 = r0.getPhoneType()
                    r15 = r0
                    com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
                    r0 = r10
                    android.content.Context r0 = r0.f25841a
                    java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
                    boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzp(r0, r1)
                    r16 = r0
                    r0 = -1
                    r17 = r0
                    r0 = r16
                    if (r0 == 0) goto L_0x0093
                    r0 = r10
                    android.content.Context r0 = r0.f25841a
                    java.lang.String r1 = "connectivity"
                    java.lang.Object r0 = r0.getSystemService(r1)
                    android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
                    r13 = r0
                    r0 = r13
                    android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
                    r11 = r0
                    r0 = r11
                    if (r0 == 0) goto L_0x0086
                    r0 = r11
                    int r0 = r0.getType()
                    r17 = r0
                    r0 = r11
                    android.net.NetworkInfo$DetailedState r0 = r0.getDetailedState()
                    int r0 = r0.ordinal()
                    r18 = r0
                    goto L_0x0089
                L_0x0086:
                    r0 = -1
                    r18 = r0
                L_0x0089:
                    r0 = r13
                    boolean r0 = r0.isActiveNetworkMetered()
                    r16 = r0
                    goto L_0x009d
                L_0x0093:
                    r0 = -2
                    r17 = r0
                    r0 = 0
                    r16 = r0
                    r0 = -1
                    r18 = r0
                L_0x009d:
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
