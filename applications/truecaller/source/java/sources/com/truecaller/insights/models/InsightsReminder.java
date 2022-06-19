package com.truecaller.insights.models;

import androidx.annotation.Keep;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b,\b\u0087\b\u0018��2\u00020\u0001Bu\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u000e\u0012\b\b\u0001\u0010\u001c\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u000e¢\u0006\u0004\b8\u00109J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0004J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0013\u0010\bJ\u0010\u0010\u0014\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0010J\u0082\u0001\u0010 \u001a\u00020��2\b\b\u0002\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u000b2\b\b\u0002\u0010\u001b\u001a\u00020\u000e2\b\b\u0003\u0010\u001c\u001a\u00020\u00022\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u00062\b\b\u0002\u0010\u001f\u001a\u00020\u000eHÆ\u0001¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\"\u0010\u0004J\u0010\u0010#\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b#\u0010\rJ\u001a\u0010%\u001a\u00020\u000e2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b%\u0010&R\"\u0010\u001b\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010'\u001a\u0004\b(\u0010\u0010\"\u0004\b)\u0010*R\u001c\u0010\u0018\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010+\u001a\u0004\b,\u0010\bR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010-\u001a\u0004\b.\u0010\u0004R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010-\u001a\u0004\b/\u0010\u0004R\u001c\u0010\u001f\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010'\u001a\u0004\b0\u0010\u0010R\u001c\u0010\u0016\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010-\u001a\u0004\b1\u0010\u0004R\u001c\u0010\u001a\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u00102\u001a\u0004\b3\u0010\rR\u001c\u0010\u001c\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010-\u001a\u0004\b4\u0010\u0004R\u001c\u0010\u001e\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010+\u001a\u0004\b5\u0010\bR\u001c\u0010\u0017\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010+\u001a\u0004\b6\u0010\bR\u001c\u0010\u0015\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010-\u001a\u0004\b7\u0010\u0004¨\u0006:"}, d2 = {"Lcom/truecaller/insights/models/InsightsReminder;", "", "", "component1", "()Ljava/lang/String;", "component2", "Ljava/util/Date;", "component3", "()Ljava/util/Date;", "component4", "component5", "", "component6", "()I", "", "component7", "()Z", "component8", "component9", "component10", "component11", "uniqueRefId", "vendorName", "dueDate", "generatedDate", "imageUrl", "timesNotified", "dismissed", "category", "metaJsonString", "createdAt", "pendingNotification", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/truecaller/insights/models/InsightsReminder;", "toString", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getDismissed", "setDismissed", "(Z)V", "Ljava/util/Date;", "getGeneratedDate", "Ljava/lang/String;", "getImageUrl", "getMetaJsonString", "getPendingNotification", "getVendorName", "I", "getTimesNotified", "getCategory", "getCreatedAt", "getDueDate", "getUniqueRefId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/InsightsReminder.class */
public final class InsightsReminder {
    private final String category;
    private final Date createdAt;
    private boolean dismissed;
    private final Date dueDate;
    private final Date generatedDate;
    private final String imageUrl;
    private final String metaJsonString;
    private final boolean pendingNotification;
    private final int timesNotified;
    private final String uniqueRefId;
    private final String vendorName;

    public InsightsReminder(String str, String str2, Date date, Date date2, String str3, int i, boolean z, String str4, String str5, Date date3, boolean z2) {
        l.e(str, "uniqueRefId");
        l.e(str2, "vendorName");
        l.e(date, "dueDate");
        l.e(date2, "generatedDate");
        l.e(str4, "category");
        l.e(date3, "createdAt");
        this.uniqueRefId = str;
        this.vendorName = str2;
        this.dueDate = date;
        this.generatedDate = date2;
        this.imageUrl = str3;
        this.timesNotified = i;
        this.dismissed = z;
        this.category = str4;
        this.metaJsonString = str5;
        this.createdAt = date3;
        this.pendingNotification = z2;
    }

    public /* synthetic */ InsightsReminder(String str, String str2, Date date, Date date2, String str3, int i, boolean z, String str4, String str5, Date date3, boolean z2, int i2, f fVar) {
        this(str, str2, (i2 & 4) != 0 ? new Date() : date, (i2 & 8) != 0 ? new Date() : date2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? 0 : i, (i2 & 64) != 0 ? false : z, str4, (i2 & 256) != 0 ? null : str5, (i2 & 512) != 0 ? new Date() : date3, (i2 & 1024) != 0 ? true : z2);
    }

    public static /* synthetic */ InsightsReminder copy$default(InsightsReminder insightsReminder, String str, String str2, Date date, Date date2, String str3, int i, boolean z, String str4, String str5, Date date3, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = insightsReminder.uniqueRefId;
        }
        if ((i2 & 2) != 0) {
            str2 = insightsReminder.vendorName;
        }
        if ((i2 & 4) != 0) {
            date = insightsReminder.dueDate;
        }
        if ((i2 & 8) != 0) {
            date2 = insightsReminder.generatedDate;
        }
        if ((i2 & 16) != 0) {
            str3 = insightsReminder.imageUrl;
        }
        if ((i2 & 32) != 0) {
            i = insightsReminder.timesNotified;
        }
        if ((i2 & 64) != 0) {
            z = insightsReminder.dismissed;
        }
        if ((i2 & 128) != 0) {
            str4 = insightsReminder.category;
        }
        if ((i2 & 256) != 0) {
            str5 = insightsReminder.metaJsonString;
        }
        if ((i2 & 512) != 0) {
            date3 = insightsReminder.createdAt;
        }
        if ((i2 & 1024) != 0) {
            z2 = insightsReminder.pendingNotification;
        }
        return insightsReminder.copy(str, str2, date, date2, str3, i, z, str4, str5, date3, z2);
    }

    public final String component1() {
        return this.uniqueRefId;
    }

    public final Date component10() {
        return this.createdAt;
    }

    public final boolean component11() {
        return this.pendingNotification;
    }

    public final String component2() {
        return this.vendorName;
    }

    public final Date component3() {
        return this.dueDate;
    }

    public final Date component4() {
        return this.generatedDate;
    }

    public final String component5() {
        return this.imageUrl;
    }

    public final int component6() {
        return this.timesNotified;
    }

    public final boolean component7() {
        return this.dismissed;
    }

    public final String component8() {
        return this.category;
    }

    public final String component9() {
        return this.metaJsonString;
    }

    public final InsightsReminder copy(String str, String str2, Date date, Date date2, String str3, int i, boolean z, String str4, String str5, Date date3, boolean z2) {
        l.e(str, "uniqueRefId");
        l.e(str2, "vendorName");
        l.e(date, "dueDate");
        l.e(date2, "generatedDate");
        l.e(str4, "category");
        l.e(date3, "createdAt");
        return new InsightsReminder(str, str2, date, date2, str3, i, z, str4, str5, date3, z2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof InsightsReminder)) {
                return false;
            }
            InsightsReminder insightsReminder = (InsightsReminder) obj;
            return l.a(this.uniqueRefId, insightsReminder.uniqueRefId) && l.a(this.vendorName, insightsReminder.vendorName) && l.a(this.dueDate, insightsReminder.dueDate) && l.a(this.generatedDate, insightsReminder.generatedDate) && l.a(this.imageUrl, insightsReminder.imageUrl) && this.timesNotified == insightsReminder.timesNotified && this.dismissed == insightsReminder.dismissed && l.a(this.category, insightsReminder.category) && l.a(this.metaJsonString, insightsReminder.metaJsonString) && l.a(this.createdAt, insightsReminder.createdAt) && this.pendingNotification == insightsReminder.pendingNotification;
        }
        return true;
    }

    public final String getCategory() {
        return this.category;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final boolean getDismissed() {
        return this.dismissed;
    }

    public final Date getDueDate() {
        return this.dueDate;
    }

    public final Date getGeneratedDate() {
        return this.generatedDate;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final String getMetaJsonString() {
        return this.metaJsonString;
    }

    public final boolean getPendingNotification() {
        return this.pendingNotification;
    }

    public final int getTimesNotified() {
        return this.timesNotified;
    }

    public final String getUniqueRefId() {
        return this.uniqueRefId;
    }

    public final String getVendorName() {
        return this.vendorName;
    }

    public int hashCode() {
        String str = this.uniqueRefId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.vendorName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Date date = this.dueDate;
        int hashCode3 = date != null ? date.hashCode() : 0;
        Date date2 = this.generatedDate;
        int hashCode4 = date2 != null ? date2.hashCode() : 0;
        String str3 = this.imageUrl;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        int i2 = this.timesNotified;
        boolean z = this.dismissed;
        int i3 = 1;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        String str4 = this.category;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.metaJsonString;
        int hashCode7 = str5 != null ? str5.hashCode() : 0;
        Date date3 = this.createdAt;
        if (date3 != null) {
            i = date3.hashCode();
        }
        boolean z2 = this.pendingNotification;
        if (!z2) {
            i3 = z2 ? 1 : 0;
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + i4) * 31) + hashCode6) * 31) + hashCode7) * 31) + i) * 31) + i3;
    }

    public final void setDismissed(boolean z) {
        this.dismissed = z;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InsightsReminder(uniqueRefId=");
        m8728C.append(this.uniqueRefId);
        m8728C.append(", vendorName=");
        m8728C.append(this.vendorName);
        m8728C.append(", dueDate=");
        m8728C.append(this.dueDate);
        m8728C.append(", generatedDate=");
        m8728C.append(this.generatedDate);
        m8728C.append(", imageUrl=");
        m8728C.append(this.imageUrl);
        m8728C.append(", timesNotified=");
        m8728C.append(this.timesNotified);
        m8728C.append(", dismissed=");
        m8728C.append(this.dismissed);
        m8728C.append(", category=");
        m8728C.append(this.category);
        m8728C.append(", metaJsonString=");
        m8728C.append(this.metaJsonString);
        m8728C.append(", createdAt=");
        m8728C.append(this.createdAt);
        m8728C.append(", pendingNotification=");
        return C22128a.m8590o(m8728C, this.pendingNotification, ")");
    }
}
