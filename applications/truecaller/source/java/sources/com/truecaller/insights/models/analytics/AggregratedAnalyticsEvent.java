package com.truecaller.insights.models.analytics;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0087\b\u0018��2\u00020\u0001BG\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u0012\u0006\u0010\u0015\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0005\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\r\u0012\u0006\u0010\u001a\u001a\u00020\u0010¢\u0006\u0004\b.\u0010/J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0010\u0010\n\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0007J\u0010\u0010\f\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J`\u0010\u001b\u001a\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u00052\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u00052\b\b\u0002\u0010\u0019\u001a\u00020\r2\b\b\u0002\u0010\u001a\u001a\u00020\u0010HÆ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u001d\u0010\u0007J\u0010\u0010\u001e\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0012J\u001a\u0010!\u001a\u00020 2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b!\u0010\"R\u001c\u0010\u0013\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010#\u001a\u0004\b$\u0010\u0007R\u001c\u0010\u0014\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010#\u001a\u0004\b%\u0010\u0007R\u001c\u0010\u0018\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010#\u001a\u0004\b&\u0010\u0007R\u001c\u0010\u0019\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010'\u001a\u0004\b(\u0010\u000fR\u001c\u0010\u0015\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010#\u001a\u0004\b)\u0010\u0007R\u001c\u0010\u0016\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010#\u001a\u0004\b*\u0010\u0007R\u001c\u0010\u001a\u001a\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010+\u001a\u0004\b,\u0010\u0012R\u001c\u0010\u0017\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010#\u001a\u0004\b-\u0010\u0007¨\u00060"}, d2 = {"Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;", "", "Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;", "mapToAggregatedAnalyticsEventModel", "()Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "Ljava/util/Date;", "component7", "()Ljava/util/Date;", "", "component8", "()I", "feature", "eventCategory", "eventInfo", AnalyticsConstants.CONTEXT, "actionType", "actionInfo", "eventDate", "counts", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getFeature", "getEventCategory", "getActionInfo", "Ljava/util/Date;", "getEventDate", "getEventInfo", "getContext", "I", "getCounts", "getActionType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/analytics/AggregratedAnalyticsEvent.class */
public final class AggregratedAnalyticsEvent {
    private final String actionInfo;
    private final String actionType;
    private final String context;
    private final int counts;
    private final String eventCategory;
    private final Date eventDate;
    private final String eventInfo;
    private final String feature;

    public AggregratedAnalyticsEvent(String str, String str2, String str3, String str4, String str5, String str6, Date date, int i) {
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(str6, "actionInfo");
        l.e(date, "eventDate");
        this.feature = str;
        this.eventCategory = str2;
        this.eventInfo = str3;
        this.context = str4;
        this.actionType = str5;
        this.actionInfo = str6;
        this.eventDate = date;
        this.counts = i;
    }

    public static /* synthetic */ AggregratedAnalyticsEvent copy$default(AggregratedAnalyticsEvent aggregratedAnalyticsEvent, String str, String str2, String str3, String str4, String str5, String str6, Date date, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = aggregratedAnalyticsEvent.feature;
        }
        if ((i2 & 2) != 0) {
            str2 = aggregratedAnalyticsEvent.eventCategory;
        }
        if ((i2 & 4) != 0) {
            str3 = aggregratedAnalyticsEvent.eventInfo;
        }
        if ((i2 & 8) != 0) {
            str4 = aggregratedAnalyticsEvent.context;
        }
        if ((i2 & 16) != 0) {
            str5 = aggregratedAnalyticsEvent.actionType;
        }
        if ((i2 & 32) != 0) {
            str6 = aggregratedAnalyticsEvent.actionInfo;
        }
        if ((i2 & 64) != 0) {
            date = aggregratedAnalyticsEvent.eventDate;
        }
        if ((i2 & 128) != 0) {
            i = aggregratedAnalyticsEvent.counts;
        }
        return aggregratedAnalyticsEvent.copy(str, str2, str3, str4, str5, str6, date, i);
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

    public final Date component7() {
        return this.eventDate;
    }

    public final int component8() {
        return this.counts;
    }

    public final AggregratedAnalyticsEvent copy(String str, String str2, String str3, String str4, String str5, String str6, Date date, int i) {
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(str6, "actionInfo");
        l.e(date, "eventDate");
        return new AggregratedAnalyticsEvent(str, str2, str3, str4, str5, str6, date, i);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AggregratedAnalyticsEvent)) {
                return false;
            }
            AggregratedAnalyticsEvent aggregratedAnalyticsEvent = (AggregratedAnalyticsEvent) obj;
            return l.a(this.feature, aggregratedAnalyticsEvent.feature) && l.a(this.eventCategory, aggregratedAnalyticsEvent.eventCategory) && l.a(this.eventInfo, aggregratedAnalyticsEvent.eventInfo) && l.a(this.context, aggregratedAnalyticsEvent.context) && l.a(this.actionType, aggregratedAnalyticsEvent.actionType) && l.a(this.actionInfo, aggregratedAnalyticsEvent.actionInfo) && l.a(this.eventDate, aggregratedAnalyticsEvent.eventDate) && this.counts == aggregratedAnalyticsEvent.counts;
        }
        return true;
    }

    public final String getActionInfo() {
        return this.actionInfo;
    }

    public final String getActionType() {
        return this.actionType;
    }

    public final String getContext() {
        return this.context;
    }

    public final int getCounts() {
        return this.counts;
    }

    public final String getEventCategory() {
        return this.eventCategory;
    }

    public final Date getEventDate() {
        return this.eventDate;
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
        Date date = this.eventDate;
        if (date != null) {
            i = date.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + this.counts;
    }

    public final AggregatedAnalyticsEventModel mapToAggregatedAnalyticsEventModel() {
        return new AggregatedAnalyticsEventModel(this.feature, this.eventCategory, this.eventInfo, this.context, this.actionType, this.actionInfo, this.eventDate, this.counts, 0L, null, false, 1792, null);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AggregratedAnalyticsEvent(feature=");
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
        m8728C.append(", eventDate=");
        m8728C.append(this.eventDate);
        m8728C.append(", counts=");
        return C22128a.m8697J2(m8728C, this.counts, ")");
    }
}
