package com.truecaller.insights.categorizer.model;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10108a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\b\u0081\b\u0018��2\u00020\u0001B+\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u001e\u0010\u001fJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0005J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ:\u0010\u000e\u001a\u00020��2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0013\u0010\nJ\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0019\u001a\u0004\b\u001a\u0010\u0005R\"\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\u0019\u001a\u0004\b\u001b\u0010\u0005R\u001c\u0010\r\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u001c\u001a\u0004\b\u001d\u0010\n¨\u0006 "}, d2 = {"Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;", "Le/a/c/g/a0/a;", "", "Lcom/truecaller/insights/categorizer/model/WordProbImpl;", "component1", "()Ljava/util/List;", "", "component2", "", "component3", "()I", "probabilities", "meta", "version", "copy", "(Ljava/util/List;Ljava/util/List;I)Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;", "", "toString", "()Ljava/lang/String;", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getProbabilities", "getMeta", "I", "getVersion", "<init>", "(Ljava/util/List;Ljava/util/List;I)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/model/CategorizerModelImpl.class */
public final class CategorizerModelImpl implements AbstractC10108a {
    private final List<Double> meta;
    private final List<WordProbImpl> probabilities;
    private final int version;

    public CategorizerModelImpl(List<WordProbImpl> list, List<Double> list2, int i) {
        l.e(list, "probabilities");
        l.e(list2, "meta");
        this.probabilities = list;
        this.meta = list2;
        this.version = i;
    }

    public static /* synthetic */ CategorizerModelImpl copy$default(CategorizerModelImpl categorizerModelImpl, List list, List list2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = categorizerModelImpl.getProbabilities();
        }
        if ((i2 & 2) != 0) {
            list2 = categorizerModelImpl.getMeta();
        }
        if ((i2 & 4) != 0) {
            i = categorizerModelImpl.getVersion();
        }
        return categorizerModelImpl.copy(list, list2, i);
    }

    public final List<WordProbImpl> component1() {
        return getProbabilities();
    }

    public final List<Double> component2() {
        return getMeta();
    }

    public final int component3() {
        return getVersion();
    }

    public final CategorizerModelImpl copy(List<WordProbImpl> list, List<Double> list2, int i) {
        l.e(list, "probabilities");
        l.e(list2, "meta");
        return new CategorizerModelImpl(list, list2, i);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CategorizerModelImpl)) {
                return false;
            }
            CategorizerModelImpl categorizerModelImpl = (CategorizerModelImpl) obj;
            return l.a(getProbabilities(), categorizerModelImpl.getProbabilities()) && l.a(getMeta(), categorizerModelImpl.getMeta()) && getVersion() == categorizerModelImpl.getVersion();
        }
        return true;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10108a
    public List<Double> getMeta() {
        return this.meta;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10108a
    public List<WordProbImpl> getProbabilities() {
        return this.probabilities;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10108a
    public int getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<WordProbImpl> probabilities = getProbabilities();
        int i = 0;
        int hashCode = probabilities != null ? probabilities.hashCode() : 0;
        List<Double> meta = getMeta();
        if (meta != null) {
            i = meta.hashCode();
        }
        return getVersion() + (((hashCode * 31) + i) * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CategorizerModelImpl(probabilities=");
        m8728C.append(getProbabilities());
        m8728C.append(", meta=");
        m8728C.append(getMeta());
        m8728C.append(", version=");
        m8728C.append(getVersion());
        m8728C.append(")");
        return m8728C.toString();
    }
}
