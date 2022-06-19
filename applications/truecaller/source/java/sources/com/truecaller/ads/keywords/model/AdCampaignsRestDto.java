package com.truecaller.ads.keywords.model;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010\u0007\u001a\u00020��2\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R$\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0013\u001a\u0004\b\u0014\u0010\u0005¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;", "", "", "Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;", "component1", "()Ljava/util/List;", "keywordPlacements", "copy", "(Ljava/util/List;)Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getKeywordPlacements", "<init>", "(Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/keywords/model/AdCampaignsRestDto.class */
public final class AdCampaignsRestDto {
    @b("adsKeywords")
    private final List<AdKeywordPlacementDto> keywordPlacements;

    public AdCampaignsRestDto(List<AdKeywordPlacementDto> list) {
        this.keywordPlacements = list;
    }

    public static /* synthetic */ AdCampaignsRestDto copy$default(AdCampaignsRestDto adCampaignsRestDto, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = adCampaignsRestDto.keywordPlacements;
        }
        return adCampaignsRestDto.copy(list);
    }

    public final List<AdKeywordPlacementDto> component1() {
        return this.keywordPlacements;
    }

    public final AdCampaignsRestDto copy(List<AdKeywordPlacementDto> list) {
        return new AdCampaignsRestDto(list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof AdCampaignsRestDto) && l.a(this.keywordPlacements, ((AdCampaignsRestDto) obj).keywordPlacements);
        }
        return true;
    }

    public final List<AdKeywordPlacementDto> getKeywordPlacements() {
        return this.keywordPlacements;
    }

    public int hashCode() {
        List<AdKeywordPlacementDto> list = this.keywordPlacements;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("AdCampaignsRestDto(keywordPlacements="), this.keywordPlacements, ")");
    }
}
