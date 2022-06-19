package com.mopub.mobileads;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.mobileads.VastTracker;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b \u0010!J\u0015\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0006\u001a\u00020��2\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ$\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\rHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;", "", "Lcom/mopub/mobileads/VastTracker$MessageType;", "messageType", "(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;", "", "isRepeatable", "(Z)Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;", "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;", "build", "()Lcom/mopub/mobileads/VastAbsoluteProgressTracker;", "", "content", "", "trackingMilliseconds", "copy", "(Ljava/lang/String;I)Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "d", "I", "a", "Lcom/mopub/mobileads/VastTracker$MessageType;", C22021b.f61237c, "Z", AbstractC2405c.f7629a, "Ljava/lang/String;", "<init>", "(Ljava/lang/String;I)V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker$Builder.class */
public final class VastAbsoluteProgressTracker$Builder {

    /* renamed from: a */
    public VastTracker.MessageType f8845a = VastTracker.MessageType.TRACKING_URL;

    /* renamed from: b */
    public boolean f8846b;

    /* renamed from: c */
    public final String f8847c;

    /* renamed from: d */
    public final int f8848d;

    public VastAbsoluteProgressTracker$Builder(String str, int i) {
        l.f(str, "content");
        this.f8847c = str;
        this.f8848d = i;
    }

    public static /* synthetic */ VastAbsoluteProgressTracker$Builder copy$default(VastAbsoluteProgressTracker$Builder vastAbsoluteProgressTracker$Builder, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = vastAbsoluteProgressTracker$Builder.f8847c;
        }
        if ((i2 & 2) != 0) {
            i = vastAbsoluteProgressTracker$Builder.f8848d;
        }
        return vastAbsoluteProgressTracker$Builder.copy(str, i);
    }

    public final VastAbsoluteProgressTracker build() {
        return new VastAbsoluteProgressTracker(this.f8848d, this.f8847c, this.f8845a, this.f8846b);
    }

    public final VastAbsoluteProgressTracker$Builder copy(String str, int i) {
        l.f(str, "content");
        return new VastAbsoluteProgressTracker$Builder(str, i);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VastAbsoluteProgressTracker$Builder)) {
                return false;
            }
            VastAbsoluteProgressTracker$Builder vastAbsoluteProgressTracker$Builder = (VastAbsoluteProgressTracker$Builder) obj;
            return l.a(this.f8847c, vastAbsoluteProgressTracker$Builder.f8847c) && this.f8848d == vastAbsoluteProgressTracker$Builder.f8848d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f8847c;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f8848d;
    }

    public final VastAbsoluteProgressTracker$Builder isRepeatable(boolean z) {
        this.f8846b = z;
        return this;
    }

    public final VastAbsoluteProgressTracker$Builder messageType(VastTracker.MessageType messageType) {
        l.f(messageType, "messageType");
        this.f8845a = messageType;
        return this;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Builder(content=");
        m8728C.append(this.f8847c);
        m8728C.append(", trackingMilliseconds=");
        return C22128a.m8697J2(m8728C, this.f8848d, ")");
    }
}
