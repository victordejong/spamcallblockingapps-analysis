package p193e.p194a.p195a.p227e;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.inboxcleanup.Mode;
import e.m.a.g.e.d;
import java.util.List;
import java.util.Objects;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.a.e.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/c.class */
public final class C5967c extends d {

    /* renamed from: o */
    public final g f19884o;

    /* renamed from: p */
    public final g f19885p;

    /* renamed from: q */
    public final g f19886q;

    /* renamed from: r */
    public final g f19887r = C19286f.m13661r(this, C2752R.C2754id.btnPreviewPromotional);

    /* renamed from: s */
    public final g f19888s;

    /* renamed from: t */
    public final g f19889t;

    /* renamed from: u */
    public final g f19890u;

    /* renamed from: v */
    public final g f19891v;

    /* renamed from: w */
    public final g f19892w;

    /* renamed from: x */
    public final g f19893x;

    /* renamed from: y */
    public C20592g f19894y;

    /* renamed from: e.a.a.e.c$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/e/c$a.class */
    public static final class View$OnClickListenerC5968a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f19895a;

        /* renamed from: b */
        public final /* synthetic */ Object f19896b;

        public View$OnClickListenerC5968a(int i, Object obj) {
            this.f19895a = i;
            this.f19896b = obj;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [n3.b.a.p, e.a.a.e.c] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f19895a;
            if (i == 0) {
                ((C5967c) this.f19896b).dismiss();
            } else if (i == 1) {
                ((AbstractC6017s) this.f19896b).mo32022a(Mode.OTP);
            } else if (i == 2) {
                ((AbstractC6017s) this.f19896b).mo32022a(Mode.PROMOTIONAL);
            } else if (i != 3) {
                throw null;
            } else {
                ((AbstractC6017s) this.f19896b).mo32022a(Mode.SPAM);
            }
        }
    }

    /* renamed from: e.a.a.e.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/c$b.class */
    public static final class View$OnClickListenerC5969b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6017s f19898b;

        public View$OnClickListenerC5969b(AbstractC6017s abstractC6017s) {
            C5967c.this = r4;
            this.f19898b = abstractC6017s;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [n3.b.a.p, e.a.a.e.c] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f19898b.mo32021r1();
            C5967c.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C5967c(Context context, List<Message> list, List<Message> list2, List<Message> list3, AbstractC6017s abstractC6017s) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "otpMessages");
        l.e(list2, "promotionalMessages");
        l.e(list3, "spamMessages");
        l.e(abstractC6017s, "listener");
        g m13661r = C19286f.m13661r(this, 2131362408);
        this.f19884o = m13661r;
        g m13661r2 = C19286f.m13661r(this, 2131362416);
        this.f19885p = m13661r2;
        g m13661r3 = C19286f.m13661r(this, C2752R.C2754id.btnPreviewOtp);
        this.f19886q = m13661r3;
        g m13661r4 = C19286f.m13661r(this, C2752R.C2754id.btnPreviewSpam);
        this.f19888s = m13661r4;
        g m13661r5 = C19286f.m13661r(this, C2752R.C2754id.textOtpSubTitle);
        this.f19889t = m13661r5;
        g m13661r6 = C19286f.m13661r(this, C2752R.C2754id.txtPromotionalTitle);
        this.f19890u = m13661r6;
        g m13661r7 = C19286f.m13661r(this, C2752R.C2754id.txtPromotionalSubtitle);
        this.f19891v = m13661r7;
        g m13661r8 = C19286f.m13661r(this, C2752R.C2754id.imgPromotional);
        this.f19892w = m13661r8;
        g m13661r9 = C19286f.m13661r(this, C2752R.C2754id.txtSpamSubtitle);
        this.f19893x = m13661r9;
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        C20592g mo11648b = ((AbstractC21187w1) applicationContext).mo10154s().mo11648b();
        l.d(mo11648b, "(context.applicationCont…sGraph.featuresRegistry()");
        this.f19894y = mo11648b;
        setContentView((int) C2752R.layout.bottom_sheet_inbox_cleaner);
        TextView textView = (TextView) m13661r5.getValue();
        l.d(textView, "textOtpSubTitle");
        Resources resources = context.getResources();
        l.d(resources, "context.resources");
        textView.setText(C10480a.m25916p(C10480a.m25946j(resources, C2752R.plurals.inbox_cleanup_confirm_messages_num, C2752R.string.inbox_cleanup_confirm_messages_num_zero, list.size()), list, context));
        TextView textView2 = (TextView) m13661r7.getValue();
        l.d(textView2, "textPromotionalSubTitle");
        Resources resources2 = context.getResources();
        l.d(resources2, "context.resources");
        textView2.setText(C10480a.m25916p(C10480a.m25946j(resources2, C2752R.plurals.inbox_cleanup_confirm_messages_num, C2752R.string.inbox_cleanup_confirm_messages_num_zero, list2.size()), list2, context));
        TextView textView3 = (TextView) m13661r9.getValue();
        l.d(textView3, "txtSpamSubtitle");
        Resources resources3 = context.getResources();
        l.d(resources3, "context.resources");
        textView3.setText(C10480a.m25916p(C10480a.m25946j(resources3, C2752R.plurals.inbox_cleanup_confirm_messages_num, C2752R.string.inbox_cleanup_confirm_messages_num_zero, list3.size()), list3, context));
        boolean isEnabled = this.f19894y.m10969e0().isEnabled();
        ImageView imageView = (ImageView) m13661r8.getValue();
        l.d(imageView, "imgPromotional");
        C19286f.m13683U(imageView, isEnabled);
        TextView textView4 = (TextView) m13661r6.getValue();
        l.d(textView4, "textPromotionalTitle");
        C19286f.m13683U(textView4, isEnabled);
        TextView textView5 = (TextView) m13661r7.getValue();
        l.d(textView5, "textPromotionalSubTitle");
        C19286f.m13683U(textView5, isEnabled);
        View m32108g = m32108g();
        l.d(m32108g, "btnPreviewPromotional");
        C19286f.m13683U(m32108g, isEnabled);
        View view = (View) m13661r3.getValue();
        l.d(view, "btnPreviewOtp");
        C19286f.m13683U(view, !list.isEmpty());
        View m32108g2 = m32108g();
        l.d(m32108g2, "btnPreviewPromotional");
        C19286f.m13683U(m32108g2, !list2.isEmpty());
        View view2 = (View) m13661r4.getValue();
        l.d(view2, "btnPreviewSpam");
        C19286f.m13683U(view2, !list3.isEmpty());
        ((View) m13661r.getValue()).setOnClickListener(new View$OnClickListenerC5968a(0, this));
        ((View) m13661r2.getValue()).setOnClickListener(new View$OnClickListenerC5969b(abstractC6017s));
        ((View) m13661r3.getValue()).setOnClickListener(new View$OnClickListenerC5968a(1, abstractC6017s));
        m32108g().setOnClickListener(new View$OnClickListenerC5968a(2, abstractC6017s));
        ((View) m13661r4.getValue()).setOnClickListener(new View$OnClickListenerC5968a(3, abstractC6017s));
    }

    /* renamed from: g */
    public final View m32108g() {
        return (View) this.f19887r.getValue();
    }
}
