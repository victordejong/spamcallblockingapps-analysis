package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sv0.class */
public final class sv0 {

    /* renamed from: a */
    private final Context f8566a;

    /* renamed from: b */
    private final zzbbq f8567b;

    /* renamed from: c */
    private final sl1 f8568c;

    /* renamed from: d */
    private final Executor f8569d;

    public sv0(Context context, zzbbq zzbbqVar, sl1 sl1Var, Executor executor) {
        this.f8566a = context;
        this.f8567b = zzbbqVar;
        this.f8568c = sl1Var;
        this.f8569d = executor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x007d, code lost:
        if (r0.equals(r0) != false) goto L_0x0083;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.rz1<com.google.android.gms.internal.ads.ml1> m5569a() {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zc r0 = com.google.android.gms.ads.internal.C1407r.m8907q()
            r1 = r6
            android.content.Context r1 = r1.f8566a
            r2 = r6
            com.google.android.gms.internal.ads.zzbbq r2 = r2.f8567b
            com.google.android.gms.internal.ads.jd r0 = r0.m4652b(r1, r2)
            r7 = r0
            com.google.android.gms.internal.ads.cd<org.json.JSONObject> r0 = com.google.android.gms.internal.ads.C1751gd.f6642b
            r8 = r0
            r0 = r7
            java.lang.String r1 = "google.afma.response.normalize"
            r2 = r8
            r3 = r8
            com.google.android.gms.internal.ads.yc r0 = r0.m7044a(r1, r2, r3)
            r7 = r0
            r0 = r6
            com.google.android.gms.internal.ads.sl1 r0 = r0.f8568c
            com.google.android.gms.internal.ads.zzys r0 = r0.f8499d
            com.google.android.gms.internal.ads.zzyk r0 = r0.t
            r8 = r0
            com.google.android.gms.internal.ads.e3<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C1842m3.f7508t4
            r9 = r0
            com.google.android.gms.internal.ads.k3 r0 = com.google.android.gms.internal.ads.C1674c.m7906c()
            r1 = r9
            java.lang.Object r0 = r0.m6878b(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x003e
            goto L_0x0083
        L_0x003e:
            r0 = r8
            if (r0 == 0) goto L_0x00b7
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: JSONException -> 0x00c6
            r10 = r0
            r0 = r10
            r1 = r8
            java.lang.String r1 = r1.b     // Catch: JSONException -> 0x00c6
            r0.<init>(r1)     // Catch: JSONException -> 0x00c6
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: JSONException -> 0x00c6
            r9 = r0
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.c     // Catch: JSONException -> 0x00c6
            r0.<init>(r1)     // Catch: JSONException -> 0x00c6
            r0 = r10
            java.lang.String r1 = "request_id"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.optString(r1, r2)
            r10 = r0
            r0 = r9
            java.lang.String r1 = "request_id"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.optString(r1, r2)
            r9 = r0
            r0 = r9
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00b7
            r0 = r10
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0083
            goto L_0x00b7
        L_0x0083:
            java.lang.String r0 = ""
            com.google.android.gms.internal.ads.rz1 r0 = com.google.android.gms.internal.ads.kz1.a(r0)
            com.google.android.gms.internal.ads.pv0 r1 = new com.google.android.gms.internal.ads.pv0
            r2 = r1
            r3 = r6
            r4 = r8
            r2.<init>(r3, r4)
            r2 = r6
            java.util.concurrent.Executor r2 = r2.f8569d
            com.google.android.gms.internal.ads.rz1 r0 = com.google.android.gms.internal.ads.kz1.h(r0, r1, r2)
            com.google.android.gms.internal.ads.qv0 r1 = new com.google.android.gms.internal.ads.qv0
            r2 = r1
            r3 = r7
            r2.<init>(r3)
            r2 = r6
            java.util.concurrent.Executor r2 = r2.f8569d
            com.google.android.gms.internal.ads.rz1 r0 = com.google.android.gms.internal.ads.kz1.h(r0, r1, r2)
            com.google.android.gms.internal.ads.rv0 r1 = new com.google.android.gms.internal.ads.rv0
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r2 = r6
            java.util.concurrent.Executor r2 = r2.f8569d
            com.google.android.gms.internal.ads.rz1 r0 = com.google.android.gms.internal.ads.kz1.h(r0, r1, r2)
            return r0
        L_0x00b7:
            com.google.android.gms.internal.ads.zzczn r0 = new com.google.android.gms.internal.ads.zzczn
            r1 = r0
            r2 = 14
            java.lang.String r3 = "Mismatch request IDs."
            r1.<init>(r2, r3)
            com.google.android.gms.internal.ads.rz1 r0 = com.google.android.gms.internal.ads.kz1.b(r0)
            return r0
        L_0x00c6:
            r7 = move-exception
            goto L_0x00b7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sv0.m5569a():com.google.android.gms.internal.ads.rz1");
    }

    /* renamed from: b */
    final /* synthetic */ rz1 m5568b(JSONObject jSONObject) {
        return kz1.a(new ml1(new il1(this.f8568c), kl1.m6793a(new StringReader(jSONObject.toString()))));
    }
}
