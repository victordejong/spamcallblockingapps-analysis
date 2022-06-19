package com.truecaller.insights.models.pdo;

import androidx.annotation.Keep;
import com.truecaller.insights.commons.model.Transport;
import e.m.e.d0.b;
import io.agora.rtc.Constants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u001f\b\u0087\b\u0018��2\u00020\u0001BO\u0012\b\b\u0002\u0010\u001b\u001a\u00020\n\u0012\b\b\u0002\u0010\u001c\u001a\u00020\r\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0003\u0010\u001f\u001a\u00020\u0014\u0012\b\b\u0002\u0010 \u001a\u00020\u0017\u0012\b\b\u0002\u0010!\u001a\u00020\u0007¢\u0006\u0004\b4\u00105J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0012J\u0010\u0010\u0015\u001a\u00020\u0014HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u001a\u0010\tJX\u0010\"\u001a\u00020��2\b\b\u0002\u0010\u001b\u001a\u00020\n2\b\b\u0002\u0010\u001c\u001a\u00020\r2\b\b\u0002\u0010\u001d\u001a\u00020\u00102\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00102\b\b\u0003\u0010\u001f\u001a\u00020\u00142\b\b\u0002\u0010 \u001a\u00020\u00172\b\b\u0002\u0010!\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\"\u0010#J\u0010\u0010$\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b$\u0010\u0012R\u0013\u0010%\u001a\u00020\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b%\u0010&R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010'\u001a\u0004\b(\u0010\u0012R\u001c\u0010 \u001a\u00020\u00178\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010)\u001a\u0004\b*\u0010\u0019R\u001c\u0010\u001c\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010+\u001a\u0004\b,\u0010\u000fR\u001c\u0010\u001f\u001a\u00020\u00148\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010-\u001a\u0004\b.\u0010\u0016R\u001c\u0010\u001d\u001a\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010'\u001a\u0004\b/\u0010\u0012R\u001c\u0010\u001b\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u00100\u001a\u0004\b1\u0010\fR\u001c\u0010!\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u00102\u001a\u0004\b3\u0010\t¨\u00066"}, d2 = {"Lcom/truecaller/insights/models/pdo/ExtendedPdo;", "Lcom/truecaller/insights/models/pdo/ParsedDataObject;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "component1", "()J", "Lcom/truecaller/insights/commons/model/Transport;", "component2", "()Lcom/truecaller/insights/commons/model/Transport;", "", "component3", "()Ljava/lang/String;", "component4", "Lcom/truecaller/insights/models/pdo/ClassifierType;", "component5", "()Lcom/truecaller/insights/models/pdo/ClassifierType;", "", "component6", "()F", "component7", "conversationId", "transport", "message", "updateCategory", "classifiedBy", "confidenceScore", "noOfWords", "copy", "(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)Lcom/truecaller/insights/models/pdo/ExtendedPdo;", "toString", "isIM", "()Z", "Ljava/lang/String;", "getUpdateCategory", "F", "getConfidenceScore", "Lcom/truecaller/insights/commons/model/Transport;", "getTransport", "Lcom/truecaller/insights/models/pdo/ClassifierType;", "getClassifiedBy", "getMessage", "J", "getConversationId", "I", "getNoOfWords", "<init>", "(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/ExtendedPdo.class */
public final class ExtendedPdo extends ParsedDataObject {
    private final ClassifierType classifiedBy;
    @b("confidence_score")
    private final float confidenceScore;
    @b("conversationId")
    private final long conversationId;
    @b("message")
    private final String message;
    @b("no_of_words")
    private final int noOfWords;
    @b("transport")
    private final Transport transport;
    @b("updateCategory")
    private final String updateCategory;

    public ExtendedPdo() {
        this(0L, null, null, null, null, 0.0f, 0, Constants.ERR_WATERMARKR_INFO, null);
    }

    public ExtendedPdo(long j, Transport transport, String str, String str2, ClassifierType classifierType, float f, int i) {
        l.e(transport, "transport");
        l.e(str, "message");
        l.e(classifierType, "classifiedBy");
        this.conversationId = j;
        this.transport = transport;
        this.message = str;
        this.updateCategory = str2;
        this.classifiedBy = classifierType;
        this.confidenceScore = f;
        this.noOfWords = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    public /* synthetic */ ExtendedPdo(long j, Transport transport, String str, String str2, ClassifierType classifierType, float f, int i, int i2, f fVar) {
        this((i2 & 1) != 0 ? -1 : j, (i2 & 2) != 0 ? Transport.SMS : transport, (i2 & 4) != 0 ? "" : str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? ClassifierType.DEFAULT : classifierType, (i2 & 32) != 0 ? 0.0f : f, (i2 & 64) != 0 ? 0 : i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.truecaller.insights.models.pdo.ExtendedPdo] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    public static /* synthetic */ ExtendedPdo copy$default(ExtendedPdo extendedPdo, long j, Transport transport, String str, String str2, ClassifierType classifierType, float f, int i, int i2, Object obj) {
        ?? r11 = j;
        if ((i2 & 1) != 0) {
            r11 = ((ExtendedPdo) extendedPdo).conversationId;
        }
        if ((i2 & 2) != 0) {
            transport = ((ExtendedPdo) extendedPdo).transport;
        }
        if ((i2 & 4) != 0) {
            str = ((ExtendedPdo) extendedPdo).message;
        }
        if ((i2 & 8) != 0) {
            str2 = ((ExtendedPdo) extendedPdo).updateCategory;
        }
        if ((i2 & 16) != 0) {
            classifierType = ((ExtendedPdo) extendedPdo).classifiedBy;
        }
        if ((i2 & 32) != 0) {
            f = ((ExtendedPdo) extendedPdo).confidenceScore;
        }
        if ((i2 & 64) != 0) {
            i = ((ExtendedPdo) extendedPdo).noOfWords;
        }
        return extendedPdo.copy(r11, transport, str, str2, classifierType, f, i);
    }

    public final long component1() {
        return this.conversationId;
    }

    public final Transport component2() {
        return this.transport;
    }

    public final String component3() {
        return this.message;
    }

    public final String component4() {
        return this.updateCategory;
    }

    public final ClassifierType component5() {
        return this.classifiedBy;
    }

    public final float component6() {
        return this.confidenceScore;
    }

    public final int component7() {
        return this.noOfWords;
    }

    public final ExtendedPdo copy(long j, Transport transport, String str, String str2, ClassifierType classifierType, float f, int i) {
        l.e(transport, "transport");
        l.e(str, "message");
        l.e(classifierType, "classifiedBy");
        return new ExtendedPdo(j, transport, str, str2, classifierType, f, i);
    }

    @Override // com.truecaller.insights.models.pdo.ParsedDataObject
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (true ^ l.a(ExtendedPdo.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.ExtendedPdo");
        if (this.conversationId == ((ExtendedPdo) obj).conversationId) {
            return super.equals(obj);
        }
        return false;
    }

    public final ClassifierType getClassifiedBy() {
        return this.classifiedBy;
    }

    public final float getConfidenceScore() {
        return this.confidenceScore;
    }

    public final long getConversationId() {
        return this.conversationId;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getNoOfWords() {
        return this.noOfWords;
    }

    public final Transport getTransport() {
        return this.transport;
    }

    public final String getUpdateCategory() {
        return this.updateCategory;
    }

    @Override // com.truecaller.insights.models.pdo.ParsedDataObject
    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.message, (C4876d.m34274a(this.conversationId) + (super.hashCode() * 31)) * 31, 31);
        String str = this.updateCategory;
        return this.classifiedBy.hashCode() + ((m8579q2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final boolean isIM() {
        return this.transport == Transport.IM;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ExtendedPdo(conversationId=");
        m8728C.append(this.conversationId);
        m8728C.append(", transport=");
        m8728C.append(this.transport);
        m8728C.append(", message=");
        m8728C.append(this.message);
        m8728C.append(", updateCategory=");
        m8728C.append(this.updateCategory);
        m8728C.append(", classifiedBy=");
        m8728C.append(this.classifiedBy);
        m8728C.append(", confidenceScore=");
        m8728C.append(this.confidenceScore);
        m8728C.append(", noOfWords=");
        return C22128a.m8697J2(m8728C, this.noOfWords, ")");
    }
}
