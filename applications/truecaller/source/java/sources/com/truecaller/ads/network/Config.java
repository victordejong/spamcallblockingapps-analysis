package com.truecaller.ads.network;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ6\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0002\u0010\u000e\u001a\u00020\tHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0019\u0010\u000e\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0019\u001a\u0004\b\u001a\u0010\u000bR!\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001c\u0010\bR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001d\u001a\u0004\b\u001e\u0010\u0004¨\u0006!"}, d2 = {"Lcom/truecaller/ads/network/Config;", "", "", "component1", "()Ljava/lang/String;", "", "Lcom/truecaller/ads/network/Source;", "component2", "()Ljava/util/List;", "", "component3", "()J", "placement", "source", "timeout", "copy", "(Ljava/lang/String;Ljava/util/List;J)Lcom/truecaller/ads/network/Config;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getTimeout", "Ljava/util/List;", "getSource", "Ljava/lang/String;", "getPlacement", "<init>", "(Ljava/lang/String;Ljava/util/List;J)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/network/Config.class */
public final class Config {
    private final String placement;
    private final List<Source> source;
    private final long timeout;

    public Config(String str, List<Source> list, long j) {
        l.e(str, "placement");
        this.placement = str;
        this.source = list;
        this.timeout = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.truecaller.ads.network.Config] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static /* synthetic */ Config copy$default(Config config, String str, List list, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((Config) config).placement;
        }
        List<Source> list2 = list;
        if ((i & 2) != 0) {
            list2 = ((Config) config).source;
        }
        ?? r9 = j;
        if ((i & 4) != 0) {
            r9 = ((Config) config).timeout;
        }
        return config.copy(str, list2, r9);
    }

    public final String component1() {
        return this.placement;
    }

    public final List<Source> component2() {
        return this.source;
    }

    public final long component3() {
        return this.timeout;
    }

    public final Config copy(String str, List<Source> list, long j) {
        l.e(str, "placement");
        return new Config(str, list, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Config)) {
                return false;
            }
            Config config = (Config) obj;
            return l.a(this.placement, config.placement) && l.a(this.source, config.source) && this.timeout == config.timeout;
        }
        return true;
    }

    public final String getPlacement() {
        return this.placement;
    }

    public final List<Source> getSource() {
        return this.source;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    public int hashCode() {
        String str = this.placement;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<Source> list = this.source;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + C4876d.m34274a(this.timeout);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Config(placement=");
        m8728C.append(this.placement);
        m8728C.append(", source=");
        m8728C.append(this.source);
        m8728C.append(", timeout=");
        return C22128a.m8693K2(m8728C, this.timeout, ")");
    }
}
