package com.truecaller.ads.mediation.predictiveecpm.model;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0005R\u0019\u0010\n\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001a\u0010\b¨\u0006\u001d"}, d2 = {"Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;", "", "", "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;", "component1", "()Ljava/util/List;", "", "component2", "()J", "placementConfigs", RemoteMessageConst.TTL, "copy", "(Ljava/util/List;J)Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getPlacementConfigs", "J", "getTtl", "<init>", "(Ljava/util/List;J)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig.class */
public final class PredictiveEcpmConfig {
    @b("placements")
    private final List<PredictiveEcpmPlacementConfig> placementConfigs;
    private final long ttl;

    public PredictiveEcpmConfig(List<PredictiveEcpmPlacementConfig> list, long j) {
        l.e(list, "placementConfigs");
        this.placementConfigs = list;
        this.ttl = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.ads.mediation.predictiveecpm.model.PredictiveEcpmConfig] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ PredictiveEcpmConfig copy$default(PredictiveEcpmConfig predictiveEcpmConfig, List list, long j, int i, Object obj) {
        List<PredictiveEcpmPlacementConfig> list2 = list;
        if ((i & 1) != 0) {
            list2 = ((PredictiveEcpmConfig) predictiveEcpmConfig).placementConfigs;
        }
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = ((PredictiveEcpmConfig) predictiveEcpmConfig).ttl;
        }
        return predictiveEcpmConfig.copy(list2, r7);
    }

    public final List<PredictiveEcpmPlacementConfig> component1() {
        return this.placementConfigs;
    }

    public final long component2() {
        return this.ttl;
    }

    public final PredictiveEcpmConfig copy(List<PredictiveEcpmPlacementConfig> list, long j) {
        l.e(list, "placementConfigs");
        return new PredictiveEcpmConfig(list, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PredictiveEcpmConfig)) {
                return false;
            }
            PredictiveEcpmConfig predictiveEcpmConfig = (PredictiveEcpmConfig) obj;
            return l.a(this.placementConfigs, predictiveEcpmConfig.placementConfigs) && this.ttl == predictiveEcpmConfig.ttl;
        }
        return true;
    }

    public final List<PredictiveEcpmPlacementConfig> getPlacementConfigs() {
        return this.placementConfigs;
    }

    public final long getTtl() {
        return this.ttl;
    }

    public int hashCode() {
        List<PredictiveEcpmPlacementConfig> list = this.placementConfigs;
        return ((list != null ? list.hashCode() : 0) * 31) + C4876d.m34274a(this.ttl);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PredictiveEcpmConfig(placementConfigs=");
        m8728C.append(this.placementConfigs);
        m8728C.append(", ttl=");
        return C22128a.m8693K2(m8728C, this.ttl, ")");
    }
}
