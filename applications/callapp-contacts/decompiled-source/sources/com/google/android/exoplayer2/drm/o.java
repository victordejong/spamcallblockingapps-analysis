package com.google.android.exoplayer2.drm;

import android.util.Pair;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/o.class */
public final class o {
    private o() {
    }

    private static long a(Map<String, String> map, String str) {
        if (map == null) {
            return -9223372036854775807L;
        }
        try {
            String str2 = map.get(str);
            if (str2 != null) {
                return Long.parseLong(str2);
            }
            return -9223372036854775807L;
        } catch (NumberFormatException e) {
            return -9223372036854775807L;
        }
    }

    public static Pair<Long, Long> a(DrmSession drmSession) {
        Map<String, String> h = drmSession.h();
        if (h == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(h, "LicenseDurationRemaining")), Long.valueOf(a(h, "PlaybackDurationRemaining")));
    }
}
