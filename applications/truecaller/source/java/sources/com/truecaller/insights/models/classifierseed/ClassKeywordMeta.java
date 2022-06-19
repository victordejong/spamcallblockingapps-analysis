package com.truecaller.insights.models.classifierseed;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B#\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ2\u0010\r\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0007R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u0019\u001a\u0004\b\u001a\u0010\tR\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u001b\u001a\u0004\b\u001c\u0010\u0004¨\u0006\u001f"}, d2 = {"Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;", "", "", "component1", "()I", "", "component2", "()Ljava/lang/Double;", "component3", "()Ljava/lang/Integer;", "classIdentifier", "probs", "tf", "copy", "(ILjava/lang/Double;Ljava/lang/Integer;)Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Double;", "getProbs", "Ljava/lang/Integer;", "getTf", "I", "getClassIdentifier", "<init>", "(ILjava/lang/Double;Ljava/lang/Integer;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/classifierseed/ClassKeywordMeta.class */
public final class ClassKeywordMeta {
    @b("class")
    private final int classIdentifier;
    @b("probs")
    private final Double probs;
    @b("tf")

    /* renamed from: tf */
    private final Integer f12650tf;

    public ClassKeywordMeta(int i, Double d, Integer num) {
        this.classIdentifier = i;
        this.probs = d;
        this.f12650tf = num;
    }

    public static /* synthetic */ ClassKeywordMeta copy$default(ClassKeywordMeta classKeywordMeta, int i, Double d, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = classKeywordMeta.classIdentifier;
        }
        if ((i2 & 2) != 0) {
            d = classKeywordMeta.probs;
        }
        if ((i2 & 4) != 0) {
            num = classKeywordMeta.f12650tf;
        }
        return classKeywordMeta.copy(i, d, num);
    }

    public final int component1() {
        return this.classIdentifier;
    }

    public final Double component2() {
        return this.probs;
    }

    public final Integer component3() {
        return this.f12650tf;
    }

    public final ClassKeywordMeta copy(int i, Double d, Integer num) {
        return new ClassKeywordMeta(i, d, num);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ClassKeywordMeta)) {
                return false;
            }
            ClassKeywordMeta classKeywordMeta = (ClassKeywordMeta) obj;
            return this.classIdentifier == classKeywordMeta.classIdentifier && l.a(this.probs, classKeywordMeta.probs) && l.a(this.f12650tf, classKeywordMeta.f12650tf);
        }
        return true;
    }

    public final int getClassIdentifier() {
        return this.classIdentifier;
    }

    public final Double getProbs() {
        return this.probs;
    }

    public final Integer getTf() {
        return this.f12650tf;
    }

    public int hashCode() {
        int i = this.classIdentifier;
        Double d = this.probs;
        int i2 = 0;
        int hashCode = d != null ? d.hashCode() : 0;
        Integer num = this.f12650tf;
        if (num != null) {
            i2 = num.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ClassKeywordMeta(classIdentifier=");
        m8728C.append(this.classIdentifier);
        m8728C.append(", probs=");
        m8728C.append(this.probs);
        m8728C.append(", tf=");
        return C22128a.m8689L2(m8728C, this.f12650tf, ")");
    }
}
