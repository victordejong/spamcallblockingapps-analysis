package com.truecaller.insights.models.analytics;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0015\b\u0087\b\u0018��2\u00020\u0001BU\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\n\u0012\b\b\u0002\u0010\u001a\u001a\u00020\r\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0010¢\u0006\u0004\b2\u00103J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012Jj\u0010\u001c\u001a\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\u0010HÆ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0004J\u0010\u0010 \u001a\u00020\u001fHÖ\u0001¢\u0006\u0004\b \u0010!J\u001a\u0010#\u001a\u00020\u00102\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b#\u0010$R\u001c\u0010\u0018\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010%\u001a\u0004\b&\u0010\u0004R\u001c\u0010\u001b\u001a\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010'\u001a\u0004\b(\u0010\u0012R\u001c\u0010\u0015\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010%\u001a\u0004\b)\u0010\u0004R\u001c\u0010\u0016\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010%\u001a\u0004\b*\u0010\u0004R\u001c\u0010\u0019\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010+\u001a\u0004\b,\u0010\fR\u001c\u0010\u001a\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010-\u001a\u0004\b.\u0010\u000fR\u001c\u0010\u0014\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010%\u001a\u0004\b/\u0010\u0004R\u001c\u0010\u0017\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010%\u001a\u0004\b0\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010%\u001a\u0004\b1\u0010\u0004¨\u00064"}, d2 = {"Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "", "component7", "()J", "Ljava/util/Date;", "component8", "()Ljava/util/Date;", "", "component9", "()Z", "feature", "eventCategory", "eventInfo", AnalyticsConstants.CONTEXT, "actionType", "actionInfo", "eventId", "createdAt", "consumed", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Z)Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getActionInfo", "Z", "getConsumed", "getEventInfo", "getContext", "J", "getEventId", "Ljava/util/Date;", "getCreatedAt", "getEventCategory", "getActionType", "getFeature", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Z)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/analytics/SimpleAnalyticsModel.class */
public final class SimpleAnalyticsModel {
    private final String actionInfo;
    private final String actionType;
    private final boolean consumed;
    private final String context;
    private final Date createdAt;
    private final String eventCategory;
    private final long eventId;
    private final String eventInfo;
    private final String feature;

