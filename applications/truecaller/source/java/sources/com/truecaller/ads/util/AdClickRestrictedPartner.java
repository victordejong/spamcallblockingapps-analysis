package com.truecaller.ads.util;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B+\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J:\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u001a\u0010\u0007¨\u0006\u001d"}, d2 = {"Lcom/truecaller/ads/util/AdClickRestrictedPartner;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()Ljava/util/List;", "component3", AnalyticsConstants.NAME, "views", "placements", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/truecaller/ads/util/AdClickRestrictedPartner;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getName", "Ljava/util/List;", "getPlacements", "getViews", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/util/AdClickRestrictedPartner.class */
public final class AdClickRestrictedPartner {
    private final String name;
    private final List<String> placements;
    private final List<String> views;

    public AdClickRestrictedPartner(String str, List<String> list, List<String> list2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(list, "views");
        l.e(list2, "placements");
        this.name = str;
        this.views = list;
        this.placements = list2;
    }

    public static /* synthetic */ AdClickRestrictedPartner copy$default(AdClickRestrictedPartner adClickRestrictedPartner, String str, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = adClickRestrictedPartner.name;
        }
        if ((i & 2) != 0) {
            list = adClickRestrictedPartner.views;
        }
        if ((i & 4) != 0) {
            list2 = adClickRestrictedPartner.placements;
        }
        return adClickRestrictedPartner.copy(str, list, list2);
    }

    public final String component1() {
        return this.name;
    }

    public final List<String> component2() {
        return this.views;
    }

    public final List<String> component3() {
        return this.placements;
    }

    public final AdClickRestrictedPartner copy(String str, List<String> list, List<String> list2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(list, "views");
        l.e(list2, "placements");
        return new AdClickRestrictedPartner(str, list, list2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdClickRestrictedPartner)) {
                return false;
            }
            AdClickRestrictedPartner adClickRestrictedPartner = (AdClickRestrictedPartner) obj;
            return l.a(this.name, adClickRestrictedPartner.name) && l.a(this.views, adClickRestrictedPartner.views) && l.a(this.placements, adClickRestrictedPartner.placements);
        }
        return true;
    }

    public final String getName() {
        return this.name;
    }

    public final List<String> getPlacements() {
        return this.placements;
    }

    public final List<String> getViews() {
        return this.views;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<String> list = this.views;
        int hashCode2 = list != null ? list.hashCode() : 0;
        List<String> list2 = this.placements;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdClickRestrictedPartner(name=");
        m8728C.append(this.name);
        m8728C.append(", views=");
        m8728C.append(this.views);
        m8728C.append(", placements=");
        return C22128a.m8602l(m8728C, this.placements, ")");
    }
}
