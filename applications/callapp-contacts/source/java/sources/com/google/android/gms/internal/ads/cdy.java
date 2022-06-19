package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdy.class */
public final class cdy implements chb<cdv> {

    /* renamed from: a */
    final bji f45597a;

    /* renamed from: b */
    final String f45598b;

    /* renamed from: c */
    final cpo f45599c;

    /* renamed from: d */
    private final dbs f45600d;

    public cdy(dbs dbsVar, bji bjiVar, cpo cpoVar, String str) {
        this.f45600d = dbsVar;
        this.f45597a = bjiVar;
        this.f45599c = cpoVar;
        this.f45598b = str;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cdv> mo17449a() {
        return this.f45600d.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cdx

            /* renamed from: a */
            private final cdy f45596a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45596a = this;
            }

            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r5 = this;
                    r0 = r5
                    com.google.android.gms.internal.ads.cdy r0 = r0.f45596a
                    r6 = r0
                    r0 = r6
                    com.google.android.gms.internal.ads.bji r0 = r0.f45597a
                    r7 = r0
                    r0 = r6
                    com.google.android.gms.internal.ads.cpo r0 = r0.f45599c
                    java.lang.String r0 = r0.f46326f
                    r8 = r0
                    r0 = r6
                    java.lang.String r0 = r0.f45598b
                    r9 = r0
                    com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42774ce
                    r10 = r0
                    com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
                    r1 = r10
                    java.lang.Object r0 = r0.m18571a(r1)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    r11 = r0
                    r0 = 0
                    r12 = r0
                    r0 = r11
                    if (r0 != 0) goto L3b
                L35:
                    r0 = 0
                    r10 = r0
                    goto La1
                L3b:
                    r0 = r8
                    if (r0 == 0) goto L35
                    r0 = r9
                    if (r0 != 0) goto L47
                    goto L35
                L47:
                    r0 = r7
                    boolean r0 = r0.f44098d
                    if (r0 != 0) goto L52
                    r0 = r7
                    r0.m17808a()
                L52:
                    r0 = r7
                    java.util.Map<java.lang.String, java.util.Map<java.lang.String, org.json.JSONObject>> r0 = r0.f44095a
                    r1 = r9
                    java.lang.Object r0 = r0.get(r1)
                    java.util.Map r0 = (java.util.Map) r0
                    r13 = r0
                    r0 = r13
                    if (r0 != 0) goto L6a
                    goto L35
                L6a:
                    r0 = r13
                    r1 = r8
                    java.lang.Object r0 = r0.get(r1)
                    org.json.JSONObject r0 = (org.json.JSONObject) r0
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L7f
                    goto La1
                L7f:
                    r0 = r7
                    org.json.JSONObject r0 = r0.f44099e
                    r1 = r8
                    r2 = r9
                    java.lang.String r0 = com.google.android.gms.internal.ads.bjl.m17806a(r0, r1, r2)
                    r10 = r0
                    r0 = r10
                    if (r0 != 0) goto L93
                    goto L35
                L93:
                    r0 = r13
                    r1 = r10
                    java.lang.Object r0 = r0.get(r1)
                    org.json.JSONObject r0 = (org.json.JSONObject) r0
                    r10 = r0
                La1:
                    r0 = r6
                    com.google.android.gms.internal.ads.bji r0 = r0.f45597a
                    r13 = r0
                    com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42775cf
                    r6 = r0
                    com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
                    r1 = r6
                    java.lang.Object r0 = r0.m18571a(r1)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto Lbe
                    goto Lc5
                Lbe:
                    r0 = r13
                    org.json.JSONObject r0 = r0.f44096b
                    r12 = r0
                Lc5:
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
