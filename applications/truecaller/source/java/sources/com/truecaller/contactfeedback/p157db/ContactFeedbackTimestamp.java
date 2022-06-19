package com.truecaller.contactfeedback.p157db;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B!\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0018\u0010\u0004R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0019\u0010\u0004¨\u0006\u001c"}, d2 = {"Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;", "", "", "component1", "()J", "component2", "component3", "id", "contactId", "timestamp", "copy", "(JJJ)Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getId", "getTimestamp", "getContactId", "<init>", "(JJJ)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.contactfeedback.db.ContactFeedbackTimestamp */
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/db/ContactFeedbackTimestamp.class */
public final class ContactFeedbackTimestamp {
    private final long contactId;

    /* renamed from: id */
    private final long f11334id;
    private final long timestamp;

    public ContactFeedbackTimestamp(long j, long j2, long j3) {
        this.f11334id = j;
        this.contactId = j2;
        this.timestamp = j3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public /* synthetic */ ContactFeedbackTimestamp(long j, long j2, long j3, int i, f fVar) {
        this((i & 1) != 0 ? 0 : j, j2, j3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.truecaller.contactfeedback.db.ContactFeedbackTimestamp] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static /* synthetic */ ContactFeedbackTimestamp copy$default(ContactFeedbackTimestamp contactFeedbackTimestamp, long j, long j2, long j3, int i, Object obj) {
        ?? r9 = j;
        if ((i & 1) != 0) {
            r9 = ((ContactFeedbackTimestamp) contactFeedbackTimestamp).f11334id;
        }
        ?? r11 = j2;
        if ((i & 2) != 0) {
            r11 = ((ContactFeedbackTimestamp) contactFeedbackTimestamp).contactId;
        }
        ?? r13 = j3;
        if ((i & 4) != 0) {
            r13 = ((ContactFeedbackTimestamp) contactFeedbackTimestamp).timestamp;
        }
        return contactFeedbackTimestamp.copy(r9, r11, r13);
    }

    public final long component1() {
        return this.f11334id;
    }

    public final long component2() {
        return this.contactId;
    }

    public final long component3() {
        return this.timestamp;
    }

    public final ContactFeedbackTimestamp copy(long j, long j2, long j3) {
        return new ContactFeedbackTimestamp(j, j2, j3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ContactFeedbackTimestamp)) {
                return false;
            }
            ContactFeedbackTimestamp contactFeedbackTimestamp = (ContactFeedbackTimestamp) obj;
            return this.f11334id == contactFeedbackTimestamp.f11334id && this.contactId == contactFeedbackTimestamp.contactId && this.timestamp == contactFeedbackTimestamp.timestamp;
        }
        return true;
    }

    public final long getContactId() {
        return this.contactId;
    }

    public final long getId() {
        return this.f11334id;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return (((C4876d.m34274a(this.f11334id) * 31) + C4876d.m34274a(this.contactId)) * 31) + C4876d.m34274a(this.timestamp);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContactFeedbackTimestamp(id=");
        m8728C.append(this.f11334id);
        m8728C.append(", contactId=");
        m8728C.append(this.contactId);
        m8728C.append(", timestamp=");
        return C22128a.m8693K2(m8728C, this.timestamp, ")");
    }
}
