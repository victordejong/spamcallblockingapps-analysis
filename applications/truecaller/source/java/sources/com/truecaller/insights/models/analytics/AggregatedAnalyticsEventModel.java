package com.truecaller.insights.models.analytics;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.utils.DateFormat;
import java.util.Date;
import kotlin.Metadata;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17511e2;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b'\b\u0087\b\u0018��2\u00020\u0001Be\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010\u001f\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u0003\u0012\u0006\u0010!\u001a\u00020\u0003\u0012\u0006\u0010\"\u001a\u00020\u0003\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0013\u0012\b\b\u0002\u0010%\u001a\u00020\u0016\u0012\b\b\u0002\u0010&\u001a\u00020\u0002\u0012\b\b\u0002\u0010'\u001a\u00020\u001a¢\u0006\u0004\b?\u0010@J\u0013\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\r\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u000bJ\u0010\u0010\u0011\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0016HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0012J\u0010\u0010\u001b\u001a\u00020\u001aHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ~\u0010(\u001a\u00020��2\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00022\b\b\u0002\u0010$\u001a\u00020\u00132\b\b\u0002\u0010%\u001a\u00020\u00162\b\b\u0002\u0010&\u001a\u00020\u00022\b\b\u0002\u0010'\u001a\u00020\u001aHÆ\u0001¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b*\u0010\u000bJ\u0010\u0010+\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b+\u0010\u0015J\u001a\u0010-\u001a\u00020\u001a2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b-\u0010.R\u001c\u0010\u001e\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010/\u001a\u0004\b0\u0010\u000bR\u001c\u0010%\u001a\u00020\u00168\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u00101\u001a\u0004\b2\u0010\u0018R\u001c\u0010\"\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010/\u001a\u0004\b3\u0010\u000bR\u001c\u0010&\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b&\u00104\u001a\u0004\b5\u0010\u0012R\u001c\u0010 \u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010/\u001a\u0004\b6\u0010\u000bR\u001c\u0010!\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010/\u001a\u0004\b7\u0010\u000bR\u001c\u0010'\u001a\u00020\u001a8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b'\u00108\u001a\u0004\b9\u0010\u001cR\u001c\u0010#\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b#\u00104\u001a\u0004\b:\u0010\u0012R\u001c\u0010\u001d\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010/\u001a\u0004\b;\u0010\u000bR\u001c\u0010$\u001a\u00020\u00138\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b$\u0010<\u001a\u0004\b=\u0010\u0015R\u001c\u0010\u001f\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010/\u001a\u0004\b>\u0010\u000b¨\u0006A"}, d2 = {"Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;", "", "Ljava/util/Date;", "", "formatDate", "(Ljava/util/Date;)Ljava/lang/String;", "Le/a/l5/a/e2;", "kotlin.jvm.PlatformType", "mapToAppSmsInsightsEvent", "()Le/a/l5/a/e2;", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "()Ljava/util/Date;", "", "component8", "()I", "", "component9", "()J", "component10", "", "component11", "()Z", "feature", "eventCategory", "eventInfo", AnalyticsConstants.CONTEXT, "actionType", "actionInfo", "eventDate", "counts", "aggEventId", "createdAt", "consumed", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;", "toString", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getEventCategory", "J", "getAggEventId", "getActionInfo", "Ljava/util/Date;", "getCreatedAt", "getContext", "getActionType", "Z", "getConsumed", "getEventDate", "getFeature", "I", "getCounts", "getEventInfo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel.class */
public final class AggregatedAnalyticsEventModel {
    private final String actionInfo;
    private final String actionType;
    private final long aggEventId;
    private final boolean consumed;
    private final String context;
    private final int counts;
    private final Date createdAt;
    private final String eventCategory;
    private final Date eventDate;
    private final String eventInfo;
    private final String feature;

    public AggregatedAnalyticsEventModel(String str, String str2, String str3, String str4, String str5, String str6, Date date, int i, long j, Date date2, boolean z) {
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(str6, "actionInfo");
        l.e(date, "eventDate");
        l.e(date2, "createdAt");
        this.feature = str;
        this.eventCategory = str2;
        this.eventInfo = str3;
        this.context = str4;
        this.actionType = str5;
        this.actionInfo = str6;
        this.eventDate = date;
        this.counts = i;
        this.aggEventId = j;
        this.createdAt = date2;
        this.consumed = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    public /* synthetic */ AggregatedAnalyticsEventModel(String str, String str2, String str3, String str4, String str5, String str6, Date date, int i, long j, Date date2, boolean z, int i2, f fVar) {
        this(str, str2, str3, str4, str5, str6, date, i, (i2 & 256) != 0 ? 0 : j, (i2 & 512) != 0 ? new Date() : date2, (i2 & 1024) != 0 ? false : z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.truecaller.insights.models.analytics.AggregatedAnalyticsEventModel] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    public static /* synthetic */ AggregatedAnalyticsEventModel copy$default(AggregatedAnalyticsEventModel aggregatedAnalyticsEventModel, String str, String str2, String str3, String str4, String str5, String str6, Date date, int i, long j, Date date2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).feature;
        }
        if ((i2 & 2) != 0) {
            str2 = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).eventCategory;
        }
        if ((i2 & 4) != 0) {
            str3 = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).eventInfo;
        }
        if ((i2 & 8) != 0) {
            str4 = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).context;
        }
        if ((i2 & 16) != 0) {
            str5 = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).actionType;
        }
        if ((i2 & 32) != 0) {
            str6 = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).actionInfo;
        }
        if ((i2 & 64) != 0) {
            date = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).eventDate;
        }
        if ((i2 & 128) != 0) {
            i = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).counts;
        }
        ?? r23 = j;
        if ((i2 & 256) != 0) {
            r23 = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).aggEventId;
        }
        if ((i2 & 512) != 0) {
            date2 = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).createdAt;
        }
        if ((i2 & 1024) != 0) {
            z = ((AggregatedAnalyticsEventModel) aggregatedAnalyticsEventModel).consumed;
        }
        return aggregatedAnalyticsEventModel.copy(str, str2, str3, str4, str5, str6, date, i, r23, date2, z);
    }

    private final String formatDate(Date date) {
        String g = DateFormat.yyyy_MM_dd.formatter().g(new p(date));
        l.d(g, "ANALYTICS_DATE_FORMAT.fo…().print(LocalDate(this))");
        return g;
    }

    public final String component1() {
        return this.feature;
    }

    public final Date component10() {
        return this.createdAt;
    }

    public final boolean component11() {
        return this.consumed;
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

    public final long component9() {
        return this.aggEventId;
    }

    public final AggregatedAnalyticsEventModel copy(String str, String str2, String str3, String str4, String str5, String str6, Date date, int i, long j, Date date2, boolean z) {
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(str6, "actionInfo");
        l.e(date, "eventDate");
        l.e(date2, "createdAt");
        return new AggregatedAnalyticsEventModel(str, str2, str3, str4, str5, str6, date, i, j, date2, z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AggregatedAnalyticsEventModel)) {
                return false;
            }
            AggregatedAnalyticsEventModel aggregatedAnalyticsEventModel = (AggregatedAnalyticsEventModel) obj;
            return l.a(this.feature, aggregatedAnalyticsEventModel.feature) && l.a(this.eventCategory, aggregatedAnalyticsEventModel.eventCategory) && l.a(this.eventInfo, aggregatedAnalyticsEventModel.eventInfo) && l.a(this.context, aggregatedAnalyticsEventModel.context) && l.a(this.actionType, aggregatedAnalyticsEventModel.actionType) && l.a(this.actionInfo, aggregatedAnalyticsEventModel.actionInfo) && l.a(this.eventDate, aggregatedAnalyticsEventModel.eventDate) && this.counts == aggregatedAnalyticsEventModel.counts && this.aggEventId == aggregatedAnalyticsEventModel.aggEventId && l.a(this.createdAt, aggregatedAnalyticsEventModel.createdAt) && this.consumed == aggregatedAnalyticsEventModel.consumed;
        }
        return true;
    }

    public final String getActionInfo() {
        return this.actionInfo;
    }

    public final String getActionType() {
        return this.actionType;
    }

    public final long getAggEventId() {
        return this.aggEventId;
    }

    public final boolean getConsumed() {
        return this.consumed;
    }

    public final String getContext() {
        return this.context;
    }

    public final int getCounts() {
        return this.counts;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
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
        int hashCode7 = date != null ? date.hashCode() : 0;
        int i2 = this.counts;
        int m34274a = C4876d.m34274a(this.aggEventId);
        Date date2 = this.createdAt;
        if (date2 != null) {
            i = date2.hashCode();
        }
        boolean z = this.consumed;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i2) * 31) + m34274a) * 31) + i) * 31) + i3;
    }

    public final C17511e2 mapToAppSmsInsightsEvent() {
        Schema schema = C17511e2.f49142l;
        C17511e2.C17513b c17513b = new C17511e2.C17513b(null);
        String str = this.feature;
        c17513b.validate(c17513b.fields()[2], str);
        c17513b.f49157a = str;
        c17513b.fieldSetFlags()[2] = true;
        String str2 = this.eventCategory;
        c17513b.validate(c17513b.fields()[3], str2);
        c17513b.f49158b = str2;
        c17513b.fieldSetFlags()[3] = true;
        String str3 = this.eventInfo;
        c17513b.validate(c17513b.fields()[4], str3);
        c17513b.f49159c = str3;
        c17513b.fieldSetFlags()[4] = true;
        String str4 = this.context;
        c17513b.validate(c17513b.fields()[5], str4);
        c17513b.f49160d = str4;
        c17513b.fieldSetFlags()[5] = true;
        String str5 = this.actionType;
        c17513b.validate(c17513b.fields()[6], str5);
        c17513b.f49161e = str5;
        c17513b.fieldSetFlags()[6] = true;
        int i = this.counts;
        c17513b.validate(c17513b.fields()[7], Integer.valueOf(i));
        c17513b.f49162f = i;
        c17513b.fieldSetFlags()[7] = true;
        String str6 = this.actionInfo;
        c17513b.validate(c17513b.fields()[9], str6);
        c17513b.f49163g = str6;
        c17513b.fieldSetFlags()[9] = true;
        String formatDate = formatDate(this.eventDate);
        c17513b.validate(c17513b.fields()[10], formatDate);
        c17513b.f49164h = formatDate;
        c17513b.fieldSetFlags()[10] = true;
        return c17513b.build();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AggregatedAnalyticsEventModel(feature=");
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
        m8728C.append(this.counts);
        m8728C.append(", aggEventId=");
        m8728C.append(this.aggEventId);
        m8728C.append(", createdAt=");
        m8728C.append(this.createdAt);
        m8728C.append(", consumed=");
        return C22128a.m8590o(m8728C, this.consumed, ")");
    }
}
