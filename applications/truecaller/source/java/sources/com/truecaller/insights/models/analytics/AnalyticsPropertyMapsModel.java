package com.truecaller.insights.models.analytics;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018��2\u00020\u0001B3\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJB\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\nHÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0007J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u001c\u0010\u000f\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007R\u001c\u0010\u0011\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u001e\u001a\u0004\b\u001f\u0010\fR\u001c\u0010\u000e\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001c\u001a\u0004\b \u0010\u0007R\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010!\u001a\u0004\b\"\u0010\u0004R\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010!\u001a\u0004\b#\u0010\u0004¨\u0006&"}, d2 = {"Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;", "", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "component3", "component4", "Ljava/util/Date;", "component5", "()Ljava/util/Date;", "parentEventId", AnalyticsConstants.KEY, "value", "propertyId", "createdAt", "copy", "(JLjava/lang/String;Ljava/lang/String;JLjava/util/Date;)Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getValue", "Ljava/util/Date;", "getCreatedAt", "getKey", "J", "getParentEventId", "getPropertyId", "<init>", "(JLjava/lang/String;Ljava/lang/String;JLjava/util/Date;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel.class */
public final class AnalyticsPropertyMapsModel {
    private final Date createdAt;
    private final String key;
    private final long parentEventId;
    private final long propertyId;
    private final String value;

    public AnalyticsPropertyMapsModel(long j, String str, String str2, long j2, Date date) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "value");
        l.e(date, "createdAt");
        this.parentEventId = j;
        this.key = str;
        this.value = str2;
        this.propertyId = j2;
        this.createdAt = date;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    public /* synthetic */ AnalyticsPropertyMapsModel(long j, String str, String str2, long j2, Date date, int i, f fVar) {
        this(j, str, str2, (i & 8) != 0 ? 0 : j2, (i & 16) != 0 ? new Date() : date);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.truecaller.insights.models.analytics.AnalyticsPropertyMapsModel] */
    public static /* synthetic */ AnalyticsPropertyMapsModel copy$default(AnalyticsPropertyMapsModel analyticsPropertyMapsModel, long j, String str, String str2, long j2, Date date, int i, Object obj) {
        ?? r10 = j;
        if ((i & 1) != 0) {
            r10 = ((AnalyticsPropertyMapsModel) analyticsPropertyMapsModel).parentEventId;
        }
        if ((i & 2) != 0) {
            str = ((AnalyticsPropertyMapsModel) analyticsPropertyMapsModel).key;
        }
        if ((i & 4) != 0) {
            str2 = ((AnalyticsPropertyMapsModel) analyticsPropertyMapsModel).value;
        }
        ?? r14 = j2;
        if ((i & 8) != 0) {
            r14 = ((AnalyticsPropertyMapsModel) analyticsPropertyMapsModel).propertyId;
        }
        if ((i & 16) != 0) {
            date = ((AnalyticsPropertyMapsModel) analyticsPropertyMapsModel).createdAt;
        }
        return analyticsPropertyMapsModel.copy(r10, str, str2, r14, date);
    }

    public final long component1() {
        return this.parentEventId;
    }

    public final String component2() {
        return this.key;
    }

    public final String component3() {
        return this.value;
    }

    public final long component4() {
        return this.propertyId;
    }

    public final Date component5() {
        return this.createdAt;
    }

    public final AnalyticsPropertyMapsModel copy(long j, String str, String str2, long j2, Date date) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "value");
        l.e(date, "createdAt");
        return new AnalyticsPropertyMapsModel(j, str, str2, j2, date);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AnalyticsPropertyMapsModel)) {
                return false;
            }
            AnalyticsPropertyMapsModel analyticsPropertyMapsModel = (AnalyticsPropertyMapsModel) obj;
            return this.parentEventId == analyticsPropertyMapsModel.parentEventId && l.a(this.key, analyticsPropertyMapsModel.key) && l.a(this.value, analyticsPropertyMapsModel.value) && this.propertyId == analyticsPropertyMapsModel.propertyId && l.a(this.createdAt, analyticsPropertyMapsModel.createdAt);
        }
        return true;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final String getKey() {
        return this.key;
    }

    public final long getParentEventId() {
        return this.parentEventId;
    }

    public final long getPropertyId() {
        return this.propertyId;
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.parentEventId);
        String str = this.key;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.propertyId);
        Date date = this.createdAt;
        if (date != null) {
            i = date.hashCode();
        }
        return (((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + m34274a2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AnalyticsPropertyMapsModel(parentEventId=");
        m8728C.append(this.parentEventId);
        m8728C.append(", key=");
        m8728C.append(this.key);
        m8728C.append(", value=");
        m8728C.append(this.value);
        m8728C.append(", propertyId=");
        m8728C.append(this.propertyId);
        m8728C.append(", createdAt=");
        m8728C.append(this.createdAt);
        m8728C.append(")");
        return m8728C.toString();
    }
}
