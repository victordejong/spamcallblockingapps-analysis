package com.truecaller.insights.models.classifierseed;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018��2\u00020\u0001B/\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b#\u0010$J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ@\u0010\u0013\u001a\u00020��2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00052\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u0012\u001a\u00020\fHÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000eJ\u0010\u0010\u0016\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0007J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u001b\u001a\u0004\b\u001c\u0010\u000bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001d\u001a\u0004\b\u001e\u0010\u0004R\u001c\u0010\u0012\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b \u0010\u000eR\u001c\u0010\u0010\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010!\u001a\u0004\b\"\u0010\u0007¨\u0006%"}, d2 = {"Lcom/truecaller/insights/models/classifierseed/Probability;", "", "", "component1", "()Ljava/lang/Double;", "", "component2", "()I", "", "Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;", "component3", "()Ljava/util/List;", "", "component4", "()Ljava/lang/String;", "idf", "noOfMessages", "probabilities", "word", "copy", "(Ljava/lang/Double;ILjava/util/List;Ljava/lang/String;)Lcom/truecaller/insights/models/classifierseed/Probability;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getProbabilities", "Ljava/lang/Double;", "getIdf", "Ljava/lang/String;", "getWord", "I", "getNoOfMessages", "<init>", "(Ljava/lang/Double;ILjava/util/List;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/classifierseed/Probability.class */
public final class Probability {
    @b("idf")
    private final Double idf;
    @b("no_msgs")
    private final int noOfMessages;
    @b("probabilities")
    private final List<ClassKeywordMeta> probabilities;
    @b("word")
    private final String word;

    public Probability(Double d, int i, List<ClassKeywordMeta> list, String str) {
        l.e(list, "probabilities");
        l.e(str, "word");
        this.idf = d;
        this.noOfMessages = i;
        this.probabilities = list;
        this.word = str;
    }

    public static /* synthetic */ Probability copy$default(Probability probability, Double d, int i, List list, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d = probability.idf;
        }
        if ((i2 & 2) != 0) {
            i = probability.noOfMessages;
        }
        if ((i2 & 4) != 0) {
            list = probability.probabilities;
        }
        if ((i2 & 8) != 0) {
            str = probability.word;
        }
        return probability.copy(d, i, list, str);
    }

    public final Double component1() {
        return this.idf;
    }

    public final int component2() {
        return this.noOfMessages;
    }

    public final List<ClassKeywordMeta> component3() {
        return this.probabilities;
    }

    public final String component4() {
        return this.word;
    }

    public final Probability copy(Double d, int i, List<ClassKeywordMeta> list, String str) {
        l.e(list, "probabilities");
        l.e(str, "word");
        return new Probability(d, i, list, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Probability)) {
                return false;
            }
            Probability probability = (Probability) obj;
            return l.a(this.idf, probability.idf) && this.noOfMessages == probability.noOfMessages && l.a(this.probabilities, probability.probabilities) && l.a(this.word, probability.word);
        }
        return true;
    }

    public final Double getIdf() {
        return this.idf;
    }

    public final int getNoOfMessages() {
        return this.noOfMessages;
    }

    public final List<ClassKeywordMeta> getProbabilities() {
        return this.probabilities;
    }

    public final String getWord() {
        return this.word;
    }

    public int hashCode() {
        Double d = this.idf;
        int i = 0;
        int hashCode = d != null ? d.hashCode() : 0;
        int i2 = this.noOfMessages;
        List<ClassKeywordMeta> list = this.probabilities;
        int hashCode2 = list != null ? list.hashCode() : 0;
        String str = this.word;
        if (str != null) {
            i = str.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Probability(idf=");
        m8728C.append(this.idf);
        m8728C.append(", noOfMessages=");
        m8728C.append(this.noOfMessages);
        m8728C.append(", probabilities=");
        m8728C.append(this.probabilities);
        m8728C.append(", word=");
        return C22128a.m8618h(m8728C, this.word, ")");
    }
}