    public SimpleAnalyticsModel(String str, String str2, String str3, String str4, String str5, String str6, long j, Date date, boolean z) {
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(str6, "actionInfo");
        l.e(date, "createdAt");
        this.feature = str;
        this.eventCategory = str2;
        this.eventInfo = str3;
        this.context = str4;
        this.actionType = str5;
        this.actionInfo = str6;
        this.eventId = j;
        this.createdAt = date;
        this.consumed = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    public /* synthetic */ SimpleAnalyticsModel(String str, String str2, String str3, String str4, String str5, String str6, long j, Date date, boolean z, int i, f fVar) {
        this(str, str2, str3, str4, str5, str6, (i & 64) != 0 ? 0 : j, (i & 128) != 0 ? new Date() : date, (i & 256) != 0 ? false : z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.truecaller.insights.models.analytics.SimpleAnalyticsModel] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    public static /* synthetic */ SimpleAnalyticsModel copy$default(SimpleAnalyticsModel simpleAnalyticsModel, String str, String str2, String str3, String str4, String str5, String str6, long j, Date date, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((SimpleAnalyticsModel) simpleAnalyticsModel).feature;
        }
        if ((i & 2) != 0) {
            str2 = ((SimpleAnalyticsModel) simpleAnalyticsModel).eventCategory;
        }
        if ((i & 4) != 0) {
            str3 = ((SimpleAnalyticsModel) simpleAnalyticsModel).eventInfo;
        }
        if ((i & 8) != 0) {
            str4 = ((SimpleAnalyticsModel) simpleAnalyticsModel).context;
        }
        if ((i & 16) != 0) {
            str5 = ((SimpleAnalyticsModel) simpleAnalyticsModel).actionType;
        }
        if ((i & 32) != 0) {
            str6 = ((SimpleAnalyticsModel) simpleAnalyticsModel).actionInfo;
        }
        ?? r19 = j;
        if ((i & 64) != 0) {
            r19 = ((SimpleAnalyticsModel) simpleAnalyticsModel).eventId;
        }
        if ((i & 128) != 0) {
            date = ((SimpleAnalyticsModel) simpleAnalyticsModel).createdAt;
        }
        if ((i & 256) != 0) {
            z = ((SimpleAnalyticsModel) simpleAnalyticsModel).consumed;
        }
        return simpleAnalyticsModel.copy(str, str2, str3, str4, str5, str6, r19, date, z);
    }

    public final String component1() {
        return this.feature;
    }

    public final String component2() {
        return this.eventCategory;
    }

    public final String component3() {
        return this.eventInfo;
    }

    public final String component4() {
        return this.context;
    }

    public final String component5() {
        return this.actionType;
    }

    public final String component6() {
        return this.actionInfo;
    }

    public final long component7() {
        return this.eventId;
    }

    public final Date component8() {
        return this.createdAt;
    }

    public final boolean component9() {
        return this.consumed;
    }

    public final SimpleAnalyticsModel copy(String str, String str2, String str3, String str4, String str5, String str6, long j, Date date, boolean z) {
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(str6, "actionInfo");
        l.e(date, "createdAt");
        return new SimpleAnalyticsModel(str, str2, str3, str4, str5, str6, j, date, z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SimpleAnalyticsModel)) {
                return false;
            }
            SimpleAnalyticsModel simpleAnalyticsModel = (SimpleAnalyticsModel) obj;
            return l.a(this.feature, simpleAnalyticsModel.feature) && l.a(this.eventCategory, simpleAnalyticsModel.eventCategory) && l.a(this.eventInfo, simpleAnalyticsModel.eventInfo) && l.a(this.context, simpleAnalyticsModel.context) && l.a(this.actionType, simpleAnalyticsModel.actionType) && l.a(this.actionInfo, simpleAnalyticsModel.actionInfo) && this.eventId == simpleAnalyticsModel.eventId && l.a(this.createdAt, simpleAnalyticsModel.createdAt) && this.consumed == simpleAnalyticsModel.consumed;
        }
        return true;
    }

    public final String getActionInfo() {
        return this.actionInfo;
    }

    public final String getActionType() {
        return this.actionType;
    }

    public final boolean getConsumed() {
        return this.consumed;
    }

    public final String getContext() {
        return this.context;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final String getEventCategory() {
        return this.eventCategory;
    }

    public final long getEventId() {
        return this.eventId;
    }

    public final String getEventInfo() {
        return this.eventInfo;
    }

    public final String getFeature() {
        return this.feature;
    }

    public int hashCode() {
        String str = this.feature;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.eventCategory;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.eventInfo;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.context;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.actionType;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.actionInfo;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.eventId);
        Date date = this.createdAt;
        if (date != null) {
            i = date.hashCode();
        }
        boolean z = this.consumed;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + m34274a) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SimpleAnalyticsModel(feature=");
        m8728C.append(this.feature);
        m8728C.append(", eventCategory=");
        m8728C.append(this.eventCategory);
        m8728C.append(", eventInfo=");
        m8728C.append(this.eventInfo);
        m8728C.append(", context=");
        m8728C.append(this.context);
        m8728C.append(", actionType=");
        m8728C.append(this.actionType);
        m8728C.append(", actionInfo=");
        m8728C.append(this.actionInfo);
        m8728C.append(", eventId=");
        m8728C.append(this.eventId);
        m8728C.append(", createdAt=");
        m8728C.append(this.createdAt);
        m8728C.append(", consumed=");
        return C22128a.m8590o(m8728C, this.consumed, ")");
    }
}
