package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C1359f;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzf.class */
public final class zzzf {

    /* renamed from: a */
    private final C1359f[] f9719a;

    /* renamed from: b */
    private final String f9720b;

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.String, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.CharSequence, java.lang.String, android.content.res.TypedArray] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzzf(android.content.Context r5, android.util.AttributeSet r6) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r5
            android.content.res.Resources r0 = r0.getResources()
            r1 = r6
            int[] r2 = com.google.android.gms.ads.C1494o.AdsAttrs
            android.content.res.TypedArray r0 = r0.obtainAttributes(r1, r2)
            r5 = r0
            r0 = r5
            int r1 = com.google.android.gms.ads.C1494o.AdsAttrs_adSize
            java.lang.String r0 = r0.getString(r1)
            r6 = r0
            r0 = r5
            int r1 = com.google.android.gms.ads.C1494o.AdsAttrs_adSizes
            java.lang.String r0 = r0.getString(r1)
            r7 = r0
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0045
            r0 = r9
            if (r0 != 0) goto L_0x0045
            r0 = r4
            r1 = r6
            com.google.android.gms.ads.f[] r1 = m4467c(r1)
            r0.f9719a = r1
            goto L_0x0057
        L_0x0045:
            r0 = r8
            if (r0 != 0) goto L_0x007a
            r0 = r9
            if (r0 == 0) goto L_0x007a
            r0 = r4
            r1 = r7
            com.google.android.gms.ads.f[] r1 = m4467c(r1)
            r0.f9719a = r1
        L_0x0057:
            r0 = r5
            int r1 = com.google.android.gms.ads.C1494o.AdsAttrs_adUnitId
            java.lang.String r0 = r0.getString(r1)
            r6 = r0
            r0 = r4
            r1 = r6
            r0.f9720b = r1
            r0 = r5
            r0.recycle()
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0070
            return
        L_0x0070:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Required XML attribute \"adUnitId\" was missing."
            r1.<init>(r2)
            throw r0
        L_0x007a:
            r0 = r5
            r0.recycle()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L_0x008f
            r0 = r5
            java.lang.String r1 = "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."
            r0.<init>(r1)
            r0 = r5
            throw r0
        L_0x008f:
            r0 = r5
            java.lang.String r1 = "Required XML attribute \"adSize\" was missing."
            r0.<init>(r1)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzf.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: c */
    private static C1359f[] m4467c(String str) {
        String[] split = str.split("\\s*,\\s*");
        int length = split.length;
        C1359f[] fVarArr = new C1359f[length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    fVarArr[i] = new C1359f("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    String valueOf = String.valueOf(trim);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(trim)) {
                fVarArr[i] = C1359f.f5453i;
            } else if ("LARGE_BANNER".equals(trim)) {
                fVarArr[i] = C1359f.f5455k;
            } else if ("FULL_BANNER".equals(trim)) {
                fVarArr[i] = C1359f.f5454j;
            } else if ("LEADERBOARD".equals(trim)) {
                fVarArr[i] = C1359f.f5456l;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                fVarArr[i] = C1359f.f5457m;
            } else if ("SMART_BANNER".equals(trim)) {
                fVarArr[i] = C1359f.f5459o;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                fVarArr[i] = C1359f.f5458n;
            } else if ("FLUID".equals(trim)) {
                fVarArr[i] = C1359f.f5460p;
            } else if ("ICON".equals(trim)) {
                fVarArr[i] = C1359f.f5462r;
            } else {
                String valueOf2 = String.valueOf(trim);
                throw new IllegalArgumentException(valueOf2.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf2) : new String("Could not parse XML attribute \"adSize\": "));
            }
        }
        if (length != 0) {
            return fVarArr;
        }
        String valueOf3 = String.valueOf(str);
        throw new IllegalArgumentException(valueOf3.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf3) : new String("Could not parse XML attribute \"adSize\": "));
    }

    /* renamed from: a */
    public final C1359f[] m4469a(boolean z) {
        if (z || this.f9719a.length == 1) {
            return this.f9719a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }

    /* renamed from: b */
    public final String m4468b() {
        return this.f9720b;
    }
}
