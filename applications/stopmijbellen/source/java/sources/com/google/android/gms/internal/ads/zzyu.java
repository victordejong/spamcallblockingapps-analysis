package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyu.class */
final class zzyu {
    private static final String[] zza = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] zzb = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] zzc = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0098, code lost:
        if (r0 == (-1)) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzyq zza(java.lang.String r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzyu.zza(java.lang.String):com.google.android.gms.internal.ads.zzyq");
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
    private static zzfss<zzyp> zzb(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        zzfsp zzi = zzfss.zzi();
        String concat = str.concat(":Item");
        String concat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (zzfo.zzc(xmlPullParser, concat)) {
                String concat3 = str2.concat(":Mime");
                String concat4 = str2.concat(":Semantic");
                String concat5 = str2.concat(":Length");
                String concat6 = str2.concat(":Padding");
                String zza2 = zzfo.zza(xmlPullParser, concat3);
                String zza3 = zzfo.zza(xmlPullParser, concat4);
                String zza4 = zzfo.zza(xmlPullParser, concat5);
                String zza5 = zzfo.zza(xmlPullParser, concat6);
                if (zza2 == null || zza3 == null) {
                    return zzfss.zzo();
                }
                zzi.zze((zzfsp) new zzyp(zza2, zza3, (zza4 != null ? Long.parseLong(zza4) : false) == true ? 1L : 0L, (zza5 != null ? Long.parseLong(zza5) : false) == true ? 1L : 0L));
            }
        } while (!zzfo.zzb(xmlPullParser, concat2));
        return zzi.zzf();
    }
}
