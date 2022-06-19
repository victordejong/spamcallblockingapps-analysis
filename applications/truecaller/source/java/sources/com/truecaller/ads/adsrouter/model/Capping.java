package com.truecaller.ads.adsrouter.model;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u001c\u0010\u0006\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ads/adsrouter/model/Capping;", "", "", "component1", "()I", "component2", "impressionPerUser", "clicksPerUser", "copy", "(II)Lcom/truecaller/ads/adsrouter/model/Capping;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getClicksPerUser", "getImpressionPerUser", "<init>", "(II)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes2-dex2jar.jar:com/truecaller/ads/adsrouter/model/Capping.class */
public final class Capping {
    @b("clickPerUser")
    private final int clicksPerUser;
    @b("impPerUser")
    private final int impressionPerUser;

    public Capping(int i, int i2) {
        this.impressionPerUser = i;
        this.clicksPerUser = i2;
    }

    public static /* synthetic */ Capping copy$default(Capping capping, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = capping.impressionPerUser;
        }
        if ((i3 & 2) != 0) {
            i2 = capping.clicksPerUser;
        }
        return capping.copy(i, i2);
    }

    public final int component1() {
        return this.impressionPerUser;
    }

    public final int component2() {
        return this.clicksPerUser;
    }

    public final Capping copy(int i, int i2) {
        return new Capping(i, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Capping)) {
                return false;
            }
            Capping capping = (Capping) obj;
            return this.impressionPerUser == capping.impressionPerUser && this.clicksPerUser == capping.clicksPerUser;
        }
        return true;
    }

    public final int getClicksPerUser() {
        return this.clicksPerUser;
    }

    public final int getImpressionPerUser() {
        return this.impressionPerUser;
    }

    public int hashCode() {
        return (this.impressionPerUser * 31) + this.clicksPerUser;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Capping(impressionPerUser=");
        m8728C.append(this.impressionPerUser);
        m8728C.append(", clicksPerUser=");
        return C22128a.m8697J2(m8728C, this.clicksPerUser, ")");
    }
}
