package com.mopub.mobileads;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastTracker;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker.class */
public class VastAbsoluteProgressTracker extends VastTracker implements Comparable<VastAbsoluteProgressTracker> {
    public static final Companion Companion = new Companion(null);

    /* renamed from: g */
    public static final Pattern f4792g = Pattern.compile("\\d{2}:\\d{2}:\\d{2}(.\\d{3})?");
    private static final long serialVersionUID = 1;
    @SerializedName(Constants.VAST_TRACKER_TRACKING_MS)
    @Expose

    /* renamed from: f */
    public final int f4793f;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTracker.MessageType f4794a = VastTracker.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f4795b;

        /* renamed from: c */
        public final String f4796c;

        /* renamed from: d */
        public final int f4797d;

        public Builder(String str, int i) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            this.f4796c = str;
            this.f4797d = i;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = builder.f4796c;
            }
            if ((i2 & 2) != 0) {
                i = builder.f4797d;
            }
            return builder.copy(str, i);
        }

        public final VastAbsoluteProgressTracker build() {
            return new VastAbsoluteProgressTracker(this.f4797d, this.f4796c, this.f4794a, this.f4795b);
        }

        public final Builder copy(String str, int i) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            return new Builder(str, i);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Builder)) {
                    return false;
                }
                Builder builder = (Builder) obj;
                return qk1.m746a(this.f4796c, builder.f4796c) && this.f4797d == builder.f4797d;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4796c;
            return ((str != null ? str.hashCode() : 0) * 31) + this.f4797d;
        }

        public final Builder isRepeatable(boolean z) {
            this.f4795b = z;
            return this;
        }

        public final Builder messageType(VastTracker.MessageType messageType) {
            qk1.m744c(messageType, "messageType");
            this.f4794a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f4796c + ", trackingMilliseconds=" + this.f4797d + ")";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }

        public final boolean isAbsoluteTracker(String str) {
            boolean z = false;
            if (!(str == null || str.length() == 0)) {
                z = false;
                if (VastAbsoluteProgressTracker.f4792g.matcher(str).matches()) {
                    z = true;
                }
            }
            return z;
        }

        public final Integer parseAbsoluteOffset(String str) {
            Integer num = null;
            if (str != null) {
                List m457t = tl1.m457t(str, new String[]{":"}, false, 0, 6, null);
                num = null;
                if (m457t != null) {
                    if (!(m457t.size() == 3)) {
                        m457t = null;
                    }
                    num = null;
                    if (m457t != null) {
                        num = Integer.valueOf((Integer.parseInt((String) m457t.get(0)) * 60 * 60 * 1000) + (Integer.parseInt((String) m457t.get(1)) * 60 * 1000) + ((int) (Float.parseFloat((String) m457t.get(2)) * 1000)));
                    }
                }
            }
            return num;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastAbsoluteProgressTracker(int i, String str, VastTracker.MessageType messageType, boolean z) {
        super(str, messageType, z);
        qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
        qk1.m744c(messageType, "messageType");
        this.f4793f = i;
    }

    public int compareTo(VastAbsoluteProgressTracker vastAbsoluteProgressTracker) {
        qk1.m744c(vastAbsoluteProgressTracker, "other");
        return qk1.m743d(this.f4793f, vastAbsoluteProgressTracker.f4793f);
    }

    public final int getTrackingMilliseconds() {
        return this.f4793f;
    }

    public String toString() {
        return this.f4793f + "ms: " + getContent();
    }
}
