package com.truecaller.bizmon.callMeBack.data.models;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004\"\u0004\b\u0016\u0010\u0017R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0018\u0010\u0004\"\u0004\b\u0019\u0010\u0017R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u001a\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", AnalyticsConstants.PHONE, "title", "body", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getBody", "setBody", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getPhone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse.class */
public final class CallMeBackResponse {
    private String body;
    private final String phone;
    private String title;

    public CallMeBackResponse(String str, String str2, String str3) {
        C22128a.m8703I0(str, AnalyticsConstants.PHONE, str2, "title", str3, "body");
        this.phone = str;
        this.title = str2;
        this.body = str3;
    }

    public static /* synthetic */ CallMeBackResponse copy$default(CallMeBackResponse callMeBackResponse, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = callMeBackResponse.phone;
        }
        if ((i & 2) != 0) {
            str2 = callMeBackResponse.title;
        }
        if ((i & 4) != 0) {
            str3 = callMeBackResponse.body;
        }
        return callMeBackResponse.copy(str, str2, str3);
    }

    public final String component1() {
        return this.phone;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.body;
    }

    public final CallMeBackResponse copy(String str, String str2, String str3) {
        l.e(str, AnalyticsConstants.PHONE);
        l.e(str2, "title");
        l.e(str3, "body");
        return new CallMeBackResponse(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallMeBackResponse)) {
                return false;
            }
            CallMeBackResponse callMeBackResponse = (CallMeBackResponse) obj;
            return l.a(this.phone, callMeBackResponse.phone) && l.a(this.title, callMeBackResponse.title) && l.a(this.body, callMeBackResponse.body);
        }
        return true;
    }

    public final String getBody() {
        return this.body;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.phone;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.title;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.body;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final void setBody(String str) {
        l.e(str, "<set-?>");
        this.body = str;
    }

    public final void setTitle(String str) {
        l.e(str, "<set-?>");
        this.title = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallMeBackResponse(phone=");
        m8728C.append(this.phone);
        m8728C.append(", title=");
        m8728C.append(this.title);
        m8728C.append(", body=");
        return C22128a.m8618h(m8728C, this.body, ")");
    }
}
