package com.truecaller.ads.adsrouter.model;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001B%\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ4\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u000e\u001a\u00020\tHÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u0011\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0016\u001a\u00020\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u0019\u0010\bR\u001c\u0010\u000e\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001b\u0010\u000bR\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004¨\u0006 "}, d2 = {"Lcom/truecaller/ads/adsrouter/model/AdResponse;", "", "", "component1", "()Z", "", "Lcom/truecaller/ads/adsrouter/model/Ad;", "component2", "()Ljava/util/List;", "", "component3", "()Ljava/lang/String;", AnalyticsConstants.SUCCESS, "ads", "message", "copy", "(ZLjava/util/List;Ljava/lang/String;)Lcom/truecaller/ads/adsrouter/model/AdResponse;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getAds", "Ljava/lang/String;", "getMessage", "Z", "getSuccess", "<init>", "(ZLjava/util/List;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes2-dex2jar.jar:com/truecaller/ads/adsrouter/model/AdResponse.class */
public final class AdResponse {
    @b("ads")
    private final List<C2813Ad> ads;
    @b("message")
    private final String message;
    @b(AnalyticsConstants.SUCCESS)
    private final boolean success;

    public AdResponse(boolean z, List<C2813Ad> list, String str) {
        l.e(list, "ads");
        l.e(str, "message");
        this.success = z;
        this.ads = list;
        this.message = str;
    }

    public static /* synthetic */ AdResponse copy$default(AdResponse adResponse, boolean z, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = adResponse.success;
        }
        if ((i & 2) != 0) {
            list = adResponse.ads;
        }
        if ((i & 4) != 0) {
            str = adResponse.message;
        }
        return adResponse.copy(z, list, str);
    }

    public final boolean component1() {
        return this.success;
    }

    public final List<C2813Ad> component2() {
        return this.ads;
    }

    public final String component3() {
        return this.message;
    }

    public final AdResponse copy(boolean z, List<C2813Ad> list, String str) {
        l.e(list, "ads");
        l.e(str, "message");
        return new AdResponse(z, list, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdResponse)) {
                return false;
            }
            AdResponse adResponse = (AdResponse) obj;
            return this.success == adResponse.success && l.a(this.ads, adResponse.ads) && l.a(this.message, adResponse.message);
        }
        return true;
    }

    public final List<C2813Ad> getAds() {
        return this.ads;
    }

    public final String getMessage() {
        return this.message;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        boolean z = this.success;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        List<C2813Ad> list = this.ads;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.message;
        if (str != null) {
            i = str.hashCode();
        }
        return ((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdResponse(success=");
        m8728C.append(this.success);
        m8728C.append(", ads=");
        m8728C.append(this.ads);
        m8728C.append(", message=");
        return C22128a.m8618h(m8728C, this.message, ")");
    }
}
