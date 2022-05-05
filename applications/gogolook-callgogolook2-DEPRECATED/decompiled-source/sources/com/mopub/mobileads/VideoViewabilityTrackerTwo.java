package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.mobileads.VastTrackerTwo;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0016\u0018�� \u00102\u00020\u0001:\u0002\u000f\u0010B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\r¨\u0006\u0011"}, m815d2 = {"Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;", "Lcom/mopub/mobileads/VastTrackerTwo;", "viewablePlaytimeMS", "", VideoViewabilityTrackerXmlManager.PERCENT_VIEWABLE, "content", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "isRepeatable", "", "(IILjava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V", "getPercentViewable", "()I", "getViewablePlaytimeMS", "Builder", "Companion", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTrackerTwo.class */
public class VideoViewabilityTrackerTwo extends VastTrackerTwo {
    public static final Companion Companion = new Companion(null);
    @AbstractC10120c(Constants.VAST_TRACKER_PLAYTIME_MS)
    @AbstractC10118a

    /* renamed from: e */
    public final int f8818e;
    @AbstractC10120c(Constants.VAST_TRACKER_PERCENT_VIEWABLE)
    @AbstractC10118a

    /* renamed from: f */
    public final int f8819f;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\t\u0010\u0011\u001a\u00020\u0003HÂ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J'\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\b\u001a\u00020��2\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\r¨\u0006\u0019"}, m815d2 = {"Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;", "", "content", "", "viewablePlaytimeMS", "", VideoViewabilityTrackerXmlManager.PERCENT_VIEWABLE, "(Ljava/lang/String;II)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "getPercentViewable", "()I", "getViewablePlaytimeMS", "build", "Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTrackerTwo.MessageType f8820a = VastTrackerTwo.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f8821b;

        /* renamed from: c */
        public final String f8822c;

        /* renamed from: d */
        public final int f8823d;

        /* renamed from: e */
        public final int f8824e;

        public Builder(String str, int i, int i2) {
            C15149k.m377b(str, "content");
            this.f8822c = str;
            this.f8823d = i;
            this.f8824e = i2;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = builder.f8822c;
            }
            if ((i3 & 2) != 0) {
                i = builder.f8823d;
            }
            if ((i3 & 4) != 0) {
                i2 = builder.f8824e;
            }
            return builder.copy(str, i, i2);
        }

        public final VideoViewabilityTrackerTwo build() {
            return new VideoViewabilityTrackerTwo(this.f8823d, this.f8824e, this.f8822c, this.f8820a, this.f8821b);
        }

        public final int component2() {
            return this.f8823d;
        }

        public final int component3() {
            return this.f8824e;
        }

        public final Builder copy(String str, int i, int i2) {
            C15149k.m377b(str, "content");
            return new Builder(str, i, i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return C15149k.m384a((Object) this.f8822c, (Object) builder.f8822c) && this.f8823d == builder.f8823d && this.f8824e == builder.f8824e;
        }

        public final int getPercentViewable() {
            return this.f8824e;
        }

        public final int getViewablePlaytimeMS() {
            return this.f8823d;
        }

        public int hashCode() {
            String str = this.f8822c;
            return ((((str != null ? str.hashCode() : 0) * 31) + this.f8823d) * 31) + this.f8824e;
        }

        public final Builder isRepeatable(boolean z) {
            this.f8821b = z;
            return this;
        }

        public final Builder messageType(VastTrackerTwo.MessageType messageType) {
            C15149k.m377b(messageType, "messageType");
            this.f8820a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f8822c + ", viewablePlaytimeMS=" + this.f8823d + ", percentViewable=" + this.f8824e + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoViewabilityTrackerTwo(int i, int i2, String str, VastTrackerTwo.MessageType messageType, boolean z) {
        super(str, messageType, z);
        C15149k.m377b(str, "content");
        C15149k.m377b(messageType, "messageType");
        this.f8818e = i;
        this.f8819f = i2;
    }

    public final int getPercentViewable() {
        return this.f8819f;
    }

    public final int getViewablePlaytimeMS() {
        return this.f8818e;
    }
}
