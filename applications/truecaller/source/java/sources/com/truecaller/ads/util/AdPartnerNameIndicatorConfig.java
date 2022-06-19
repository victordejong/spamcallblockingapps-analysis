package com.truecaller.ads.util;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ads/util/AdPartnerNameIndicatorConfig;", "", "", "component1", "()Ljava/lang/String;", "component2", AnalyticsConstants.NAME, "indicator", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/util/AdPartnerNameIndicatorConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getIndicator", "getName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/util/AdPartnerNameIndicatorConfig.class */
public final class AdPartnerNameIndicatorConfig {
    private final String indicator;
    private final String name;

    public AdPartnerNameIndicatorConfig(String str, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "indicator");
        this.name = str;
        this.indicator = str2;
    }

    public static /* synthetic */ AdPartnerNameIndicatorConfig copy$default(AdPartnerNameIndicatorConfig adPartnerNameIndicatorConfig, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = adPartnerNameIndicatorConfig.name;
        }
        if ((i & 2) != 0) {
            str2 = adPartnerNameIndicatorConfig.indicator;
        }
        return adPartnerNameIndicatorConfig.copy(str, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.indicator;
    }

    public final AdPartnerNameIndicatorConfig copy(String str, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "indicator");
        return new AdPartnerNameIndicatorConfig(str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdPartnerNameIndicatorConfig)) {
                return false;
            }
            AdPartnerNameIndicatorConfig adPartnerNameIndicatorConfig = (AdPartnerNameIndicatorConfig) obj;
            return l.a(this.name, adPartnerNameIndicatorConfig.name) && l.a(this.indicator, adPartnerNameIndicatorConfig.indicator);
        }
        return true;
    }

    public final String getIndicator() {
        return this.indicator;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.indicator;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdPartnerNameIndicatorConfig(name=");
        m8728C.append(this.name);
        m8728C.append(", indicator=");
        return C22128a.m8618h(m8728C, this.indicator, ")");
    }
}
