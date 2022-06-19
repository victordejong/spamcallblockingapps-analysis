package com.linkedin.android.litr.p470h;

import android.media.MediaFormat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.C16619c;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p466d.C16634c;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.linkedin.android.litr.h.c */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/h/c.class */
public final class C16657c {

    /* renamed from: a */
    private static final String f58613a = "c";

    private C16657c() {
    }

    /* renamed from: a */
    public static int m6801a(AbstractC16635d abstractC16635d, int i) {
        float f;
        MediaFormat mo6859a = abstractC16635d.mo6859a(i);
        if (mo6859a.containsKey("bitrate")) {
            return mo6859a.getInteger("bitrate");
        }
        float f2 = ((float) mo6859a.getLong("durationUs")) / 1000000.0f;
        int i2 = 0;
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        float mo6850g = (float) abstractC16635d.mo6850g();
        int mo6860a = abstractC16635d.mo6860a();
        float f3 = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            f = f3;
            if (i2 >= mo6860a) {
                break;
            }
            MediaFormat mo6859a2 = abstractC16635d.mo6859a(i2);
            float f4 = mo6850g;
            float f5 = f;
            if (mo6859a2.containsKey("mime")) {
                if (!mo6859a2.containsKey("bitrate") || !mo6859a2.containsKey("durationUs")) {
                    f4 = mo6850g;
                    f5 = f;
                    if (mo6859a2.getString("mime").startsWith("video")) {
                        f5 = f + (mo6859a2.getInteger("width") * mo6859a2.getInteger("height") * (((float) mo6859a2.getLong("durationUs")) / 1000000.0f));
                        f4 = mo6850g;
                    }
                } else {
                    f4 = mo6850g - ((mo6859a2.getInteger("bitrate") * (((float) mo6859a2.getLong("durationUs")) / 1000000.0f)) / 8.0f);
                    f5 = f;
                }
            }
            i2++;
            mo6850g = f4;
            f3 = f5;
        }
        float integer = mo6859a.getInteger("width") * mo6859a.getInteger("height");
        float f6 = mo6850g;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            f6 = (mo6850g * (integer * f2)) / f;
        }
        return (int) ((f6 * 8.0f) / f2);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m6803a(android.content.Context r5, android.net.Uri r6) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.android.litr.p470h.C16657c.m6803a(android.content.Context, android.net.Uri):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* renamed from: a */
    private static long m6802a(C16619c c16619c) {
        C16634c mo6849h = c16619c.f58480a.mo6849h();
        long j = mo6849h.f58546b;
        long j2 = mo6849h.f58545a;
        MediaFormat mo6859a = c16619c.f58480a.mo6859a(c16619c.f58486g);
        return Math.min(j - j2, (mo6859a.containsKey("durationUs") ? mo6859a.getLong("durationUs") : true) == true ? 1L : 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* renamed from: a */
    public static long m6800a(List<C16619c> list) {
        char c;
        Iterator<C16619c> it2 = list.iterator();
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (!it2.hasNext()) {
                break;
            }
            r0 = Math.max(m6802a(it2.next()), (long) c);
        }
        Iterator<C16619c> it3 = list.iterator();
        float f = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            float f2 = f;
            if (it3.hasNext()) {
                C16619c next = it3.next();
                MediaFormat mo6859a = next.f58480a.mo6859a(next.f58486g);
                int i = -1;
                if (mo6859a.containsKey("bitrate")) {
                    i = mo6859a.getInteger("bitrate");
                }
                ?? m6802a = m6802a(next);
                char c2 = m6802a;
                if (m6802a < 0) {
                    c2 = c;
                }
                String str = null;
                if (mo6859a.containsKey("mime")) {
                    str = mo6859a.getString("mime");
                }
                int i2 = i;
                if (str != null) {
                    if (next.f58485f != null) {
                        i2 = next.f58485f.getInteger("bitrate");
                    } else {
                        i2 = i;
                        if (str.startsWith("audio")) {
                            i2 = i;
                            if (i < 0) {
                                i2 = 320000;
                            }
                        }
                    }
                }
                int i3 = i2;
                if (i2 < 0) {
                    i3 = 0;
                }
                f = f2 + (i3 * (c2 / 1000000.0f));
            } else {
                return f2 / 8.0f;
            }
        }
    }
}
