package com.truecaller.ads.offline.dto;

import androidx.annotation.Keep;
import com.truecaller.ads.offline.deeplink.OfflineAdsDeeplink;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J&\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ads/offline/dto/LeadgenConnectionCampaign;", "", "", "component1", "()Ljava/lang/String;", "component2", OfflineAdsDeeplink.PARAM_DEEPLINK_LEADGEN_ID, "url", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/LeadgenConnectionCampaign;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getLeadgenId", "getUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/LeadgenConnectionCampaign.class */
public final class LeadgenConnectionCampaign {
    @b("leadgen_id")
    private final String leadgenId;
    private final String url;

    public LeadgenConnectionCampaign(String str, String str2) {
        l.e(str, OfflineAdsDeeplink.PARAM_DEEPLINK_LEADGEN_ID);
        this.leadgenId = str;
        this.url = str2;
    }

    public static /* synthetic */ LeadgenConnectionCampaign copy$default(LeadgenConnectionCampaign leadgenConnectionCampaign, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = leadgenConnectionCampaign.leadgenId;
        }
        if ((i & 2) != 0) {
            str2 = leadgenConnectionCampaign.url;
        }
        return leadgenConnectionCampaign.copy(str, str2);
    }

    public final String component1() {
        return this.leadgenId;
    }

    public final String component2() {
        return this.url;
    }

    public final LeadgenConnectionCampaign copy(String str, String str2) {
        l.e(str, OfflineAdsDeeplink.PARAM_DEEPLINK_LEADGEN_ID);
        return new LeadgenConnectionCampaign(str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof LeadgenConnectionCampaign)) {
                return false;
            }
            LeadgenConnectionCampaign leadgenConnectionCampaign = (LeadgenConnectionCampaign) obj;
            return l.a(this.leadgenId, leadgenConnectionCampaign.leadgenId) && l.a(this.url, leadgenConnectionCampaign.url);
        }
        return true;
    }

    public final String getLeadgenId() {
        return this.leadgenId;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.leadgenId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LeadgenConnectionCampaign(leadgenId=");
        m8728C.append(this.leadgenId);
        m8728C.append(", url=");
        return C22128a.m8618h(m8728C, this.url, ")");
    }
}
