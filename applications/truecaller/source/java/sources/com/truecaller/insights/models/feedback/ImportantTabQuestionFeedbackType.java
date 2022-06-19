package com.truecaller.insights.models.feedback;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/insights/models/feedback/ImportantTabQuestionFeedbackType;", "", "<init>", "(Ljava/lang/String;I)V", "SENDER_APPROVED", "SENDER_REJECTED", "SENDER_DEFAULT", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/feedback/ImportantTabQuestionFeedbackType.class */
public enum ImportantTabQuestionFeedbackType {
    SENDER_APPROVED { // from class: com.truecaller.insights.models.feedback.ImportantTabQuestionFeedbackType.a
        @Override // java.lang.Enum
        public String toString() {
            return "sender_approved_as_important";
        }
    },
    SENDER_REJECTED { // from class: com.truecaller.insights.models.feedback.ImportantTabQuestionFeedbackType.c
        @Override // java.lang.Enum
        public String toString() {
            return "sender_rejected_as_important";
        }
    },
    SENDER_DEFAULT { // from class: com.truecaller.insights.models.feedback.ImportantTabQuestionFeedbackType.b
        @Override // java.lang.Enum
        public String toString() {
            return "default";
        }
    };

    /* synthetic */ ImportantTabQuestionFeedbackType(f fVar) {
        this();
    }
}
