package com.truecaller.freshchat;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/freshchat/FreshChatModel;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "id", AnalyticsConstants.KEY, "domain", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/freshchat/FreshChatModel;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getKey", "getDomain", "getId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/freshchat/FreshChatModel.class */
public final class FreshChatModel {
    private final String domain;

    /* renamed from: id */
    private final String f12253id;
    private final String key;

    public FreshChatModel(String str, String str2, String str3) {
        C22128a.m8703I0(str, "id", str2, AnalyticsConstants.KEY, str3, "domain");
        this.f12253id = str;
        this.key = str2;
        this.domain = str3;
    }

    public static /* synthetic */ FreshChatModel copy$default(FreshChatModel freshChatModel, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = freshChatModel.f12253id;
        }
        if ((i & 2) != 0) {
            str2 = freshChatModel.key;
        }
        if ((i & 4) != 0) {
            str3 = freshChatModel.domain;
        }
        return freshChatModel.copy(str, str2, str3);
    }

    public final String component1() {
        return this.f12253id;
    }

    public final String component2() {
        return this.key;
    }

    public final String component3() {
        return this.domain;
    }

    public final FreshChatModel copy(String str, String str2, String str3) {
        l.e(str, "id");
        l.e(str2, AnalyticsConstants.KEY);
        l.e(str3, "domain");
        return new FreshChatModel(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FreshChatModel)) {
                return false;
            }
            FreshChatModel freshChatModel = (FreshChatModel) obj;
            return l.a(this.f12253id, freshChatModel.f12253id) && l.a(this.key, freshChatModel.key) && l.a(this.domain, freshChatModel.domain);
        }
        return true;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getId() {
        return this.f12253id;
    }

    public final String getKey() {
        return this.key;
    }

    public int hashCode() {
        String str = this.f12253id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.key;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.domain;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FreshChatModel(id=");
        m8728C.append(this.f12253id);
        m8728C.append(", key=");
        m8728C.append(this.key);
        m8728C.append(", domain=");
        return C22128a.m8618h(m8728C, this.domain, ")");
    }
}
