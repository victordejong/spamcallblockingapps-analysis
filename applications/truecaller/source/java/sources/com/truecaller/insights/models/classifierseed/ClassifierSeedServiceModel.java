package com.truecaller.insights.models.classifierseed;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004¨\u0006\u001c"}, d2 = {"Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;", "", "Lcom/truecaller/insights/models/classifierseed/Meta;", "component1", "()Lcom/truecaller/insights/models/classifierseed/Meta;", "Lcom/truecaller/insights/models/classifierseed/Data;", "component2", "()Lcom/truecaller/insights/models/classifierseed/Data;", "meta", RemoteMessageConst.DATA, "copy", "(Lcom/truecaller/insights/models/classifierseed/Meta;Lcom/truecaller/insights/models/classifierseed/Data;)Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/insights/models/classifierseed/Data;", "getData", "Lcom/truecaller/insights/models/classifierseed/Meta;", "getMeta", "<init>", "(Lcom/truecaller/insights/models/classifierseed/Meta;Lcom/truecaller/insights/models/classifierseed/Data;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel.class */
public final class ClassifierSeedServiceModel {
    @b(RemoteMessageConst.DATA)
    private final Data data;
    @b("meta")
    private final Meta meta;

    public ClassifierSeedServiceModel(Meta meta, Data data) {
        l.e(meta, "meta");
        l.e(data, RemoteMessageConst.DATA);
        this.meta = meta;
        this.data = data;
    }

    public static /* synthetic */ ClassifierSeedServiceModel copy$default(ClassifierSeedServiceModel classifierSeedServiceModel, Meta meta, Data data, int i, Object obj) {
        if ((i & 1) != 0) {
            meta = classifierSeedServiceModel.meta;
        }
        if ((i & 2) != 0) {
            data = classifierSeedServiceModel.data;
        }
        return classifierSeedServiceModel.copy(meta, data);
    }

    public final Meta component1() {
        return this.meta;
    }

    public final Data component2() {
        return this.data;
    }

    public final ClassifierSeedServiceModel copy(Meta meta, Data data) {
        l.e(meta, "meta");
        l.e(data, RemoteMessageConst.DATA);
        return new ClassifierSeedServiceModel(meta, data);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ClassifierSeedServiceModel)) {
                return false;
            }
            ClassifierSeedServiceModel classifierSeedServiceModel = (ClassifierSeedServiceModel) obj;
            return l.a(this.meta, classifierSeedServiceModel.meta) && l.a(this.data, classifierSeedServiceModel.data);
        }
        return true;
    }

    public final Data getData() {
        return this.data;
    }

    public final Meta getMeta() {
        return this.meta;
    }

    public int hashCode() {
        Meta meta = this.meta;
        int i = 0;
        int hashCode = meta != null ? meta.hashCode() : 0;
        Data data = this.data;
        if (data != null) {
            i = data.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ClassifierSeedServiceModel(meta=");
        m8728C.append(this.meta);
        m8728C.append(", data=");
        m8728C.append(this.data);
        m8728C.append(")");
        return m8728C.toString();
    }
}
