package com.truecaller.insights.categorizer.model;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/truecaller/insights/categorizer/model/MetaParam;", "", "", "component1", "()I", "", "", "component2", "()Ljava/util/List;", "version", "meta", "copy", "(ILjava/util/List;)Lcom/truecaller/insights/categorizer/model/MetaParam;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getVersion", "Ljava/util/List;", "getMeta", "<init>", "(ILjava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/model/MetaParam.class */
public final class MetaParam {
    private final List<Double> meta;
    private final int version;

    public MetaParam(int i, List<Double> list) {
        l.e(list, "meta");
        this.version = i;
        this.meta = list;
    }

    public static /* synthetic */ MetaParam copy$default(MetaParam metaParam, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = metaParam.version;
        }
        if ((i2 & 2) != 0) {
            list = metaParam.meta;
        }
        return metaParam.copy(i, list);
    }

    public final int component1() {
        return this.version;
    }

    public final List<Double> component2() {
        return this.meta;
    }

    public final MetaParam copy(int i, List<Double> list) {
        l.e(list, "meta");
        return new MetaParam(i, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof MetaParam)) {
                return false;
            }
            MetaParam metaParam = (MetaParam) obj;
            return this.version == metaParam.version && l.a(this.meta, metaParam.meta);
        }
        return true;
    }

    public final List<Double> getMeta() {
        return this.meta;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int i = this.version;
        List<Double> list = this.meta;
        return (i * 31) + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MetaParam(version=");
        m8728C.append(this.version);
        m8728C.append(", meta=");
        return C22128a.m8602l(m8728C, this.meta, ")");
    }
}
