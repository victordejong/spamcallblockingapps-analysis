package com.truecaller.ads.network;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/truecaller/ads/network/Source;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()J", AnalyticsConstants.KEY, "timeout", "copy", "(Ljava/lang/String;J)Lcom/truecaller/ads/network/Source;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getKey", "J", "getTimeout", "<init>", "(Ljava/lang/String;J)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/network/Source.class */
public final class Source {
    private final String key;
    private final long timeout;

    public Source(String str, long j) {
        l.e(str, AnalyticsConstants.KEY);
        this.key = str;
        this.timeout = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.ads.network.Source] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ Source copy$default(Source source, String str, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((Source) source).key;
        }
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = ((Source) source).timeout;
        }
        return source.copy(str, r7);
    }

    public final String component1() {
        return this.key;
    }

    public final long component2() {
        return this.timeout;
    }

    public final Source copy(String str, long j) {
        l.e(str, AnalyticsConstants.KEY);
        return new Source(str, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Source)) {
                return false;
            }
            Source source = (Source) obj;
            return l.a(this.key, source.key) && this.timeout == source.timeout;
        }
        return true;
    }

    public final String getKey() {
        return this.key;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    public int hashCode() {
        String str = this.key;
        return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.timeout);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Source(key=");
        m8728C.append(this.key);
        m8728C.append(", timeout=");
        return C22128a.m8693K2(m8728C, this.timeout, ")");
    }
}
