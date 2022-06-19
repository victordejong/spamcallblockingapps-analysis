package com.truecaller.ads.mediation.predictiveecpm.model;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ6\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R!\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u0019\u0010\nR\u001c\u0010\f\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001b\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004¨\u0006 "}, d2 = {"Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;", "", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;", "component2", "()Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;", "", "component3", "()Ljava/util/List;", "partnerId", "pricingConfig", "adTypes", "copy", "(Ljava/lang/String;Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;Ljava/util/List;)Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getAdTypes", "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;", "getPricingConfig", "Ljava/lang/String;", "getPartnerId", "<init>", "(Ljava/lang/String;Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig.class */
public final class PredictiveEcpmPartnerConfig {
    private final List<String> adTypes;
    @b("partnerId")
    private final String partnerId;
    @b("pricing")
    private final PredictiveEcpmPricingConfig pricingConfig;

    public PredictiveEcpmPartnerConfig(String str, PredictiveEcpmPricingConfig predictiveEcpmPricingConfig, List<String> list) {
        l.e(str, "partnerId");
        l.e(predictiveEcpmPricingConfig, "pricingConfig");
        this.partnerId = str;
        this.pricingConfig = predictiveEcpmPricingConfig;
        this.adTypes = list;
    }

    public static /* synthetic */ PredictiveEcpmPartnerConfig copy$default(PredictiveEcpmPartnerConfig predictiveEcpmPartnerConfig, String str, PredictiveEcpmPricingConfig predictiveEcpmPricingConfig, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = predictiveEcpmPartnerConfig.partnerId;
        }
        if ((i & 2) != 0) {
            predictiveEcpmPricingConfig = predictiveEcpmPartnerConfig.pricingConfig;
        }
        if ((i & 4) != 0) {
            list = predictiveEcpmPartnerConfig.adTypes;
        }
        return predictiveEcpmPartnerConfig.copy(str, predictiveEcpmPricingConfig, list);
    }

    public final String component1() {
        return this.partnerId;
    }

    public final PredictiveEcpmPricingConfig component2() {
        return this.pricingConfig;
    }

    public final List<String> component3() {
        return this.adTypes;
    }

    public final PredictiveEcpmPartnerConfig copy(String str, PredictiveEcpmPricingConfig predictiveEcpmPricingConfig, List<String> list) {
        l.e(str, "partnerId");
        l.e(predictiveEcpmPricingConfig, "pricingConfig");
        return new PredictiveEcpmPartnerConfig(str, predictiveEcpmPricingConfig, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PredictiveEcpmPartnerConfig)) {
                return false;
            }
            PredictiveEcpmPartnerConfig predictiveEcpmPartnerConfig = (PredictiveEcpmPartnerConfig) obj;
            return l.a(this.partnerId, predictiveEcpmPartnerConfig.partnerId) && l.a(this.pricingConfig, predictiveEcpmPartnerConfig.pricingConfig) && l.a(this.adTypes, predictiveEcpmPartnerConfig.adTypes);
        }
        return true;
    }

    public final List<String> getAdTypes() {
        return this.adTypes;
    }

    public final String getPartnerId() {
        return this.partnerId;
    }

    public final PredictiveEcpmPricingConfig getPricingConfig() {
        return this.pricingConfig;
    }

    public int hashCode() {
        String str = this.partnerId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        PredictiveEcpmPricingConfig predictiveEcpmPricingConfig = this.pricingConfig;
        int hashCode2 = predictiveEcpmPricingConfig != null ? predictiveEcpmPricingConfig.hashCode() : 0;
        List<String> list = this.adTypes;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PredictiveEcpmPartnerConfig(partnerId=");
        m8728C.append(this.partnerId);
        m8728C.append(", pricingConfig=");
        m8728C.append(this.pricingConfig);
        m8728C.append(", adTypes=");
        return C22128a.m8602l(m8728C, this.adTypes, ")");
    }
}
