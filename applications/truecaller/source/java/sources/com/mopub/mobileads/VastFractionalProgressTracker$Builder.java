package com.mopub.mobileads;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.mobileads.VastTracker;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b!\u0010\"J\u0015\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0006\u001a\u00020��2\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ$\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\rHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;", "", "Lcom/mopub/mobileads/VastTracker$MessageType;", "messageType", "(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;", "", "isRepeatable", "(Z)Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;", "Lcom/mopub/mobileads/VastFractionalProgressTracker;", "build", "()Lcom/mopub/mobileads/VastFractionalProgressTracker;", "", "content", "", "trackingFraction", "copy", "(Ljava/lang/String;F)Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Lcom/mopub/mobileads/VastTracker$MessageType;", C22021b.f61237c, "Z", "d", "F", AbstractC2405c.f7629a, "Ljava/lang/String;", "<init>", "(Ljava/lang/String;F)V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker$Builder.class */
public final class VastFractionalProgressTracker$Builder {

    /* renamed from: a */
    public VastTracker.MessageType f8861a = VastTracker.MessageType.TRACKING_URL;

    /* renamed from: b */
    public boolean f8862b;

    /* renamed from: c */
    public final String f8863c;

    /* renamed from: d */
    public final float f8864d;

    public VastFractionalProgressTracker$Builder(String str, float f) {
        l.f(str, "content");
        this.f8863c = str;
        this.f8864d = f;
    }

    public static /* synthetic */ VastFractionalProgressTracker$Builder copy$default(VastFractionalProgressTracker$Builder vastFractionalProgressTracker$Builder, String str, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            str = vastFractionalProgressTracker$Builder.f8863c;
        }
        if ((i & 2) != 0) {
            f = vastFractionalProgressTracker$Builder.f8864d;
        }
        return vastFractionalProgressTracker$Builder.copy(str, f);
    }

    public final VastFractionalProgressTracker build() {
        return new VastFractionalProgressTracker(this.f8864d, this.f8863c, this.f8861a, this.f8862b);
    }

    public final VastFractionalProgressTracker$Builder copy(String str, float f) {
        l.f(str, "content");
        return new VastFractionalProgressTracker$Builder(str, f);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VastFractionalProgressTracker$Builder)) {
                return false;
            }
            VastFractionalProgressTracker$Builder vastFractionalProgressTracker$Builder = (VastFractionalProgressTracker$Builder) obj;
            return l.a(this.f8863c, vastFractionalProgressTracker$Builder.f8863c) && Float.compare(this.f8864d, vastFractionalProgressTracker$Builder.f8864d) == 0;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f8863c;
        return Float.floatToIntBits(this.f8864d) + ((str != null ? str.hashCode() : 0) * 31);
    }

    public final VastFractionalProgressTracker$Builder isRepeatable(boolean z) {
        this.f8862b = z;
        return this;
    }

    public final VastFractionalProgressTracker$Builder messageType(VastTracker.MessageType messageType) {
        l.f(messageType, "messageType");
        this.f8861a = messageType;
        return this;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Builder(content=");
        m8728C.append(this.f8863c);
        m8728C.append(", trackingFraction=");
        m8728C.append(this.f8864d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
