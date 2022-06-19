package com.truecaller.insights.categorizer;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001BC\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b&\u0010'J\u0015\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0007J\u0012\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\f\u0010\u0007JX\u0010\u0013\u001a\u00020��2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eR\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001f\u001a\u0004\b \u0010\u0007R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001f\u001a\u0004\b!\u0010\u0007R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001f\u001a\u0004\b\"\u0010\u0007R\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001f\u001a\u0004\b#\u0010\u0007R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b$\u0010\u0007R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b%\u0010\u0007¨\u0006("}, d2 = {"Lcom/truecaller/insights/categorizer/KeywordMeta;", "", "", "", "toVector", "()Ljava/util/List;", "component1", "()Ljava/lang/Double;", "component2", "component3", "component4", "component5", "component6", "probHam", "probSpam", "tfHam", "tfSpam", "idfHam", "idfSpam", "copy", "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lcom/truecaller/insights/categorizer/KeywordMeta;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Double;", "getIdfHam", "getProbSpam", "getProbHam", "getTfSpam", "getTfHam", "getIdfSpam", "<init>", "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/KeywordMeta.class */
public final class KeywordMeta {
    private final Double idfHam;
    private final Double idfSpam;
    private final Double probHam;
    private final Double probSpam;
    private final Double tfHam;
    private final Double tfSpam;

    public KeywordMeta(Double d, Double d2, Double d3, Double d4, Double d5, Double d6) {
        this.probHam = d;
        this.probSpam = d2;
        this.tfHam = d3;
        this.tfSpam = d4;
        this.idfHam = d5;
        this.idfSpam = d6;
    }

    public static /* synthetic */ KeywordMeta copy$default(KeywordMeta keywordMeta, Double d, Double d2, Double d3, Double d4, Double d5, Double d6, int i, Object obj) {
        if ((i & 1) != 0) {
            d = keywordMeta.probHam;
        }
        if ((i & 2) != 0) {
            d2 = keywordMeta.probSpam;
        }
        if ((i & 4) != 0) {
            d3 = keywordMeta.tfHam;
        }
        if ((i & 8) != 0) {
            d4 = keywordMeta.tfSpam;
        }
        if ((i & 16) != 0) {
            d5 = keywordMeta.idfHam;
        }
        if ((i & 32) != 0) {
            d6 = keywordMeta.idfSpam;
        }
        return keywordMeta.copy(d, d2, d3, d4, d5, d6);
    }

    public final Double component1() {
        return this.probHam;
    }

    public final Double component2() {
        return this.probSpam;
    }

    public final Double component3() {
        return this.tfHam;
    }

    public final Double component4() {
        return this.tfSpam;
    }

    public final Double component5() {
        return this.idfHam;
    }

    public final Double component6() {
        return this.idfSpam;
    }

    public final KeywordMeta copy(Double d, Double d2, Double d3, Double d4, Double d5, Double d6) {
        return new KeywordMeta(d, d2, d3, d4, d5, d6);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof KeywordMeta)) {
                return false;
            }
            KeywordMeta keywordMeta = (KeywordMeta) obj;
            return l.a(this.probHam, keywordMeta.probHam) && l.a(this.probSpam, keywordMeta.probSpam) && l.a(this.tfHam, keywordMeta.tfHam) && l.a(this.tfSpam, keywordMeta.tfSpam) && l.a(this.idfHam, keywordMeta.idfHam) && l.a(this.idfSpam, keywordMeta.idfSpam);
        }
        return true;
    }

    public final Double getIdfHam() {
        return this.idfHam;
    }

    public final Double getIdfSpam() {
        return this.idfSpam;
    }

    public final Double getProbHam() {
        return this.probHam;
    }

    public final Double getProbSpam() {
        return this.probSpam;
    }

    public final Double getTfHam() {
        return this.tfHam;
    }

    public final Double getTfSpam() {
        return this.tfSpam;
    }

    public int hashCode() {
        Double d = this.probHam;
        int i = 0;
        int hashCode = d != null ? d.hashCode() : 0;
        Double d2 = this.probSpam;
        int hashCode2 = d2 != null ? d2.hashCode() : 0;
        Double d3 = this.tfHam;
        int hashCode3 = d3 != null ? d3.hashCode() : 0;
        Double d4 = this.tfSpam;
        int hashCode4 = d4 != null ? d4.hashCode() : 0;
        Double d5 = this.idfHam;
        int hashCode5 = d5 != null ? d5.hashCode() : 0;
        Double d6 = this.idfSpam;
        if (d6 != null) {
            i = d6.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("KeywordMeta(probHam=");
        m8728C.append(this.probHam);
        m8728C.append(", probSpam=");
        m8728C.append(this.probSpam);
        m8728C.append(", tfHam=");
        m8728C.append(this.tfHam);
        m8728C.append(", tfSpam=");
        m8728C.append(this.tfSpam);
        m8728C.append(", idfHam=");
        m8728C.append(this.idfHam);
        m8728C.append(", idfSpam=");
        m8728C.append(this.idfSpam);
        m8728C.append(")");
        return m8728C.toString();
    }

    public final List<Double> toVector() {
        return i.T(new Double[]{this.probHam, this.probSpam, this.tfHam, this.tfSpam, this.idfHam, this.idfSpam});
    }
}
