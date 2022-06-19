package com.truecaller.insights.core.senderinfo;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001B1\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004JD\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u001a\u0010\u0004R\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u001b\u0010\u0004\"\u0004\b\u001c\u0010\u001dR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u001e\u0010\u0004\"\u0004\b\u001f\u0010\u001dR\u001b\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b \u0010\u0004¨\u0006#"}, d2 = {"Lcom/truecaller/insights/core/senderinfo/SenderInfoData;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", AnalyticsConstants.NAME, "uiName", RemoteMessageConst.Notification.ICON, "symbol", "category", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/insights/core/senderinfo/SenderInfoData;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getName", "getIcon", "getSymbol", "setSymbol", "(Ljava/lang/String;)V", "getCategory", "setCategory", "getUiName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/core/senderinfo/SenderInfoData.class */
public final class SenderInfoData {
    private String category;
    private final String icon;
    private final String name;
    private String symbol;
    private final String uiName;

    public SenderInfoData(String str, String str2, String str3, String str4, String str5) {
        C22128a.m8699J0(str, AnalyticsConstants.NAME, str3, RemoteMessageConst.Notification.ICON, str4, "symbol", str5, "category");
        this.name = str;
        this.uiName = str2;
        this.icon = str3;
        this.symbol = str4;
        this.category = str5;
    }

    public static /* synthetic */ SenderInfoData copy$default(SenderInfoData senderInfoData, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = senderInfoData.name;
        }
        if ((i & 2) != 0) {
            str2 = senderInfoData.uiName;
        }
        if ((i & 4) != 0) {
            str3 = senderInfoData.icon;
        }
        if ((i & 8) != 0) {
            str4 = senderInfoData.symbol;
        }
        if ((i & 16) != 0) {
            str5 = senderInfoData.category;
        }
        return senderInfoData.copy(str, str2, str3, str4, str5);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.uiName;
    }

    public final String component3() {
        return this.icon;
    }

    public final String component4() {
        return this.symbol;
    }

    public final String component5() {
        return this.category;
    }

    public final SenderInfoData copy(String str, String str2, String str3, String str4, String str5) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str3, RemoteMessageConst.Notification.ICON);
        l.e(str4, "symbol");
        l.e(str5, "category");
        return new SenderInfoData(str, str2, str3, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SenderInfoData)) {
                return false;
            }
            SenderInfoData senderInfoData = (SenderInfoData) obj;
            return l.a(this.name, senderInfoData.name) && l.a(this.uiName, senderInfoData.uiName) && l.a(this.icon, senderInfoData.icon) && l.a(this.symbol, senderInfoData.symbol) && l.a(this.category, senderInfoData.category);
        }
        return true;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getName() {
        return this.name;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final String getUiName() {
        return this.uiName;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.uiName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.icon;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.symbol;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.category;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public final void setCategory(String str) {
        l.e(str, "<set-?>");
        this.category = str;
    }

    public final void setSymbol(String str) {
        l.e(str, "<set-?>");
        this.symbol = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderInfoData(name=");
        m8728C.append(this.name);
        m8728C.append(", uiName=");
        m8728C.append(this.uiName);
        m8728C.append(", icon=");
        m8728C.append(this.icon);
        m8728C.append(", symbol=");
        m8728C.append(this.symbol);
        m8728C.append(", category=");
        return C22128a.m8618h(m8728C, this.category, ")");
    }
}
