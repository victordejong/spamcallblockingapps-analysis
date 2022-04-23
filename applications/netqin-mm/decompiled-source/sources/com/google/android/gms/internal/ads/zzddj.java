package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzddj;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddj.class */
public final class zzddj implements zzdgx<zzddg> {

    /* renamed from: a */
    public final zzdzb f27167a;

    /* renamed from: b */
    public final Context f27168b;

    public zzddj(zzdzb zzdzbVar, Context context) {
        this.f27167a = zzdzbVar;
        this.f27168b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzddg> mo13576a() {
        return this.f27167a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.ct

            /* renamed from: a */
            public final zzddj f12582a;

            {
                this.f12582a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12582a.m13644b();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x005c, code lost:
        if (r0 == 5) goto L_0x005f;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzddg m13644b() throws java.lang.Exception {
        /*
            r6 = this;
            android.content.IntentFilter r0 = new android.content.IntentFilter
            r1 = r0
            java.lang.String r2 = "android.intent.action.BATTERY_CHANGED"
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            android.content.Context r0 = r0.f27168b
            r1 = 0
            r2 = r7
            android.content.Intent r0 = r0.registerReceiver(r1, r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0068
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
            r12 = r0
            r0 = r11
            double r0 = (double) r0
            r14 = r0
            r0 = r12
            boolean r0 = java.lang.Double.isNaN(r0)
            r0 = r14
            boolean r0 = java.lang.Double.isNaN(r0)
            r0 = r12
            r1 = r14
            double r0 = r0 / r1
            r12 = r0
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L_0x005f
            r0 = r12
            r14 = r0
            r0 = r9
            r1 = 5
            if (r0 != r1) goto L_0x006d
        L_0x005f:
            r0 = 1
            r8 = r0
            r0 = r12
            r14 = r0
            goto L_0x006d
        L_0x0068:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r14 = r0
        L_0x006d:
            com.google.android.gms.internal.ads.zzddg r0 = new com.google.android.gms.internal.ads.zzddg
            r1 = r0
            r2 = r14
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzddj.m13644b():com.google.android.gms.internal.ads.zzddg");
    }
}
