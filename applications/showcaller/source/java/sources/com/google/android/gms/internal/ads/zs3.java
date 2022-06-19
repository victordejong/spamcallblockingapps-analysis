package com.google.android.gms.internal.ads;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zs3.class */
final class zs3 {

    /* renamed from: a */
    private static final String[] f33389a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b */
    private static final String[] f33390b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c */
    private static final String[] f33391c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
        if (r0 == (-1)) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.vs3 m8190a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zs3.m8190a(java.lang.String):com.google.android.gms.internal.ads.vs3");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* renamed from: b */
    private static zzfoj<us3> m8189b(XmlPullParser xmlPullParser, String str, String str2) {
        ax2 zzu = zzfoj.zzu();
        String concat = str.concat(":Item");
        String concat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (C7138xa.m9304b(xmlPullParser, concat)) {
                String concat3 = str2.concat(":Mime");
                String concat4 = str2.concat(":Semantic");
                String concat5 = str2.concat(":Length");
                String concat6 = str2.concat(":Padding");
                String m9303c = C7138xa.m9303c(xmlPullParser, concat3);
                String m9303c2 = C7138xa.m9303c(xmlPullParser, concat4);
                String m9303c3 = C7138xa.m9303c(xmlPullParser, concat5);
                String m9303c4 = C7138xa.m9303c(xmlPullParser, concat6);
                if (m9303c == null || m9303c2 == null) {
                    return zzfoj.zzi();
                }
                zzu.m16468f(new us3(m9303c, m9303c2, (m9303c3 != null ? Long.parseLong(m9303c3) : false) == true ? 1L : 0L, (m9303c4 != null ? Long.parseLong(m9303c4) : false) == true ? 1L : 0L));
            }
        } while (!C7138xa.m9305a(xmlPullParser, concat2));
        return zzu.m16467g();
    }
}
