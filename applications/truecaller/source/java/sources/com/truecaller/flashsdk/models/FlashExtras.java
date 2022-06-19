package com.truecaller.flashsdk.models;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B1\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b!\u0010\"J\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ:\u0010\u000f\u001a\u00020��2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR$\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001b\u001a\u0004\b\u001c\u0010\u0005R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b\u001e\u0010\bR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001f\u001a\u0004\b \u0010\u000b¨\u0006#"}, d2 = {"Lcom/truecaller/flashsdk/models/FlashExtras;", "", "", "Lcom/truecaller/flashsdk/models/ReplyActionsItem;", "component1", "()Ljava/util/List;", "Lcom/truecaller/flashsdk/models/FlashImageEntity;", "component2", "()Lcom/truecaller/flashsdk/models/FlashImageEntity;", "Lcom/truecaller/flashsdk/models/FlashLocationExtras;", "component3", "()Lcom/truecaller/flashsdk/models/FlashLocationExtras;", "replyActions", "media", "location", "copy", "(Ljava/util/List;Lcom/truecaller/flashsdk/models/FlashImageEntity;Lcom/truecaller/flashsdk/models/FlashLocationExtras;)Lcom/truecaller/flashsdk/models/FlashExtras;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getReplyActions", "Lcom/truecaller/flashsdk/models/FlashImageEntity;", "getMedia", "Lcom/truecaller/flashsdk/models/FlashLocationExtras;", "getLocation", "<init>", "(Ljava/util/List;Lcom/truecaller/flashsdk/models/FlashImageEntity;Lcom/truecaller/flashsdk/models/FlashLocationExtras;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashExtras.class */
public final class FlashExtras {
    @b("location")
    private final FlashLocationExtras location;
    @b("media")
    private final FlashImageEntity media;
    @b("reply_actions")
    private final List<ReplyActionsItem> replyActions;

    public FlashExtras() {
        this(null, null, null, 7, null);
    }

    public FlashExtras(List<ReplyActionsItem> list, FlashImageEntity flashImageEntity, FlashLocationExtras flashLocationExtras) {
        this.replyActions = list;
        this.media = flashImageEntity;
        this.location = flashLocationExtras;
    }

    public /* synthetic */ FlashExtras(List list, FlashImageEntity flashImageEntity, FlashLocationExtras flashLocationExtras, int i, f fVar) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : flashImageEntity, (i & 4) != 0 ? null : flashLocationExtras);
    }

    public static /* synthetic */ FlashExtras copy$default(FlashExtras flashExtras, List list, FlashImageEntity flashImageEntity, FlashLocationExtras flashLocationExtras, int i, Object obj) {
        if ((i & 1) != 0) {
            list = flashExtras.replyActions;
        }
        if ((i & 2) != 0) {
            flashImageEntity = flashExtras.media;
        }
        if ((i & 4) != 0) {
            flashLocationExtras = flashExtras.location;
        }
        return flashExtras.copy(list, flashImageEntity, flashLocationExtras);
    }

    public final List<ReplyActionsItem> component1() {
        return this.replyActions;
    }

    public final FlashImageEntity component2() {
        return this.media;
    }

    public final FlashLocationExtras component3() {
        return this.location;
    }

    public final FlashExtras copy(List<ReplyActionsItem> list, FlashImageEntity flashImageEntity, FlashLocationExtras flashLocationExtras) {
        return new FlashExtras(list, flashImageEntity, flashLocationExtras);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FlashExtras)) {
                return false;
            }
            FlashExtras flashExtras = (FlashExtras) obj;
            return l.a(this.replyActions, flashExtras.replyActions) && l.a(this.media, flashExtras.media) && l.a(this.location, flashExtras.location);
        }
        return true;
    }

    public final FlashLocationExtras getLocation() {
        return this.location;
    }

    public final FlashImageEntity getMedia() {
        return this.media;
    }

    public final List<ReplyActionsItem> getReplyActions() {
        return this.replyActions;
    }

    public int hashCode() {
        List<ReplyActionsItem> list = this.replyActions;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        FlashImageEntity flashImageEntity = this.media;
        int hashCode2 = flashImageEntity != null ? flashImageEntity.hashCode() : 0;
        FlashLocationExtras flashLocationExtras = this.location;
        if (flashLocationExtras != null) {
            i = flashLocationExtras.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FlashExtras(replyActions=");
        m8728C.append(this.replyActions);
        m8728C.append(", media=");
        m8728C.append(this.media);
        m8728C.append(", location=");
        m8728C.append(this.location);
        m8728C.append(")");
        return m8728C.toString();
    }
}
