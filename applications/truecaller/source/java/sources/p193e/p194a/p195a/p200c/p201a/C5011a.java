package p193e.p194a.p195a.p200c.p201a;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.insights.models.smartcards.FeedbackGivenState;
import com.truecaller.messaging.data.types.Message;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import s1.z.c.l;
/* renamed from: e.a.a.c.a.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/a.class */
public final class C5011a extends AbstractC5013b {

    /* renamed from: e.a.a.c.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/a/c/a/a$a.class */
    public static final class View$OnClickListenerC5012a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17117a;

        /* renamed from: b */
        public final /* synthetic */ Object f17118b;

        /* renamed from: c */
        public final /* synthetic */ Object f17119c;

        /* renamed from: d */
        public final /* synthetic */ Object f17120d;

        /* renamed from: e */
        public final /* synthetic */ Object f17121e;

        public View$OnClickListenerC5012a(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            this.f17117a = i;
            this.f17118b = obj;
            this.f17119c = obj2;
            this.f17120d = obj3;
            this.f17121e = obj4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17117a;
            boolean z = false;
            if (i == 0) {
                C5036k.AbstractC5037a abstractC5037a = (C5036k.AbstractC5037a) this.f17120d;
                if (abstractC5037a == null) {
                    return;
                }
                Message message = (Message) this.f17121e;
                CardFeedBackType cardFeedBackType = ((AbstractC10597h) this.f17118b).f31607a;
                boolean z2 = false;
                if (message.f13390k == 2) {
                    z2 = true;
                }
                abstractC5037a.mo32701fj(message, cardFeedBackType, z2);
            } else if (i == 1) {
                C5036k.AbstractC5037a abstractC5037a2 = (C5036k.AbstractC5037a) this.f17120d;
                if (abstractC5037a2 == null) {
                    return;
                }
                Message message2 = (Message) this.f17121e;
                CardFeedBackType cardFeedBackType2 = ((AbstractC10597h) this.f17118b).f31608b;
                boolean z3 = false;
                if (message2.f13390k == 2) {
                    z3 = true;
                }
                abstractC5037a2.mo32701fj(message2, cardFeedBackType2, z3);
            } else if (i != 2) {
                throw null;
            } else {
                C5036k.AbstractC5037a abstractC5037a3 = (C5036k.AbstractC5037a) this.f17120d;
                if (abstractC5037a3 == null) {
                    return;
                }
                Message message3 = (Message) this.f17121e;
                CardFeedBackType cardFeedBackType3 = ((AbstractC10597h) this.f17118b).f31609c;
                if (message3.f13390k == 2) {
                    z = true;
                }
                abstractC5037a3.mo32701fj(message3, cardFeedBackType3, z);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5011a(View view) {
        super(view);
        l.e(view, "itemView");
        AbstractC16444k2.f46188a.m17389a().mo11386g(this);
    }

    /* renamed from: f */
    public final void m34005f(C10329b c10329b, AbstractC10597h abstractC10597h, FeedbackGivenState feedbackGivenState, Message message, C5036k.AbstractC5037a abstractC5037a) {
        if (c10329b != null || feedbackGivenState != FeedbackGivenState.NOT_GIVEN) {
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
            textView.setOnClickListener(new View$OnClickListenerC5012a(0, abstractC10597h, this, abstractC5037a, message));
        }
        TextView textView2 = this.f17129i;
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC5012a(1, abstractC10597h, this, abstractC5037a, message));
        }
        ImageView imageView = this.f17130j;
        if (imageView == null) {
            return;
        }
        imageView.setOnClickListener(new View$OnClickListenerC5012a(2, abstractC10597h, this, abstractC5037a, message));
    }
}
