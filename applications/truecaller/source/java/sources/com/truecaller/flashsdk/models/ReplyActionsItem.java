package com.truecaller.flashsdk.models;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B%\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/flashsdk/models/ReplyActionsItem;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", AnalyticsConstants.NAME, "action", "type", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/flashsdk/models/ReplyActionsItem;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getName", "getType", "getAction", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/ReplyActionsItem.class */
public final class ReplyActionsItem {
    @b("action")
    private final String action;
    @b(AnalyticsConstants.NAME)
    private final String name;
    @b("type")
    private final String type;

    public ReplyActionsItem() {
        this(null, null, null, 7, null);
    }

    public ReplyActionsItem(String str, String str2, String str3) {
        C22128a.m8703I0(str, AnalyticsConstants.NAME, str2, "action", str3, "type");
        this.name = str;
        this.action = str2;
        this.type = str3;
    }

    public /* synthetic */ ReplyActionsItem(String str, String str2, String str3, int i, f fVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }

    public static /* synthetic */ ReplyActionsItem copy$default(ReplyActionsItem replyActionsItem, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = replyActionsItem.name;
        }
        if ((i & 2) != 0) {
            str2 = replyActionsItem.action;
        }
        if ((i & 4) != 0) {
            str3 = replyActionsItem.type;
        }
        return replyActionsItem.copy(str, str2, str3);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.action;
    }

    public final String component3() {
        return this.type;
    }

    public final ReplyActionsItem copy(String str, String str2, String str3) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "action");
        l.e(str3, "type");
        return new ReplyActionsItem(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ReplyActionsItem)) {
                return false;
            }
            ReplyActionsItem replyActionsItem = (ReplyActionsItem) obj;
            return l.a(this.name, replyActionsItem.name) && l.a(this.action, replyActionsItem.action) && l.a(this.type, replyActionsItem.type);
        }
        return true;
    }

    public final String getAction() {
        return this.action;
    }

    public final String getName() {
        return this.name;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.action;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.type;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReplyActionsItem(name=");
        m8728C.append(this.name);
        m8728C.append(", action=");
        m8728C.append(this.action);
        m8728C.append(", type=");
        return C22128a.m8618h(m8728C, this.type, ")");
    }
}
