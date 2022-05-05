package com.mopub.mobileads;

import com.mopub.common.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0016\u0018�� \u00132\u00020\u0001:\u0003\u0012\u0013\u0014B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u0010\u001a\u00020\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u000bR\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m815d2 = {"Lcom/mopub/mobileads/VastTrackerTwo;", "Ljava/io/Serializable;", "content", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "isRepeatable", "", "(Ljava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V", "getContent", "()Ljava/lang/String;", "()Z", "<set-?>", "isTracked", "getMessageType", "()Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "setTracked", "", "Builder", "Companion", "MessageType", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo.class */
public class VastTrackerTwo implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public boolean f8600a;
    @AbstractC10120c("content")
    @AbstractC10118a

    /* renamed from: b */
    public final String f8601b;
    @AbstractC10120c(Constants.VAST_TRACKER_MESSAGE_TYPE)
    @AbstractC10118a

    /* renamed from: c */
    public final MessageType f8602c;
    @AbstractC10120c(Constants.VAST_TRACKER_REPEATABLE)
    @AbstractC10118a

    /* renamed from: d */
    public final boolean f8603d;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\t\u0010\u000b\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\bJ\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lcom/mopub/mobileads/VastTrackerTwo$Builder;", "", "content", "", "(Ljava/lang/String;)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "build", "Lcom/mopub/mobileads/VastTrackerTwo;", "component1", "copy", "equals", "other", "hashCode", "", "toString", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public MessageType f8604a = MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f8605b;

        /* renamed from: c */
        public final String f8606c;

        public Builder(String str) {
            C15149k.m377b(str, "content");
            this.f8606c = str;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f8606c;
            }
            return builder.copy(str);
        }

        public final VastTrackerTwo build() {
            return new VastTrackerTwo(this.f8606c, this.f8604a, this.f8605b);
        }

        public final Builder copy(String str) {
            C15149k.m377b(str, "content");
            return new Builder(str);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Builder) && C15149k.m384a((Object) this.f8606c, (Object) ((Builder) obj).f8606c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f8606c;
            return str != null ? str.hashCode() : 0;
        }

        public final Builder isRepeatable(boolean z) {
            this.f8605b = z;
            return this;
        }

        public final Builder messageType(MessageType messageType) {
            C15149k.m377b(messageType, "messageType");
            this.f8604a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f8606c + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lcom/mopub/mobileads/VastTrackerTwo$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m815d2 = {"Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "", "(Ljava/lang/String;I)V", "TRACKING_URL", "QUARTILE_EVENT", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo$MessageType.class */
    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public VastTrackerTwo(String str, MessageType messageType, boolean z) {
        C15149k.m377b(str, "content");
        C15149k.m377b(messageType, "messageType");
        this.f8601b = str;
        this.f8602c = messageType;
        this.f8603d = z;
    }

    public final String getContent() {
        return this.f8601b;
    }

    public final MessageType getMessageType() {
        return this.f8602c;
    }

    public final boolean isRepeatable() {
        return this.f8603d;
    }

    public final boolean isTracked() {
        return this.f8600a;
    }

    public final void setTracked() {
        this.f8600a = true;
    }
}
