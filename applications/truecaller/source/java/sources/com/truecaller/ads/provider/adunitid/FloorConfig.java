package com.truecaller.ads.provider.adunitid;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/ads/provider/adunitid/FloorConfig;", "", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/ads/provider/adunitid/Rule;", "component2", "()Lcom/truecaller/ads/provider/adunitid/Rule;", AnalyticsConstants.KEY, "rule", "copy", "(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/Rule;)Lcom/truecaller/ads/provider/adunitid/FloorConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/ads/provider/adunitid/Rule;", "getRule", "Ljava/lang/String;", "getKey", "<init>", "(Ljava/lang/String;Lcom/truecaller/ads/provider/adunitid/Rule;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/adunitid/FloorConfig.class */
public final class FloorConfig {
    private final String key;
    private final Rule rule;

    public FloorConfig(String str, Rule rule) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(rule, "rule");
        this.key = str;
        this.rule = rule;
    }

    public static /* synthetic */ FloorConfig copy$default(FloorConfig floorConfig, String str, Rule rule, int i, Object obj) {
        if ((i & 1) != 0) {
            str = floorConfig.key;
        }
        if ((i & 2) != 0) {
            rule = floorConfig.rule;
        }
        return floorConfig.copy(str, rule);
    }

    public final String component1() {
        return this.key;
    }

    public final Rule component2() {
        return this.rule;
    }

    public final FloorConfig copy(String str, Rule rule) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(rule, "rule");
        return new FloorConfig(str, rule);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FloorConfig)) {
                return false;
            }
            FloorConfig floorConfig = (FloorConfig) obj;
            return l.a(this.key, floorConfig.key) && l.a(this.rule, floorConfig.rule);
        }
        return true;
    }

    public final String getKey() {
        return this.key;
    }

    public final Rule getRule() {
        return this.rule;
    }

    public int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Rule rule = this.rule;
        if (rule != null) {
            i = rule.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FloorConfig(key=");
        m8728C.append(this.key);
        m8728C.append(", rule=");
        m8728C.append(this.rule);
        m8728C.append(")");
        return m8728C.toString();
    }
}
