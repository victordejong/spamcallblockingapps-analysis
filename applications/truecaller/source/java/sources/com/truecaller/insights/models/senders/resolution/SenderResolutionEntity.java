package com.truecaller.insights.models.senders.resolution;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B9\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\n\u0010\tJF\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001c\u0010\u0004R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001d\u0010\u0004R\u001c\u0010\u000f\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001e\u001a\u0004\b\u001f\u0010\tR\u001c\u0010\u000e\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b \u0010\t¨\u0006#"}, d2 = {"Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "Ljava/util/Date;", "component4", "()Ljava/util/Date;", "component5", AnalyticsConstants.SENDER, "senderName", "senderIconUri", "createdAt", "updatedAt", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getSender", "getSenderIconUri", "getSenderName", "Ljava/util/Date;", "getUpdatedAt", "getCreatedAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/senders/resolution/SenderResolutionEntity.class */
public final class SenderResolutionEntity {
    private final Date createdAt;
    private final String sender;
    private final String senderIconUri;
    private final String senderName;
    private final Date updatedAt;

    public SenderResolutionEntity(String str, String str2, String str3, Date date, Date date2) {
        l.e(str, AnalyticsConstants.SENDER);
        l.e(date, "createdAt");
        l.e(date2, "updatedAt");
        this.sender = str;
        this.senderName = str2;
        this.senderIconUri = str3;
        this.createdAt = date;
        this.updatedAt = date2;
    }

    public /* synthetic */ SenderResolutionEntity(String str, String str2, String str3, Date date, Date date2, int i, f fVar) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? new Date() : date, (i & 16) != 0 ? new Date() : date2);
    }

    public static /* synthetic */ SenderResolutionEntity copy$default(SenderResolutionEntity senderResolutionEntity, String str, String str2, String str3, Date date, Date date2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = senderResolutionEntity.sender;
        }
        if ((i & 2) != 0) {
            str2 = senderResolutionEntity.senderName;
        }
        if ((i & 4) != 0) {
            str3 = senderResolutionEntity.senderIconUri;
        }
        if ((i & 8) != 0) {
            date = senderResolutionEntity.createdAt;
        }
        if ((i & 16) != 0) {
            date2 = senderResolutionEntity.updatedAt;
        }
        return senderResolutionEntity.copy(str, str2, str3, date, date2);
    }

    public final String component1() {
        return this.sender;
    }

    public final String component2() {
        return this.senderName;
    }

    public final String component3() {
        return this.senderIconUri;
    }

    public final Date component4() {
        return this.createdAt;
    }

    public final Date component5() {
        return this.updatedAt;
    }

    public final SenderResolutionEntity copy(String str, String str2, String str3, Date date, Date date2) {
        l.e(str, AnalyticsConstants.SENDER);
        l.e(date, "createdAt");
        l.e(date2, "updatedAt");
        return new SenderResolutionEntity(str, str2, str3, date, date2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SenderResolutionEntity)) {
                return false;
            }
            SenderResolutionEntity senderResolutionEntity = (SenderResolutionEntity) obj;
            return l.a(this.sender, senderResolutionEntity.sender) && l.a(this.senderName, senderResolutionEntity.senderName) && l.a(this.senderIconUri, senderResolutionEntity.senderIconUri) && l.a(this.createdAt, senderResolutionEntity.createdAt) && l.a(this.updatedAt, senderResolutionEntity.updatedAt);
        }
        return true;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final String getSender() {
        return this.sender;
    }

    public final String getSenderIconUri() {
        return this.senderIconUri;
    }

    public final String getSenderName() {
        return this.senderName;
    }

    public final Date getUpdatedAt() {
        return this.updatedAt;
    }

    public int hashCode() {
        String str = this.sender;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.senderName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.senderIconUri;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Date date = this.createdAt;
        int hashCode4 = date != null ? date.hashCode() : 0;
        Date date2 = this.updatedAt;
        if (date2 != null) {
            i = date2.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderResolutionEntity(sender=");
        m8728C.append(this.sender);
        m8728C.append(", senderName=");
        m8728C.append(this.senderName);
        m8728C.append(", senderIconUri=");
        m8728C.append(this.senderIconUri);
        m8728C.append(", createdAt=");
        m8728C.append(this.createdAt);
        m8728C.append(", updatedAt=");
        m8728C.append(this.updatedAt);
        m8728C.append(")");
        return m8728C.toString();
    }
}
