package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.mobileads.VastTrackerTwo;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p631e0.C14967x;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\b\u0016\u0018�� \u00122\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002:\u0002\u0011\u0012B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020��H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, m815d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;", "Lcom/mopub/mobileads/VastTrackerTwo;", "", "trackingMilliseconds", "", "content", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "isRepeatable", "", "(ILjava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V", "getTrackingMilliseconds", "()I", "compareTo", "other", "toString", "Builder", "Companion", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTrackerTwo.class */
public class VastAbsoluteProgressTrackerTwo extends VastTrackerTwo implements Comparable<VastAbsoluteProgressTrackerTwo> {
    public static final Companion Companion = new Companion(null);

    /* renamed from: f */
    public static final Pattern f8526f = Pattern.compile("\\d{2}:\\d{2}:\\d{2}(.\\d{3})?");
    @AbstractC10120c(Constants.VAST_TRACKER_TRACKING_MS)
    @AbstractC10118a

    /* renamed from: e */
    public final int f8527e;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\t\u0010\r\u001a\u00020\u0003HÂ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020��2\u0006\u0010\t\u001a\u00020\nJ\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;", "", "content", "", "trackingMilliseconds", "", "(Ljava/lang/String;I)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "build", "Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTrackerTwo.MessageType f8528a = VastTrackerTwo.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f8529b;

        /* renamed from: c */
        public final String f8530c;

        /* renamed from: d */
        public final int f8531d;

        public Builder(String str, int i) {
            C15149k.m377b(str, "content");
            this.f8530c = str;
            this.f8531d = i;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = builder.f8530c;
            }
            if ((i2 & 2) != 0) {
                i = builder.f8531d;
            }
            return builder.copy(str, i);
        }

        public final VastAbsoluteProgressTrackerTwo build() {
            return new VastAbsoluteProgressTrackerTwo(this.f8531d, this.f8530c, this.f8528a, this.f8529b);
        }

        public final Builder copy(String str, int i) {
            C15149k.m377b(str, "content");
            return new Builder(str, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return C15149k.m384a((Object) this.f8530c, (Object) builder.f8530c) && this.f8531d == builder.f8531d;
        }

        public int hashCode() {
            String str = this.f8530c;
            return ((str != null ? str.hashCode() : 0) * 31) + this.f8531d;
        }

        public final Builder isRepeatable(boolean z) {
            this.f8529b = z;
            return this;
        }

        public final Builder messageType(VastTrackerTwo.MessageType messageType) {
            C15149k.m377b(messageType, "messageType");
            this.f8528a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f8530c + ", trackingMilliseconds=" + this.f8531d + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0017\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u000eR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;", "", "()V", "absolutePattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "serialVersionUID", "", "isAbsoluteTracker", "", "progressValue", "", "parseAbsoluteOffset", "", "(Ljava/lang/String;)Ljava/lang/Integer;", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public final boolean isAbsoluteTracker(String str) {
            boolean z = false;
            if (!(str == null || str.length() == 0)) {
                z = false;
                if (VastAbsoluteProgressTrackerTwo.f8526f.matcher(str).matches()) {
                    z = true;
                }
            }
            return z;
        }

        public final Integer parseAbsoluteOffset(String str) {
            Integer num = null;
            if (str != null) {
                List a = C14967x.m691a((CharSequence) str, new String[]{":"}, false, 0, 6, (Object) null);
                num = null;
                if (a != null) {
                    if (!(a.size() == 3)) {
                        a = null;
                    }
                    num = null;
                    if (a != null) {
                        Integer.parseInt((String) a.get(0));
                        Integer.parseInt((String) a.get(1));
                        num = Integer.valueOf((int) (Float.parseFloat((String) a.get(2)) * 1000));
                    }
                }
            }
            return num;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastAbsoluteProgressTrackerTwo(int i, String str, VastTrackerTwo.MessageType messageType, boolean z) {
        super(str, messageType, z);
        C15149k.m377b(str, "content");
        C15149k.m377b(messageType, "messageType");
        this.f8527e = i;
    }

    public int compareTo(VastAbsoluteProgressTrackerTwo vastAbsoluteProgressTrackerTwo) {
        C15149k.m377b(vastAbsoluteProgressTrackerTwo, "other");
        return C15149k.m386a(this.f8527e, vastAbsoluteProgressTrackerTwo.f8527e);
    }

    public final int getTrackingMilliseconds() {
        return this.f8527e;
    }

    public String toString() {
        return this.f8527e + "ms: " + getContent();
    }
}
