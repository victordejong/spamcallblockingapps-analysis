package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdy.class */
public final class cdy implements chb<cdv> {

    /* renamed from: a  reason: collision with root package name */
    final bji f25662a;

    /* renamed from: b  reason: collision with root package name */
    final String f25663b;

    /* renamed from: c  reason: collision with root package name */
    final cpo f25664c;

    /* renamed from: d  reason: collision with root package name */
    private final dbs f25665d;

    public cdy(dbs dbsVar, bji bjiVar, cpo cpoVar, String str) {
        this.f25665d = dbsVar;
        this.f25662a = bjiVar;
        this.f25664c = cpoVar;
        this.f25663b = str;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cdv> a() {
        return this.f25665d.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cdx

            /* renamed from: a  reason: collision with root package name */
            private final cdy f25661a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25661a = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x00be  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r5 = this;
                    r0 = r5
                    com.google.android.gms.internal.ads.cdy r0 = r0.f25661a
                    r6 = r0
                    r0 = r6
                    com.google.android.gms.internal.ads.bji r0 = r0.f25662a
                    r7 = r0
                    r0 = r6
                    com.google.android.gms.internal.ads.cpo r0 = r0.f25664c
                    java.lang.String r0 = r0.f
                    r8 = r0
                    r0 = r6
                    java.lang.String r0 = r0.f25663b
                    r9 = r0
                    com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.ce
                    r10 = r0
                    com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
                    r1 = r10
                    java.lang.Object r0 = r0.a(r1)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    r11 = r0
                    r0 = 0
                    r12 = r0
                    r0 = r11
                    if (r0 != 0) goto L_0x003b
                L_0x0035:
                    r0 = 0
                    r10 = r0
                    goto L_0x00a1
                L_0x003b:
                    r0 = r8
                    if (r0 == 0) goto L_0x0035
                    r0 = r9
                    if (r0 != 0) goto L_0x0047
                    goto L_0x0035
                L_0x0047:
                    r0 = r7
                    boolean r0 = r0.f24548d
                    if (r0 != 0) goto L_0x0052
                    r0 = r7
                    r0.a()
                L_0x0052:
                    r0 = r7
                    java.util.Map<java.lang.String, java.util.Map<java.lang.String, org.json.JSONObject>> r0 = r0.f24545a
                    r1 = r9
                    java.lang.Object r0 = r0.get(r1)
                    java.util.Map r0 = (java.util.Map) r0
                    r13 = r0
                    r0 = r13
                    if (r0 != 0) goto L_0x006a
                    goto L_0x0035
                L_0x006a:
                    r0 = r13
                    r1 = r8
                    java.lang.Object r0 = r0.get(r1)
                    org.json.JSONObject r0 = (org.json.JSONObject) r0
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L_0x007f
                    goto L_0x00a1
                L_0x007f:
                    r0 = r7
                    org.json.JSONObject r0 = r0.e
                    r1 = r8
                    r2 = r9
                    java.lang.String r0 = com.google.android.gms.internal.ads.bjl.a(r0, r1, r2)
                    r10 = r0
                    r0 = r10
                    if (r0 != 0) goto L_0x0093
                    goto L_0x0035
                L_0x0093:
                    r0 = r13
                    r1 = r10
                    java.lang.Object r0 = r0.get(r1)
                    org.json.JSONObject r0 = (org.json.JSONObject) r0
                    r10 = r0
                L_0x00a1:
                    r0 = r6
                    com.google.android.gms.internal.ads.bji r0 = r0.f25662a
                    r13 = r0
                    com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.cf
                    r6 = r0
                    com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
                    r1 = r6
                    java.lang.Object r0 = r0.a(r1)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L_0x00be
                    goto L_0x00c5
                L_0x00be:
                    r0 = r13
                    org.json.JSONObject r0 = r0.f24546b
                    r12 = r0
                L_0x00c5:
                    com.google.android.gms.internal.ads.cdv r0 = new com.google.android.gms.internal.ads.cdv
                    r1 = r0
                    r2 = r10
                    r3 = r12
                    r1.<init>(r2, r3)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cdx.call():java.lang.Object");
            }
        });
    }
}
