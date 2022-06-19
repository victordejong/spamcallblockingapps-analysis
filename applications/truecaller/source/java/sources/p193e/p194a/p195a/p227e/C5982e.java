package p193e.p194a.p195a.p227e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import e.m.a.g.e.d;
import java.util.Objects;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.e.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/e.class */
public final class C5982e extends d {

    /* renamed from: o */
    public final g f19912o = C19286f.m13661r(this, C2752R.C2754id.btnPrimary);

    /* renamed from: p */
    public final g f19913p = C19286f.m13661r(this, C2752R.C2754id.btnSecondary);

    /* renamed from: q */
    public final g f19914q;

    /* renamed from: r */
    public final g f19915r;

    /* renamed from: s */
    public final g f19916s;

    /* renamed from: t */
    public final g f19917t;

    /* renamed from: u */
    public final g f19918u;

    /* renamed from: v */
    public final g f19919v;

    /* renamed from: w */
    public final g f19920w;

    /* renamed from: x */
    public AbstractC6392i0 f19921x;

    /* renamed from: y */
    public C20592g f19922y;

    /* renamed from: e.a.a.e.e$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/e/e$a.class */
    public static final class View$OnClickListenerC5983a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f19923a;

        /* renamed from: b */
        public final /* synthetic */ Object f19924b;

        public View$OnClickListenerC5983a(int i, Object obj) {
            this.f19923a = i;
            this.f19924b = obj;
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [e.a.a.e.e, n3.b.a.p] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f19923a;
            if (i == 0) {
                ((a) this.f19924b).invoke();
            } else if (i == 1) {
                ((a) this.f19924b).invoke();
            } else if (i != 2) {
                throw null;
            } else {
                ((C5982e) this.f19924b).dismiss();
            }
        }
    }

    /* renamed from: e.a.a.e.e$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/e$b.class */
    public static final class View$OnClickListenerC5984b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ a f19926b;

        public View$OnClickListenerC5984b(a aVar) {
            C5982e.this = r4;
            this.f19926b = aVar;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [e.a.a.e.e, n3.b.a.p] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f19926b.invoke();
            C5982e.this.dismiss();
        }
    }

    /* renamed from: e.a.a.e.e$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/e$c.class */
    public static final class DialogInterface$OnDismissListenerC5985c implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ a f19927a;

        public DialogInterface$OnDismissListenerC5985c(a aVar) {
            this.f19927a = aVar;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            this.f19927a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C5982e(Context context, int i, int i2, int i3, boolean z, a<s> aVar, a<s> aVar2, a<s> aVar3) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "dismissListener");
        l.e(aVar2, "shareListener");
        l.e(aVar3, "nextListener");
        g m13661r = C19286f.m13661r(this, C2752R.C2754id.txtOtp);
        this.f19914q = m13661r;
        g m13661r2 = C19286f.m13661r(this, C2752R.C2754id.txtOtpCount);
        this.f19915r = m13661r2;
        g m13661r3 = C19286f.m13661r(this, C2752R.C2754id.txtPromotional);
        this.f19916s = m13661r3;
        g m13661r4 = C19286f.m13661r(this, C2752R.C2754id.txtPromotionalCount);
        this.f19917t = m13661r4;
        g m13661r5 = C19286f.m13661r(this, C2752R.C2754id.txtSpam);
        this.f19918u = m13661r5;
        g m13661r6 = C19286f.m13661r(this, C2752R.C2754id.txtSpamCount);
        this.f19919v = m13661r6;
        g m13661r7 = C19286f.m13661r(this, C2752R.C2754id.groupPromotional);
        this.f19920w = m13661r7;
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC6392i0 mo12565S = ((AbstractC21187w1) applicationContext).mo10154s().mo12565S();
        l.d(mo12565S, "(context.applicationCont…).objectsGraph.settings()");
        this.f19921x = mo12565S;
        Context applicationContext2 = context.getApplicationContext();
        Objects.requireNonNull(applicationContext2, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        C20592g mo11648b = ((AbstractC21187w1) applicationContext2).mo10154s().mo11648b();
        l.d(mo11648b, "(context.applicationCont…sGraph.featuresRegistry()");
        this.f19922y = mo11648b;
        setContentView((int) C2752R.layout.bottom_sheet_inbox_cleaner_stats);
        TextView textView = (TextView) m13661r2.getValue();
        l.d(textView, "txtOtpCount");
        textView.setText(String.valueOf(i));
        TextView textView2 = (TextView) m13661r.getValue();
        l.d(textView2, "txtOtp");
        Resources resources = context.getResources();
        textView2.setText(resources != null ? resources.getQuantityString(C2752R.plurals.inbox_cleanup_all_time_stats_messages_otp, i3) : null);
        TextView textView3 = (TextView) m13661r4.getValue();
        l.d(textView3, "txtPromotionalCount");
        textView3.setText(String.valueOf(i2));
        TextView textView4 = (TextView) m13661r3.getValue();
        l.d(textView4, "txtPromotional");
        Resources resources2 = context.getResources();
        textView4.setText(resources2 != null ? resources2.getQuantityString(C2752R.plurals.inbox_cleanup_all_time_stats_messages_promotional, i2) : null);
        Group group = (Group) m13661r7.getValue();
        l.d(group, "groupPromotional");
        C19286f.m13683U(group, this.f19922y.m10969e0().isEnabled());
        TextView textView5 = (TextView) m13661r6.getValue();
        l.d(textView5, "txtSpamCount");
        textView5.setText(String.valueOf(i3));
        TextView textView6 = (TextView) m13661r5.getValue();
        l.d(textView6, "txtSpam");
        Resources resources3 = context.getResources();
        textView6.setText(resources3 != null ? resources3.getQuantityString(C2752R.plurals.inbox_cleanup_all_time_stats_messages_spam, i3) : null);
        if (z) {
            this.f19921x.mo31148S(new b());
            Button m32101g = m32101g();
            l.d(m32101g, "btnPrimary");
            Resources resources4 = context.getResources();
            m32101g.setText(resources4 != null ? resources4.getString(C2752R.string.StrNext) : null);
            m32101g().setOnClickListener(new View$OnClickListenerC5984b(aVar3));
            Button m32100h = m32100h();
            l.d(m32100h, "btnSecondary");
            Resources resources5 = context.getResources();
            m32100h.setText(resources5 != null ? resources5.getString(2131887926) : null);
            m32100h().setOnClickListener(new View$OnClickListenerC5983a(0, aVar2));
        } else {
            Button m32101g2 = m32101g();
            l.d(m32101g2, "btnPrimary");
            Resources resources6 = context.getResources();
            m32101g2.setText(resources6 != null ? resources6.getString(2131887926) : null);
            m32101g().setOnClickListener(new View$OnClickListenerC5983a(1, aVar2));
            Button m32100h2 = m32100h();
            l.d(m32100h2, "btnSecondary");
            Resources resources7 = context.getResources();
            m32100h2.setText(resources7 != null ? resources7.getString(2131887883) : null);
            m32100h().setOnClickListener(new View$OnClickListenerC5983a(2, this));
        }
        setOnDismissListener(new DialogInterface$OnDismissListenerC5985c(aVar));
    }

    /* renamed from: g */
    public final Button m32101g() {
        return (Button) this.f19912o.getValue();
    }

    /* renamed from: h */
    public final Button m32100h() {
        return (Button) this.f19913p.getValue();
    }
}
