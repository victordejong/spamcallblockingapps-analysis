package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ8\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0019\u0010\r\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u0019\u0010\tR\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001c\u0010\u0004R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u001a\u001a\u0004\b\u001d\u0010\u0004¨\u0006 "}, d2 = {"Lcom/truecaller/profile/data/dto/MediaCallerIDs;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "", "component4", "()J", "url", "mediaType", "orientation", RemoteMessageConst.TTL, "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/truecaller/profile/data/dto/MediaCallerIDs;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getTtl", "Ljava/lang/String;", "getMediaType", "getOrientation", "getUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/MediaCallerIDs.class */
public final class MediaCallerIDs {
    private final String mediaType;
    private final String orientation;
    private final long ttl;
    private final String url;

    public MediaCallerIDs(String str, String str2, String str3, long j) {
        C22128a.m8703I0(str, "url", str2, "mediaType", str3, "orientation");
        this.url = str;
        this.mediaType = str2;
        this.orientation = str3;
        this.ttl = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.profile.data.dto.MediaCallerIDs] */
    public static /* synthetic */ MediaCallerIDs copy$default(MediaCallerIDs mediaCallerIDs, String str, String str2, String str3, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((MediaCallerIDs) mediaCallerIDs).url;
        }
        if ((i & 2) != 0) {
            str2 = ((MediaCallerIDs) mediaCallerIDs).mediaType;
        }
        if ((i & 4) != 0) {
            str3 = ((MediaCallerIDs) mediaCallerIDs).orientation;
        }
        ?? r11 = j;
        if ((i & 8) != 0) {
            r11 = ((MediaCallerIDs) mediaCallerIDs).ttl;
        }
        return mediaCallerIDs.copy(str, str2, str3, r11);
    }

    public final String component1() {
        return this.url;
    }

    public final String component2() {
        return this.mediaType;
    }

    public final String component3() {
        return this.orientation;
    }

    public final long component4() {
        return this.ttl;
    }

    public final MediaCallerIDs copy(String str, String str2, String str3, long j) {
        l.e(str, "url");
        l.e(str2, "mediaType");
        l.e(str3, "orientation");
        return new MediaCallerIDs(str, str2, str3, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof MediaCallerIDs)) {
                return false;
            }
            MediaCallerIDs mediaCallerIDs = (MediaCallerIDs) obj;
            return l.a(this.url, mediaCallerIDs.url) && l.a(this.mediaType, mediaCallerIDs.mediaType) && l.a(this.orientation, mediaCallerIDs.orientation) && this.ttl == mediaCallerIDs.ttl;
        }
        return true;
    }

    public final String getMediaType() {
        return this.mediaType;
    }

    public final String getOrientation() {
        return this.orientation;
    }

    public final long getTtl() {
        return this.ttl;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.mediaType;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.orientation;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + C4876d.m34274a(this.ttl);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MediaCallerIDs(url=");
        m8728C.append(this.url);
        m8728C.append(", mediaType=");
        m8728C.append(this.mediaType);
        m8728C.append(", orientation=");
        m8728C.append(this.orientation);
        m8728C.append(", ttl=");
        return C22128a.m8693K2(m8728C, this.ttl, ")");
    }
}
