package com.truecaller.p183ui.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.AdError;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.p183ui.FeedbackDialogActivity;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.p183ui.components.FeedbackItemView;
import com.truecaller.referral.ReferralManager;
import e.m.d.y.n;
import java.util.Objects;
import n3.r.a.l;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.C19023f1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1159q4.C19651l0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.p699c2.C13184d0;
import p193e.p194a.p682e.p699c2.C13186e0;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import w3.c.a.a.a.h;
/* renamed from: com.truecaller.ui.components.FeedbackItemView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FeedbackItemView.class */
public class FeedbackItemView extends RelativeLayout implements View.OnClickListener {

    /* renamed from: m */
    public static final /* synthetic */ int f15745m = 0;

    /* renamed from: a */
    public FeedbackItem f15746a;

    /* renamed from: b */
    public ImageView f15747b;

    /* renamed from: c */
    public TextView f15748c;

    /* renamed from: d */
    public Button f15749d;

    /* renamed from: e */
    public Button f15750e;

    /* renamed from: f */
    public Button f15751f;

    /* renamed from: g */
    public boolean f15752g;

    /* renamed from: h */
    public float f15753h;

    /* renamed from: i */
    public boolean f15754i;

    /* renamed from: j */
    public AbstractC4679c f15755j;

    /* renamed from: k */
    public boolean f15756k;

    /* renamed from: l */
    public int f15757l;

    /* renamed from: com.truecaller.ui.components.FeedbackItemView$DisplaySource */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FeedbackItemView$DisplaySource.class */
    public enum DisplaySource {
        AFTERCALL,
        BLOCKED_CALL,
        GLOBAL_SEARCH_HISTORY,
        OTHER;

        public String asAnalyticsContext() {
            int ordinal = ordinal();
            return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? AdError.UNDEFINED_DOMAIN : "searchHistory" : "callBlocked" : "afterCall";
        }

        public FeedbackItem.FeedbackItemState getInitialFeedbackState() {
            return this == AFTERCALL ? FeedbackItem.FeedbackItemState.QUESTION_ENJOYING_CALLER_ID : this == BLOCKED_CALL ? FeedbackItem.FeedbackItemState.QUESTION_ENJOYING_BLOCKED : FeedbackItem.FeedbackItemState.QUESTION_ENJOYING;
        }

        public FeedbackItem.FeedbackItemState getInitialInviteState() {
            return FeedbackItem.FeedbackItemState.QUESTION_INVITE_FRIENDS;
        }

        public FeedbackItem.FeedbackItemState getInitialShareState() {
            return this == AFTERCALL ? FeedbackItem.FeedbackItemState.QUESTION_SHARE_CALLER_ID : this == BLOCKED_CALL ? FeedbackItem.FeedbackItemState.QUESTION_SHARE_BLOCKED : FeedbackItem.FeedbackItemState.QUESTION_SHARE;
        }

        public boolean shouldShowFeedback() {
            int i = FeedbackItemView.f15745m;
            Objects.requireNonNull(AbstractApplicationC8442a.m28551L());
            boolean z = true;
            if (!(!C15571h.m18636o("GOOGLE_REVIEW_DONE") && !C15571h.m18636o("FEEDBACK_SENT") && TrueApp.m36032b0().mo10154s().mo12763D4().mo22845b() && !C15571h.m18633r("FEEDBACK_DISMISSED_COUNT", 2L))) {
                return false;
            }
            int ordinal = ordinal();
            if (ordinal == 0) {
                return !C15571h.m18636o("FEEDBACK_HAS_ASKED_AFTERCALL");
            }
            if (ordinal == 1) {
                return C15571h.m18639l("blockCallCounter").longValue() == 1;
            } else if (ordinal != 2) {
                return false;
            } else {
                if (C15571h.m18636o("FEEDBACK_HAS_ASKED_SEARCH") || !C15571h.m18649b("GOOGLE_REVIEW_ASK_TIMESTAMP") || ((!C15571h.m18648c("GOOGLE_REVIEW_ASK_TIMESTAMP", 259200000L) && (!C15571h.m18649b("INVITE_LAST_ASKED") || !C15571h.m18648c("INVITE_LAST_ASKED", 259200000L))) || !C15571h.m18648c("FEEDBACK_LAST_DISMISSED", DtbConstants.SIS_PING_INTERVAL))) {
                    z = false;
                }
                return z;
            }
        }

