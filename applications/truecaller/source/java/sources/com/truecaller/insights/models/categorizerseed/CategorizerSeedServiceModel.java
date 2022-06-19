package com.truecaller.insights.models.categorizerseed;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007¨\u0006\u001c"}, d2 = {"Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;", "", "Lcom/truecaller/insights/models/categorizerseed/Data;", "component1", "()Lcom/truecaller/insights/models/categorizerseed/Data;", "Lcom/truecaller/insights/models/categorizerseed/Meta;", "component2", "()Lcom/truecaller/insights/models/categorizerseed/Meta;", RemoteMessageConst.DATA, "meta", "copy", "(Lcom/truecaller/insights/models/categorizerseed/Data;Lcom/truecaller/insights/models/categorizerseed/Meta;)Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/insights/models/categorizerseed/Data;", "getData", "Lcom/truecaller/insights/models/categorizerseed/Meta;", "getMeta", "<init>", "(Lcom/truecaller/insights/models/categorizerseed/Data;Lcom/truecaller/insights/models/categorizerseed/Meta;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel.class */
public final class CategorizerSeedServiceModel {
    @b(RemoteMessageConst.DATA)
    private final Data data;
    @b("meta")
    private final Meta meta;

    public CategorizerSeedServiceModel(Data data, Meta meta) {
        l.e(data, RemoteMessageConst.DATA);
        l.e(meta, "meta");
        this.data = data;
        this.meta = meta;
    }

    public static /* synthetic */ CategorizerSeedServiceModel copy$default(CategorizerSeedServiceModel categorizerSeedServiceModel, Data data, Meta meta, int i, Object obj) {
        if ((i & 1) != 0) {
            data = categorizerSeedServiceModel.data;
        }
        if ((i & 2) != 0) {
            meta = categorizerSeedServiceModel.meta;
        }
        return categorizerSeedServiceModel.copy(data, meta);
    }

    public final Data component1() {
        return this.data;
    }

    public final Meta component2() {
        return this.meta;
    }

    public final CategorizerSeedServiceModel copy(Data data, Meta meta) {
        l.e(data, RemoteMessageConst.DATA);
        l.e(meta, "meta");
        return new CategorizerSeedServiceModel(data, meta);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CategorizerSeedServiceModel)) {
                return false;
            }
            CategorizerSeedServiceModel categorizerSeedServiceModel = (CategorizerSeedServiceModel) obj;
            return l.a(this.data, categorizerSeedServiceModel.data) && l.a(this.meta, categorizerSeedServiceModel.meta);
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
        Data data = this.data;
        int i = 0;
        int hashCode = data != null ? data.hashCode() : 0;
        Meta meta = this.meta;
        if (meta != null) {
            i = meta.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CategorizerSeedServiceModel(data=");
        m8728C.append(this.data);
        m8728C.append(", meta=");
        m8728C.append(this.meta);
        m8728C.append(")");
        return m8728C.toString();
    }
}
