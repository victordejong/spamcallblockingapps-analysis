package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpy.class */
public final class zzpy {
    private static final String[] zza = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] zzb = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] zzc = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
        if (r0 == (-1)) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzpu zza(java.lang.String r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpy.zza(java.lang.String):com.google.android.gms.internal.ads.zzpu");
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
    private static zzfoj<zzpt> zzb(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        zzfog zzu = zzfoj.zzu();
        String concat = str.concat(":Item");
        String concat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (zzamr.zzb(xmlPullParser, concat)) {
                String concat3 = str2.concat(":Mime");
                String concat4 = str2.concat(":Semantic");
                String concat5 = str2.concat(":Length");
                String concat6 = str2.concat(":Padding");
                String zzc2 = zzamr.zzc(xmlPullParser, concat3);
                String zzc3 = zzamr.zzc(xmlPullParser, concat4);
                String zzc4 = zzamr.zzc(xmlPullParser, concat5);
                String zzc5 = zzamr.zzc(xmlPullParser, concat6);
                if (zzc2 == null || zzc3 == null) {
                    return zzfoj.zzi();
                }
                zzu.zze((zzfog) new zzpt(zzc2, zzc3, (zzc4 != null ? Long.parseLong(zzc4) : false) == true ? 1L : 0L, (zzc5 != null ? Long.parseLong(zzc5) : false) == true ? 1L : 0L));
            }
        } while (!zzamr.zza(xmlPullParser, concat2));
        return zzu.zzf();
    }
}