        public boolean shouldShowInviteFriends() {
            Objects.requireNonNull(AbstractApplicationC8442a.m28551L());
            if (C15571h.m18639l("INVITE_PEOPLE_FIRST_CHECKED").longValue() == 0) {
                C15571h.m18654B("INVITE_PEOPLE_FIRST_CHECKED");
            }
            return this == GLOBAL_SEARCH_HISTORY && C15571h.m18633r("counterFacebookInvite", 3L) && C15571h.m18648c("INVITE_LAST_ASKED", DtbConstants.SIS_CHECKIN_INTERVAL) && C15571h.m18648c("INVITE_LAST_DISMISSED", 1209600000L);
        }

        public boolean shouldShowShare() {
            Objects.requireNonNull(AbstractApplicationC8442a.m28551L());
            return C15571h.m18636o("FEEDBACK_LIKES_TRUECALLER") && !C15571h.m18633r("FEEDBACK_DISMISSED_COUNT", 2L) && !C15571h.m18636o("HAS_SHARED") && C15571h.m18648c("GOOGLE_REVIEW_ASK_TIMESTAMP", 604800000L);
        }
    }

    /* renamed from: com.truecaller.ui.components.FeedbackItemView$FeedbackItem */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FeedbackItemView$FeedbackItem.class */
    public static class FeedbackItem extends C13197i0 {

        /* renamed from: j */
        public FeedbackItemState f15758j;

        /* renamed from: k */
        public DisplaySource f15759k;

        /* renamed from: com.truecaller.ui.components.FeedbackItemView$FeedbackItem$FeedbackItemState */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState.class */
        public enum FeedbackItemState {
            QUESTION_ENJOYING(C2752R.string.FeedbackQuestionEnjoying, -1, C2752R.attr.banner_shareTruecallerPromo, 2131886743, 2131887903, 2131887941, false),
            QUESTION_ENJOYING_CALLER_ID(2131886748, C2752R.C2753drawable.ic_rate),
            QUESTION_ENJOYING_BLOCKED(C2752R.string.FeedbackQuestionEnjoyingBlocked, C2752R.C2753drawable.ic_rate),
            QUESTION_RATE(C2752R.string.FeedbackQuestionRate, C2752R.C2753drawable.ic_rate),
            QUESTION_GIVE_FEEDBACK(C2752R.string.FeedbackQuestionGiveFeedback, C2752R.C2753drawable.ic_improve),
            FEEDBACK_NO,
            RATE_NO,
            FEEDBACK_YES,
            RATE_YES(false),
            RATE_YES_THANKS(2131886755, C2752R.C2753drawable.ic_thanks),
            QUESTION_SHARE(C2752R.string.FeedbackQuestionShare, -1, C2752R.attr.banner_shareTruecallerPromo, 2131886743, 2131887903, 2131887941, false),
            QUESTION_SHARE_CALLER_ID(C2752R.string.FeedbackQuestionShareCallerId, 2131232321),
            QUESTION_SHARE_BLOCKED(C2752R.string.FeedbackQuestionShareBlocked, 2131232321),
            SHARE_NO,
            SHARE_YES,
            QUESTION_INVITE_FRIENDS(C2752R.string.MePageShareApp, C2752R.string.FeedbackQuestionInviteFriends, C2752R.attr.banner_shareTruecallerPromo, C2752R.string.FeedbackOptionLater, -1, C2752R.string.FeedbackOptionInviteFriends, false),
            INVITE_YES,
            INVITE_NO,
            DUMMY_FINAL;
            
            private final int mDismissId;
            private final boolean mFinalState;
            private final int mIconId;
            private final int mMessageId;
            private final int mNegativeId;
            private final int mPositiveId;
            private final int mTitleId;

            FeedbackItemState() {
                this(true);
            }

            FeedbackItemState(int i, int i2) {
                this(i, i2, 2131886743, 2131887903, 2131887941, false);
            }

