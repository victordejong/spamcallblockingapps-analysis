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
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker.class */
public class VastFractionalProgressTracker extends VastTracker implements Comparable<VastFractionalProgressTracker>, Serializable {
    public static Pattern percentagePattern = Pattern.compile("((\\d{1,2})|(100))%");
    public static final long serialVersionUID = 0;
    @AbstractC6134c(Constants.VAST_TRACKER_TRACKING_FRACTION)
    @AbstractC6132a
    public final float mFraction;

    public VastFractionalProgressTracker(VastTracker.MessageType messageType, String str, float f) {
        super(messageType, str);
        Preconditions.checkArgument(f >= 0.0f);
        this.mFraction = f;
    }

    public VastFractionalProgressTracker(String str, float f) {
        this(VastTracker.MessageType.TRACKING_URL, str, f);
    }

    public static boolean isPercentageTracker(String str) {
        Preconditions.checkNotNull(str);
        return !TextUtils.isEmpty(str) && percentagePattern.matcher(str).matches();
    }

    public static int parsePercentageOffset(String str, int i) {
        Preconditions.checkNotNull(str);
        return Math.round((i * Float.parseFloat(str.replace("%", ""))) / 100.0f);
    }

    public int compareTo(VastFractionalProgressTracker vastFractionalProgressTracker) {
        return Double.compare(trackingFraction(), vastFractionalProgressTracker.trackingFraction());
    }

    public String toString() {
        return String.format(Locale.US, "%2f: %s", Float.valueOf(this.mFraction), getContent());
    }

    public float trackingFraction() {
        return this.mFraction;
    }
}
