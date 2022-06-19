package com.truecaller.insights.categorizer.model;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10113d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u000f\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001B=\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u000b\u0010\nJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\r\u0010\nJR\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u0012\u001a\u00020\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0007J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0004J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u001c\u0010\u000f\u001a\u00020\u00058\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001d\u001a\u0004\b\u001e\u0010\u0007R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\b8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u001f\u001a\u0004\b \u0010\nR\u001c\u0010\u000e\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u000e\u0010!\u001a\u0004\b\"\u0010\u0004R\u001c\u0010\u0012\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010!\u001a\u0004\b#\u0010\u0004R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\b8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u001f\u001a\u0004\b$\u0010\nR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u001f\u001a\u0004\b%\u0010\n¨\u0006("}, d2 = {"Lcom/truecaller/insights/categorizer/model/AndroidClassMeta;", "Le/a/c/g/a0/d;", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "", "component3", "()Ljava/lang/Double;", "component4", "component5", "component6", "classId", "className", "classProb", "tfIdfSum", "totalMessageCount", "wordsInClass", "copy", "(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Double;)Lcom/truecaller/insights/categorizer/model/AndroidClassMeta;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getClassName", "Ljava/lang/Double;", "getWordsInClass", "I", "getClassId", "getTotalMessageCount", "getTfIdfSum", "getClassProb", "<init>", "(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Double;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/model/AndroidClassMeta.class */
public final class AndroidClassMeta implements AbstractC10113d {
    @b("class_id")
    private final int classId;
    @b("class_name")
    private final String className;
    @b("class_prob")
    private final Double classProb;
    @b("tf_idf_sum")
    private final Double tfIdfSum;
    private final int totalMessageCount;
    @b("words_in_class")
    private final Double wordsInClass;

    public AndroidClassMeta(int i, String str, Double d, Double d2, int i2, Double d3) {
        l.e(str, "className");
        this.classId = i;
        this.className = str;
        this.classProb = d;
        this.tfIdfSum = d2;
        this.totalMessageCount = i2;
        this.wordsInClass = d3;
    }

    public static /* synthetic */ AndroidClassMeta copy$default(AndroidClassMeta androidClassMeta, int i, String str, Double d, Double d2, int i2, Double d3, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = androidClassMeta.getClassId();
        }
        if ((i3 & 2) != 0) {
            str = androidClassMeta.getClassName();
        }
        if ((i3 & 4) != 0) {
            d = androidClassMeta.getClassProb();
        }
        if ((i3 & 8) != 0) {
            d2 = androidClassMeta.getTfIdfSum();
        }
        if ((i3 & 16) != 0) {
            i2 = androidClassMeta.getTotalMessageCount();
        }
        if ((i3 & 32) != 0) {
            d3 = androidClassMeta.getWordsInClass();
        }
        return androidClassMeta.copy(i, str, d, d2, i2, d3);
    }

    public final int component1() {
        return getClassId();
    }

    public final String component2() {
        return getClassName();
    }

    public final Double component3() {
        return getClassProb();
    }

    public final Double component4() {
        return getTfIdfSum();
    }

    public final int component5() {
        return getTotalMessageCount();
    }

    public final Double component6() {
        return getWordsInClass();
    }

    public final AndroidClassMeta copy(int i, String str, Double d, Double d2, int i2, Double d3) {
        l.e(str, "className");
        return new AndroidClassMeta(i, str, d, d2, i2, d3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AndroidClassMeta)) {
                return false;
            }
            AndroidClassMeta androidClassMeta = (AndroidClassMeta) obj;
            return getClassId() == androidClassMeta.getClassId() && l.a(getClassName(), androidClassMeta.getClassName()) && l.a(getClassProb(), androidClassMeta.getClassProb()) && l.a(getTfIdfSum(), androidClassMeta.getTfIdfSum()) && getTotalMessageCount() == androidClassMeta.getTotalMessageCount() && l.a(getWordsInClass(), androidClassMeta.getWordsInClass());
        }
        return true;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10113d
    public int getClassId() {
        return this.classId;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10113d
    public String getClassName() {
        return this.className;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10113d
    public Double getClassProb() {
        return this.classProb;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10113d
    public Double getTfIdfSum() {
        return this.tfIdfSum;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10113d
    public int getTotalMessageCount() {
        return this.totalMessageCount;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10113d
    public Double getWordsInClass() {
        return this.wordsInClass;
    }

    public int hashCode() {
        int classId = getClassId();
        String className = getClassName();
        int i = 0;
        int hashCode = className != null ? className.hashCode() : 0;
        Double classProb = getClassProb();
        int hashCode2 = classProb != null ? classProb.hashCode() : 0;
        Double tfIdfSum = getTfIdfSum();
        int hashCode3 = tfIdfSum != null ? tfIdfSum.hashCode() : 0;
        int totalMessageCount = getTotalMessageCount();
        Double wordsInClass = getWordsInClass();
        if (wordsInClass != null) {
            i = wordsInClass.hashCode();
        }
        return ((totalMessageCount + (((((((classId * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31)) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AndroidClassMeta(classId=");
        m8728C.append(getClassId());
        m8728C.append(", className=");
        m8728C.append(getClassName());
        m8728C.append(", classProb=");
        m8728C.append(getClassProb());
        m8728C.append(", tfIdfSum=");
        m8728C.append(getTfIdfSum());
        m8728C.append(", totalMessageCount=");
        m8728C.append(getTotalMessageCount());
        m8728C.append(", wordsInClass=");
        m8728C.append(getWordsInClass());
        m8728C.append(")");
        return m8728C.toString();
    }
}
