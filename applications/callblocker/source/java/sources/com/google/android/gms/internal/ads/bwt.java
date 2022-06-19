package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwt.class */
public final class bwt implements cah<bwp> {

    /* renamed from: a */
    private final crs f12416a;

    /* renamed from: b */
    private final Context f12417b;

    public bwt(crs crsVar, Context context) {
        this.f12416a = crsVar;
        this.f12417b = context;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bwp> mo11479a() {
        return this.f12416a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bwr

            /* renamed from: a */
            private final bwt f12414a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12414a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12414a.m11572b();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0054, code lost:
        if (r0 == 5) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.bwp m11572b() {
        /*
            r6 = this;
            r0 = 0
            r7 = r0
            android.content.IntentFilter r0 = new android.content.IntentFilter
            r1 = r0
            java.lang.String r2 = "android.intent.action.BATTERY_CHANGED"
            r1.<init>(r2)
            r8 = r0
            r0 = r6
            android.content.Context r0 = r0.f12417b
            r1 = 0
            r2 = r8
            android.content.Intent r0 = r0.registerReceiver(r1, r2)
            r8 = r0
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r9 = r0
            r0 = r7
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            java.lang.String r1 = "status"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r12 = r0
            r0 = r8
            java.lang.String r1 = "level"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r13 = r0
            r0 = r8
            java.lang.String r1 = "scale"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r14 = r0
            r0 = r13
            double r0 = (double) r0
            r1 = r14
            double r1 = (double) r1
            double r0 = r0 / r1
            r15 = r0
            r0 = r12
            r1 = 2
            if (r0 == r1) goto L57
            r0 = r7
            r11 = r0
            r0 = r15
            r9 = r0
            r0 = r12
            r1 = 5
            if (r0 != r1) goto L5d
        L57:
            r0 = 1
            r11 = r0
            r0 = r15
            r9 = r0
        L5d:
            com.google.android.gms.internal.ads.bwp r0 = new com.google.android.gms.internal.ads.bwp
            r1 = r0
            r2 = r9
            r3 = r11
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bwt.m11572b():com.google.android.gms.internal.ads.bwp");
    }
}
