package com.truecaller.ads.mediation.model;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0018\u0010\u0004R\u0019\u0010\n\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007¨\u0006\u001d"}, d2 = {"Lcom/truecaller/ads/mediation/model/AmazonPriceData;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()D", "component3", "slotSize", "cpm", "pricePoints", "copy", "(Ljava/lang/String;DLjava/lang/String;)Lcom/truecaller/ads/mediation/model/AmazonPriceData;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getPricePoints", "getSlotSize", "D", "getCpm", "<init>", "(Ljava/lang/String;DLjava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/model/AmazonPriceData.class */
public final class AmazonPriceData {
    private final double cpm;
    private final String pricePoints;
    private final String slotSize;

    public AmazonPriceData(String str, double d, String str2) {
        l.e(str, "slotSize");
        l.e(str2, "pricePoints");
        this.slotSize = str;
        this.cpm = d;
        this.pricePoints = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.truecaller.ads.mediation.model.AmazonPriceData] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public static /* synthetic */ AmazonPriceData copy$default(AmazonPriceData amazonPriceData, String str, double d, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((AmazonPriceData) amazonPriceData).slotSize;
        }
        ?? r8 = d;
        if ((i & 2) != 0) {
            r8 = ((AmazonPriceData) amazonPriceData).cpm;
        }
        if ((i & 4) != 0) {
            str2 = ((AmazonPriceData) amazonPriceData).pricePoints;
        }
        return amazonPriceData.copy(str, r8, str2);
    }

    public final String component1() {
        return this.slotSize;
    }

    public final double component2() {
        return this.cpm;
    }

    public final String component3() {
        return this.pricePoints;
    }

    public final AmazonPriceData copy(String str, double d, String str2) {
        l.e(str, "slotSize");
        l.e(str2, "pricePoints");
        return new AmazonPriceData(str, d, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AmazonPriceData)) {
                return false;
            }
            AmazonPriceData amazonPriceData = (AmazonPriceData) obj;
            return l.a(this.slotSize, amazonPriceData.slotSize) && Double.compare(this.cpm, amazonPriceData.cpm) == 0 && l.a(this.pricePoints, amazonPriceData.pricePoints);
        }
        return true;
    }

    public final double getCpm() {
        return this.cpm;
    }

    public final String getPricePoints() {
        return this.pricePoints;
    }

    public final String getSlotSize() {
        return this.slotSize;
    }

    public int hashCode() {
        String str = this.slotSize;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int doubleToLongBits = Double.doubleToLongBits(this.cpm);
        String str2 = this.pricePoints;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + doubleToLongBits) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AmazonPriceData(slotSize=");
        m8728C.append(this.slotSize);
        m8728C.append(", cpm=");
        m8728C.append(this.cpm);
        m8728C.append(", pricePoints=");
        return C22128a.m8618h(m8728C, this.pricePoints, ")");
    }
}
