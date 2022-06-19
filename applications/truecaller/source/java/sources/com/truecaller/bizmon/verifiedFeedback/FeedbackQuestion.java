package com.truecaller.bizmon.verifiedFeedback;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;", "", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "questionId", "question", "copy", "(ILjava/lang/String;)Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getQuestionId", "Ljava/lang/String;", "getQuestion", "<init>", "(ILjava/lang/String;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/verifiedFeedback/FeedbackQuestion.class */
public final class FeedbackQuestion {
    @b("question")
    private final String question;
    @b("questionId")
    private final int questionId;

    public FeedbackQuestion(int i, String str) {
        l.e(str, "question");
        this.questionId = i;
        this.question = str;
    }

    public static /* synthetic */ FeedbackQuestion copy$default(FeedbackQuestion feedbackQuestion, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = feedbackQuestion.questionId;
        }
        if ((i2 & 2) != 0) {
            str = feedbackQuestion.question;
        }
        return feedbackQuestion.copy(i, str);
    }

    public final int component1() {
        return this.questionId;
    }

    public final String component2() {
        return this.question;
    }

    public final FeedbackQuestion copy(int i, String str) {
        l.e(str, "question");
        return new FeedbackQuestion(i, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FeedbackQuestion)) {
                return false;
            }
            FeedbackQuestion feedbackQuestion = (FeedbackQuestion) obj;
            return this.questionId == feedbackQuestion.questionId && l.a(this.question, feedbackQuestion.question);
        }
        return true;
    }

    public final String getQuestion() {
        return this.question;
    }

    public final int getQuestionId() {
        return this.questionId;
    }

    public int hashCode() {
        int i = this.questionId;
        String str = this.question;
        return (i * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FeedbackQuestion(questionId=");
        m8728C.append(this.questionId);
        m8728C.append(", question=");
        return C22128a.m8618h(m8728C, this.question, ")");
    }
}
