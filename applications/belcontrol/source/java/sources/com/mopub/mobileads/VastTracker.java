package com.mopub.mobileads;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.mopub.common.Constants;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker.class */
public class VastTracker implements Serializable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 3;

    /* renamed from: a */
    public boolean f4850a;
    @SerializedName(Constants.VAST_TRACKER_CONTENT)
    @Expose

    /* renamed from: b */
    public final String f4851b;
    @SerializedName(Constants.VAST_TRACKER_MESSAGE_TYPE)
    @Expose

    /* renamed from: c */
    public final MessageType f4852c;
    @SerializedName(Constants.VAST_TRACKER_REPEATABLE)
    @Expose

    /* renamed from: d */
    public final boolean f4853d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public MessageType f4854a = MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f4855b;

        /* renamed from: c */
        public final String f4856c;

        public Builder(String str) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            this.f4856c = str;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f4856c;
            }
            return builder.copy(str);
        }

        public final VastTracker build() {
            return new VastTracker(this.f4856c, this.f4854a, this.f4855b);
        }

        public final Builder copy(String str) {
            qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
            return new Builder(str);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Builder) && qk1.m746a(this.f4856c, ((Builder) obj).f4856c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4856c;
            return str != null ? str.hashCode() : 0;
        }

        public final Builder isRepeatable(boolean z) {
            this.f4855b = z;
            return this;
        }

        public final Builder messageType(MessageType messageType) {
            qk1.m744c(messageType, "messageType");
            this.f4854a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f4856c + ")";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker$MessageType.class */
    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public VastTracker(String str, MessageType messageType, boolean z) {
        qk1.m744c(str, Constants.VAST_TRACKER_CONTENT);
        qk1.m744c(messageType, "messageType");
        this.f4851b = str;
        this.f4852c = messageType;
        this.f4853d = z;
    }

    public final String getContent() {
        return this.f4851b;
    }

    public final MessageType getMessageType() {
        return this.f4852c;
    }

    public final boolean isRepeatable() {
        return this.f4853d;
    }

    public final boolean isTracked() {
        return this.f4850a;
    }

    public final void setTracked() {
        this.f4850a = true;
    }
}
