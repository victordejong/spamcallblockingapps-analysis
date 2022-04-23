package com.mopub.mobileads;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import java.io.Serializable;
import java.util.Locale;
import java.util.regex.Pattern;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker.class */
public class VastAbsoluteProgressTracker extends VastTracker implements Comparable<VastAbsoluteProgressTracker>, Serializable {

    /* renamed from: f */
    public static Pattern f8524f = Pattern.compile("\\d{2}:\\d{2}:\\d{2}(.\\d{3})?");
    @AbstractC10120c(Constants.VAST_TRACKER_TRACKING_MS)
    @AbstractC10118a

    /* renamed from: e */
    public final int f8525e;

    public VastAbsoluteProgressTracker(@NonNull VastTracker.EnumC3847a aVar, @NonNull String str, int i) {
        super(aVar, str);
        Preconditions.checkArgument(i >= 0);
        this.f8525e = i;
    }

    public VastAbsoluteProgressTracker(@NonNull String str, int i) {
        this(VastTracker.EnumC3847a.TRACKING_URL, str, i);
    }

    public static boolean isAbsoluteTracker(String str) {
        return !TextUtils.isEmpty(str) && f8524f.matcher(str).matches();
    }

    public static Integer parseAbsoluteOffset(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        if (split.length != 3) {
            return null;
        }
        return Integer.valueOf((Integer.parseInt(split[0]) * 60 * 60 * 1000) + (Integer.parseInt(split[1]) * 60 * 1000) + ((int) (Float.parseFloat(split[2]) * 1000.0f)));
    }

    public int compareTo(@NonNull VastAbsoluteProgressTracker vastAbsoluteProgressTracker) {
        return getTrackingMilliseconds() - vastAbsoluteProgressTracker.getTrackingMilliseconds();
    }

    public int getTrackingMilliseconds() {
        return this.f8525e;
    }

    public String toString() {
        return String.format(Locale.US, "%dms: %s", Integer.valueOf(this.f8525e), getContent());
    }
}
