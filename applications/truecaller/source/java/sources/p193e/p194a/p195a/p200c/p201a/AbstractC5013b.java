package p193e.p194a.p195a.p200c.p201a;

import android.animation.Animator;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import com.airbnb.lottie.LottieAnimationView;
import com.truecaller.C2752R;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.insights.models.smartcards.FeedbackGivenState;
import com.truecaller.insights.models.smartcards.FeedbackSubclass;
import com.truecaller.insights.utils.FeedbackConsentType;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Message;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C18092e;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.p221r8.C5701c;
import p193e.p194a.p437c.p438a.p442b.p443a.C8691a;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.C10607k;
import p193e.p194a.p437c.p580r.p589j.C10614o;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import p193e.p194a.p682e.C12864a2;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/b.class */
public abstract class AbstractC5013b extends C5701c {

    /* renamed from: b */
    public final g f17122b = C25225a.m3978P1(new C5015b());
    @Inject

    /* renamed from: c */
    public AbstractC10024k f17123c;
    @Inject

    /* renamed from: d */
    public AbstractC5041o f17124d;

    /* renamed from: e */
    public final Group f17125e;

    /* renamed from: f */
    public final TextView f17126f;

    /* renamed from: g */
    public final LottieAnimationView f17127g;

    /* renamed from: h */
    public final TextView f17128h;

    /* renamed from: i */
    public final TextView f17129i;

    /* renamed from: j */
    public final ImageView f17130j;

    /* renamed from: k */
    public final TextView f17131k;

    /* renamed from: l */
    public final Group f17132l;

    /* renamed from: m */
    public final g f17133m;

    /* renamed from: n */
    public final View f17134n;

    /* renamed from: e.a.a.c.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/a/b$a.class */
    public static final class View$OnClickListenerC5014a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17135a;

        /* renamed from: b */
        public final /* synthetic */ Object f17136b;

        /* renamed from: c */
        public final /* synthetic */ Object f17137c;

        /* renamed from: d */
        public final /* synthetic */ Object f17138d;

        /* renamed from: e */
        public final /* synthetic */ Object f17139e;

        /* renamed from: f */
        public final /* synthetic */ Object f17140f;

        /* renamed from: g */
        public final /* synthetic */ Object f17141g;

