package com.truecaller.flashsdk.models;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/truecaller/flashsdk/models/FlashImageEntity;", "", "", "component1", "()Ljava/lang/String;", "component2", "imageUrl", "mediaType", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/flashsdk/models/FlashImageEntity;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getImageUrl", "getMediaType", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashImageEntity.class */
public final class FlashImageEntity {
    @b("image_url")
    private final String imageUrl;
    @b("media_type")
    private final String mediaType;

    public FlashImageEntity() {
        this(null, null, 3, null);
    }

    public FlashImageEntity(String str, String str2) {
        l.e(str, "imageUrl");
        l.e(str2, "mediaType");
        this.imageUrl = str;
        this.mediaType = str2;
    }

    public /* synthetic */ FlashImageEntity(String str, String str2, int i, f fVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "media_none" : str2);
    }

    public static /* synthetic */ FlashImageEntity copy$default(FlashImageEntity flashImageEntity, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = flashImageEntity.imageUrl;
        }
        if ((i & 2) != 0) {
            str2 = flashImageEntity.mediaType;
        }
        return flashImageEntity.copy(str, str2);
    }

    public final String component1() {
        return this.imageUrl;
    }

    public final String component2() {
        return this.mediaType;
    }

    public final FlashImageEntity copy(String str, String str2) {
        l.e(str, "imageUrl");
        l.e(str2, "mediaType");
        return new FlashImageEntity(str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FlashImageEntity)) {
                return false;
            }
            FlashImageEntity flashImageEntity = (FlashImageEntity) obj;
            return l.a(this.imageUrl, flashImageEntity.imageUrl) && l.a(this.mediaType, flashImageEntity.mediaType);
        }
        return true;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final String getMediaType() {
        return this.mediaType;
    }

    public int hashCode() {
        String str = this.imageUrl;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.mediaType;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FlashImageEntity(imageUrl=");
        m8728C.append(this.imageUrl);
        m8728C.append(", mediaType=");
        return C22128a.m8618h(m8728C, this.mediaType, ")");
    }
}
