package com.truecaller.insights.categorizer.model;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10122m;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\t\b\u0081\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ,\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u0010\b\u0002\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R$\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0017\u0010\bR\u001c\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004¨\u0006\u001c"}, d2 = {"Lcom/truecaller/insights/categorizer/model/WordProbImpl;", "Le/a/c/g/a0/m;", "", "component1", "()Ljava/lang/String;", "", "", "component2", "()Ljava/util/List;", "word", "probability", "copy", "(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/categorizer/model/WordProbImpl;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getProbability", "Ljava/lang/String;", "getWord", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/model/WordProbImpl.class */
public final class WordProbImpl implements AbstractC10122m {
    private final List<Double> probability;
    private final String word;

    public WordProbImpl(String str, List<Double> list) {
        l.e(str, "word");
        l.e(list, "probability");
        this.word = str;
        this.probability = list;
    }

    public static /* synthetic */ WordProbImpl copy$default(WordProbImpl wordProbImpl, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wordProbImpl.getWord();
        }
        if ((i & 2) != 0) {
            list = wordProbImpl.getProbability();
        }
        return wordProbImpl.copy(str, list);
    }

    public final String component1() {
        return getWord();
    }

    public final List<Double> component2() {
        return getProbability();
    }

    public final WordProbImpl copy(String str, List<Double> list) {
        l.e(str, "word");
        l.e(list, "probability");
        return new WordProbImpl(str, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof WordProbImpl)) {
                return false;
            }
            WordProbImpl wordProbImpl = (WordProbImpl) obj;
            return l.a(getWord(), wordProbImpl.getWord()) && l.a(getProbability(), wordProbImpl.getProbability());
        }
        return true;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public List<Double> getProbability() {
        return this.probability;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public String getWord() {
        return this.word;
    }

    public int hashCode() {
        String word = getWord();
        int i = 0;
        int hashCode = word != null ? word.hashCode() : 0;
        List<Double> probability = getProbability();
        if (probability != null) {
            i = probability.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WordProbImpl(word=");
        m8728C.append(getWord());
        m8728C.append(", probability=");
        m8728C.append(getProbability());
        m8728C.append(")");
        return m8728C.toString();
    }
}
