package com.truecaller.ads.provider.adunitid;

import androidx.annotation.Keep;
import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\bR\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/truecaller/ads/provider/adunitid/AdUnitPriceConfig;", "", "", "component1", "()Ljava/lang/String;", "", "Lcom/truecaller/ads/provider/adunitid/AdUnitConfig;", "component2", "()Ljava/util/List;", "version", DTBMetricsConfiguration.CONFIG_DIR, "copy", "(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/ads/provider/adunitid/AdUnitPriceConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getConfig", "Ljava/lang/String;", "getVersion", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/adunitid/AdUnitPriceConfig.class */
public final class AdUnitPriceConfig {
    private final List<AdUnitConfig> config;
    private final String version;

    public AdUnitPriceConfig(String str, List<AdUnitConfig> list) {
        l.e(str, "version");
        l.e(list, DTBMetricsConfiguration.CONFIG_DIR);
        this.version = str;
        this.config = list;
    }

    public static /* synthetic */ AdUnitPriceConfig copy$default(AdUnitPriceConfig adUnitPriceConfig, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = adUnitPriceConfig.version;
        }
        if ((i & 2) != 0) {
            list = adUnitPriceConfig.config;
        }
        return adUnitPriceConfig.copy(str, list);
    }

    public final String component1() {
        return this.version;
    }

    public final List<AdUnitConfig> component2() {
        return this.config;
    }

    public final AdUnitPriceConfig copy(String str, List<AdUnitConfig> list) {
        l.e(str, "version");
        l.e(list, DTBMetricsConfiguration.CONFIG_DIR);
        return new AdUnitPriceConfig(str, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdUnitPriceConfig)) {
                return false;
            }
            AdUnitPriceConfig adUnitPriceConfig = (AdUnitPriceConfig) obj;
            return l.a(this.version, adUnitPriceConfig.version) && l.a(this.config, adUnitPriceConfig.config);
        }
        return true;
    }

    public final List<AdUnitConfig> getConfig() {
        return this.config;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.version;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<AdUnitConfig> list = this.config;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdUnitPriceConfig(version=");
        m8728C.append(this.version);
        m8728C.append(", config=");
        return C22128a.m8602l(m8728C, this.config, ")");
    }
}
