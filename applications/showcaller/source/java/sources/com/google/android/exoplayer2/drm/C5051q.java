package com.google.android.exoplayer2.drm;

import android.util.Pair;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.drm.q */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/q.class */
public final class C5051q {
    /* renamed from: a */
    private static long m20748a(Map<String, String> map, String str) {
        if (map != null) {
            try {
                String str2 = map.get(str);
                if (str2 == null) {
                    return -9223372036854775807L;
                }
                return Long.parseLong(str2);
            } catch (NumberFormatException e) {
                return -9223372036854775807L;
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public static Pair<Long, Long> m20747b(DrmSession<?> drmSession) {
        Map<String, String> mo20766d = drmSession.mo20766d();
        if (mo20766d == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(m20748a(mo20766d, "LicenseDurationRemaining")), Long.valueOf(m20748a(mo20766d, "PlaybackDurationRemaining")));
    }
}
