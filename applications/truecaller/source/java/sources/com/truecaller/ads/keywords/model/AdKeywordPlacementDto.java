package com.truecaller.ads.keywords.model;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B+\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\u001f\u0010 J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ:\u0010\u000f\u001a\u00020��2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001c\u0010\u0007R!\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b\u001e\u0010\u000b¨\u0006!"}, d2 = {"Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()Ljava/lang/Long;", "", "Lcom/truecaller/ads/keywords/model/AdCampaignDto;", "component3", "()Ljava/util/List;", "placement", "maxAge", "campaigns", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;)Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getPlacement", "Ljava/lang/Long;", "getMaxAge", "Ljava/util/List;", "getCampaigns", "<init>", "(Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/keywords/model/AdKeywordPlacementDto.class */
public final class AdKeywordPlacementDto {
    private final List<AdCampaignDto> campaigns;
    private final Long maxAge;
    private final String placement;

    public AdKeywordPlacementDto(String str, Long l, List<AdCampaignDto> list) {
        this.placement = str;
        this.maxAge = l;
        this.campaigns = list;
    }

    public static /* synthetic */ AdKeywordPlacementDto copy$default(AdKeywordPlacementDto adKeywordPlacementDto, String str, Long l, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = adKeywordPlacementDto.placement;
        }
        if ((i & 2) != 0) {
            l = adKeywordPlacementDto.maxAge;
        }
        if ((i & 4) != 0) {
            list = adKeywordPlacementDto.campaigns;
        }
        return adKeywordPlacementDto.copy(str, l, list);
    }

    public final String component1() {
        return this.placement;
    }

    public final Long component2() {
        return this.maxAge;
    }

    public final List<AdCampaignDto> component3() {
        return this.campaigns;
    }

    public final AdKeywordPlacementDto copy(String str, Long l, List<AdCampaignDto> list) {
        return new AdKeywordPlacementDto(str, l, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdKeywordPlacementDto)) {
                return false;
            }
            AdKeywordPlacementDto adKeywordPlacementDto = (AdKeywordPlacementDto) obj;
            return l.a(this.placement, adKeywordPlacementDto.placement) && l.a(this.maxAge, adKeywordPlacementDto.maxAge) && l.a(this.campaigns, adKeywordPlacementDto.campaigns);
        }
        return true;
    }

    public final List<AdCampaignDto> getCampaigns() {
        return this.campaigns;
    }

    public final Long getMaxAge() {
        return this.maxAge;
    }

    public final String getPlacement() {
        return this.placement;
    }

    public int hashCode() {
        String str = this.placement;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Long l = this.maxAge;
        int hashCode2 = l != null ? l.hashCode() : 0;
        List<AdCampaignDto> list = this.campaigns;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdKeywordPlacementDto(placement=");
        m8728C.append(this.placement);
        m8728C.append(", maxAge=");
        m8728C.append(this.maxAge);
        m8728C.append(", campaigns=");
        return C22128a.m8602l(m8728C, this.campaigns, ")");
    }
}
