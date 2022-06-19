package com.truecaller.insights.models.categorizer;

import androidx.annotation.Keep;
import com.truecaller.insights.categorizer.KeywordMeta;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;", "", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/insights/categorizer/KeywordMeta;", "component2", "()Lcom/truecaller/insights/categorizer/KeywordMeta;", "word", "probability", "copy", "(Ljava/lang/String;Lcom/truecaller/insights/categorizer/KeywordMeta;)Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getWord", "Lcom/truecaller/insights/categorizer/KeywordMeta;", "getProbability", "<init>", "(Ljava/lang/String;Lcom/truecaller/insights/categorizer/KeywordMeta;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/categorizer/CategorizerWordProb.class */
public final class CategorizerWordProb {
    private final KeywordMeta probability;
    private final String word;

    public CategorizerWordProb(String str, KeywordMeta keywordMeta) {
        l.e(str, "word");
        l.e(keywordMeta, "probability");
        this.word = str;
        this.probability = keywordMeta;
    }

    public static /* synthetic */ CategorizerWordProb copy$default(CategorizerWordProb categorizerWordProb, String str, KeywordMeta keywordMeta, int i, Object obj) {
        if ((i & 1) != 0) {
            str = categorizerWordProb.word;
        }
        if ((i & 2) != 0) {
            keywordMeta = categorizerWordProb.probability;
        }
        return categorizerWordProb.copy(str, keywordMeta);
    }

    public final String component1() {
        return this.word;
    }

    public final KeywordMeta component2() {
        return this.probability;
    }

    public final CategorizerWordProb copy(String str, KeywordMeta keywordMeta) {
        l.e(str, "word");
        l.e(keywordMeta, "probability");
        return new CategorizerWordProb(str, keywordMeta);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CategorizerWordProb)) {
                return false;
            }
            CategorizerWordProb categorizerWordProb = (CategorizerWordProb) obj;
            return l.a(this.word, categorizerWordProb.word) && l.a(this.probability, categorizerWordProb.probability);
        }
        return true;
    }

    public final KeywordMeta getProbability() {
        return this.probability;
    }

    public final String getWord() {
        return this.word;
    }

    public int hashCode() {
        String str = this.word;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        KeywordMeta keywordMeta = this.probability;
        if (keywordMeta != null) {
            i = keywordMeta.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CategorizerWordProb(word=");
        m8728C.append(this.word);
        m8728C.append(", probability=");
        m8728C.append(this.probability);
        m8728C.append(")");
        return m8728C.toString();
    }
}
