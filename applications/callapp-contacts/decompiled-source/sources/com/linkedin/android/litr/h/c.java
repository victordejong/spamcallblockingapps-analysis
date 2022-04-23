package com.linkedin.android.litr.h;

import android.media.MediaFormat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.d.d;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/h/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f33753a = "c";

    private c() {
    }

    public static int a(d dVar, int i) {
        MediaFormat a2 = dVar.a(i);
        if (a2.containsKey("bitrate")) {
            return a2.getInteger("bitrate");
        }
        float f = ((float) a2.getLong("durationUs")) / 1000000.0f;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        float g = (float) dVar.g();
        int a3 = dVar.a();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        for (int i2 = 0; i2 < a3; i2++) {
            MediaFormat a4 = dVar.a(i2);
            g = g;
            f2 = f2;
            if (a4.containsKey("mime")) {
                if (!a4.containsKey("bitrate") || !a4.containsKey("durationUs")) {
                    g = g;
                    f2 = f2;
                    if (a4.getString("mime").startsWith("video")) {
                        f2 += a4.getInteger("width") * a4.getInteger("height") * (((float) a4.getLong("durationUs")) / 1000000.0f);
                        g = g;
                    }
                } else {
                    g -= (a4.getInteger("bitrate") * (((float) a4.getLong("durationUs")) / 1000000.0f)) / 8.0f;
                    f2 = f2;
                }
            }
        }
        float integer = a2.getInteger("width") * a2.getInteger("height");
        float f3 = g;
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            f3 = (g * (integer * f)) / f2;
        }
        return (int) ((f3 * 8.0f) / f);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(android.content.Context r5, android.net.Uri r6) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.android.litr.h.c.a(android.content.Context, android.net.Uri):long");
    }

    private static long a(com.linkedin.android.litr.c cVar) {
        com.linkedin.android.litr.d.c h = cVar.f33677a.h();
        long j = h.f33711b;
        long j2 = h.f33710a;
        MediaFormat a2 = cVar.f33677a.a(cVar.g);
        return Math.min(j - j2, a2.containsKey("durationUs") ? a2.getLong("durationUs") : -1L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(java.util.List<com.linkedin.android.litr.c> r5) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.android.litr.h.c.a(java.util.List):long");
    }
}
