package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdhh;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhh.class */
public final class zzdhh implements zzdgx<zzdhe> {

    /* renamed from: a */
    public final zzdzb f27327a;

    /* renamed from: b */
    public final Context f27328b;

    public zzdhh(zzdzb zzdzbVar, Context context) {
        this.f27327a = zzdzbVar;
        this.f27328b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdhe> mo13576a() {
        return this.f27327a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.ru

            /* renamed from: a */
            public final zzdhh f15043a;

            {
                this.f15043a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15043a.m13599b();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzdhe m13599b() throws java.lang.Exception {
        /*
            r9 = this;
            r0 = r9
            android.content.Context r0 = r0.f27328b
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.getNetworkOperator()
            r11 = r0
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.m17054n()
            if (r0 == 0) goto L_0x0032
            com.google.android.gms.internal.ads.zzaaq<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabb.f23873p4
            r12 = r0
            com.google.android.gms.internal.ads.zzaax r0 = com.google.android.gms.internal.ads.zzwm.m11166e()
            r1 = r12
            java.lang.Object r0 = r0.m16921a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0032
            r0 = 0
            r13 = r0
            goto L_0x0038
        L_0x0032:
            r0 = r10
            int r0 = r0.getNetworkType()
            r13 = r0
        L_0x0038:
            r0 = r10
            int r0 = r0.getPhoneType()
            r14 = r0
            com.google.android.gms.internal.ads.zzayu r0 = com.google.android.gms.ads.internal.zzp.m17969c()
            r0 = r9
            android.content.Context r0 = r0.f27328b
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.internal.ads.zzayu.m16111b(r0, r1)
            r15 = r0
            r0 = -1
            r16 = r0
            r0 = r15
            if (r0 == 0) goto L_0x0089
            r0 = r9
            android.content.Context r0 = r0.f27328b
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            r10 = r0
            r0 = r10
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x007d
            r0 = r12
            int r0 = r0.getType()
            r16 = r0
            r0 = r12
            android.net.NetworkInfo$DetailedState r0 = r0.getDetailedState()
            int r0 = r0.ordinal()
            r17 = r0
            goto L_0x0080
        L_0x007d:
            r0 = -1
            r17 = r0
        L_0x0080:
            r0 = r10
            boolean r0 = r0.isActiveNetworkMetered()
            r15 = r0
            goto L_0x0093
        L_0x0089:
            r0 = -2
            r16 = r0
            r0 = 0
            r15 = r0
            r0 = -1
            r17 = r0
        L_0x0093:
            com.google.android.gms.internal.ads.zzdhe r0 = new com.google.android.gms.internal.ads.zzdhe
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdhh.m13599b():com.google.android.gms.internal.ads.zzdhe");
    }
}
