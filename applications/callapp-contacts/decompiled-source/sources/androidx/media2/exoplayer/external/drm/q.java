package androidx.media2.exoplayer.external.drm;

import android.util.Pair;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/q.class */
public final class q {
    private q() {
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

    public static Pair<Long, Long> a(DrmSession<?> drmSession) {
        Map<String, String> e = drmSession.e();
        if (e == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(e, "LicenseDurationRemaining")), Long.valueOf(a(e, "PlaybackDurationRemaining")));
    }
}
