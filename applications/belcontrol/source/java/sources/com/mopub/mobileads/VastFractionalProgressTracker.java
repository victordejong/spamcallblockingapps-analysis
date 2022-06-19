package com.mopub.mobileads;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastTracker;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker.class */
public final class VastFractionalProgressTracker extends VastTracker implements Comparable<VastFractionalProgressTracker> {
    public static final Companion Companion = new Companion(null);

    /* renamed from: g */
    public static final Pattern f4812g = Pattern.compile("((\\d{1,2})|(100))%");
    private static final long serialVersionUID = 1;
    @SerializedName(Constants.VAST_TRACKER_TRACKING_FRACTION)
    @Expose

    /* renamed from: f */
    public final float f4813f;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTracker.MessageType f4814a = VastTracker.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f4815b;

        /* renamed from: c */
        public final String f4816c;

        /* renamed from: d */
        public final float f4817d;

        public Builder(String str, float f) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            this.f4816c = str;
            this.f4817d = f;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f4816c;
            }
            if ((i & 2) != 0) {
                f = builder.f4817d;
            }
            return builder.copy(str, f);
        }

        public final VastFractionalProgressTracker build() {
            return new VastFractionalProgressTracker(this.f4817d, this.f4816c, this.f4814a, this.f4815b);
        }

        public final Builder copy(String str, float f) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            return new Builder(str, f);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Builder)) {
                    return false;
                }
                Builder builder = (Builder) obj;
                return qk1.m746a(this.f4816c, builder.f4816c) && Float.compare(this.f4817d, builder.f4817d) == 0;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4816c;
            return ((str != null ? str.hashCode() : 0) * 31) + Float.floatToIntBits(this.f4817d);
        }

        public final Builder isRepeatable(boolean z) {
            this.f4815b = z;
            return this;
        }

        public final Builder messageType(VastTracker.MessageType messageType) {
            qk1.m744c(messageType, "messageType");
            this.f4814a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f4816c + ", trackingFraction=" + this.f4817d + ")";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }

        public final boolean isPercentageTracker(String str) {
            boolean z = false;
            if (!(str == null || str.length() == 0)) {
                z = false;
                if (VastFractionalProgressTracker.f4812g.matcher(str).matches()) {
                    z = true;
                }
            }
            return z;
        }

        public final Integer parsePercentageOffset(String str, int i) {
            String m556e;
            return (str == null || (m556e = sl1.m556e(str, "%", "", false, 4, null)) == null) ? null : Integer.valueOf((int) Math.rint((i * Float.parseFloat(m556e)) / 100.0f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastFractionalProgressTracker(float f, String str, VastTracker.MessageType messageType, boolean z) {
        super(str, messageType, z);
        qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
        qk1.m744c(messageType, "messageType");
        this.f4813f = f;
    }

    public int compareTo(VastFractionalProgressTracker vastFractionalProgressTracker) {
        qk1.m744c(vastFractionalProgressTracker, "other");
        return Float.compare(this.f4813f, vastFractionalProgressTracker.f4813f);
    }

    public final float getTrackingFraction() {
        return this.f4813f;
    }

    public String toString() {
        return this.f4813f + ": " + getContent();
    }
}
