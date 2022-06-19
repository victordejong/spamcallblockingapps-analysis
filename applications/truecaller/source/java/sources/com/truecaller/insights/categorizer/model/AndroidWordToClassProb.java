package com.truecaller.insights.categorizer.model;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10121l;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\r\b\u0081\b\u0018��2\u00020\u0001B/\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b$\u0010%J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ@\u0010\u0013\u001a\u00020��2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00052\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u0012\u001a\u00020\fHÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000eJ\u0010\u0010\u0016\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0007J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u001c\u0010\u0012\u001a\u00020\f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u001e\u001a\u0004\b\u001f\u0010\u000eR\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0011\u0010 \u001a\u0004\b!\u0010\u000bR\u001c\u0010\u0010\u001a\u00020\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\"\u001a\u0004\b#\u0010\u0007¨\u0006&"}, d2 = {"Lcom/truecaller/insights/categorizer/model/AndroidWordToClassProb;", "Le/a/c/g/a0/l;", "", "component1", "()Ljava/lang/Double;", "", "component2", "()I", "", "Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;", "component3", "()Ljava/util/List;", "", "component4", "()Ljava/lang/String;", "idf", "noOfMessages", "probabilities", "word", "copy", "(Ljava/lang/Double;ILjava/util/List;Ljava/lang/String;)Lcom/truecaller/insights/categorizer/model/AndroidWordToClassProb;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Double;", "getIdf", "Ljava/lang/String;", "getWord", "Ljava/util/List;", "getProbabilities", "I", "getNoOfMessages", "<init>", "(Ljava/lang/Double;ILjava/util/List;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/model/AndroidWordToClassProb.class */
public final class AndroidWordToClassProb implements AbstractC10121l {
    private final Double idf;
    private final int noOfMessages;
    @b("probabilities")
    private final List<AndroidClassKeywordMeta> probabilities;
    private final String word;

    public AndroidWordToClassProb(Double d, int i, List<AndroidClassKeywordMeta> list, String str) {
        l.e(list, "probabilities");
        l.e(str, "word");
        this.idf = d;
        this.noOfMessages = i;
        this.probabilities = list;
        this.word = str;
    }

    public static /* synthetic */ AndroidWordToClassProb copy$default(AndroidWordToClassProb androidWordToClassProb, Double d, int i, List list, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d = androidWordToClassProb.getIdf();
        }
        if ((i2 & 2) != 0) {
            i = androidWordToClassProb.getNoOfMessages();
        }
        if ((i2 & 4) != 0) {
            list = androidWordToClassProb.getProbabilities();
        }
        if ((i2 & 8) != 0) {
            str = androidWordToClassProb.getWord();
        }
        return androidWordToClassProb.copy(d, i, list, str);
    }

    public final Double component1() {
        return getIdf();
    }

    public final int component2() {
        return getNoOfMessages();
    }

    public final List<AndroidClassKeywordMeta> component3() {
        return getProbabilities();
    }

    public final String component4() {
        return getWord();
    }

    public final AndroidWordToClassProb copy(Double d, int i, List<AndroidClassKeywordMeta> list, String str) {
        l.e(list, "probabilities");
        l.e(str, "word");
        return new AndroidWordToClassProb(d, i, list, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AndroidWordToClassProb)) {
                return false;
            }
            AndroidWordToClassProb androidWordToClassProb = (AndroidWordToClassProb) obj;
            return l.a(getIdf(), androidWordToClassProb.getIdf()) && getNoOfMessages() == androidWordToClassProb.getNoOfMessages() && l.a(getProbabilities(), androidWordToClassProb.getProbabilities()) && l.a(getWord(), androidWordToClassProb.getWord());
        }
        return true;
    }

    public Double getIdf() {
        return this.idf;
    }

    public int getNoOfMessages() {
        return this.noOfMessages;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10121l
    public List<AndroidClassKeywordMeta> getProbabilities() {
        return this.probabilities;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10121l
    public String getWord() {
        return this.word;
    }

    public int hashCode() {
        Double idf = getIdf();
        int i = 0;
        int hashCode = idf != null ? idf.hashCode() : 0;
        int noOfMessages = getNoOfMessages();
        List<AndroidClassKeywordMeta> probabilities = getProbabilities();
        int hashCode2 = probabilities != null ? probabilities.hashCode() : 0;
        String word = getWord();
        if (word != null) {
            i = word.hashCode();
        }
        return ((((noOfMessages + (hashCode * 31)) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AndroidWordToClassProb(idf=");
        m8728C.append(getIdf());
        m8728C.append(", noOfMessages=");
        m8728C.append(getNoOfMessages());
        m8728C.append(", probabilities=");
        m8728C.append(getProbabilities());
        m8728C.append(", word=");
        m8728C.append(getWord());
        m8728C.append(")");
        return m8728C.toString();
    }
}
