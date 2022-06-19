package com.truecaller.ads.provider.adunitid;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B-\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ>\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00022\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001c\u0010\u0004R\u0019\u0010\u000f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001b\u001a\u0004\b\u001d\u0010\u0004R\u0019\u0010\u000e\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007R\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010 \u001a\u0004\b!\u0010\f¨\u0006$"}, d2 = {"Lcom/truecaller/ads/provider/adunitid/AdUnitConfig;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()D", "component3", "", "Lcom/truecaller/ads/provider/adunitid/AdUnitRule;", "component4", "()Ljava/util/List;", AnalyticsConstants.KEY, "default_floor", "default_adUnit", "rules", "copy", "(Ljava/lang/String;DLjava/lang/String;Ljava/util/List;)Lcom/truecaller/ads/provider/adunitid/AdUnitConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getKey", "getDefault_adUnit", "D", "getDefault_floor", "Ljava/util/List;", "getRules", "<init>", "(Ljava/lang/String;DLjava/lang/String;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/adunitid/AdUnitConfig.class */
public final class AdUnitConfig {
    private final String default_adUnit;
    private final double default_floor;
    private final String key;
    private final List<AdUnitRule> rules;

    public AdUnitConfig(String str, double d, String str2, List<AdUnitRule> list) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "default_adUnit");
        l.e(list, "rules");
        this.key = str;
        this.default_floor = d;
        this.default_adUnit = str2;
        this.rules = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.ads.provider.adunitid.AdUnitConfig] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static /* synthetic */ AdUnitConfig copy$default(AdUnitConfig adUnitConfig, String str, double d, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((AdUnitConfig) adUnitConfig).key;
        }
        ?? r9 = d;
        if ((i & 2) != 0) {
            r9 = ((AdUnitConfig) adUnitConfig).default_floor;
        }
        if ((i & 4) != 0) {
            str2 = ((AdUnitConfig) adUnitConfig).default_adUnit;
        }
        List<AdUnitRule> list2 = list;
        if ((i & 8) != 0) {
            list2 = ((AdUnitConfig) adUnitConfig).rules;
        }
        return adUnitConfig.copy(str, r9, str2, list2);
    }

    public final String component1() {
        return this.key;
    }

    public final double component2() {
        return this.default_floor;
    }

    public final String component3() {
        return this.default_adUnit;
    }

    public final List<AdUnitRule> component4() {
        return this.rules;
    }

    public final AdUnitConfig copy(String str, double d, String str2, List<AdUnitRule> list) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "default_adUnit");
        l.e(list, "rules");
        return new AdUnitConfig(str, d, str2, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdUnitConfig)) {
                return false;
            }
            AdUnitConfig adUnitConfig = (AdUnitConfig) obj;
            return l.a(this.key, adUnitConfig.key) && Double.compare(this.default_floor, adUnitConfig.default_floor) == 0 && l.a(this.default_adUnit, adUnitConfig.default_adUnit) && l.a(this.rules, adUnitConfig.rules);
        }
        return true;
    }

    public final String getDefault_adUnit() {
        return this.default_adUnit;
    }

    public final double getDefault_floor() {
        return this.default_floor;
    }

    public final String getKey() {
        return this.key;
    }

    public final List<AdUnitRule> getRules() {
        return this.rules;
    }

    public int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int doubleToLongBits = Double.doubleToLongBits(this.default_floor);
        String str2 = this.default_adUnit;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<AdUnitRule> list = this.rules;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((hashCode * 31) + doubleToLongBits) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdUnitConfig(key=");
        m8728C.append(this.key);
        m8728C.append(", default_floor=");
        m8728C.append(this.default_floor);
        m8728C.append(", default_adUnit=");
        m8728C.append(this.default_adUnit);
        m8728C.append(", rules=");
        return C22128a.m8602l(m8728C, this.rules, ")");
    }
}
