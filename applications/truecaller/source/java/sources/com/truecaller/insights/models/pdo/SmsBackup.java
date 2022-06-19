package com.truecaller.insights.models.pdo;

import androidx.annotation.Keep;
import com.truecaller.insights.commons.model.Transport;
import java.util.Date;
import kotlin.Metadata;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\b\u0017\u0018��2\u00020\u0001B\t\b\u0016¢\u0006\u0004\bR\u0010SBC\b\u0016\u0012\u0006\u0010U\u001a\u00020T\u0012\b\u0010+\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010V\u001a\u00020.\u0012\b\u0010F\u001a\u0004\u0018\u00010E\u0012\b\u0010O\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010X\u001a\u0004\u0018\u00010W¢\u0006\u0004\bR\u0010YR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0004\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\"\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000fR\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R$\u0010+\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b+\u0010\u000b\u001a\u0004\b,\u0010\r\"\u0004\b-\u0010\u000fR\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u00106\u001a\u0002058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010<\u001a\u00020$8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b<\u0010&\u001a\u0004\b=\u0010(\"\u0004\b>\u0010*R\"\u0010?\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b?\u0010\u001f\u001a\u0004\b@\u0010!\"\u0004\bA\u0010#R\"\u0010B\u001a\u0002058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bB\u00107\u001a\u0004\bC\u00109\"\u0004\bD\u0010;R\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010L\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bL\u0010\u000b\u001a\u0004\bM\u0010\r\"\u0004\bN\u0010\u000fR\"\u0010O\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bO\u0010\u001f\u001a\u0004\bP\u0010!\"\u0004\bQ\u0010#¨\u0006Z"}, d2 = {"Lcom/truecaller/insights/models/pdo/SmsBackup;", "", "", "deleted", "Z", "getDeleted", "()Z", "setDeleted", "(Z)V", "", "message", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "Lcom/truecaller/insights/commons/model/Transport;", "transport", "Lcom/truecaller/insights/commons/model/Transport;", "getTransport", "()Lcom/truecaller/insights/commons/model/Transport;", "setTransport", "(Lcom/truecaller/insights/commons/model/Transport;)V", "parseFailed", "getParseFailed", "setParseFailed", "errorMessage", "getErrorMessage", "setErrorMessage", "", "retryCount", "I", "getRetryCount", "()I", "setRetryCount", "(I)V", "Ljava/util/Date;", "createdAt", "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "updateCategory", "getUpdateCategory", "setUpdateCategory", "Lcom/truecaller/insights/models/pdo/ClassifierType;", "classifiedBy", "Lcom/truecaller/insights/models/pdo/ClassifierType;", "getClassifiedBy", "()Lcom/truecaller/insights/models/pdo/ClassifierType;", "setClassifiedBy", "(Lcom/truecaller/insights/models/pdo/ClassifierType;)V", "", "conversationId", "J", "getConversationId", "()J", "setConversationId", "(J)V", "date", "getDate", "setDate", "spamCategory", "getSpamCategory", "setSpamCategory", "messageID", "getMessageID", "setMessageID", "", "confidenceScore", "F", "getConfidenceScore", "()F", "setConfidenceScore", "(F)V", "address", "getAddress", "setAddress", "noOfWords", "getNoOfWords", "setNoOfWords", "<init>", "()V", "Le/a/c/h/m/c;", "smsMessage", "classifierType", "", "error", "(Le/a/c/h/m/c;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Throwable;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/SmsBackup.class */
public class SmsBackup {
    private String address;
    private ClassifierType classifiedBy;
    private float confidenceScore;
    private long conversationId;
    private Date createdAt;
    private Date date;
    private boolean deleted;
    private String errorMessage;
    private String message;
    private long messageID;
    private int noOfWords;
    private boolean parseFailed;
    private int retryCount;
    private int spamCategory;
    private Transport transport;
    private String updateCategory;

    public SmsBackup() {
        this.messageID = -1L;
        this.address = "";
        this.message = "";
        this.date = new Date();
        this.transport = Transport.SMS;
        this.errorMessage = "";
        this.createdAt = new Date();
        this.classifiedBy = ClassifierType.DEFAULT;
        this.conversationId = -1L;
        this.spamCategory = 1;
    }

    public SmsBackup(C10266c c10266c, String str, ClassifierType classifierType, Float f, Integer num, Throwable th) {
        l.e(c10266c, "smsMessage");
        l.e(classifierType, "classifierType");
        this.messageID = -1L;
        this.address = "";
        this.message = "";
        this.date = new Date();
        this.transport = Transport.SMS;
        this.errorMessage = "";
        this.createdAt = new Date();
        this.classifiedBy = ClassifierType.DEFAULT;
        this.conversationId = -1L;
        this.spamCategory = 1;
        this.messageID = c10266c.f30432a;
        this.address = c10266c.f30433b;
        this.message = c10266c.f30434c;
        this.date = c10266c.f30435d;
        this.transport = Transport.Companion.m35284a(c10266c.f30437f);
        this.updateCategory = str;
        this.classifiedBy = classifierType;
        this.conversationId = c10266c.f30436e;
        if (th != null) {
            this.parseFailed = true;
            String localizedMessage = th.getLocalizedMessage();
            this.errorMessage = localizedMessage == null ? "Null error message" : localizedMessage;
        }
        this.spamCategory = c10266c.f30439h;
        this.confidenceScore = (f == null || Float.isNaN(f.floatValue())) ? 0.0f : f.floatValue();
        this.noOfWords = num != null ? num.intValue() : 0;
    }

    public /* synthetic */ SmsBackup(C10266c c10266c, String str, ClassifierType classifierType, Float f, Integer num, Throwable th, int i, f fVar) {
        this(c10266c, str, classifierType, f, num, (i & 32) != 0 ? null : th);
    }

    public final String getAddress() {
        return this.address;
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

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final Date getDate() {
        return this.date;
    }

    public final boolean getDeleted() {
        return this.deleted;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final String getMessage() {
        return this.message;
    }

    public final long getMessageID() {
        return this.messageID;
    }

    public final int getNoOfWords() {
        return this.noOfWords;
    }

    public final boolean getParseFailed() {
        return this.parseFailed;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    public final int getSpamCategory() {
        return this.spamCategory;
    }

    public final Transport getTransport() {
        return this.transport;
    }

    public final String getUpdateCategory() {
        return this.updateCategory;
    }

    public final void setAddress(String str) {
        l.e(str, "<set-?>");
        this.address = str;
    }

    public final void setClassifiedBy(ClassifierType classifierType) {
        l.e(classifierType, "<set-?>");
        this.classifiedBy = classifierType;
    }

    public final void setConfidenceScore(float f) {
        this.confidenceScore = f;
    }

    public final void setConversationId(long j) {
        this.conversationId = j;
    }

    public final void setCreatedAt(Date date) {
        l.e(date, "<set-?>");
        this.createdAt = date;
    }

    public final void setDate(Date date) {
        l.e(date, "<set-?>");
        this.date = date;
    }

    public final void setDeleted(boolean z) {
        this.deleted = z;
    }

    public final void setErrorMessage(String str) {
        l.e(str, "<set-?>");
        this.errorMessage = str;
    }

    public final void setMessage(String str) {
        l.e(str, "<set-?>");
        this.message = str;
    }

    public final void setMessageID(long j) {
        this.messageID = j;
    }

    public final void setNoOfWords(int i) {
        this.noOfWords = i;
    }

    public final void setParseFailed(boolean z) {
        this.parseFailed = z;
    }

    public final void setRetryCount(int i) {
        this.retryCount = i;
    }

    public final void setSpamCategory(int i) {
        this.spamCategory = i;
    }

    public final void setTransport(Transport transport) {
        l.e(transport, "<set-?>");
        this.transport = transport;
    }

    public final void setUpdateCategory(String str) {
        this.updateCategory = str;
    }
}
