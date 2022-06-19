package com.truecaller.insights.insightsui;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J0\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/insights/insightsui/SenderFilterEntity;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "senderId", "rawSenderId", "senderName", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/insights/insightsui/SenderFilterEntity;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getSenderId", "getSenderName", "getRawSenderId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/insightsui/SenderFilterEntity.class */
public final class SenderFilterEntity {
    private final String rawSenderId;
    private final String senderId;
    private final String senderName;

    public SenderFilterEntity(String str, String str2, String str3) {
        l.e(str, "senderId");
        l.e(str2, "rawSenderId");
        this.senderId = str;
        this.rawSenderId = str2;
        this.senderName = str3;
    }

    public static /* synthetic */ SenderFilterEntity copy$default(SenderFilterEntity senderFilterEntity, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = senderFilterEntity.senderId;
        }
        if ((i & 2) != 0) {
            str2 = senderFilterEntity.rawSenderId;
        }
        if ((i & 4) != 0) {
            str3 = senderFilterEntity.senderName;
        }
        return senderFilterEntity.copy(str, str2, str3);
    }

    public final String component1() {
        return this.senderId;
    }

    public final String component2() {
        return this.rawSenderId;
    }

    public final String component3() {
        return this.senderName;
    }

    public final SenderFilterEntity copy(String str, String str2, String str3) {
        l.e(str, "senderId");
        l.e(str2, "rawSenderId");
        return new SenderFilterEntity(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SenderFilterEntity)) {
                return false;
            }
            SenderFilterEntity senderFilterEntity = (SenderFilterEntity) obj;
            return l.a(this.senderId, senderFilterEntity.senderId) && l.a(this.rawSenderId, senderFilterEntity.rawSenderId) && l.a(this.senderName, senderFilterEntity.senderName);
        }
        return true;
    }

    public final String getRawSenderId() {
        return this.rawSenderId;
    }

    public final String getSenderId() {
        return this.senderId;
    }

    public final String getSenderName() {
        return this.senderName;
    }

    public int hashCode() {
        String str = this.senderId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.rawSenderId;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.senderName;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderFilterEntity(senderId=");
        m8728C.append(this.senderId);
        m8728C.append(", rawSenderId=");
        m8728C.append(this.rawSenderId);
        m8728C.append(", senderName=");
        return C22128a.m8618h(m8728C, this.senderName, ")");
    }
}
