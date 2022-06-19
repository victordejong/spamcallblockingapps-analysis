package com.truecaller.insights.models.categorizer;

import androidx.annotation.Keep;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087\b\u0018��2\u00020\u0001B=\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\r¢\u0006\u0004\b*\u0010+J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJL\u0010\u0016\u001a\u00020��2\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\n2\b\b\u0002\u0010\u0015\u001a\u00020\rHÆ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0004J\u0010\u0010\u0019\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u0019\u0010\tJ\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010\u0011\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u001e\u001a\u0004\b \u0010\u0004R\u001c\u0010\u0012\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u001e\u001a\u0004\b!\u0010\u0004R\u001c\u0010\u0014\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\"\u001a\u0004\b#\u0010\fR\u001c\u0010\u0013\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010$\u001a\u0004\b%\u0010\tR\"\u0010\u0015\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010&\u001a\u0004\b'\u0010\u000f\"\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "", "component4", "()I", "", "component5", "()J", "Ljava/util/Date;", "component6", "()Ljava/util/Date;", "messageBody", "fromCategory", "toCategory", "reTrainModelVersion", "id", "createdAt", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getMessageBody", "getFromCategory", "getToCategory", "J", "getId", "I", "getReTrainModelVersion", "Ljava/util/Date;", "getCreatedAt", "setCreatedAt", "(Ljava/util/Date;)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/categorizer/ReclassifiedMessage.class */
public final class ReclassifiedMessage {
    private Date createdAt;
    private final String fromCategory;

    /* renamed from: id */
    private final long f12649id;
    private final String messageBody;
    private final int reTrainModelVersion;
    private final String toCategory;

    public ReclassifiedMessage(String str, String str2, String str3, int i, long j, Date date) {
        l.e(str, "messageBody");
        l.e(str2, "fromCategory");
        l.e(str3, "toCategory");
        l.e(date, "createdAt");
        this.messageBody = str;
        this.fromCategory = str2;
        this.toCategory = str3;
        this.reTrainModelVersion = i;
        this.f12649id = j;
        this.createdAt = date;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    public /* synthetic */ ReclassifiedMessage(String str, String str2, String str3, int i, long j, Date date, int i2, f fVar) {
        this(str, str2, str3, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? 0 : j, (i2 & 32) != 0 ? new Date() : date);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.truecaller.insights.models.categorizer.ReclassifiedMessage] */
    public static /* synthetic */ ReclassifiedMessage copy$default(ReclassifiedMessage reclassifiedMessage, String str, String str2, String str3, int i, long j, Date date, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = ((ReclassifiedMessage) reclassifiedMessage).messageBody;
        }
        if ((i2 & 2) != 0) {
            str2 = ((ReclassifiedMessage) reclassifiedMessage).fromCategory;
        }
        if ((i2 & 4) != 0) {
            str3 = ((ReclassifiedMessage) reclassifiedMessage).toCategory;
        }
        if ((i2 & 8) != 0) {
            i = ((ReclassifiedMessage) reclassifiedMessage).reTrainModelVersion;
        }
        ?? r14 = j;
        if ((i2 & 16) != 0) {
            r14 = ((ReclassifiedMessage) reclassifiedMessage).f12649id;
        }
        if ((i2 & 32) != 0) {
            date = ((ReclassifiedMessage) reclassifiedMessage).createdAt;
        }
        return reclassifiedMessage.copy(str, str2, str3, i, r14, date);
    }

    public final String component1() {
        return this.messageBody;
    }

    public final String component2() {
        return this.fromCategory;
    }

    public final String component3() {
        return this.toCategory;
    }

    public final int component4() {
        return this.reTrainModelVersion;
    }

    public final long component5() {
        return this.f12649id;
    }

    public final Date component6() {
        return this.createdAt;
    }

    public final ReclassifiedMessage copy(String str, String str2, String str3, int i, long j, Date date) {
        l.e(str, "messageBody");
        l.e(str2, "fromCategory");
        l.e(str3, "toCategory");
        l.e(date, "createdAt");
        return new ReclassifiedMessage(str, str2, str3, i, j, date);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ReclassifiedMessage)) {
                return false;
            }
            ReclassifiedMessage reclassifiedMessage = (ReclassifiedMessage) obj;
            return l.a(this.messageBody, reclassifiedMessage.messageBody) && l.a(this.fromCategory, reclassifiedMessage.fromCategory) && l.a(this.toCategory, reclassifiedMessage.toCategory) && this.reTrainModelVersion == reclassifiedMessage.reTrainModelVersion && this.f12649id == reclassifiedMessage.f12649id && l.a(this.createdAt, reclassifiedMessage.createdAt);
        }
        return true;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final String getFromCategory() {
        return this.fromCategory;
    }

    public final long getId() {
        return this.f12649id;
    }

    public final String getMessageBody() {
        return this.messageBody;
    }

    public final int getReTrainModelVersion() {
        return this.reTrainModelVersion;
    }

    public final String getToCategory() {
        return this.toCategory;
    }

    public int hashCode() {
        String str = this.messageBody;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.fromCategory;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.toCategory;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int i2 = this.reTrainModelVersion;
        int m34274a = C4876d.m34274a(this.f12649id);
        Date date = this.createdAt;
        if (date != null) {
            i = date.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + m34274a) * 31) + i;
    }

    public final void setCreatedAt(Date date) {
        l.e(date, "<set-?>");
        this.createdAt = date;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReclassifiedMessage(messageBody=");
        m8728C.append(this.messageBody);
        m8728C.append(", fromCategory=");
        m8728C.append(this.fromCategory);
        m8728C.append(", toCategory=");
        m8728C.append(this.toCategory);
        m8728C.append(", reTrainModelVersion=");
        m8728C.append(this.reTrainModelVersion);
        m8728C.append(", id=");
        m8728C.append(this.f12649id);
        m8728C.append(", createdAt=");
        m8728C.append(this.createdAt);
        m8728C.append(")");
        return m8728C.toString();
    }
}
