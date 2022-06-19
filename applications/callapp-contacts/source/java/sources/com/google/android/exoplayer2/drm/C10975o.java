package com.google.android.exoplayer2.drm;

import android.util.Pair;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.drm.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/o.class */
public final class C10975o {
    private C10975o() {
    }

    /* renamed from: a */
    private static long m21814a(Map<String, String> map, String str) {
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
    public static Pair<Long, Long> m21815a(DrmSession drmSession) {
        Map<String, String> mo21838h = drmSession.mo21838h();
        if (mo21838h == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(m21814a(mo21838h, "LicenseDurationRemaining")), Long.valueOf(m21814a(mo21838h, "PlaybackDurationRemaining")));
    }
}
