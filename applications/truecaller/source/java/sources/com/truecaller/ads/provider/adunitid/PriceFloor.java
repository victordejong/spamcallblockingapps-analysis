package com.truecaller.ads.provider.adunitid;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/truecaller/ads/provider/adunitid/PriceFloor;", "", "", "component1", "()D", "", "component2", "()Ljava/lang/String;", "floor", "ladder", "copy", "(DLjava/lang/String;)Lcom/truecaller/ads/provider/adunitid/PriceFloor;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "D", "getFloor", "Ljava/lang/String;", "getLadder", "<init>", "(DLjava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/adunitid/PriceFloor.class */
public final class PriceFloor {
    private final double floor;
    private final String ladder;

    public PriceFloor(double d, String str) {
        l.e(str, "ladder");
        this.floor = d;
        this.ladder = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [double] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.ads.provider.adunitid.PriceFloor] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static /* synthetic */ PriceFloor copy$default(PriceFloor priceFloor, double d, String str, int i, Object obj) {
        ?? r6 = d;
        if ((i & 1) != 0) {
            r6 = ((PriceFloor) priceFloor).floor;
        }
        if ((i & 2) != 0) {
            str = ((PriceFloor) priceFloor).ladder;
        }
        return priceFloor.copy(r6, str);
    }

    public final double component1() {
        return this.floor;
    }

    public final String component2() {
        return this.ladder;
    }

    public final PriceFloor copy(double d, String str) {
        l.e(str, "ladder");
        return new PriceFloor(d, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PriceFloor)) {
                return false;
            }
            PriceFloor priceFloor = (PriceFloor) obj;
            return Double.compare(this.floor, priceFloor.floor) == 0 && l.a(this.ladder, priceFloor.ladder);
        }
        return true;
    }

    public final double getFloor() {
        return this.floor;
    }

    public final String getLadder() {
        return this.ladder;
    }

    public int hashCode() {
        int doubleToLongBits = Double.doubleToLongBits(this.floor);
        String str = this.ladder;
        return (doubleToLongBits * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PriceFloor(floor=");
        m8728C.append(this.floor);
        m8728C.append(", ladder=");
        return C22128a.m8618h(m8728C, this.ladder, ")");
    }
}
