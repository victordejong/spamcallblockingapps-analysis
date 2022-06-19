package com.truecaller.insights.models.smartcards;

import androidx.annotation.Keep;
import com.truecaller.insights.models.DomainOrigin;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087\b\u0018��2\u00020\u0001BQ\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0017\u001a\u00020\r\u0012\b\b\u0002\u0010\u0018\u001a\u00020\r\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b.\u0010/J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\f\u0010\bJ\u0010\u0010\u000e\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b\u0010\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0011\u0010\bJ`\u0010\u001a\u001a\u00020��2\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\t2\b\b\u0002\u0010\u0016\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\r2\b\b\u0002\u0010\u0019\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u001c\u0010\bJ\u0010\u0010\u001d\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u000bJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b \u0010!R\u001c\u0010\u0016\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\"\u001a\u0004\b#\u0010\bR\u001c\u0010\u0013\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010$\u001a\u0004\b%\u0010\u0004R\u001c\u0010\u0017\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010&\u001a\u0004\b'\u0010\u000fR\u001c\u0010\u0012\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010$\u001a\u0004\b(\u0010\u0004R\u001c\u0010\u0019\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\"\u001a\u0004\b)\u0010\bR\u001c\u0010\u0014\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\"\u001a\u0004\b*\u0010\bR\u001c\u0010\u0018\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010&\u001a\u0004\b+\u0010\u000fR\u001c\u0010\u0015\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010,\u001a\u0004\b-\u0010\u000b¨\u00060"}, d2 = {"Lcom/truecaller/insights/models/smartcards/ActionStateEntity;", "", "", "component1", "()J", "component2", "", "component3", "()Ljava/lang/String;", "", "component4", "()I", "component5", "Ljava/util/Date;", "component6", "()Ljava/util/Date;", "component7", "component8", "id", "entityId", "domain", "state", "origin", "createdAt", "updatesAt", "extra", "copy", "(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getOrigin", "J", "getEntityId", "Ljava/util/Date;", "getCreatedAt", "getId", "getExtra", "getDomain", "getUpdatesAt", "I", "getState", "<init>", "(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/smartcards/ActionStateEntity.class */
public final class ActionStateEntity {
    private final Date createdAt;
    private final String domain;
    private final long entityId;
    private final String extra;

    /* renamed from: id */
    private final long f12668id;
    private final String origin;
    private final int state;
    private final Date updatesAt;

    public ActionStateEntity(long j, long j2, String str, int i, String str2, Date date, Date date2, String str3) {
        l.e(str, "domain");
        l.e(str2, "origin");
        l.e(date, "createdAt");
        l.e(date2, "updatesAt");
        l.e(str3, "extra");
        this.f12668id = j;
        this.entityId = j2;
        this.domain = str;
        this.state = i;
        this.origin = str2;
        this.createdAt = date;
        this.updatesAt = date2;
        this.extra = str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    public /* synthetic */ ActionStateEntity(long j, long j2, String str, int i, String str2, Date date, Date date2, String str3, int i2, f fVar) {
        this((i2 & 1) != 0 ? 0 : j, j2, str, i, (i2 & 16) != 0 ? DomainOrigin.SMS.name() : str2, (i2 & 32) != 0 ? new Date() : date, (i2 & 64) != 0 ? new Date() : date2, (i2 & 128) != 0 ? "" : str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.truecaller.insights.models.smartcards.ActionStateEntity] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    public static /* synthetic */ ActionStateEntity copy$default(ActionStateEntity actionStateEntity, long j, long j2, String str, int i, String str2, Date date, Date date2, String str3, int i2, Object obj) {
        ?? r13 = j;
        if ((i2 & 1) != 0) {
            r13 = ((ActionStateEntity) actionStateEntity).f12668id;
        }
        ?? r15 = j2;
        if ((i2 & 2) != 0) {
            r15 = ((ActionStateEntity) actionStateEntity).entityId;
        }
        if ((i2 & 4) != 0) {
            str = ((ActionStateEntity) actionStateEntity).domain;
        }
        if ((i2 & 8) != 0) {
            i = ((ActionStateEntity) actionStateEntity).state;
        }
        if ((i2 & 16) != 0) {
            str2 = ((ActionStateEntity) actionStateEntity).origin;
        }
        if ((i2 & 32) != 0) {
            date = ((ActionStateEntity) actionStateEntity).createdAt;
        }
        if ((i2 & 64) != 0) {
            date2 = ((ActionStateEntity) actionStateEntity).updatesAt;
        }
        if ((i2 & 128) != 0) {
            str3 = ((ActionStateEntity) actionStateEntity).extra;
        }
        return actionStateEntity.copy(r13, r15, str, i, str2, date, date2, str3);
    }

    public final long component1() {
        return this.f12668id;
    }

    public final long component2() {
        return this.entityId;
    }

    public final String component3() {
        return this.domain;
    }

    public final int component4() {
        return this.state;
    }

    public final String component5() {
        return this.origin;
    }

    public final Date component6() {
        return this.createdAt;
    }

    public final Date component7() {
        return this.updatesAt;
    }

    public final String component8() {
        return this.extra;
    }

    public final ActionStateEntity copy(long j, long j2, String str, int i, String str2, Date date, Date date2, String str3) {
        l.e(str, "domain");
        l.e(str2, "origin");
        l.e(date, "createdAt");
        l.e(date2, "updatesAt");
        l.e(str3, "extra");
        return new ActionStateEntity(j, j2, str, i, str2, date, date2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ActionStateEntity)) {
                return false;
            }
            ActionStateEntity actionStateEntity = (ActionStateEntity) obj;
            return this.f12668id == actionStateEntity.f12668id && this.entityId == actionStateEntity.entityId && l.a(this.domain, actionStateEntity.domain) && this.state == actionStateEntity.state && l.a(this.origin, actionStateEntity.origin) && l.a(this.createdAt, actionStateEntity.createdAt) && l.a(this.updatesAt, actionStateEntity.updatesAt) && l.a(this.extra, actionStateEntity.extra);
        }
        return true;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final long getEntityId() {
        return this.entityId;
    }

    public final String getExtra() {
        return this.extra;
    }

    public final long getId() {
        return this.f12668id;
    }

    public final String getOrigin() {
        return this.origin;
    }

    public final int getState() {
        return this.state;
    }

    public final Date getUpdatesAt() {
        return this.updatesAt;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f12668id);
        int m34274a2 = C4876d.m34274a(this.entityId);
        String str = this.domain;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.state;
        String str2 = this.origin;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Date date = this.createdAt;
        int hashCode3 = date != null ? date.hashCode() : 0;
        Date date2 = this.updatesAt;
        int hashCode4 = date2 != null ? date2.hashCode() : 0;
        String str3 = this.extra;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ActionStateEntity(id=");
        m8728C.append(this.f12668id);
        m8728C.append(", entityId=");
        m8728C.append(this.entityId);
        m8728C.append(", domain=");
        m8728C.append(this.domain);
        m8728C.append(", state=");
        m8728C.append(this.state);
        m8728C.append(", origin=");
        m8728C.append(this.origin);
        m8728C.append(", createdAt=");
        m8728C.append(this.createdAt);
        m8728C.append(", updatesAt=");
        m8728C.append(this.updatesAt);
        m8728C.append(", extra=");
        return C22128a.m8618h(m8728C, this.extra, ")");
    }
}
