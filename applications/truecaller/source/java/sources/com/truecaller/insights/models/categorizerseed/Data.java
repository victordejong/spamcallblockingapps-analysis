package com.truecaller.insights.models.categorizerseed;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B)\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ:\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0013\u0010\bJ\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001c\u0010\u000e\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0018\u001a\u0004\b\u0019\u0010\bR\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u001d\u0010\u000bR\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001e\u0010\u0004¨\u0006!"}, d2 = {"Lcom/truecaller/insights/models/categorizerseed/Data;", "", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()I", "Lcom/truecaller/insights/models/categorizerseed/Vectors;", "component4", "()Lcom/truecaller/insights/models/categorizerseed/Vectors;", "appVersion", "minSupportedVersion", "modelVersion", "vectors", "copy", "(Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/insights/models/categorizerseed/Vectors;)Lcom/truecaller/insights/models/categorizerseed/Data;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getModelVersion", "Ljava/lang/String;", "getMinSupportedVersion", "Lcom/truecaller/insights/models/categorizerseed/Vectors;", "getVectors", "getAppVersion", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/insights/models/categorizerseed/Vectors;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/categorizerseed/Data.class */
public final class Data {
    @b("appVersion")
    private final String appVersion;
    @b("minSupportedVersion")
    private final String minSupportedVersion;
    @b("modelVersion")
    private final int modelVersion;
    @b("vectors")
    private final Vectors vectors;

    public Data(String str, String str2, int i, Vectors vectors) {
        l.e(str, "appVersion");
        l.e(str2, "minSupportedVersion");
        this.appVersion = str;
        this.minSupportedVersion = str2;
        this.modelVersion = i;
        this.vectors = vectors;
    }

    public static /* synthetic */ Data copy$default(Data data, String str, String str2, int i, Vectors vectors, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = data.appVersion;
        }
        if ((i2 & 2) != 0) {
            str2 = data.minSupportedVersion;
        }
        if ((i2 & 4) != 0) {
            i = data.modelVersion;
        }
        if ((i2 & 8) != 0) {
            vectors = data.vectors;
        }
        return data.copy(str, str2, i, vectors);
    }

    public final String component1() {
        return this.appVersion;
    }

    public final String component2() {
        return this.minSupportedVersion;
    }

    public final int component3() {
        return this.modelVersion;
    }

    public final Vectors component4() {
        return this.vectors;
    }

    public final Data copy(String str, String str2, int i, Vectors vectors) {
        l.e(str, "appVersion");
        l.e(str2, "minSupportedVersion");
        return new Data(str, str2, i, vectors);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Data)) {
                return false;
            }
            Data data = (Data) obj;
            return l.a(this.appVersion, data.appVersion) && l.a(this.minSupportedVersion, data.minSupportedVersion) && this.modelVersion == data.modelVersion && l.a(this.vectors, data.vectors);
        }
        return true;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getMinSupportedVersion() {
        return this.minSupportedVersion;
    }

    public final int getModelVersion() {
        return this.modelVersion;
    }

    public final Vectors getVectors() {
        return this.vectors;
    }

    public int hashCode() {
        String str = this.appVersion;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.minSupportedVersion;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int i2 = this.modelVersion;
        Vectors vectors = this.vectors;
        if (vectors != null) {
            i = vectors.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Data(appVersion=");
        m8728C.append(this.appVersion);
        m8728C.append(", minSupportedVersion=");
        m8728C.append(this.minSupportedVersion);
        m8728C.append(", modelVersion=");
        m8728C.append(this.modelVersion);
        m8728C.append(", vectors=");
        m8728C.append(this.vectors);
        m8728C.append(")");
        return m8728C.toString();
    }
}
