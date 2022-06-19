package com.truecaller.insights.models.states;

import androidx.annotation.Keep;
import java.util.Date;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018��2\u00020\u0001B1\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012¨\u0006\u0018"}, d2 = {"Lcom/truecaller/insights/models/states/InsightState;", "", "", "lastUpdatedData", "Ljava/lang/String;", "getLastUpdatedData", "()Ljava/lang/String;", "setLastUpdatedData", "(Ljava/lang/String;)V", "owner", "getOwner", "setOwner", "Ljava/util/Date;", "createdAt", "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "lastUpdatedAt", "getLastUpdatedAt", "setLastUpdatedAt", "<init>", "(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/states/InsightState.class */
public final class InsightState {
    private Date createdAt;
    private Date lastUpdatedAt;
    private String lastUpdatedData;
    private String owner;

    public InsightState() {
        this(null, null, null, null, 15, null);
    }

    public InsightState(String str, Date date, String str2, Date date2) {
        l.e(str, "owner");
        l.e(date, "lastUpdatedAt");
        l.e(date2, "createdAt");
        this.owner = str;
        this.lastUpdatedAt = date;
        this.lastUpdatedData = str2;
        this.createdAt = date2;
    }

    public /* synthetic */ InsightState(String str, Date date, String str2, Date date2, int i, f fVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? new Date(0L) : date, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? new Date() : date2);
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final Date getLastUpdatedAt() {
        return this.lastUpdatedAt;
    }

    public final String getLastUpdatedData() {
        return this.lastUpdatedData;
    }

    public final String getOwner() {
        return this.owner;
    }

    public final void setCreatedAt(Date date) {
        l.e(date, "<set-?>");
        this.createdAt = date;
    }

    public final void setLastUpdatedAt(Date date) {
        l.e(date, "<set-?>");
        this.lastUpdatedAt = date;
    }

    public final void setLastUpdatedData(String str) {
        this.lastUpdatedData = str;
    }

    public final void setOwner(String str) {
        l.e(str, "<set-?>");
        this.owner = str;
    }
}
