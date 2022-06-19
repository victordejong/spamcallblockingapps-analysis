package com.truecaller.insights.models.pdo;

import androidx.annotation.Keep;
import java.util.Date;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018��2\u00020\u0001B/\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004JB\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\t2\b\b\u0002\u0010\u0011\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0007J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u001c\u0010\u000f\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007R\u001c\u0010\u0011\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010\u000e\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001c\u001a\u0004\b \u0010\u0007R\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001e\u001a\u0004\b!\u0010\u0004R\u001c\u0010\u0010\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\"\u001a\u0004\b#\u0010\u000b¨\u0006&"}, d2 = {"Lcom/truecaller/insights/models/pdo/SmsBackupMessage;", "", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "component3", "Ljava/util/Date;", "component4", "()Ljava/util/Date;", "component5", "messageId", "address", "message", "date", "conversationId", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;J)Lcom/truecaller/insights/models/pdo/SmsBackupMessage;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getMessage", "J", "getConversationId", "getAddress", "getMessageId", "Ljava/util/Date;", "getDate", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/SmsBackupMessage.class */
public final class SmsBackupMessage {
    private final String address;
    private final long conversationId;
    private final Date date;
    private final String message;
    private final long messageId;

    public SmsBackupMessage(long j, String str, String str2, Date date, long j2) {
        l.e(str, "address");
        l.e(str2, "message");
        l.e(date, "date");
        this.messageId = j;
        this.address = str;
        this.message = str2;
        this.date = date;
        this.conversationId = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.truecaller.insights.models.pdo.SmsBackupMessage] */
    public static /* synthetic */ SmsBackupMessage copy$default(SmsBackupMessage smsBackupMessage, long j, String str, String str2, Date date, long j2, int i, Object obj) {
        ?? r10 = j;
        if ((i & 1) != 0) {
            r10 = ((SmsBackupMessage) smsBackupMessage).messageId;
        }
        if ((i & 2) != 0) {
            str = ((SmsBackupMessage) smsBackupMessage).address;
        }
        if ((i & 4) != 0) {
            str2 = ((SmsBackupMessage) smsBackupMessage).message;
        }
        if ((i & 8) != 0) {
            date = ((SmsBackupMessage) smsBackupMessage).date;
        }
        ?? r15 = j2;
        if ((i & 16) != 0) {
            r15 = ((SmsBackupMessage) smsBackupMessage).conversationId;
        }
        return smsBackupMessage.copy(r10, str, str2, date, r15);
    }

    public final long component1() {
        return this.messageId;
    }

    public final String component2() {
        return this.address;
    }

    public final String component3() {
        return this.message;
    }

    public final Date component4() {
        return this.date;
    }

    public final long component5() {
        return this.conversationId;
    }

    public final SmsBackupMessage copy(long j, String str, String str2, Date date, long j2) {
        l.e(str, "address");
        l.e(str2, "message");
        l.e(date, "date");
        return new SmsBackupMessage(j, str, str2, date, j2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SmsBackupMessage)) {
                return false;
            }
            SmsBackupMessage smsBackupMessage = (SmsBackupMessage) obj;
            return this.messageId == smsBackupMessage.messageId && l.a(this.address, smsBackupMessage.address) && l.a(this.message, smsBackupMessage.message) && l.a(this.date, smsBackupMessage.date) && this.conversationId == smsBackupMessage.conversationId;
        }
        return true;
    }

    public final String getAddress() {
        return this.address;
    }

    public final long getConversationId() {
        return this.conversationId;
    }

    public final Date getDate() {
        return this.date;
    }

    public final String getMessage() {
        return this.message;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.messageId);
        String str = this.address;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.message;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Date date = this.date;
        if (date != null) {
            i = date.hashCode();
        }
        return (((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i) * 31) + C4876d.m34274a(this.conversationId);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmsBackupMessage(messageId=");
        m8728C.append(this.messageId);
        m8728C.append(", address=");
        m8728C.append(this.address);
        m8728C.append(", message=");
        m8728C.append(this.message);
        m8728C.append(", date=");
        m8728C.append(this.date);
        m8728C.append(", conversationId=");
        return C22128a.m8693K2(m8728C, this.conversationId, ")");
    }
}
