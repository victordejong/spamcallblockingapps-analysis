package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q21.class */
public final class q21 extends AbstractBinderC6454eu {

    /* renamed from: d */
    private final String f28293d;

    /* renamed from: e */
    private final String f28294e;

    /* renamed from: f */
    private final List<zzbdp> f28295f;

    /* renamed from: g */
    private final long f28296g;

    /* renamed from: h */
    private final String f28297h;

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(r8) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q21(com.google.android.gms.internal.ads.ej2 r7, java.lang.String r8, com.google.android.gms.internal.ads.uw1 r9, com.google.android.gms.internal.ads.jj2 r10) {
        /*
            r6 = this;
            r0 = r6
            r0.<init>()
            r0 = 0
            r11 = r0
            r0 = r7
            if (r0 != 0) goto L11
            r0 = 0
            r12 = r0
            goto L17
        L11:
            r0 = r7
            java.lang.String r0 = r0.f22216X
            r12 = r0
        L17:
            r0 = r6
            r1 = r12
            r0.f28294e = r1
            java.lang.String r0 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L33
            r0 = r11
            r12 = r0
            java.lang.String r0 = "com.google.ads.mediation.customevent.CustomEventAdapter"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L46
        L33:
            r0 = r7
            org.json.JSONObject r0 = r0.f22250v     // Catch: org.json.JSONException -> L41
            java.lang.String r1 = "class_name"
            java.lang.String r0 = r0.getString(r1)     // Catch: org.json.JSONException -> L41
            r12 = r0
            goto L46
        L41:
            r7 = move-exception
            r0 = r11
            r12 = r0
        L46:
            r0 = r12
            if (r0 != 0) goto L4e
            goto L51
        L4e:
            r0 = r12
            r8 = r0
        L51:
            r0 = r6
            r1 = r8
            r0.f28293d = r1
            r0 = r6
            r1 = r9
            java.util.List r1 = r1.m10167e()
            r0.f28295f = r1
            r0 = r6
            com.google.android.gms.common.util.e r1 = com.google.android.gms.ads.internal.C5667s.m18153k()
            long r1 = r1.mo16807a()
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r2
            r0.f28296g = r1
            com.google.android.gms.internal.ads.cw<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C6679kw.f25490G6
            r7 = r0
            com.google.android.gms.internal.ads.iw r0 = com.google.android.gms.internal.ads.C7192yr.m8714c()
            r1 = r7
            java.lang.Object r0 = r0.m14263c(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L9e
            r0 = r10
            if (r0 == 0) goto L9e
            r0 = r10
            java.lang.String r0 = r0.f24903h
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L95
            goto L9e
        L95:
            r0 = r10
            java.lang.String r0 = r0.f24903h
            r7 = r0
            goto La1
        L9e:
            java.lang.String r0 = ""
            r7 = r0
        La1:
            r0 = r6
            r1 = r7
            r0.f28297h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.q21.<init>(com.google.android.gms.internal.ads.ej2, java.lang.String, com.google.android.gms.internal.ads.uw1, com.google.android.gms.internal.ads.jj2):void");
    }

    /* renamed from: E6 */
    public final long m12043E6() {
        return this.f28296g;
    }

    /* renamed from: F6 */
    public final String m12042F6() {
        return this.f28297h;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6491fu
    /* renamed from: a */
    public final String mo12041a() {
        return this.f28293d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6491fu
    /* renamed from: d */
    public final String mo12040d() {
        return this.f28294e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6491fu
    public final List<zzbdp> zzg() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25625X5)).booleanValue()) {
            return null;
        }
        return this.f28295f;
    }
}
