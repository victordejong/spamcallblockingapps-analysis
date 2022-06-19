package com.truecaller.insights.models.categorizerseed;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ,\u0010\u000b\u001a\u00020��2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\r\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001c\u0010\n\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\bR$\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0005¨\u0006\u001b"}, d2 = {"Lcom/truecaller/insights/models/categorizerseed/Probability;", "", "", "", "component1", "()Ljava/util/List;", "", "component2", "()Ljava/lang/String;", "probability", "word", "copy", "(Ljava/util/List;Ljava/lang/String;)Lcom/truecaller/insights/models/categorizerseed/Probability;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getWord", "Ljava/util/List;", "getProbability", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/categorizerseed/Probability.class */
public final class Probability {
    @b("probability")
    private final List<Double> probability;
    @b("word")
    private final String word;

    public Probability(List<Double> list, String str) {
        l.e(list, "probability");
        l.e(str, "word");
        this.probability = list;
        this.word = str;
    }

    public static /* synthetic */ Probability copy$default(Probability probability, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = probability.probability;
        }
        if ((i & 2) != 0) {
            str = probability.word;
        }
        return probability.copy(list, str);
    }

    public final List<Double> component1() {
        return this.probability;
    }

    public final String component2() {
        return this.word;
    }

    public final Probability copy(List<Double> list, String str) {
        l.e(list, "probability");
        l.e(str, "word");
        return new Probability(list, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Probability)) {
                return false;
            }
            Probability probability = (Probability) obj;
            return l.a(this.probability, probability.probability) && l.a(this.word, probability.word);
        }
        return true;
    }

    public final List<Double> getProbability() {
        return this.probability;
    }

    public final String getWord() {
        return this.word;
    }

    public int hashCode() {
        List<Double> list = this.probability;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.word;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Probability(probability=");
        m8728C.append(this.probability);
        m8728C.append(", word=");
        return C22128a.m8618h(m8728C, this.word, ")");
    }
}