        public View$OnClickListenerC5014a(int i, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
            this.f17135a = i;
            this.f17136b = obj;
            this.f17137c = obj2;
            this.f17138d = obj3;
            this.f17139e = obj4;
            this.f17140f = obj5;
            this.f17141g = obj6;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17135a;
            if (i == 0) {
                AbstractC10024k abstractC10024k = ((AbstractC5013b) this.f17136b).f17123c;
                if (abstractC10024k == null) {
                    l.l("consentConfig");
                    throw null;
                } else if (C10480a.m26006W0(abstractC10024k, FeedbackConsentType.SEMI_CARD)) {
                    AbstractC5013b.m34002c((AbstractC5013b) this.f17136b, (s1.z.b.l) this.f17137c, ((AbstractC10597h) this.f17138d).f31607a, (Message) this.f17139e, (AbstractC10616p) this.f17140f, true, null, (C10635s) this.f17141g, 32, null);
                } else {
                    AbstractC5013b.m34004a((AbstractC5013b) this.f17136b, (s1.z.b.l) this.f17137c, ((AbstractC10597h) this.f17138d).f31607a, (Message) this.f17139e, (AbstractC10616p) this.f17140f, (C10635s) this.f17141g);
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw null;
                }
                AbstractC5013b.m34002c((AbstractC5013b) this.f17136b, (s1.z.b.l) this.f17137c, ((AbstractC10597h) this.f17138d).f31609c, (Message) this.f17139e, (AbstractC10616p) this.f17140f, true, null, (C10635s) this.f17141g, 32, null);
            } else {
                AbstractC10024k abstractC10024k2 = ((AbstractC5013b) this.f17136b).f17123c;
                if (abstractC10024k2 == null) {
                    l.l("consentConfig");
                    throw null;
                } else if (C10480a.m26006W0(abstractC10024k2, FeedbackConsentType.SEMI_CARD)) {
                    AbstractC5013b.m34002c((AbstractC5013b) this.f17136b, (s1.z.b.l) this.f17137c, ((AbstractC10597h) this.f17138d).f31608b, (Message) this.f17139e, (AbstractC10616p) this.f17140f, true, null, (C10635s) this.f17141g, 32, null);
                } else {
                    AbstractC5013b.m34004a((AbstractC5013b) this.f17136b, (s1.z.b.l) this.f17137c, ((AbstractC10597h) this.f17138d).f31608b, (Message) this.f17139e, (AbstractC10616p) this.f17140f, (C10635s) this.f17141g);
                }
            }
        }
    }

    /* renamed from: e.a.a.c.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/b$b.class */
    public static final class C5015b extends m implements a<Animation> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5015b() {
            super(0);
            AbstractC5013b.this = r4;
        }

        public Object invoke() {
            return AnimationUtils.loadAnimation(AbstractC5013b.this.f17134n.getContext(), 2130772010);
        }
    }

    /* renamed from: e.a.a.c.a.b$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/b$c.class */
    public static final class C5016c extends m implements s1.z.b.l<Animator, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5016c() {
            super(1);
            AbstractC5013b.this = r4;
        }

        /* renamed from: d */
        public Object m33999d(Object obj) {
            Animator animator = (Animator) obj;
            View m34003b = AbstractC5013b.this.m34003b();
            if (m34003b != null) {
                C19286f.m13689O(m34003b);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.a.b$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/b$d.class */
    public static final class C5017d extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5017d() {
            super(0);
            AbstractC5013b.this = r4;
        }

        public Object invoke() {
            AbstractC5013b abstractC5013b = AbstractC5013b.this;
            abstractC5013b.f17126f.startAnimation((Animation) abstractC5013b.f17122b.getValue());
            AbstractC5013b.this.f17127g.m42591g();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC5013b(View view) {
        super(view);
        l.e(view, "itemView");
        this.f17134n = view;
        this.f17125e = (Group) view.findViewById(2131363651);
        this.f17126f = (TextView) view.findViewById(2131363656);
        this.f17127g = (LottieAnimationView) view.findViewById(2131363657);
        this.f17128h = (TextView) view.findViewById(2131366991);
        this.f17129i = (TextView) view.findViewById(2131364924);
        this.f17130j = (ImageView) view.findViewById(2131363361);
        this.f17131k = (TextView) view.findViewById(2131363655);
        this.f17132l = (Group) view.findViewById(2131363652);
        this.f17133m = C19286f.m13660s(view, C2752R.C2754id.semicardFeedbackContainer);
    }

    /* renamed from: a */
    public static final void m34004a(AbstractC5013b abstractC5013b, s1.z.b.l lVar, CardFeedBackType cardFeedBackType, Message message, AbstractC10616p abstractC10616p, C10635s c10635s) {
        Objects.requireNonNull(abstractC5013b);
        C8691a.C8694c c8694c = C8691a.f26602h;
        C5019d c5019d = new C5019d(abstractC5013b, lVar, cardFeedBackType, message, abstractC10616p, c10635s);
        Objects.requireNonNull(c8694c);
        l.e(c5019d, "consentListener");
        C8691a c8691a = new C8691a();
        c8691a.f26603a = c5019d;
        Context context = abstractC5013b.f17134n.getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity");
        c8691a.show(((ConversationActivity) context).getSupportFragmentManager(), C8691a.f26601g);
    }

    /* renamed from: c */
    public static void m34002c(AbstractC5013b abstractC5013b, s1.z.b.l lVar, CardFeedBackType cardFeedBackType, Message message, AbstractC10616p abstractC10616p, boolean z, String str, C10635s c10635s, int i, Object obj) {
        if ((i & 32) != 0) {
            str = null;
        }
        if ((i & 64) != 0) {
            c10635s = null;
        }
        Objects.requireNonNull(abstractC5013b);
        l.e(lVar, "onFeedbackGiven");
        l.e(cardFeedBackType, "cardFeedBackType");
        l.e(message, "message");
        l.e(abstractC10616p, "infoCardCategory");
        if (cardFeedBackType.getFeedbackSubclass() != FeedbackSubclass.DISMISS) {
            abstractC5013b.m34000e(cardFeedBackType, lVar);
        } else {
            lVar.d(cardFeedBackType);
            View m34003b = abstractC5013b.m34003b();
            if (m34003b != null) {
                C19286f.m13689O(m34003b);
            }
        }
        if (c10635s != null) {
            C10614o c10614o = new C10614o(cardFeedBackType);
            l.e(c10614o, "<set-?>");
            c10635s.f31679g = c10614o;
        }
        new C10607k(C10480a.m25977c3(message, str), cardFeedBackType, abstractC10616p, C18092e.m15494a(message.f13399t), Boolean.valueOf(z)).mo25772d();
    }

    /* renamed from: b */
    public final View m34003b() {
        return (View) this.f17133m.getValue();
    }

    /* renamed from: d */
    public final void m34001d(C10329b c10329b, AbstractC10597h abstractC10597h, AbstractC10616p abstractC10616p, FeedbackGivenState feedbackGivenState, Message message, s1.z.b.l<? super CardFeedBackType, s> lVar, C10635s c10635s) {
        l.e(abstractC10616p, "infoCardCategory");
        l.e(feedbackGivenState, "feedbackGiven");
        l.e(message, "message");
        l.e(lVar, "onFeedbackGiven");
        if (c10329b != null || abstractC10597h == null || feedbackGivenState != FeedbackGivenState.NOT_GIVEN) {
            View m34003b = m34003b();
            if (m34003b == null) {
                return;
            }
            C19286f.m13689O(m34003b);
            return;
        }
        View m34003b2 = m34003b();
        if (m34003b2 != null) {
            C19286f.m13684T(m34003b2);
        }
        Group group = this.f17132l;
        if (group != null) {
            C19286f.m13684T(group);
        }
        Group group2 = this.f17125e;
        if (group2 != null) {
            C19286f.m13689O(group2);
        }
        TextView textView = this.f17128h;
        if (textView != null) {
            textView.setOnClickListener(new View$OnClickListenerC5014a(0, this, lVar, abstractC10597h, message, abstractC10616p, c10635s));
        }
        TextView textView2 = this.f17129i;
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC5014a(1, this, lVar, abstractC10597h, message, abstractC10616p, c10635s));
        }
        ImageView imageView = this.f17130j;
        if (imageView == null) {
            return;
        }
        imageView.setOnClickListener(new View$OnClickListenerC5014a(2, this, lVar, abstractC10597h, message, abstractC10616p, c10635s));
    }

    /* renamed from: e */
    public final void m34000e(CardFeedBackType cardFeedBackType, s1.z.b.l<? super CardFeedBackType, s> lVar) {
        l.e(cardFeedBackType, "feedbackType");
        l.e(lVar, "onFeedbackGiven");
        Group group = this.f17132l;
        if (group != null) {
            C19286f.m13689O(group);
        }
        Group group2 = this.f17125e;
        if (group2 != null) {
            C19286f.m13684T(group2);
        }
        lVar.d(cardFeedBackType);
        LottieAnimationView lottieAnimationView = this.f17127g;
        l.d(lottieAnimationView, "feedbackThanksAnimationView");
        C12864a2.m22579O(lottieAnimationView, new C5016c());
        View view = this.f17134n;
        C5017d c5017d = new C5017d();
        if (view.isAttachedToWindow()) {
            c5017d.invoke();
        } else {
            view.post(new RunnableC5018c(c5017d));
        }
    }
}
