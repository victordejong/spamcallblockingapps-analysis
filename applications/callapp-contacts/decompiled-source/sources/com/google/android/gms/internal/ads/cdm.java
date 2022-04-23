package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdm.class */
public final class cdm implements chb<cdn> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25642a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25643b;

    public cdm(dbs dbsVar, Context context) {
        this.f25643b = dbsVar;
        this.f25642a = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cdn> a() {
        return this.f25643b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cdp

            /* renamed from: a  reason: collision with root package name */
            private final cdm f25648a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25648a = this;
            }

            /* JADX WARN: Code restructure failed: missing block: B:7:0x0050, code lost:
                if (r0 == 5) goto L_0x0053;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v18, types: [double] */
            /* JADX WARN: Type inference failed for: r15v1 */
            /* JADX WARN: Type inference failed for: r15v2 */
            /* JADX WARN: Type inference failed for: r15v3 */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r6 = this;
                    r0 = r6
                    com.google.android.gms.internal.ads.cdm r0 = r0.f25648a
                    r7 = r0
                    android.content.IntentFilter r0 = new android.content.IntentFilter
                    r1 = r0
                    java.lang.String r2 = "android.intent.action.BATTERY_CHANGED"
                    r1.<init>(r2)
                    r8 = r0
                    r0 = r7
                    android.content.Context r0 = r0.f25642a
                    r1 = 0
                    r2 = r8
                    android.content.Intent r0 = r0.registerReceiver(r1, r2)
                    r7 = r0
                    r0 = 0
                    r9 = r0
                    r0 = r7
                    if (r0 == 0) goto L_0x005c
                    r0 = r7
                    java.lang.String r1 = "status"
                    r2 = -1
                    int r0 = r0.getIntExtra(r1, r2)
                    r10 = r0
                    r0 = r7
                    java.lang.String r1 = "level"
                    r2 = -1
                    int r0 = r0.getIntExtra(r1, r2)
                    r11 = r0
                    r0 = r7
                    java.lang.String r1 = "scale"
                    r2 = -1
                    int r0 = r0.getIntExtra(r1, r2)
                    r12 = r0
                    r0 = r11
                    double r0 = (double) r0
                    r1 = r12
                    double r1 = (double) r1
                    double r0 = r0 / r1
                    r13 = r0
                    r0 = r10
                    r1 = 2
                    if (r0 == r1) goto L_0x0053
                    r0 = r13
                    r15 = r0
                    r0 = r10
                    r1 = 5
                    if (r0 != r1) goto L_0x0061
                L_0x0053:
                    r0 = 1
                    r9 = r0
                    r0 = r13
                    r15 = r0
                    goto L_0x0061
                L_0x005c:
                    r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
                    r15 = r0
                L_0x0061:
                    com.google.android.gms.internal.ads.cdn r0 = new com.google.android.gms.internal.ads.cdn
                    r1 = r0
                    r2 = r15
                    r3 = r9
                    r1.<init>(r2, r3)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cdp.call():java.lang.Object");
            }
        });
    }
}
