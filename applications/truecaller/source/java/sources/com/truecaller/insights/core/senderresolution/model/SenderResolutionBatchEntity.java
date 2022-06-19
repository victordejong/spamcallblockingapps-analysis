package com.truecaller.insights.core.senderresolution.model;

import androidx.annotation.Keep;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;", "", "", "component1", "()Ljava/lang/String;", "Ljava/util/Date;", "component2", "()Ljava/util/Date;", "senderId", "date", "copy", "(Ljava/lang/String;Ljava/util/Date;)Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getSenderId", "Ljava/util/Date;", "getDate", "<init>", "(Ljava/lang/String;Ljava/util/Date;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity.class */
public final class SenderResolutionBatchEntity {
    private final Date date;
    private final String senderId;

    public SenderResolutionBatchEntity(String str, Date date) {
        l.e(str, "senderId");
        l.e(date, "date");
        this.senderId = str;
        this.date = date;
    }

    public static /* synthetic */ SenderResolutionBatchEntity copy$default(SenderResolutionBatchEntity senderResolutionBatchEntity, String str, Date date, int i, Object obj) {
        if ((i & 1) != 0) {
            str = senderResolutionBatchEntity.senderId;
        }
        if ((i & 2) != 0) {
            date = senderResolutionBatchEntity.date;
        }
        return senderResolutionBatchEntity.copy(str, date);
    }

    public final String component1() {
        return this.senderId;
    }

    public final Date component2() {
        return this.date;
    }

    public final SenderResolutionBatchEntity copy(String str, Date date) {
        l.e(str, "senderId");
        l.e(date, "date");
        return new SenderResolutionBatchEntity(str, date);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SenderResolutionBatchEntity)) {
                return false;
            }
            SenderResolutionBatchEntity senderResolutionBatchEntity = (SenderResolutionBatchEntity) obj;
            return l.a(this.senderId, senderResolutionBatchEntity.senderId) && l.a(this.date, senderResolutionBatchEntity.date);
        }
        return true;
    }

    public final Date getDate() {
        return this.date;
    }

    public final String getSenderId() {
        return this.senderId;
    }

    public int hashCode() {
        String str = this.senderId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Date date = this.date;
        if (date != null) {
            i = date.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderResolutionBatchEntity(senderId=");
        m8728C.append(this.senderId);
        m8728C.append(", date=");
        m8728C.append(this.date);
        m8728C.append(")");
        return m8728C.toString();
    }
}