            FeedbackItemState(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
                this.mTitleId = i;
                this.mMessageId = i2;
                this.mIconId = i3;
                this.mDismissId = i4;
                this.mNegativeId = i5;
                this.mPositiveId = i6;
                this.mFinalState = z;
            }

            FeedbackItemState(int i, int i2, int i3, int i4, int i5, boolean z) {
                this(-1, i, i2, i3, i4, i5, z);
            }

            FeedbackItemState(boolean z) {
                this(-1, -1, -1, -1, -1, z);
            }

            public int getDismissId() {
                return this.mDismissId;
            }

            public int getIconId() {
                return this.mIconId;
            }

            public int getMessageId() {
                return this.mMessageId;
            }

            public int getNegativeId() {
                return this.mNegativeId;
            }

            public int getPositiveId() {
                return this.mPositiveId;
            }

            public int getTitleId() {
                return this.mTitleId;
            }

            public boolean isFeedbackState() {
                return this == QUESTION_ENJOYING || this == QUESTION_ENJOYING_CALLER_ID || this == QUESTION_ENJOYING_BLOCKED || this == QUESTION_RATE || this == QUESTION_GIVE_FEEDBACK;
            }

            public boolean isInviteState() {
                return this == QUESTION_INVITE_FRIENDS || this == INVITE_YES || this == INVITE_NO;
            }

            public boolean isShareState() {
                return this == QUESTION_SHARE || this == QUESTION_SHARE_BLOCKED || this == QUESTION_SHARE_CALLER_ID || this == SHARE_NO || this == SHARE_YES;
            }

            public boolean shouldClose() {
                return this.mFinalState;
            }

            public boolean shouldGiveFeedback() {
                return this == FEEDBACK_YES;
            }

            public boolean shouldInvite() {
                return this == INVITE_YES;
            }

            public boolean shouldRate() {
                return this == RATE_YES;
            }

            public boolean shouldShare() {
                return this == SHARE_YES;
            }
        }

        public FeedbackItem(DisplaySource displaySource, FeedbackItemState feedbackItemState) {
            this.f15758j = FeedbackItemState.QUESTION_ENJOYING;
            this.f15759k = DisplaySource.OTHER;
            this.f15759k = displaySource;
            this.f15758j = feedbackItemState;
        }

        public boolean equals(Object obj) {
            return (obj instanceof FeedbackItem) && this.f15758j == ((FeedbackItem) obj).f15758j;
        }

        /* renamed from: i */
        public String m34525i(Context context) {
            int messageId = this.f15758j.getMessageId();
            return messageId == -1 ? "" : context.getString(messageId);
        }

