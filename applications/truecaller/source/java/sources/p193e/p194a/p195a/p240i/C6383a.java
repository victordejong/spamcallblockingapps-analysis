package p193e.p194a.p195a.p240i;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.insights.p168ui.C4078R;
import e.m.d.y.n;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p438a.p477g.C9060p0;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.a.i.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/i/a.class */
public final class C6383a extends RecyclerView.AbstractC0313c0 implements AbstractC6388d {

    /* renamed from: d */
    public static final /* synthetic */ l[] f21272d = {C22128a.m8621g0(C6383a.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/ItemOtpCardBinding;", 0)};

    /* renamed from: a */
    public final C19351b f21273a = new C19351b(new C6385b());

    /* renamed from: b */
    public C8243a f21274b;

    /* renamed from: c */
    public final View f21275c;

    /* renamed from: e.a.a.i.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/i/a$a.class */
    public static final class View$OnClickListenerC6384a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f21276a;

        /* renamed from: b */
        public final /* synthetic */ Object f21277b;

        /* renamed from: c */
        public final /* synthetic */ Object f21278c;

        public View$OnClickListenerC6384a(int i, Object obj, Object obj2) {
            this.f21276a = i;
            this.f21277b = obj;
            this.f21278c = obj2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f21276a;
            if (i == 0) {
                AbstractC18905m abstractC18905m = (AbstractC18905m) this.f21278c;
                C6383a c6383a = (C6383a) this.f21277b;
                abstractC18905m.mo14327t(new C18900h("ItemEvent.ACTION_COPY_OTP", c6383a, c6383a.f21275c, (Object) null, 8));
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC18905m abstractC18905m2 = (AbstractC18905m) this.f21278c;
                C6383a c6383a2 = (C6383a) this.f21277b;
                abstractC18905m2.mo14327t(new C18900h("ItemEvent.ACTION_DISMISS_OTP", c6383a2, c6383a2.f21275c, (Object) null, 8));
            }
        }
    }

    /* renamed from: e.a.a.i.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/i/a$b.class */
    public static final class C6385b extends m implements s1.z.b.l<C6383a, C9060p0> {
        public C6385b() {
            super(1);
        }

        /* renamed from: d */
        public Object m31362d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            MaterialCardView materialCardView = abstractC0313c0.itemView;
            s1.z.c.l.d(materialCardView, "viewHolder.itemView");
            int i = C4078R.C4080id.copyButton;
            MaterialButton findViewById = materialCardView.findViewById(i);
            if (findViewById != null) {
                i = C4078R.C4080id.dismissButton;
                MaterialButton findViewById2 = materialCardView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4078R.C4080id.main;
                    ConstraintLayout constraintLayout = (ConstraintLayout) materialCardView.findViewById(i);
                    if (constraintLayout != null) {
                        i = C4078R.C4080id.otpLabel;
                        TextView textView = (TextView) materialCardView.findViewById(i);
                        if (textView != null) {
                            i = C4078R.C4080id.otpNumber;
                            TextView textView2 = (TextView) materialCardView.findViewById(i);
                            if (textView2 != null) {
                                i = C4078R.C4080id.senderIcon;
                                AvatarXView avatarXView = (AvatarXView) materialCardView.findViewById(i);
                                if (avatarXView != null) {
                                    i = C4078R.C4080id.senderText;
                                    TextView textView3 = (TextView) materialCardView.findViewById(i);
                                    if (textView3 != null) {
                                        return new C9060p0(materialCardView, findViewById, findViewById2, constraintLayout, textView, textView2, avatarXView, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(materialCardView.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6383a(View view, AbstractC18905m abstractC18905m) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC18905m, "eventReceiver");
        this.f21275c = view;
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        m31363N4().f27604e.setPresenter(c8243a);
        this.f21274b = c8243a;
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        C9060p0 m31363N4 = m31363N4();
        m31363N4.f27600a.setOnClickListener(new View$OnClickListenerC6384a(0, this, abstractC18905m));
        m31363N4.f27601b.setOnClickListener(new View$OnClickListenerC6384a(1, this, abstractC18905m));
    }

    /* renamed from: N4 */
    public final C9060p0 m31363N4() {
        return (C9060p0) this.f21273a.m13418a(this, f21272d[0]);
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d
    /* renamed from: T2 */
    public void mo31359T2(boolean z) {
        int i;
        Context context;
        MaterialButton materialButton = m31363N4().f27600a;
        s1.z.c.l.d(materialButton, "binding.copyButton");
        C19286f.m13683U(materialButton, !z);
        TextView textView = m31363N4().f27602c;
        s1.z.c.l.d(textView, "binding.otpLabel");
        if (z) {
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            context = view.getContext();
            i = 2131888678;
        } else {
            View view2 = this.itemView;
            s1.z.c.l.d(view2, "itemView");
            context = view2.getContext();
            i = 2131889489;
        }
        textView.setText(context.getText(i));
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d
    /* renamed from: W1 */
    public void mo31358W1(String str) {
        s1.z.c.l.e(str, "text");
        TextView textView = m31363N4().f27603d;
        s1.z.c.l.d(textView, "binding.otpNumber");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d
    /* renamed from: X1 */
    public void mo31357X1(String str) {
        s1.z.c.l.e(str, "text");
        TextView textView = m31363N4().f27605f;
        s1.z.c.l.d(textView, "binding.senderText");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d
    /* renamed from: a */
    public void mo31356a(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f21274b, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d
    /* renamed from: m3 */
    public void mo31355m3(boolean z) {
        this.f21274b.m28738pk(z);
    }
}
