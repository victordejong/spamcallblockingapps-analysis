package com.truecaller.insights.models.categorizerseed;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B+\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0005J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ:\u0010\u000e\u001a\u00020��2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0013\u0010\nJ\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001c\u0010\r\u001a\u00020\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u0019\u0010\nR\"\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001b\u0010\u0005R\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001c\u0010\u0005¨\u0006\u001f"}, d2 = {"Lcom/truecaller/insights/models/categorizerseed/Vectors;", "", "", "", "component1", "()Ljava/util/List;", "Lcom/truecaller/insights/models/categorizerseed/Probability;", "component2", "", "component3", "()I", "meta", "probabilities", "version", "copy", "(Ljava/util/List;Ljava/util/List;I)Lcom/truecaller/insights/models/categorizerseed/Vectors;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getVersion", "Ljava/util/List;", "getProbabilities", "getMeta", "<init>", "(Ljava/util/List;Ljava/util/List;I)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/categorizerseed/Vectors.class */
public final class Vectors {
    @b("meta")
    private final List<Double> meta;
    @b("probabilities")
    private final List<Probability> probabilities;
    @b("version")
    private final int version;

    public Vectors(List<Double> list, List<Probability> list2, int i) {
        l.e(list, "meta");
        l.e(list2, "probabilities");
        this.meta = list;
        this.probabilities = list2;
        this.version = i;
    }

    public static /* synthetic */ Vectors copy$default(Vectors vectors, List list, List list2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = vectors.meta;
        }
        if ((i2 & 2) != 0) {
            list2 = vectors.probabilities;
        }
        if ((i2 & 4) != 0) {
            i = vectors.version;
        }
        return vectors.copy(list, list2, i);
    }

    public final List<Double> component1() {
        return this.meta;
    }

    public final List<Probability> component2() {
        return this.probabilities;
    }

    public final int component3() {
        return this.version;
    }

    public final Vectors copy(List<Double> list, List<Probability> list2, int i) {
        l.e(list, "meta");
        l.e(list2, "probabilities");
        return new Vectors(list, list2, i);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Vectors)) {
                return false;
            }
            Vectors vectors = (Vectors) obj;
            return l.a(this.meta, vectors.meta) && l.a(this.probabilities, vectors.probabilities) && this.version == vectors.version;
        }
        return true;
    }

    public final List<Double> getMeta() {
        return this.meta;
    }

    public final List<Probability> getProbabilities() {
        return this.probabilities;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<Double> list = this.meta;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<Probability> list2 = this.probabilities;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.version;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Vectors(meta=");
        m8728C.append(this.meta);
        m8728C.append(", probabilities=");
        m8728C.append(this.probabilities);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.version, ")");
    }
}
