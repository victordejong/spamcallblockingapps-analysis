package com.truecaller.ads.mediation.google;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B'\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J0\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/ads/mediation/google/ServerParams;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "publisherId", AnalyticsConstants.CONTEXT, "adUnitId", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/mediation/google/ServerParams;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getContext", "getPublisherId", "getAdUnitId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/google/ServerParams.class */
public final class ServerParams {
    private final String adUnitId;
    private final String context;
    private final String publisherId;

    public ServerParams() {
        this(null, null, null, 7, null);
    }

    public ServerParams(String str, String str2, String str3) {
        l.e(str, "publisherId");
        l.e(str2, AnalyticsConstants.CONTEXT);
        this.publisherId = str;
        this.context = str2;
        this.adUnitId = str3;
    }

    public /* synthetic */ ServerParams(String str, String str2, String str3, int i, f fVar) {
        this((i & 1) != 0 ? "734f7b23d66740c0abcca5ec9c532200" : str, (i & 2) != 0 ? "AFTERCALL" : str2, (i & 4) != 0 ? null : str3);
    }

    public static /* synthetic */ ServerParams copy$default(ServerParams serverParams, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = serverParams.publisherId;
        }
        if ((i & 2) != 0) {
            str2 = serverParams.context;
        }
        if ((i & 4) != 0) {
            str3 = serverParams.adUnitId;
        }
        return serverParams.copy(str, str2, str3);
    }

    public final String component1() {
        return this.publisherId;
    }

    public final String component2() {
        return this.context;
    }

    public final String component3() {
        return this.adUnitId;
    }

    public final ServerParams copy(String str, String str2, String str3) {
        l.e(str, "publisherId");
        l.e(str2, AnalyticsConstants.CONTEXT);
        return new ServerParams(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ServerParams)) {
                return false;
            }
            ServerParams serverParams = (ServerParams) obj;
            return l.a(this.publisherId, serverParams.publisherId) && l.a(this.context, serverParams.context) && l.a(this.adUnitId, serverParams.adUnitId);
        }
        return true;
    }

    public final String getAdUnitId() {
        return this.adUnitId;
    }

    public final String getContext() {
        return this.context;
    }

    public final String getPublisherId() {
        return this.publisherId;
    }

    public int hashCode() {
        String str = this.publisherId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.context;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.adUnitId;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ServerParams(publisherId=");
        m8728C.append(this.publisherId);
        m8728C.append(", context=");
        m8728C.append(this.context);
        m8728C.append(", adUnitId=");
        return C22128a.m8618h(m8728C, this.adUnitId, ")");
    }
}
