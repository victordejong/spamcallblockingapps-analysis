package com.truecaller.insights.models.enrichment.linking;

import androidx.annotation.Keep;
import java.util.Date;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018��2\u00020\u0001B/\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0017\u001a\u00020\t\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;", "", "", "linkType", "Ljava/lang/String;", "getLinkType", "()Ljava/lang/String;", "setLinkType", "(Ljava/lang/String;)V", "", "parentId", "J", "getParentId", "()J", "setParentId", "(J)V", "Ljava/util/Date;", "createdAt", "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "childId", "getChildId", "setChildId", "<init>", "(JJLjava/lang/String;Ljava/util/Date;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/enrichment/linking/LinkPruneMap.class */
public final class LinkPruneMap {
    private long childId;
    private Date createdAt;
    private String linkType;
    private long parentId;

    public LinkPruneMap() {
        this(0L, 0L, null, null, 15, null);
    }

    public LinkPruneMap(long j, long j2, String str, Date date) {
        l.e(str, "linkType");
        l.e(date, "createdAt");
        this.parentId = j;
        this.childId = j2;
        this.linkType = str;
        this.createdAt = date;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public LinkPruneMap(long j, long j2, String str, Date date, int i, f fVar) {
        this((i & 1) != 0 ? -1 : j, (i & 2) != 0 ? -1 : j2, (i & 4) != 0 ? "NO_LINK" : str, (i & 8) != 0 ? new Date() : date);
    }

    public final long getChildId() {
        return this.childId;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final String getLinkType() {
        return this.linkType;
    }

    public final long getParentId() {
        return this.parentId;
    }

    public final void setChildId(long j) {
        this.childId = j;
    }

    public final void setCreatedAt(Date date) {
        l.e(date, "<set-?>");
        this.createdAt = date;
    }

    public final void setLinkType(String str) {
        l.e(str, "<set-?>");
        this.linkType = str;
    }

    public final void setParentId(long j) {
        this.parentId = j;
    }
}
