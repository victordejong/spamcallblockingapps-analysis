package com.truecaller.ads.util;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0007\u001a\u00020��2\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0013\u001a\u0004\b\u0014\u0010\u0005¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ads/util/AdClickRestrictedPartnerConfig;", "", "", "Lcom/truecaller/ads/util/AdClickRestrictedPartner;", "component1", "()Ljava/util/List;", "partners", "copy", "(Ljava/util/List;)Lcom/truecaller/ads/util/AdClickRestrictedPartnerConfig;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getPartners", "<init>", "(Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/util/AdClickRestrictedPartnerConfig.class */
public final class AdClickRestrictedPartnerConfig {
    private final List<AdClickRestrictedPartner> partners;

    public AdClickRestrictedPartnerConfig(List<AdClickRestrictedPartner> list) {
        l.e(list, "partners");
        this.partners = list;
    }

    public static /* synthetic */ AdClickRestrictedPartnerConfig copy$default(AdClickRestrictedPartnerConfig adClickRestrictedPartnerConfig, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = adClickRestrictedPartnerConfig.partners;
        }
        return adClickRestrictedPartnerConfig.copy(list);
    }

    public final List<AdClickRestrictedPartner> component1() {
        return this.partners;
    }

    public final AdClickRestrictedPartnerConfig copy(List<AdClickRestrictedPartner> list) {
        l.e(list, "partners");
        return new AdClickRestrictedPartnerConfig(list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof AdClickRestrictedPartnerConfig) && l.a(this.partners, ((AdClickRestrictedPartnerConfig) obj).partners);
        }
        return true;
    }

    public final List<AdClickRestrictedPartner> getPartners() {
        return this.partners;
    }

    public int hashCode() {
        List<AdClickRestrictedPartner> list = this.partners;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("AdClickRestrictedPartnerConfig(partners="), this.partners, ")");
    }
}
