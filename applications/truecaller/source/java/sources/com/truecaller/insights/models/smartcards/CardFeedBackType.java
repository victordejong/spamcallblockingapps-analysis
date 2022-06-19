package com.truecaller.insights.models.smartcards;

import kotlin.Metadata;
import s1.z.c.f;
/* JADX WARN: Init of enum EDIT_TAG_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum IMPORTANT_MESSAGE_DISMISS_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum IMPORTANT_MESSAGE_NEGATIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum IMPORTANT_MESSAGE_POSITIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum INFOCARD_DISMISS_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum INFOCARD_NEGATIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum INFOCARD_POSITIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum NOT_SPAM_DISMISS_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum NOT_SPAM_NEGATIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum NOT_SPAM_POSITIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum SEMICARD_DISMISS_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum SEMICARD_NEGATIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum SEMICARD_POSITIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum SPAM_DISMISS_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum SPAM_NEGATIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum SPAM_POSITIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum UPDATES_DISMISS_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum UPDATES_NEGATIVE_FEEDBACK can be incorrect */
/* JADX WARN: Init of enum UPDATES_POSITIVE_FEEDBACK can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u001c\b\u0086\u0001\u0018�� \u00132\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0014B!\b\u0002\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'¨\u0006("}, d2 = {"Lcom/truecaller/insights/models/smartcards/CardFeedBackType;", "", "Lcom/truecaller/insights/models/smartcards/FeedbackClass;", "feedbackClass", "Lcom/truecaller/insights/models/smartcards/FeedbackClass;", "getFeedbackClass", "()Lcom/truecaller/insights/models/smartcards/FeedbackClass;", "Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;", "feedbackSubclass", "Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;", "getFeedbackSubclass", "()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/insights/models/smartcards/FeedbackClass;Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;)V", "Companion", "a", "SEMICARD_POSITIVE_FEEDBACK", "SEMICARD_NEGATIVE_FEEDBACK", "SEMICARD_DISMISS_FEEDBACK", "INFOCARD_POSITIVE_FEEDBACK", "INFOCARD_NEGATIVE_FEEDBACK", "INFOCARD_DISMISS_FEEDBACK", "UPDATES_POSITIVE_FEEDBACK", "UPDATES_NEGATIVE_FEEDBACK", "UPDATES_DISMISS_FEEDBACK", "IMPORTANT_MESSAGE_POSITIVE_FEEDBACK", "IMPORTANT_MESSAGE_NEGATIVE_FEEDBACK", "IMPORTANT_MESSAGE_DISMISS_FEEDBACK", "EDIT_TAG_FEEDBACK", "SPAM_POSITIVE_FEEDBACK", "SPAM_NEGATIVE_FEEDBACK", "SPAM_DISMISS_FEEDBACK", "NOT_SPAM_POSITIVE_FEEDBACK", "NOT_SPAM_NEGATIVE_FEEDBACK", "NOT_SPAM_DISMISS_FEEDBACK", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/smartcards/CardFeedBackType.class */
public enum CardFeedBackType {
    SEMICARD_POSITIVE_FEEDBACK("semicard_positive_feedback", r0, r0),
    SEMICARD_NEGATIVE_FEEDBACK("semicard_negative_feedback", r0, r0),
    SEMICARD_DISMISS_FEEDBACK("semicard_dismiss_feedback", r0, r0),
    INFOCARD_POSITIVE_FEEDBACK("infocard_positive_feedback", r0, r0),
    INFOCARD_NEGATIVE_FEEDBACK("infocard_negative_feedback", r0, r0),
    INFOCARD_DISMISS_FEEDBACK("infocard_dismiss_feedback", r0, r0),
    UPDATES_POSITIVE_FEEDBACK("updates_positive_feedback", r0, r0),
    UPDATES_NEGATIVE_FEEDBACK("updates_negative_feedback", r0, r0),
    UPDATES_DISMISS_FEEDBACK("updates_dismiss_feedback", r0, r0),
    IMPORTANT_MESSAGE_POSITIVE_FEEDBACK("message_is_important", r0, r0),
    IMPORTANT_MESSAGE_NEGATIVE_FEEDBACK("message_is_not_important", r0, r0),
    IMPORTANT_MESSAGE_DISMISS_FEEDBACK("message_important_dismiss", r0, r0),
    EDIT_TAG_FEEDBACK("edit_tag", FeedbackClass.EDIT_TAG, r0),
    SPAM_POSITIVE_FEEDBACK("spam_positive_feedback", r0, r0),
    SPAM_NEGATIVE_FEEDBACK("spam_negative_feedback", r0, r0),
    SPAM_DISMISS_FEEDBACK("spam_dismiss_feedback", r0, r0),
    NOT_SPAM_POSITIVE_FEEDBACK("not_spam_positive_feedback", r0, r0),
    NOT_SPAM_NEGATIVE_FEEDBACK("not_spam_negative_feedback", r0, r0),
    NOT_SPAM_DISMISS_FEEDBACK("not_spam_dismiss_feedback", r0, r0);
    
    public static final C4069a Companion = new C4069a(null);
    private final FeedbackClass feedbackClass;
    private final FeedbackSubclass feedbackSubclass;
    private final String value;

    /* renamed from: com.truecaller.insights.models.smartcards.CardFeedBackType$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/smartcards/CardFeedBackType$a.class */
    public static final class C4069a {
        public C4069a(f fVar) {
        }
    }

    static {
        FeedbackClass feedbackClass = FeedbackClass.SEMICARD;
        FeedbackSubclass feedbackSubclass = FeedbackSubclass.POSITIVE;
        FeedbackSubclass feedbackSubclass2 = FeedbackSubclass.NEGATIVE;
        FeedbackSubclass feedbackSubclass3 = FeedbackSubclass.DISMISS;
        FeedbackClass feedbackClass2 = FeedbackClass.INFOCARD;
        FeedbackClass feedbackClass3 = FeedbackClass.UPDATES;
        FeedbackClass feedbackClass4 = FeedbackClass.IMPORTANT_MESSAGE;
        FeedbackClass feedbackClass5 = FeedbackClass.SPAM;
        FeedbackClass feedbackClass6 = FeedbackClass.NOT_SPAM;
    }

    CardFeedBackType(String str, FeedbackClass feedbackClass, FeedbackSubclass feedbackSubclass) {
        this.value = str;
        this.feedbackClass = feedbackClass;
        this.feedbackSubclass = feedbackSubclass;
    }

    public final FeedbackClass getFeedbackClass() {
        return this.feedbackClass;
    }

    public final FeedbackSubclass getFeedbackSubclass() {
        return this.feedbackSubclass;
    }

    public final String getValue() {
        return this.value;
    }
}
