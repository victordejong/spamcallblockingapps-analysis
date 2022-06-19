package com.google.android.exoplayer2.drm;

import android.util.Pair;
import com.google.android.exoplayer2.C0515C;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/WidevineUtil.class */
public final class WidevineUtil {
    public static final String PROPERTY_LICENSE_DURATION_REMAINING = "LicenseDurationRemaining";
    public static final String PROPERTY_PLAYBACK_DURATION_REMAINING = "PlaybackDurationRemaining";

    private WidevineUtil() {
    }

    private static long getDurationRemainingSec(Map<String, String> map, String str) {
        if (map != null) {
            try {
                String str2 = map.get(str);
                return str2 != null ? Long.parseLong(str2) : C0515C.TIME_UNSET;
            } catch (NumberFormatException e) {
                return C0515C.TIME_UNSET;
            }
        }
        return C0515C.TIME_UNSET;
    }

    public static Pair<Long, Long> getLicenseDurationRemainingSec(DrmSession<?> drmSession) {
        Map<String, String> queryKeyStatus = drmSession.queryKeyStatus();
        if (queryKeyStatus == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(getDurationRemainingSec(queryKeyStatus, PROPERTY_LICENSE_DURATION_REMAINING)), Long.valueOf(getDurationRemainingSec(queryKeyStatus, PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
