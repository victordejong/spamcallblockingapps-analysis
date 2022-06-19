package com.truecaller.social_media.domain.data;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;", "", "", "component1", "()Ljava/lang/String;", "regions", "copy", "(Ljava/lang/String;)Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getRegions", "<init>", "(Ljava/lang/String;)V", "social-media_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes13-dex2jar.jar:com/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions.class */
public final class TCNewsTikTokBlockedRegions {
    private final String regions;

    public TCNewsTikTokBlockedRegions() {
        this(null, 1, null);
    }

    public TCNewsTikTokBlockedRegions(String str) {
        l.e(str, "regions");
        this.regions = str;
    }

    public /* synthetic */ TCNewsTikTokBlockedRegions(String str, int i, f fVar) {
        this((i & 1) != 0 ? "" : str);
    }

    public static /* synthetic */ TCNewsTikTokBlockedRegions copy$default(TCNewsTikTokBlockedRegions tCNewsTikTokBlockedRegions, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tCNewsTikTokBlockedRegions.regions;
        }
        return tCNewsTikTokBlockedRegions.copy(str);
    }

    public final String component1() {
        return this.regions;
    }

    public final TCNewsTikTokBlockedRegions copy(String str) {
        l.e(str, "regions");
        return new TCNewsTikTokBlockedRegions(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof TCNewsTikTokBlockedRegions) && l.a(this.regions, ((TCNewsTikTokBlockedRegions) obj).regions);
        }
        return true;
    }

    public final String getRegions() {
        return this.regions;
    }

    public int hashCode() {
        String str = this.regions;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("TCNewsTikTokBlockedRegions(regions="), this.regions, ")");
    }
}
