package com.truecaller.insights.models.classifierseed;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B3\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004JD\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0004J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\"\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001b\u0010\bR\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001c\u0010\bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001d\u001a\u0004\b\u001e\u0010\u0004R\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001d\u001a\u0004\b\u001f\u0010\u0004¨\u0006\""}, d2 = {"Lcom/truecaller/insights/models/classifierseed/Vectors;", "", "", "component1", "()I", "", "Lcom/truecaller/insights/models/classifierseed/ClassMeta;", "component2", "()Ljava/util/List;", "Lcom/truecaller/insights/models/classifierseed/Probability;", "component3", "component4", "barrierValue", "classMetas", "probabilities", "version", "copy", "(ILjava/util/List;Ljava/util/List;I)Lcom/truecaller/insights/models/classifierseed/Vectors;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getProbabilities", "getClassMetas", "I", "getVersion", "getBarrierValue", "<init>", "(ILjava/util/List;Ljava/util/List;I)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/classifierseed/Vectors.class */
public final class Vectors {
    @b("barrierValue")
    private final int barrierValue;
    @b("classMetas")
    private final List<ClassMeta> classMetas;
    @b("probabilities")
    private final List<Probability> probabilities;
    @b("version")
    private final int version;

    public Vectors(int i, List<ClassMeta> list, List<Probability> list2, int i2) {
        l.e(list, "classMetas");
        l.e(list2, "probabilities");
        this.barrierValue = i;
        this.classMetas = list;
        this.probabilities = list2;
        this.version = i2;
    }

    public static /* synthetic */ Vectors copy$default(Vectors vectors, int i, List list, List list2, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = vectors.barrierValue;
        }
        if ((i3 & 2) != 0) {
            list = vectors.classMetas;
        }
        if ((i3 & 4) != 0) {
            list2 = vectors.probabilities;
        }
        if ((i3 & 8) != 0) {
            i2 = vectors.version;
        }
        return vectors.copy(i, list, list2, i2);
    }

    public final int component1() {
        return this.barrierValue;
    }

    public final List<ClassMeta> component2() {
        return this.classMetas;
    }

    public final List<Probability> component3() {
        return this.probabilities;
    }

    public final int component4() {
        return this.version;
    }

    public final Vectors copy(int i, List<ClassMeta> list, List<Probability> list2, int i2) {
        l.e(list, "classMetas");
        l.e(list2, "probabilities");
        return new Vectors(i, list, list2, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Vectors)) {
                return false;
            }
            Vectors vectors = (Vectors) obj;
            return this.barrierValue == vectors.barrierValue && l.a(this.classMetas, vectors.classMetas) && l.a(this.probabilities, vectors.probabilities) && this.version == vectors.version;
        }
        return true;
    }

    public final int getBarrierValue() {
        return this.barrierValue;
    }

    public final List<ClassMeta> getClassMetas() {
        return this.classMetas;
    }

    public final List<Probability> getProbabilities() {
        return this.probabilities;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int i = this.barrierValue;
        List<ClassMeta> list = this.classMetas;
        int i2 = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<Probability> list2 = this.probabilities;
        if (list2 != null) {
            i2 = list2.hashCode();
        }
        return (((((i * 31) + hashCode) * 31) + i2) * 31) + this.version;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Vectors(barrierValue=");
        m8728C.append(this.barrierValue);
        m8728C.append(", classMetas=");
        m8728C.append(this.classMetas);
        m8728C.append(", probabilities=");
        m8728C.append(this.probabilities);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.version, ")");
    }
}
