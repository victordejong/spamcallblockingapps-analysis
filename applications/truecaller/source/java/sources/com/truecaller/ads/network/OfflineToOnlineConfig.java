package com.truecaller.ads.network;

import androidx.annotation.Keep;
import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\r\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0005R\u0019\u0010\n\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/truecaller/ads/network/OfflineToOnlineConfig;", "", "", "Lcom/truecaller/ads/network/Config;", "component1", "()Ljava/util/List;", "", "component2", "()Ljava/lang/String;", DTBMetricsConfiguration.CONFIG_DIR, "version", "copy", "(Ljava/util/List;Ljava/lang/String;)Lcom/truecaller/ads/network/OfflineToOnlineConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getConfig", "Ljava/lang/String;", "getVersion", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/network/OfflineToOnlineConfig.class */
public final class OfflineToOnlineConfig {
    private final List<Config> config;
    private final String version;

    public OfflineToOnlineConfig(List<Config> list, String str) {
        l.e(list, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(str, "version");
        this.config = list;
        this.version = str;
    }

    public static /* synthetic */ OfflineToOnlineConfig copy$default(OfflineToOnlineConfig offlineToOnlineConfig, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = offlineToOnlineConfig.config;
        }
        if ((i & 2) != 0) {
            str = offlineToOnlineConfig.version;
        }
        return offlineToOnlineConfig.copy(list, str);
    }

    public final List<Config> component1() {
        return this.config;
    }

    public final String component2() {
        return this.version;
    }

    public final OfflineToOnlineConfig copy(List<Config> list, String str) {
        l.e(list, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(str, "version");
        return new OfflineToOnlineConfig(list, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OfflineToOnlineConfig)) {
                return false;
            }
            OfflineToOnlineConfig offlineToOnlineConfig = (OfflineToOnlineConfig) obj;
            return l.a(this.config, offlineToOnlineConfig.config) && l.a(this.version, offlineToOnlineConfig.version);
        }
        return true;
    }

    public final List<Config> getConfig() {
        return this.config;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<Config> list = this.config;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.version;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineToOnlineConfig(config=");
        m8728C.append(this.config);
        m8728C.append(", version=");
        return C22128a.m8618h(m8728C, this.version, ")");
    }
}
