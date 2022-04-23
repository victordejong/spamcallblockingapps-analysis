package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import java.io.Serializable;
import java.util.Locale;
import java.util.regex.Pattern;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker.class */
public class VastAbsoluteProgressTracker extends VastTracker implements Comparable<VastAbsoluteProgressTracker>, Serializable {
    public static Pattern absolutePattern = Pattern.compile("\\d{2}:\\d{2}:\\d{2}(.\\d{3})?");
    public static final long serialVersionUID = 0;
    @AbstractC6134c(Constants.VAST_TRACKER_TRACKING_MS)
    @AbstractC6132a
    public final int mTrackingMilliseconds;

    public VastAbsoluteProgressTracker(VastTracker.MessageType messageType, String str, int i) {
        super(messageType, str);
        Preconditions.checkArgument(i >= 0);
        this.mTrackingMilliseconds = i;
    }

    public VastAbsoluteProgressTracker(String str, int i) {
        this(VastTracker.MessageType.TRACKING_URL, str, i);
    }

    public static boolean isAbsoluteTracker(String str) {
        return !TextUtils.isEmpty(str) && absolutePattern.matcher(str).matches();
    }

    public static Integer parseAbsoluteOffset(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        if (split.length != 3) {
            return null;
        }
        return Integer.valueOf((Integer.parseInt(split[0]) * 60 * 60 * 1000) + (Integer.parseInt(split[1]) * 60 * 1000) + ((int) (Float.parseFloat(split[2]) * 1000.0f)));
    }

    public int compareTo(VastAbsoluteProgressTracker vastAbsoluteProgressTracker) {
        return getTrackingMilliseconds() - vastAbsoluteProgressTracker.getTrackingMilliseconds();
    }

    public int getTrackingMilliseconds() {
        return this.mTrackingMilliseconds;
    }

    public String toString() {
        return String.format(Locale.US, "%dms: %s", Integer.valueOf(this.mTrackingMilliseconds), getContent());
    }
}
