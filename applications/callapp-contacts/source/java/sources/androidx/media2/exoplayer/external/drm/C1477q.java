package androidx.media2.exoplayer.external.drm;

import android.util.Pair;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.drm.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/q.class */
public final class C1477q {
    private C1477q() {
    }

    /* renamed from: a */
    private static long m42849a(Map<String, String> map, String str) {
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

    /* renamed from: a */
    public static Pair<Long, Long> m42850a(DrmSession<?> drmSession) {
        Map<String, String> mo42862e = drmSession.mo42862e();
        if (mo42862e == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(m42849a(mo42862e, "LicenseDurationRemaining")), Long.valueOf(m42849a(mo42862e, "PlaybackDurationRemaining")));
    }
}
