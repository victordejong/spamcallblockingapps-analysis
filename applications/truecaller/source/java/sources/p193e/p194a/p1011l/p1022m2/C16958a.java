package p193e.p194a.p1011l.p1022m2;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.premium.p173ui.subscription.buttons.SubscriptionButtonView;
import e.m.a.g.e.e;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b>\u0010?J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R%\u00103\u001a\n .*\u0004\u0018\u00010-0-8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R%\u00108\u001a\n .*\u0004\u0018\u000104048B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b6\u00107R%\u0010=\u001a\n .*\u0004\u0018\u000109098B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00100\u001a\u0004\b;\u0010<¨\u0006@"}, d2 = {"Le/a/l/m2/a;", "Le/m/a/g/e/e;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", AbstractC2405c.f7629a, "Ljava/lang/String;", "promptText", "Le/a/l/m2/b;", "a", "Le/a/l/m2/b;", "getBasicSubscriptionPurchaseListener", "()Le/a/l/m2/b;", "setBasicSubscriptionPurchaseListener", "(Le/a/l/m2/b;)V", "basicSubscriptionPurchaseListener", "", C22021b.f61237c, "I", "iconRes", "Le/a/l/n2/f;", "d", "Le/a/l/n2/f;", "subscription", "Le/a/l/v2/i/a/b;", "e", "Le/a/l/v2/i/a/b;", "subscriptionButton", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "h", "Ls1/g;", "getMessage", "()Landroid/widget/TextView;", "message", "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "f", "getBtnPositive", "()Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "btnPositive", "Landroid/widget/ImageView;", "g", "getIcon", "()Landroid/widget/ImageView;", RemoteMessageConst.Notification.ICON, "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.m2.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/m2/a.class */
public final class C16958a extends e {

    /* renamed from: a */
    public AbstractC16960b f47572a;

    /* renamed from: b */
    public int f47573b;

    /* renamed from: c */
    public String f47574c;

    /* renamed from: d */
    public C16993f f47575d;

    /* renamed from: e */
    public C17280b f47576e;

    /* renamed from: f */
    public final g f47577f = C19286f.m13659t(this, C2752R.C2754id.btn_positive);

    /* renamed from: g */
    public final g f47578g = C19286f.m13659t(this, 2131364203);

    /* renamed from: h */
    public final g f47579h = C19286f.m13659t(this, 2131364785);

    /* renamed from: e.a.l.m2.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/m2/a$a.class */
    public static final class C16959a extends m implements l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16959a() {
            super(1);
            C16958a.this = r4;
        }

        /* renamed from: d */
        public Object m16729d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C16958a c16958a = C16958a.this;
            AbstractC16960b abstractC16960b = c16958a.f47572a;
            if (abstractC16960b != null) {
                C16993f c16993f = c16958a.f47575d;
                if (c16993f == null) {
                    s1.z.c.l.l("subscription");
                    throw null;
                }
                abstractC16960b.mo16728Yg(c16993f);
            }
            return s.a;
        }
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C16958a.super.onAttach(context);
        if (this.f47572a == null) {
            dismissAllowingStateLoss();
            AssertionUtil.reportThrowableButNeverCrash(new IllegalStateException("Purchase listener is not attached"));
        }
    }

    public void onCreate(Bundle bundle) {
        C16958a.super.onCreate(bundle);
        setStyle(2, 2131952216);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f47573b = arguments.getInt("iconRes");
            String string = arguments.getString("promptText");
            if (string == null) {
                string = "";
            }
            this.f47574c = string;
            Serializable serializable = arguments.getSerializable("subscription");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.truecaller.premium.billing.Subscription");
            this.f47575d = (C16993f) serializable;
            Serializable serializable2 = arguments.getSerializable("subscriptionButton");
            Objects.requireNonNull(serializable2, "null cannot be cast to non-null type com.truecaller.premium.ui.subscription.buttons.SubscriptionButton");
            this.f47576e = (C17280b) serializable2;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.dialog_basic_subs_purchase_prompt, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        ((ImageView) this.f47578g.getValue()).setImageResource(this.f47573b);
        TextView textView = (TextView) this.f47579h.getValue();
        s1.z.c.l.d(textView, "message");
        String str = this.f47574c;
        if (str == null) {
            s1.z.c.l.l("promptText");
            throw null;
        }
        textView.setText(str);
        SubscriptionButtonView subscriptionButtonView = (SubscriptionButtonView) this.f47577f.getValue();
        C17280b c17280b = this.f47576e;
        if (c17280b == null) {
            s1.z.c.l.l("subscriptionButton");
            throw null;
        }
        subscriptionButtonView.setButton(c17280b);
        SubscriptionButtonView subscriptionButtonView2 = (SubscriptionButtonView) this.f47577f.getValue();
        s1.z.c.l.d(subscriptionButtonView2, "btnPositive");
        C18334g0.m15196w0(subscriptionButtonView2, 300L, new C16959a());
    }
}
