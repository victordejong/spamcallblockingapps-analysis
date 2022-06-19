package com.mopub.mobileads;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.mobileads.VastTracker;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0019\b\u0086\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000b¢\u0006\u0004\b&\u0010'J\u0015\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0006\u001a\u00020��2\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\u000e\u0010\rJ.\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u000bHÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0017\u0010\rJ\u001a\u0010\u0019\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0019\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\rR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0019\u0010\u0011\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b$\u0010\u001e\u001a\u0004\b%\u0010\r¨\u0006("}, d2 = {"Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;", "", "Lcom/mopub/mobileads/VastTracker$MessageType;", "messageType", "(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;", "", "isRepeatable", "(Z)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;", "Lcom/mopub/mobileads/VideoViewabilityTracker;", "build", "()Lcom/mopub/mobileads/VideoViewabilityTracker;", "", "component2", "()I", "component3", "", "content", "viewablePlaytimeMS", VideoViewabilityTrackerXmlManager.PERCENT_VIEWABLE, "copy", "(Ljava/lang/String;II)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;", "toString", "()Ljava/lang/String;", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", AbstractC2405c.f7629a, "Ljava/lang/String;", "e", "I", "getPercentViewable", "a", "Lcom/mopub/mobileads/VastTracker$MessageType;", C22021b.f61237c, "Z", "d", "getViewablePlaytimeMS", "<init>", "(Ljava/lang/String;II)V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker$Builder.class */
public final class VideoViewabilityTracker$Builder {

    /* renamed from: a */
    public VastTracker.MessageType f8963a = VastTracker.MessageType.TRACKING_URL;

    /* renamed from: b */
    public boolean f8964b;

    /* renamed from: c */
    public final String f8965c;

    /* renamed from: d */
    public final int f8966d;

    /* renamed from: e */
    public final int f8967e;

    public VideoViewabilityTracker$Builder(String str, int i, int i2) {
        l.f(str, "content");
        this.f8965c = str;
        this.f8966d = i;
        this.f8967e = i2;
    }

    public static /* synthetic */ VideoViewabilityTracker$Builder copy$default(VideoViewabilityTracker$Builder videoViewabilityTracker$Builder, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = videoViewabilityTracker$Builder.f8965c;
        }
        if ((i3 & 2) != 0) {
            i = videoViewabilityTracker$Builder.f8966d;
        }
        if ((i3 & 4) != 0) {
            i2 = videoViewabilityTracker$Builder.f8967e;
        }
        return videoViewabilityTracker$Builder.copy(str, i, i2);
    }

    public final VideoViewabilityTracker build() {
        return new VideoViewabilityTracker(this.f8966d, this.f8967e, this.f8965c, this.f8963a, this.f8964b);
    }

    public final int component2() {
        return this.f8966d;
    }

    public final int component3() {
        return this.f8967e;
    }

    public final VideoViewabilityTracker$Builder copy(String str, int i, int i2) {
        l.f(str, "content");
        return new VideoViewabilityTracker$Builder(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VideoViewabilityTracker$Builder)) {
                return false;
            }
            VideoViewabilityTracker$Builder videoViewabilityTracker$Builder = (VideoViewabilityTracker$Builder) obj;
            return l.a(this.f8965c, videoViewabilityTracker$Builder.f8965c) && this.f8966d == videoViewabilityTracker$Builder.f8966d && this.f8967e == videoViewabilityTracker$Builder.f8967e;
        }
        return true;
    }

    public final int getPercentViewable() {
        return this.f8967e;
    }

    public final int getViewablePlaytimeMS() {
        return this.f8966d;
    }

    public int hashCode() {
        String str = this.f8965c;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.f8966d) * 31) + this.f8967e;
    }

    public final VideoViewabilityTracker$Builder isRepeatable(boolean z) {
        this.f8964b = z;
        return this;
    }

    public final VideoViewabilityTracker$Builder messageType(VastTracker.MessageType messageType) {
        l.f(messageType, "messageType");
        this.f8963a = messageType;
        return this;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Builder(content=");
        m8728C.append(this.f8965c);
        m8728C.append(", viewablePlaytimeMS=");
        m8728C.append(this.f8966d);
        m8728C.append(", percentViewable=");
        return C22128a.m8697J2(m8728C, this.f8967e, ")");
    }
}
