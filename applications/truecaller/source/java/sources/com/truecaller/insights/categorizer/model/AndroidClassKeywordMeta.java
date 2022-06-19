package com.truecaller.insights.categorizer.model;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10112c;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\b\u0081\b\u0018��2\u00020\u0001B#\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J2\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u001c\u0010\t\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0019\u001a\u0004\b\u001b\u0010\u0007¨\u0006\u001e"}, d2 = {"Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;", "Le/a/c/g/a0/c;", "", "component1", "()I", "", "component2", "()Ljava/lang/Double;", "component3", "classIdentifier", "probs", "tf", "copy", "(ILjava/lang/Double;Ljava/lang/Double;)Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;", "", "toString", "()Ljava/lang/String;", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getClassIdentifier", "Ljava/lang/Double;", "getProbs", "getTf", "<init>", "(ILjava/lang/Double;Ljava/lang/Double;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/model/AndroidClassKeywordMeta.class */
public final class AndroidClassKeywordMeta implements AbstractC10112c {
    @b("class")
    private final int classIdentifier;
    private final Double probs;

    /* renamed from: tf */
    private final Double f12480tf;

    public AndroidClassKeywordMeta(int i, Double d, Double d2) {
        this.classIdentifier = i;
        this.probs = d;
        this.f12480tf = d2;
    }

    public static /* synthetic */ AndroidClassKeywordMeta copy$default(AndroidClassKeywordMeta androidClassKeywordMeta, int i, Double d, Double d2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = androidClassKeywordMeta.getClassIdentifier();
        }
        if ((i2 & 2) != 0) {
            d = androidClassKeywordMeta.getProbs();
        }
        if ((i2 & 4) != 0) {
            d2 = androidClassKeywordMeta.getTf();
        }
        return androidClassKeywordMeta.copy(i, d, d2);
    }

    public final int component1() {
        return getClassIdentifier();
    }

    public final Double component2() {
        return getProbs();
    }

    public final Double component3() {
        return getTf();
    }

    public final AndroidClassKeywordMeta copy(int i, Double d, Double d2) {
        return new AndroidClassKeywordMeta(i, d, d2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AndroidClassKeywordMeta)) {
                return false;
            }
            AndroidClassKeywordMeta androidClassKeywordMeta = (AndroidClassKeywordMeta) obj;
            return getClassIdentifier() == androidClassKeywordMeta.getClassIdentifier() && l.a(getProbs(), androidClassKeywordMeta.getProbs()) && l.a(getTf(), androidClassKeywordMeta.getTf());
        }
        return true;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10112c
    public int getClassIdentifier() {
        return this.classIdentifier;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10112c
    public Double getProbs() {
        return this.probs;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10112c
    public Double getTf() {
        return this.f12480tf;
    }

    public int hashCode() {
        int classIdentifier = getClassIdentifier();
        Double probs = getProbs();
        int i = 0;
        int hashCode = probs != null ? probs.hashCode() : 0;
        Double tf = getTf();
        if (tf != null) {
            i = tf.hashCode();
        }
        return (((classIdentifier * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AndroidClassKeywordMeta(classIdentifier=");
        m8728C.append(getClassIdentifier());
        m8728C.append(", probs=");
        m8728C.append(getProbs());
        m8728C.append(", tf=");
        m8728C.append(getTf());
        m8728C.append(")");
        return m8728C.toString();
    }
}
