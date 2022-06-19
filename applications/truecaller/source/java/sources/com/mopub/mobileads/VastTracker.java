package com.mopub.mobileads;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.Constants;
import e.m.e.d0.b;
import java.io.Serializable;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0016\u0018�� #2\u00020\u0001:\u0003$#%B\u001f\u0012\u0006\u0010 \u001a\u00020\r\u0012\u0006\u0010\u001c\u001a\u00020\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0007¢\u0006\u0004\b!\u0010\"J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR$\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u001c\u0010\u001c\u001a\u00020\u00178\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010 \u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\u000f¨\u0006&"}, d2 = {"Lcom/mopub/mobileads/VastTracker;", "Ljava/io/Serializable;", "Ls1/s;", "setTracked", "()V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "<set-?>", "a", "Z", "isTracked", "()Z", "d", "isRepeatable", "Lcom/mopub/mobileads/VastTracker$MessageType;", AbstractC2405c.f7629a, "Lcom/mopub/mobileads/VastTracker$MessageType;", "getMessageType", "()Lcom/mopub/mobileads/VastTracker$MessageType;", "messageType", C22021b.f61237c, "Ljava/lang/String;", "getContent", "content", "<init>", "(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V", "Companion", "Builder", "MessageType", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker.class */
public class VastTracker implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public boolean f8887a;
    @b("content")

    /* renamed from: b */
    private final String f8888b;
    @b("message_type")

    /* renamed from: c */
    private final MessageType f8889c;
    @b(Constants.VAST_TRACKER_REPEATABLE)

    /* renamed from: d */
    private final boolean f8890d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0006\u001a\u00020��2\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u000bHÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/mopub/mobileads/VastTracker$Builder;", "", "Lcom/mopub/mobileads/VastTracker$MessageType;", "messageType", "(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VastTracker$Builder;", "", "isRepeatable", "(Z)Lcom/mopub/mobileads/VastTracker$Builder;", "Lcom/mopub/mobileads/VastTracker;", "build", "()Lcom/mopub/mobileads/VastTracker;", "", "content", "copy", "(Ljava/lang/String;)Lcom/mopub/mobileads/VastTracker$Builder;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", AbstractC2405c.f7629a, "Ljava/lang/String;", C22021b.f61237c, "Z", "a", "Lcom/mopub/mobileads/VastTracker$MessageType;", "<init>", "(Ljava/lang/String;)V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public MessageType f8891a = MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f8892b;

        /* renamed from: c */
        public final String f8893c;

        public Builder(String str) {
            l.f(str, "content");
            this.f8893c = str;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f8893c;
            }
            return builder.copy(str);
        }

        public final VastTracker build() {
            return new VastTracker(this.f8893c, this.f8891a, this.f8892b);
        }

        public final Builder copy(String str) {
            l.f(str, "content");
            return new Builder(str);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Builder) && l.a(this.f8893c, ((Builder) obj).f8893c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f8893c;
            return str != null ? str.hashCode() : 0;
        }

        public final Builder isRepeatable(boolean z) {
            this.f8892b = z;
            return this;
        }

        public final Builder messageType(MessageType messageType) {
            l.f(messageType, "messageType");
            this.f8891a = messageType;
            return this;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Builder(content="), this.f8893c, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/mopub/mobileads/VastTracker$Companion;", "", "", "serialVersionUID", "J", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/mopub/mobileads/VastTracker$MessageType;", "", "<init>", "(Ljava/lang/String;I)V", "TRACKING_URL", "QUARTILE_EVENT", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastTracker$MessageType.class */
    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public VastTracker(String str, MessageType messageType, boolean z) {
        l.f(str, "content");
        l.f(messageType, "messageType");
        this.f8888b = str;
        this.f8889c = messageType;
        this.f8890d = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastTracker)) {
            return false;
        }
        VastTracker vastTracker = (VastTracker) obj;
        return !(l.a(this.f8888b, vastTracker.f8888b) ^ true) && this.f8889c == vastTracker.f8889c && this.f8890d == vastTracker.f8890d && this.f8887a == vastTracker.f8887a;
    }

    public final String getContent() {
        return this.f8888b;
    }

    public final MessageType getMessageType() {
        return this.f8889c;
    }

    public int hashCode() {
        return ((((this.f8889c.hashCode() + (this.f8888b.hashCode() * 31)) * 31) + C0424b.m42597a(this.f8890d)) * 31) + C0424b.m42597a(this.f8887a);
    }

    public final boolean isRepeatable() {
        return this.f8890d;
    }

    public final boolean isTracked() {
        return this.f8887a;
    }

    public final void setTracked() {
        this.f8887a = true;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VastTracker(content='");
        m8728C.append(this.f8888b);
        m8728C.append("', messageType=");
        m8728C.append(this.f8889c);
        m8728C.append(", ");
        m8728C.append("isRepeatable=");
        m8728C.append(this.f8890d);
        m8728C.append(", isTracked=");
        return C22128a.m8598m(m8728C, this.f8887a, ')');
    }
}
