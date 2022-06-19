package p193e.p194a.p1011l.p1024o2;

import android.content.Context;
import android.content.DialogInterface;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bE\u0010FJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0017\u0010\u0018R%\u0010\u001f\u001a\n \u001a*\u0004\u0018\u00010\u00190\u00198B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR%\u0010$\u001a\n \u001a*\u0004\u0018\u00010 0 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R%\u0010+\u001a\n \u001a*\u0004\u0018\u00010 0 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u001c\u001a\u0004\b*\u0010#R$\u00103\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R%\u0010@\u001a\n \u001a*\u0004\u0018\u00010<0<8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010\u001c\u001a\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006G"}, d2 = {"Le/a/l/o2/a;", "Le/m/a/g/e/e;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "kotlin.jvm.PlatformType", "f", "Ls1/g;", "OA", "()Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "btnPositive", "Landroid/widget/TextView;", "h", "getMessage", "()Landroid/widget/TextView;", "message", "", AbstractC2405c.f7629a, "Ljava/lang/String;", "promptText", "i", "getFreeTrialLabel", "freeTrialLabel", "Le/a/l/o2/b;", "a", "Le/a/l/o2/b;", "getConsumablePurchaseListener", "()Le/a/l/o2/b;", "setConsumablePurchaseListener", "(Le/a/l/o2/b;)V", "consumablePurchaseListener", "Le/a/l/n2/f;", "d", "Le/a/l/n2/f;", "subscription", "", C22021b.f61237c, "I", "iconRes", "Landroid/widget/ImageView;", "g", "getIcon", "()Landroid/widget/ImageView;", RemoteMessageConst.Notification.ICON, "Le/a/l/v2/i/a/b;", "e", "Le/a/l/v2/i/a/b;", "subscriptionButton", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.o2.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/o2/a.class */
public final class C17010a extends e {

    /* renamed from: a */
    public AbstractC17012b f47716a;

    /* renamed from: b */
    public int f47717b;

    /* renamed from: c */
    public String f47718c;

    /* renamed from: d */
    public C16993f f47719d;

    /* renamed from: e */
    public C17280b f47720e;

    /* renamed from: f */
    public final g f47721f = C19286f.m13659t(this, C2752R.C2754id.btn_positive);

    /* renamed from: g */
    public final g f47722g = C19286f.m13659t(this, 2131364203);

    /* renamed from: h */
    public final g f47723h = C19286f.m13659t(this, 2131364785);

    /* renamed from: i */
    public final g f47724i = C19286f.m13659t(this, 2131363823);

    /* renamed from: e.a.l.o2.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/o2/a$a.class */
    public static final class C17011a extends m implements l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17011a() {
            super(1);
            C17010a.this = r4;
        }

        /* renamed from: d */
        public Object m16642d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C17010a c17010a = C17010a.this;
            AbstractC17012b abstractC17012b = c17010a.f47716a;
            if (abstractC17012b != null) {
                C16993f c16993f = c17010a.f47719d;
                if (c16993f == null) {
                    s1.z.c.l.l("subscription");
                    throw null;
                }
                abstractC17012b.mo16295kd(c16993f);
            }
            return s.a;
        }
    }

    /* renamed from: OA */
    public final SubscriptionButtonView m16643OA() {
        return (SubscriptionButtonView) this.f47721f.getValue();
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C17010a.super.onAttach(context);
        if (this.f47716a == null) {
            dismissAllowingStateLoss();
        }
    }

    public void onCreate(Bundle bundle) {
        C17010a.super.onCreate(bundle);
        setStyle(2, 2131952216);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f47717b = arguments.getInt("iconRes");
            String string = arguments.getString("promptText");
            if (string == null) {
                string = "";
            }
            this.f47718c = string;
            Serializable serializable = arguments.getSerializable("subscription");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.truecaller.premium.billing.Subscription");
            this.f47719d = (C16993f) serializable;
            Serializable serializable2 = arguments.getSerializable("subscriptionButton");
            Objects.requireNonNull(serializable2, "null cannot be cast to non-null type com.truecaller.premium.ui.subscription.buttons.SubscriptionButton");
            this.f47720e = (C17280b) serializable2;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.dialog_single_time_purchase_prompt, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C17010a.super.onDismiss(dialogInterface);
        AbstractC17012b abstractC17012b = this.f47716a;
        if (abstractC17012b != null) {
            abstractC17012b.mo16298Th();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        ((ImageView) this.f47722g.getValue()).setImageResource(this.f47717b);
        TextView textView = (TextView) this.f47723h.getValue();
        s1.z.c.l.d(textView, "message");
        String str = this.f47718c;
        if (str == null) {
            s1.z.c.l.l("promptText");
            throw null;
        }
        textView.setText(str);
        ((TextView) this.f47724i.getValue()).setText(C2752R.string.PremiumConsumablePromptNoFreeTrial);
        m16643OA().setShineLifecycleOwner(this);
        SubscriptionButtonView m16643OA = m16643OA();
        C17280b c17280b = this.f47720e;
        if (c17280b == null) {
            s1.z.c.l.l("subscriptionButton");
            throw null;
        }
        m16643OA.setButton(c17280b);
        SubscriptionButtonView m16643OA2 = m16643OA();
        s1.z.c.l.d(m16643OA2, "btnPositive");
        C18334g0.m15196w0(m16643OA2, 300L, new C17011a());
    }
}