        /* renamed from: j */
        public void m34524j() {
            int ordinal = this.f15758j.ordinal();
            if (ordinal == 0) {
                this.f15758j = FeedbackItemState.QUESTION_RATE;
            } else if (ordinal == 1 || ordinal == 2 || ordinal == 3) {
                this.f15758j = FeedbackItemState.RATE_YES;
            } else if (ordinal == 4) {
                this.f15758j = FeedbackItemState.FEEDBACK_YES;
            } else if (ordinal == 8) {
                this.f15758j = FeedbackItemState.RATE_YES_THANKS;
            } else if (ordinal == 15) {
                this.f15758j = FeedbackItemState.INVITE_YES;
            } else {
                switch (ordinal) {
                    case 10:
                    case 11:
                    case 12:
                        this.f15758j = FeedbackItemState.SHARE_YES;
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* renamed from: com.truecaller.ui.components.FeedbackItemView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FeedbackItemView$a.class */
    public class C4677a extends AnimatorListenerAdapter {
        public C4677a() {
            FeedbackItemView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FeedbackItemView feedbackItemView = FeedbackItemView.this;
            feedbackItemView.f15754i = false;
            AbstractC4679c abstractC4679c = feedbackItemView.f15755j;
            if (abstractC4679c != null) {
                ((FeedbackDialogActivity) abstractC4679c).m34594pa(feedbackItemView.f15746a);
            }
        }
    }

    /* renamed from: com.truecaller.ui.components.FeedbackItemView$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FeedbackItemView$b.class */
    public class C4678b extends AnimatorListenerAdapter {
        public C4678b() {
            FeedbackItemView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FeedbackItemView feedbackItemView = FeedbackItemView.this;
            feedbackItemView.f15754i = false;
            AbstractC4679c abstractC4679c = feedbackItemView.f15755j;
            if (abstractC4679c != null) {
                ((FeedbackDialogActivity) abstractC4679c).m34594pa(feedbackItemView.f15746a);
            }
        }
    }

    /* renamed from: com.truecaller.ui.components.FeedbackItemView$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FeedbackItemView$c.class */
    public interface AbstractC4679c {
    }

    public FeedbackItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C2752R.styleable.FeedbackItemView, 0, 0);
        try {
            this.f15757l = obtainStyledAttributes.getDimensionPixelSize(0, C8605o.m28238b(getContext(), 32.0f));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: c */
    public static FeedbackItem m34530c(DisplaySource displaySource, Context context) {
        if (context == null) {
            return null;
        }
        if (displaySource.shouldShowInviteFriends()) {
            return new FeedbackItem(displaySource, displaySource.getInitialInviteState());
        }
        if (displaySource.shouldShowShare()) {
            return new FeedbackItem(displaySource, displaySource.getInitialShareState());
        }
        if (!displaySource.shouldShowFeedback()) {
            return null;
        }
        return new FeedbackItem(displaySource, displaySource.getInitialFeedbackState());
    }

    private void setIconDrawable(FeedbackItem feedbackItem) {
        this.f15747b.setImageDrawable(C19291g.m13535l0(getContext(), feedbackItem.f15758j.getIconId(), 2130970409));
    }

    /* renamed from: a */
    public final void m34532a() {
        this.f15754i = true;
        this.f15746a.f15758j = FeedbackItem.FeedbackItemState.DUMMY_FINAL;
        if (this.f15752g) {
            C19023f1 m14250a = C19023f1.m14250a(this, "alpha", 1.0f, 0.0f);
            m14250a.f53147a.setInterpolator(new AccelerateDecelerateInterpolator());
            m14250a.f53147a.setDuration(200L);
            m14250a.f53147a.addListener(new C4678b());
            m14250a.f53147a.start();
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        for (int i = 0; i < getChildCount(); i++) {
            C19023f1 m14250a2 = C19023f1.m14250a(getChildAt(i), "alpha", 1.0f, 0.0f);
            m14250a2.f53147a.setInterpolator(new AccelerateDecelerateInterpolator());
            m14250a2.f53147a.setDuration(200L);
            animatorSet.play(m14250a2.f53147a);
        }
        final ViewGroup.LayoutParams layoutParams = getLayoutParams();
        final int height = getHeight();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setFloatValues(1.0f, 0.0f);
        valueAnimator.setDuration(200L);
        valueAnimator.setStartDelay(200L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.c2.j
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                FeedbackItemView feedbackItemView = FeedbackItemView.this;
                ViewGroup.LayoutParams layoutParams2 = layoutParams;
                int i2 = height;
                Objects.requireNonNull(feedbackItemView);
                float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                layoutParams2.height = Math.round(i2 * floatValue);
                feedbackItemView.setAlpha(floatValue);
                feedbackItemView.requestLayout();
            }
        });
        animatorSet.play(valueAnimator);
        animatorSet.addListener(new C4677a());
        animatorSet.start();
    }

    /* renamed from: b */
    public void m34531b() {
        Context context = getContext();
        FeedbackItem.FeedbackItemState feedbackItemState = this.f15746a.f15758j;
        m34532a();
        if (feedbackItemState.isInviteState()) {
            C15571h.m18654B("INVITE_LAST_DISMISSED");
            return;
        }
        C15571h.m18654B("FEEDBACK_LAST_DISMISSED");
        C15571h.m18628w("FEEDBACK_DISMISSED_COUNT", C15571h.m18639l("FEEDBACK_DISMISSED_COUNT").longValue() + 1);
        if (!C15571h.m18633r("FEEDBACK_DISMISSED_COUNT", 2L)) {
            return;
        }
        Toast.makeText(context, feedbackItemState.isShareState() ? 2131886756 : 2131886721, 0).show();
    }

    /* renamed from: d */
    public final void m34529d(Button button, int i) {
        if (i == -1) {
            button.setVisibility(4);
        } else {
            button.setText(i);
        }
    }

    /* renamed from: e */
    public boolean m34528e() {
        return this.f15746a.f15758j.shouldShare() && this.f15756k;
    }

    /* renamed from: f */
    public void m34527f() {
        FeedbackItem feedbackItem = this.f15746a;
        if (feedbackItem.f15758j == FeedbackItem.FeedbackItemState.RATE_YES) {
            feedbackItem.m34524j();
            this.f15751f.setVisibility(8);
            this.f15749d.setVisibility(8);
            this.f15750e.setVisibility(8);
            setMinimumHeight(0);
            this.f15748c.setText(this.f15746a.m34525i(getContext()));
            setIconDrawable(this.f15746a);
            C19023f1 m14250a = C19023f1.m14250a(this.f15747b, "rotation", 0.0f, 360.0f);
            m14250a.f53147a.setInterpolator(new OvershootInterpolator(1.5f));
            m14250a.f53147a.setStartDelay(500L);
            m14250a.f53147a.setDuration(500L);
            m14250a.f53147a.start();
            postDelayed(new Runnable() { // from class: e.a.e.c2.i
                @Override // java.lang.Runnable
                public final void run() {
                    FeedbackItemView feedbackItemView = FeedbackItemView.this;
                    int i = FeedbackItemView.f15745m;
                    feedbackItemView.m34532a();
                }
            }, 2000L);
        }
    }

    /* renamed from: g */
    public void m34526g(FeedbackItem feedbackItem, Boolean bool) {
        if (this.f15746a == feedbackItem) {
            return;
        }
        this.f15746a = feedbackItem;
        if (feedbackItem.f15758j.isFeedbackState()) {
            DisplaySource displaySource = this.f15746a.f15759k;
            if (displaySource == DisplaySource.GLOBAL_SEARCH_HISTORY) {
                C15571h.m18626y("FEEDBACK_HAS_ASKED_SEARCH", true);
            } else if (displaySource == DisplaySource.AFTERCALL) {
                C15571h.m18626y("FEEDBACK_HAS_ASKED_AFTERCALL", true);
            }
        }
        if (feedbackItem.f15758j.shouldClose()) {
            setVisibility(8);
            return;
        }
        LayoutInflater.from(getContext()).inflate(bool.booleanValue() ? 2131559624 : 2131559623, (ViewGroup) this, true);
        if (bool.booleanValue()) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(2131165497);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMarginStart(dimensionPixelSize);
            layoutParams.setMarginEnd(dimensionPixelSize);
            setLayoutParams(layoutParams);
            Context context = getContext();
            Object obj = C26467a.f74235a;
            setBackground(C26467a.C26470c.m1789b(context, 2131231041));
        } else {
            setBackgroundColor(C19291g.m13612L(getContext(), 2130970356));
        }
        ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            layoutParams2.width = -1;
        }
        setMinimumHeight(C8605o.m28238b(getContext(), 96.0f));
        this.f15753h = C8605o.m28238b(getContext(), 8.0f);
        Button button = (Button) findViewById(C2752R.C2754id.feedback_button_negative);
        this.f15749d = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(C2752R.C2754id.feedback_button_positive);
        this.f15750e = button2;
        button2.setOnClickListener(this);
        Button button3 = (Button) findViewById(C2752R.C2754id.feedback_button_dismiss);
        this.f15751f = button3;
        button3.setOnClickListener(this);
        this.f15747b = (ImageView) findViewById(C2752R.C2754id.feedback_icon);
        this.f15748c = (TextView) findViewById(C2752R.C2754id.feedback_question);
        this.f15748c.setText(feedbackItem.m34525i(getContext()));
        if (feedbackItem.f15758j.getIconId() != -1) {
            setIconDrawable(feedbackItem);
        }
        m34529d(this.f15751f, feedbackItem.f15758j.getDismissId());
        m34529d(this.f15749d, feedbackItem.f15758j.getNegativeId());
        m34529d(this.f15750e, feedbackItem.f15758j.getPositiveId());
        setPadding(getPaddingLeft(), getPaddingTop(), this.f15757l, getPaddingBottom());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f15754i) {
            return;
        }
        l context = getContext();
        int id = view.getId();
        if (id == 2131363662) {
            m34531b();
            return;
        }
        if (id == 2131363663) {
            AbstractC4679c abstractC4679c = this.f15755j;
            if (abstractC4679c != null) {
                FeedbackDialogActivity feedbackDialogActivity = (FeedbackDialogActivity) abstractC4679c;
                if (this.f15746a.f15759k == DisplaySource.BLOCKED_CALL) {
                    n.y1(feedbackDialogActivity.f15553c, "rateUs", "negativeButton");
                }
            }
            FeedbackItem feedbackItem = this.f15746a;
            int ordinal = feedbackItem.f15758j.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            feedbackItem.f15758j = FeedbackItem.FeedbackItemState.RATE_NO;
                        } else if (ordinal != 4) {
                            if (ordinal == 8) {
                                feedbackItem.f15758j = FeedbackItem.FeedbackItemState.RATE_YES_THANKS;
                            } else if (ordinal != 15) {
                                switch (ordinal) {
                                    case 10:
                                    case 11:
                                    case 12:
                                        feedbackItem.f15758j = FeedbackItem.FeedbackItemState.SHARE_NO;
                                        break;
                                }
                            } else {
                                feedbackItem.f15758j = FeedbackItem.FeedbackItemState.INVITE_NO;
                            }
                        }
                    }
                }
                feedbackItem.f15758j = FeedbackItem.FeedbackItemState.FEEDBACK_NO;
            }
            feedbackItem.f15758j = FeedbackItem.FeedbackItemState.QUESTION_GIVE_FEEDBACK;
        } else if (id != 2131363664) {
            return;
        } else {
            AbstractC4679c abstractC4679c2 = this.f15755j;
            if (abstractC4679c2 != null) {
                FeedbackDialogActivity feedbackDialogActivity2 = (FeedbackDialogActivity) abstractC4679c2;
                if (this.f15746a.f15759k == DisplaySource.BLOCKED_CALL) {
                    n.y1(feedbackDialogActivity2.f15553c, "rateUs", "positiveButton");
                }
            }
            this.f15746a.m34524j();
            FeedbackItem.FeedbackItemState feedbackItemState = this.f15746a.f15758j;
            if (feedbackItemState == FeedbackItem.FeedbackItemState.QUESTION_RATE || feedbackItemState == FeedbackItem.FeedbackItemState.RATE_YES) {
                C15571h.m18626y("FEEDBACK_LIKES_TRUECALLER", true);
            }
        }
        String m34525i = this.f15746a.m34525i(getContext());
        int iconId = this.f15746a.f15758j.getIconId();
        if (!h.i(m34525i) && iconId >= 0) {
            Drawable m13535l0 = C19291g.m13535l0(getContext(), this.f15746a.f15758j.getIconId(), 2130970409);
            this.f15754i = true;
            C19023f1 m14250a = C19023f1.m14250a(this.f15748c, "alpha", 1.0f, 0.0f);
            m14250a.f53147a.setDuration(100L);
            m14250a.f53147a.setInterpolator(new AccelerateDecelerateInterpolator());
            m14250a.f53147a.start();
            C19023f1 m14250a2 = C19023f1.m14250a(this.f15747b, "alpha", 1.0f, 0.0f);
            m14250a2.f53147a.setDuration(100L);
            m14250a2.f53147a.setInterpolator(new AccelerateDecelerateInterpolator());
            m14250a2.f53147a.addListener(new C13184d0(this, m34525i, m13535l0));
            m14250a2.f53147a.start();
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setInterpolator(new DecelerateInterpolator());
            animatorSet.addListener(new C13186e0(this));
            C19023f1 m14250a3 = C19023f1.m14250a(this.f15748c, "translationX", -this.f15753h, 0.0f);
            m14250a3.f53147a.setStartDelay(100L);
            m14250a3.f53147a.setDuration(100L);
            ObjectAnimator objectAnimator = m14250a3.f53147a;
            C19023f1 m14250a4 = C19023f1.m14250a(this.f15748c, "alpha", 0.0f, 1.0f);
            m14250a4.f53147a.setStartDelay(100L);
            m14250a4.f53147a.setDuration(100L);
            ObjectAnimator objectAnimator2 = m14250a4.f53147a;
            C19023f1 m14250a5 = C19023f1.m14250a(this.f15747b, "translationX", -this.f15753h, 0.0f);
            m14250a5.f53147a.setStartDelay(100L);
            m14250a5.f53147a.setDuration(100L);
            ObjectAnimator objectAnimator3 = m14250a5.f53147a;
            C19023f1 m14250a6 = C19023f1.m14250a(this.f15747b, "alpha", 0.0f, 1.0f);
            m14250a6.f53147a.setStartDelay(100L);
            m14250a6.f53147a.setDuration(100L);
            ObjectAnimator objectAnimator4 = m14250a6.f53147a;
            animatorSet.play(objectAnimator);
            animatorSet.play(objectAnimator2);
            animatorSet.play(objectAnimator3);
            animatorSet.play(objectAnimator4);
            animatorSet.start();
        }
        AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
        AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
        if (this.f15746a.f15758j.shouldGiveFeedback()) {
            mo12776C4.mo13274b(ViewActionEvent.m35938i(this.f15746a.f15759k.asAnalyticsContext(), ViewActionEvent.ViralityAction.FEEDBACK));
            context.startActivity(SingleActivity.m34591ua(context, SingleActivity.FragmentSingle.FEEDBACK_FORM));
        } else if (this.f15746a.f15758j.shouldRate()) {
            mo12776C4.mo13274b(ViewActionEvent.m35938i(this.f15746a.f15759k.asAnalyticsContext(), ViewActionEvent.ViralityAction.RATE));
            String mo22846a = mo10154s.mo12763D4().mo22846a();
            if (mo22846a != null) {
                C8613t.m28203i(context, mo22846a);
            }
            AbstractC4679c abstractC4679c3 = this.f15755j;
            if (abstractC4679c3 != null) {
                ((FeedbackDialogActivity) abstractC4679c3).f15551a = this;
            } else {
                this.f15746a.f15758j = FeedbackItem.FeedbackItemState.DUMMY_FINAL;
            }
            C15571h.m18626y("GOOGLE_REVIEW_DONE", true);
            C15571h.m18628w("FEEDBACK_DISMISSED_COUNT", 0L);
        } else if (this.f15746a.f15758j.shouldShare()) {
            mo12776C4.mo13274b(ViewActionEvent.m35938i(this.f15746a.f15759k.asAnalyticsContext(), ViewActionEvent.ViralityAction.SHARE));
            C8582g0.m28323R(context, context.getString(C2752R.string.MePageShareApp), context.getString(C2752R.string.ShareTruecallerTitle), context.getString(C2752R.string.ShareTruecallerText2), null);
            this.f15756k = true;
        } else if (this.f15746a.f15758j.shouldInvite()) {
            mo12776C4.mo13274b(ViewActionEvent.m35938i(this.f15746a.f15759k.asAnalyticsContext(), ViewActionEvent.ViralityAction.INVITE));
            ReferralManager m13084PA = C19651l0.m13084PA(context instanceof ContextThemeWrapper ? (l) ((ContextWrapper) context).getBaseContext() : context, "ReferralManagerImpl");
            if (m13084PA != null) {
                ((C19651l0) m13084PA).f54579c.mo13053Xa(ReferralManager.ReferralLaunchContext.SEARCH_SCREEN_PROMO);
            }
        }
        if (!this.f15746a.f15758j.shouldClose()) {
            return;
        }
        FeedbackItem.FeedbackItemState feedbackItemState2 = this.f15746a.f15758j;
        if (feedbackItemState2 == FeedbackItem.FeedbackItemState.RATE_NO || feedbackItemState2 == FeedbackItem.FeedbackItemState.FEEDBACK_NO || feedbackItemState2 == FeedbackItem.FeedbackItemState.SHARE_NO || feedbackItemState2 == FeedbackItem.FeedbackItemState.INVITE_NO) {
            m34531b();
        } else {
            m34532a();
        }
    }

    public void setDialogStyle(boolean z) {
        this.f15752g = z;
    }

    public void setFeedbackItemListener(AbstractC4679c abstractC4679c) {
        this.f15755j = abstractC4679c;
    }
}
