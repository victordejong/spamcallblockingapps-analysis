package p193e.p194a.p1011l.p1017d.p1019b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.amazon.device.ads.MraidCloseCommand;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bI\u0010\"J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ-\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00102\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J)\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\"J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\"J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\"R%\u00100\u001a\n +*\u0004\u0018\u00010*0*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R*\u00108\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R%\u0010C\u001a\n +*\u0004\u0018\u00010*0*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010-\u001a\u0004\bB\u0010/R%\u0010H\u001a\n +*\u0004\u0018\u00010D0D8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010-\u001a\u0004\bF\u0010G¨\u0006J"}, d2 = {"Le/a/l/d/b/a;", "Le/m/a/g/e/e;", "Le/a/l/d/b/c;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onDestroyView", "()V", "", AnalyticsConstants.NAME, "setName", "(Ljava/lang/String;)V", "bo", MraidCloseCommand.NAME, "Km", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "f", "Ls1/g;", "getTitle", "()Landroid/widget/TextView;", "title", "Lkotlin/Function0;", "a", "Ls1/z/b/a;", "getShowDetailsAction", "()Ls1/z/b/a;", "setShowDetailsAction", "(Ls1/z/b/a;)V", "showDetailsAction", "Le/a/l/a2;", C22021b.f61237c, "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "d", "getNegativeButton", "negativeButton", "Lcom/google/android/material/button/MaterialButton;", "e", "getPositiveButton", "()Lcom/google/android/material/button/MaterialButton;", "positiveButton", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.d.b.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/d/b/a.class */
public final class C16841a extends e implements AbstractC16844c {

    /* renamed from: a */
    public a<s> f47221a;
    @Inject

    /* renamed from: b */
    public AbstractC16613a2 f47222b;
    @Inject

    /* renamed from: c */
    public C16846e f47223c;

    /* renamed from: d */
    public final g f47224d = C19286f.m13659t(this, 2131364900);

    /* renamed from: e */
    public final g f47225e = C19286f.m13659t(this, 2131365194);

    /* renamed from: f */
    public final g f47226f = C19286f.m13659t(this, 2131366469);

    /* renamed from: e.a.l.d.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/l/d/b/a$a.class */
    public static final class View$OnClickListenerC16842a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f47227a;

        /* renamed from: b */
        public final /* synthetic */ Object f47228b;

        public View$OnClickListenerC16842a(int i, Object obj) {
            this.f47227a = i;
            this.f47228b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f47227a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C16846e c16846e = ((C16841a) this.f47228b).f47223c;
                if (c16846e == null) {
                    l.l("presenter");
                    throw null;
                }
                AbstractC16844c abstractC16844c = (AbstractC16844c) c16846e.f57683a;
                if (abstractC16844c == null) {
                    return;
                }
                abstractC16844c.mo16930Km();
                return;
            }
            C16846e c16846e2 = ((C16841a) this.f47228b).f47223c;
            if (c16846e2 == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC16844c abstractC16844c2 = (AbstractC16844c) c16846e2.f57683a;
            if (abstractC16844c2 != null) {
                abstractC16844c2.mo16929bo();
            }
            AbstractC16844c abstractC16844c3 = (AbstractC16844c) c16846e2.f57683a;
            if (abstractC16844c3 == null) {
                return;
            }
            abstractC16844c3.close();
        }
    }

    @Override // p193e.p194a.p1011l.p1017d.p1019b.AbstractC16844c
    /* renamed from: Km */
    public void mo16930Km() {
        AbstractC16613a2 abstractC16613a2 = this.f47222b;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        Intent m26059J = C10480a.m26059J(abstractC16613a2, requireContext, PremiumLaunchContext.INCOGNITO_ON_DETAILS_VIEW, "premiumIncognitoMode", null, 8, null);
        m26059J.setFlags(0);
        startActivityForResult(m26059J, 0);
    }

    @Override // p193e.p194a.p1011l.p1017d.p1019b.AbstractC16844c
    /* renamed from: bo */
    public void mo16929bo() {
        a<s> aVar = this.f47221a;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    @Override // p193e.p194a.p1011l.p1017d.p1019b.AbstractC16844c
    public void close() {
        dismissAllowingStateLoss();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 0) {
            C16846e c16846e = this.f47223c;
            if (c16846e == null) {
                l.l("presenter");
                throw null;
            }
            if (c16846e.f47234c.mo16408H()) {
                c16846e.f47235d.mo11757f(true);
            }
            AbstractC16844c abstractC16844c = (AbstractC16844c) c16846e.f57683a;
            if (abstractC16844c != null) {
                abstractC16844c.mo16929bo();
            }
            AbstractC16844c abstractC16844c2 = (AbstractC16844c) c16846e.f57683a;
            if (abstractC16844c2 == null) {
                return;
            }
            abstractC16844c2.close();
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C16841a.super.onAttach(context);
        if (this.f47221a == null) {
            dismissAllowingStateLoss();
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        C16841a.super.onCancel(dialogInterface);
        a<s> aVar = this.f47221a;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    public void onCreate(Bundle bundle) {
        C16841a.super.onCreate(bundle);
        setStyle(2, 2131952216);
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString(AnalyticsConstants.NAME) : null;
        if (string == null) {
            string = "";
        }
        l.e(string, AnalyticsConstants.NAME);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC16613a2 mo12777C3 = mo10154s.mo12777C3();
        Objects.requireNonNull(mo12777C3, "Cannot return null from a non-@Nullable component method");
        this.f47222b = mo12777C3;
        Objects.requireNonNull(string, "Cannot return null from a non-@Nullable @Provides method");
        AbstractC17197v0 mo11643f = mo10154s.mo11643f();
        Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
        AbstractC19954i0 mo12604P1 = mo10154s.mo12604P1();
        Objects.requireNonNull(mo12604P1, "Cannot return null from a non-@Nullable component method");
        this.f47223c = new C16846e(string, mo11643f, mo12604P1);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.bottom_sheet_incognito_on_details_view, viewGroup, false);
    }

    public void onDestroyView() {
        C16841a.super.onDestroyView();
        C16846e c16846e = this.f47223c;
        if (c16846e != null) {
            c16846e.f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        ((TextView) this.f47224d.getValue()).setOnClickListener(new View$OnClickListenerC16842a(0, this));
        ((MaterialButton) this.f47225e.getValue()).setOnClickListener(new View$OnClickListenerC16842a(1, this));
        C16846e c16846e = this.f47223c;
        if (c16846e != null) {
            c16846e.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.p1017d.p1019b.AbstractC16844c
    public void setName(String str) {
        l.e(str, AnalyticsConstants.NAME);
        TextView textView = (TextView) this.f47226f.getValue();
        l.d(textView, "title");
        textView.setText(getString((int) C2752R.string.incognito_on_details_view_dialog_title, new Object[]{str}));
    }
}
