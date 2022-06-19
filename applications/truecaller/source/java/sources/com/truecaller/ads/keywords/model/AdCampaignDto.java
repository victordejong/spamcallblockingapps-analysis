package com.truecaller.ads.keywords.model;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001b\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J(\u0010\n\u001a\u00020��2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/ads/keywords/model/AdCampaignDto;", "", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;", "component2", "()Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;", "id", "style", "copy", "(Ljava/lang/String;Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;)Lcom/truecaller/ads/keywords/model/AdCampaignDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;", "getStyle", "Ljava/lang/String;", "getId", "<init>", "(Ljava/lang/String;Lcom/truecaller/ads/keywords/model/AdCampaignStyleDto;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/keywords/model/AdCampaignDto.class */
public final class AdCampaignDto {

    /* renamed from: id */
    private final String f9852id;
    private final AdCampaignStyleDto style;

    public AdCampaignDto(String str, AdCampaignStyleDto adCampaignStyleDto) {
        this.f9852id = str;
        this.style = adCampaignStyleDto;
    }

    public static /* synthetic */ AdCampaignDto copy$default(AdCampaignDto adCampaignDto, String str, AdCampaignStyleDto adCampaignStyleDto, int i, Object obj) {
        if ((i & 1) != 0) {
            str = adCampaignDto.f9852id;
        }
        if ((i & 2) != 0) {
            adCampaignStyleDto = adCampaignDto.style;
        }
        return adCampaignDto.copy(str, adCampaignStyleDto);
    }

    public final String component1() {
        return this.f9852id;
    }

    public final AdCampaignStyleDto component2() {
        return this.style;
    }

    public final AdCampaignDto copy(String str, AdCampaignStyleDto adCampaignStyleDto) {
        return new AdCampaignDto(str, adCampaignStyleDto);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdCampaignDto)) {
                return false;
            }
            AdCampaignDto adCampaignDto = (AdCampaignDto) obj;
            return l.a(this.f9852id, adCampaignDto.f9852id) && l.a(this.style, adCampaignDto.style);
        }
        return true;
    }

    public final String getId() {
        return this.f9852id;
    }

    public final AdCampaignStyleDto getStyle() {
        return this.style;
    }

    public int hashCode() {
        String str = this.f9852id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AdCampaignStyleDto adCampaignStyleDto = this.style;
        if (adCampaignStyleDto != null) {
            i = adCampaignStyleDto.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdCampaignDto(id=");
        m8728C.append(this.f9852id);
        m8728C.append(", style=");
        m8728C.append(this.style);
        m8728C.append(")");
        return m8728C.toString();
    }
}
