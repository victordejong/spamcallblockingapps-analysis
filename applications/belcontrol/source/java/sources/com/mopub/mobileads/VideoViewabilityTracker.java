package com.mopub.mobileads;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastTracker;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker.class */
public class VideoViewabilityTracker extends VastTracker {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 1;
    @SerializedName(Constants.VAST_TRACKER_PLAYTIME_MS)
    @Expose

    /* renamed from: f */
    public final int f4975f;
    @SerializedName(Constants.VAST_TRACKER_PERCENT_VIEWABLE)
    @Expose

    /* renamed from: g */
    public final int f4976g;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTracker.MessageType f4977a = VastTracker.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f4978b;

        /* renamed from: c */
        public final String f4979c;

        /* renamed from: d */
        public final int f4980d;

        /* renamed from: e */
        public final int f4981e;

        public Builder(String str, int i, int i2) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            this.f4979c = str;
            this.f4980d = i;
            this.f4981e = i2;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = builder.f4979c;
            }
            if ((i3 & 2) != 0) {
                i = builder.f4980d;
            }
            if ((i3 & 4) != 0) {
                i2 = builder.f4981e;
            }
            return builder.copy(str, i, i2);
        }

        public final VideoViewabilityTracker build() {
            return new VideoViewabilityTracker(this.f4980d, this.f4981e, this.f4979c, this.f4977a, this.f4978b);
        }

        public final int component2() {
            return this.f4980d;
        }

        public final int component3() {
            return this.f4981e;
        }

        public final Builder copy(String str, int i, int i2) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            return new Builder(str, i, i2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Builder)) {
                    return false;
                }
                Builder builder = (Builder) obj;
                return qk1.m746a(this.f4979c, builder.f4979c) && this.f4980d == builder.f4980d && this.f4981e == builder.f4981e;
            }
            return true;
        }

        public final int getPercentViewable() {
            return this.f4981e;
        }

        public final int getViewablePlaytimeMS() {
            return this.f4980d;
        }

        public int hashCode() {
            String str = this.f4979c;
            return ((((str != null ? str.hashCode() : 0) * 31) + this.f4980d) * 31) + this.f4981e;
        }

        public final Builder isRepeatable(boolean z) {
            this.f4978b = z;
            return this;
        }

        public final Builder messageType(VastTracker.MessageType messageType) {
            qk1.m744c(messageType, "messageType");
            this.f4977a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f4979c + ", viewablePlaytimeMS=" + this.f4980d + ", percentViewable=" + this.f4981e + ")";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoViewabilityTracker(int i, int i2, String str, VastTracker.MessageType messageType, boolean z) {
        super(str, messageType, z);
        qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
        qk1.m744c(messageType, "messageType");
        this.f4975f = i;
        this.f4976g = i2;
    }

    public final int getPercentViewable() {
        return this.f4976g;
    }

    public final int getViewablePlaytimeMS() {
        return this.f4975f;
    }
}
