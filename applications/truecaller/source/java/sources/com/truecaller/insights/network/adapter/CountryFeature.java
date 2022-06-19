package com.truecaller.insights.network.adapter;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000b\b\u0081\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\t\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004¨\u0006\u0018"}, d2 = {"Lcom/truecaller/insights/network/adapter/CountryFeature;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()Z", AnalyticsConstants.NAME, "isActive", "copy", "(Ljava/lang/String;Z)Lcom/truecaller/insights/network/adapter/CountryFeature;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "Ljava/lang/String;", "getName", "<init>", "(Ljava/lang/String;Z)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/network/adapter/CountryFeature.class */
public final class CountryFeature {
    private final boolean isActive;
    private final String name;

    public CountryFeature(String str, boolean z) {
        l.e(str, AnalyticsConstants.NAME);
        this.name = str;
        this.isActive = z;
    }

    public static /* synthetic */ CountryFeature copy$default(CountryFeature countryFeature, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = countryFeature.name;
        }
        if ((i & 2) != 0) {
            z = countryFeature.isActive;
        }
        return countryFeature.copy(str, z);
    }

    public final String component1() {
        return this.name;
    }

    public final boolean component2() {
        return this.isActive;
    }

    public final CountryFeature copy(String str, boolean z) {
        l.e(str, AnalyticsConstants.NAME);
        return new CountryFeature(str, z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CountryFeature)) {
                return false;
            }
            CountryFeature countryFeature = (CountryFeature) obj;
            return l.a(this.name, countryFeature.name) && this.isActive == countryFeature.isActive;
        }
        return true;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.isActive;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public final boolean isActive() {
        return this.isActive;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CountryFeature(name=");
        m8728C.append(this.name);
        m8728C.append(", isActive=");
        return C22128a.m8590o(m8728C, this.isActive, ")");
    }
}
