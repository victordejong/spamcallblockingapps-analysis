package p193e.p194a.p195a.p200c;

import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.insights.models.smartcards.FeedbackClass;
import com.truecaller.insights.models.smartcards.FeedbackGivenState;
import java.util.Objects;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import s1.i;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.g7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g7.class */
public final class C5327g7 extends m implements l<CardFeedBackType, s> {

    /* renamed from: b */
    public final /* synthetic */ ViewTreeObserver$OnPreDrawListenerC5184d f18258b;

    /* renamed from: c */
    public final /* synthetic */ C5036k f18259c;

    /* renamed from: d */
    public final /* synthetic */ C10635s f18260d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5327g7(ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d, C5036k c5036k, C10635s c10635s) {
        super(1);
        this.f18258b = viewTreeObserver$OnPreDrawListenerC5184d;
        this.f18259c = c5036k;
        this.f18260d = c10635s;
    }

    /* renamed from: d */
    public Object m33284d(Object obj) {
        FeedbackGivenState feedbackGivenState;
        CardFeedBackType cardFeedBackType = (CardFeedBackType) obj;
        s1.z.c.l.e(cardFeedBackType, "feedbackType");
        this.f18259c.m33951i(false);
        C10635s c10635s = this.f18260d;
        int ordinal = cardFeedBackType.getFeedbackSubclass().ordinal();
        if (ordinal == 0) {
            feedbackGivenState = FeedbackGivenState.POSITIVE;
        } else if (ordinal == 1) {
            if (cardFeedBackType.getFeedbackClass() != FeedbackClass.SPAM && cardFeedBackType.getFeedbackClass() != FeedbackClass.NOT_SPAM) {
                this.f18258b.mo33671I0(true);
            }
            feedbackGivenState = FeedbackGivenState.NEGATIVE;
        } else if (ordinal != 2) {
            throw new i();
        } else {
            feedbackGivenState = FeedbackGivenState.DISMISS;
        }
        Objects.requireNonNull(c10635s);
        s1.z.c.l.e(feedbackGivenState, "<set-?>");
        c10635s.f31682j = feedbackGivenState;
        return s.a;
    }
}
