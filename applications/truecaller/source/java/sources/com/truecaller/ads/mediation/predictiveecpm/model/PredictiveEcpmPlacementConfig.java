package com.truecaller.ads.mediation.predictiveecpm.model;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B-\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ>\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00062\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u001b\u001a\u0004\b\u001c\u0010\fR\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b\u001e\u0010\u0004R\u0019\u0010\u000f\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b \u0010\bR\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b!\u0010\u0004¨\u0006$"}, d2 = {"Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;", "", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()J", "", "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;", "component4", "()Ljava/util/List;", "placementId", "floorPrice", "expiresAt", "partnerConfigs", "copy", "(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getPartnerConfigs", "Ljava/lang/String;", "getPlacementId", "J", "getExpiresAt", "getFloorPrice", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig.class */
public final class PredictiveEcpmPlacementConfig {
    private final long expiresAt;
    private final String floorPrice;
    @b("partnerLineItems")
    private final List<PredictiveEcpmPartnerConfig> partnerConfigs;
    @b("id")
    private final String placementId;

    public PredictiveEcpmPlacementConfig(String str, String str2, long j, List<PredictiveEcpmPartnerConfig> list) {
        l.e(str, "placementId");
        l.e(str2, "floorPrice");
        l.e(list, "partnerConfigs");
        this.placementId = str;
        this.floorPrice = str2;
        this.expiresAt = j;
        this.partnerConfigs = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.ads.mediation.predictiveecpm.model.PredictiveEcpmPlacementConfig] */
    public static /* synthetic */ PredictiveEcpmPlacementConfig copy$default(PredictiveEcpmPlacementConfig predictiveEcpmPlacementConfig, String str, String str2, long j, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((PredictiveEcpmPlacementConfig) predictiveEcpmPlacementConfig).placementId;
        }
        if ((i & 2) != 0) {
            str2 = ((PredictiveEcpmPlacementConfig) predictiveEcpmPlacementConfig).floorPrice;
        }
        ?? r10 = j;
        if ((i & 4) != 0) {
            r10 = ((PredictiveEcpmPlacementConfig) predictiveEcpmPlacementConfig).expiresAt;
        }
        List<PredictiveEcpmPartnerConfig> list2 = list;
        if ((i & 8) != 0) {
            list2 = ((PredictiveEcpmPlacementConfig) predictiveEcpmPlacementConfig).partnerConfigs;
        }
        return predictiveEcpmPlacementConfig.copy(str, str2, r10, list2);
    }

    public final String component1() {
        return this.placementId;
    }

    public final String component2() {
        return this.floorPrice;
    }

    public final long component3() {
        return this.expiresAt;
    }

    public final List<PredictiveEcpmPartnerConfig> component4() {
        return this.partnerConfigs;
    }

    public final PredictiveEcpmPlacementConfig copy(String str, String str2, long j, List<PredictiveEcpmPartnerConfig> list) {
        l.e(str, "placementId");
        l.e(str2, "floorPrice");
        l.e(list, "partnerConfigs");
        return new PredictiveEcpmPlacementConfig(str, str2, j, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PredictiveEcpmPlacementConfig)) {
                return false;
            }
            PredictiveEcpmPlacementConfig predictiveEcpmPlacementConfig = (PredictiveEcpmPlacementConfig) obj;
            return l.a(this.placementId, predictiveEcpmPlacementConfig.placementId) && l.a(this.floorPrice, predictiveEcpmPlacementConfig.floorPrice) && this.expiresAt == predictiveEcpmPlacementConfig.expiresAt && l.a(this.partnerConfigs, predictiveEcpmPlacementConfig.partnerConfigs);
        }
        return true;
    }

    public final long getExpiresAt() {
        return this.expiresAt;
    }

    public final String getFloorPrice() {
        return this.floorPrice;
    }

    public final List<PredictiveEcpmPartnerConfig> getPartnerConfigs() {
        return this.partnerConfigs;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public int hashCode() {
        String str = this.placementId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.floorPrice;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.expiresAt);
        List<PredictiveEcpmPartnerConfig> list = this.partnerConfigs;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PredictiveEcpmPlacementConfig(placementId=");
        m8728C.append(this.placementId);
        m8728C.append(", floorPrice=");
        m8728C.append(this.floorPrice);
        m8728C.append(", expiresAt=");
        m8728C.append(this.expiresAt);
        m8728C.append(", partnerConfigs=");
        return C22128a.m8602l(m8728C, this.partnerConfigs, ")");
    }
}
