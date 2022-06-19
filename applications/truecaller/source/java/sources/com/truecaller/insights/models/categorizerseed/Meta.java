package com.truecaller.insights.models.categorizerseed;

import androidx.annotation.Keep;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/insights/models/categorizerseed/Meta;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "traceId", "message", UpdateKey.STATUS, "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/insights/models/categorizerseed/Meta;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getTraceId", "getStatus", "getMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/categorizerseed/Meta.class */
public final class Meta {
    @b("message")
    private final String message;
    @b(UpdateKey.STATUS)
    private final String status;
    @b("traceId")
    private final String traceId;

    public Meta(String str, String str2, String str3) {
        C22128a.m8703I0(str, "traceId", str2, "message", str3, UpdateKey.STATUS);
        this.traceId = str;
        this.message = str2;
        this.status = str3;
    }

    public static /* synthetic */ Meta copy$default(Meta meta, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = meta.traceId;
        }
        if ((i & 2) != 0) {
            str2 = meta.message;
        }
        if ((i & 4) != 0) {
            str3 = meta.status;
        }
        return meta.copy(str, str2, str3);
    }

    public final String component1() {
        return this.traceId;
    }

    public final String component2() {
        return this.message;
    }

    public final String component3() {
        return this.status;
    }

    public final Meta copy(String str, String str2, String str3) {
        l.e(str, "traceId");
        l.e(str2, "message");
        l.e(str3, UpdateKey.STATUS);
        return new Meta(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Meta)) {
                return false;
            }
            Meta meta = (Meta) obj;
            return l.a(this.traceId, meta.traceId) && l.a(this.message, meta.message) && l.a(this.status, meta.status);
        }
        return true;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getTraceId() {
        return this.traceId;
    }

    public int hashCode() {
        String str = this.traceId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.message;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.status;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Meta(traceId=");
        m8728C.append(this.traceId);
        m8728C.append(", message=");
        m8728C.append(this.message);
        m8728C.append(", status=");
        return C22128a.m8618h(m8728C, this.status, ")");
    }
}
