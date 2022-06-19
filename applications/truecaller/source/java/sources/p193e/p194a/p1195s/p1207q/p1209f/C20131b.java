package p193e.p194a.p1195s.p1207q.p1209f;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.callhero_assistant.onboarding.OnboardingStep;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1199l.C20029f;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.m;
import s1.z.c.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��Q\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001(\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b2\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\rJ\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\rJ\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\rJ\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\rR\u001d\u0010\u001f\u001a\u00020\u001a8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001d\u00101\u001a\u00020,8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100¨\u00063"}, d2 = {"Le/a/s/q/f/b;", "Landroidx/fragment/app/Fragment;", "Le/a/s/q/f/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "visible", "Uk", "(Z)V", "", "text", "en", "(Ljava/lang/String;)V", "Td", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "qx", "xa", "Landroid/telephony/TelephonyManager;", AbstractC2405c.f7629a, "Ls1/g;", "getTelephonyManager", "()Landroid/telephony/TelephonyManager;", "telephonyManager", "Le/a/s/q/f/c;", "a", "Le/a/s/q/f/c;", "PA", "()Le/a/s/q/f/c;", "setPresenter", "(Le/a/s/q/f/c;)V", "presenter", "e/a/s/q/f/b$c", "d", "Le/a/s/q/f/b$c;", "phoneStateListener", "Le/a/s/l/f;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/s/l/f;", "binding", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.q.f.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/f/b.class */
public final class C20131b extends Fragment implements AbstractC20138d {

    /* renamed from: e */
    public static final /* synthetic */ l[] f56762e = {d0.d(new w(C20131b.class, "binding", "getBinding()Lcom/truecaller/callhero_assistant/databinding/FragmentOnboardingStepValidationBinding;", 0))};
    @Inject

    /* renamed from: a */
    public AbstractC20137c f56763a;

    /* renamed from: b */
    public final ViewBindingProperty f56764b = new C19350a(new C20132a());

    /* renamed from: c */
    public final g f56765c = C25225a.m3978P1(new C20136e());

    /* renamed from: d */
    public final C20134c f56766d = new C20134c();

    /* renamed from: e.a.s.q.f.b$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/f/b$a.class */
    public static final class C20132a extends m implements s1.z.b.l<C20131b, C20029f> {
        public C20132a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11505d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2114060304;
            TextView textView = (TextView) requireView.findViewById(C3605R.C3606id.messageText);
            if (textView != null) {
                i = 2114060322;
                TextView textView2 = (TextView) requireView.findViewById(C3605R.C3606id.timerText);
                if (textView2 != null) {
                    i = 2114060323;
                    TextView textView3 = (TextView) requireView.findViewById(C3605R.C3606id.titleText);
                    if (textView3 != null) {
                        i = 2114060326;
                        MaterialButton findViewById = requireView.findViewById(C3605R.C3606id.verifyButton);
                        if (findViewById != null) {
                            return new C20029f((ConstraintLayout) requireView, textView, textView2, textView3, findViewById);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.s.q.f.b$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/f/b$b.class */
    public static final class View$OnClickListenerC20133b implements View.OnClickListener {
        public View$OnClickListenerC20133b() {
            C20131b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20131b.this.m11506PA().mo11498Cd();
        }
    }

    /* renamed from: e.a.s.q.f.b$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/f/b$c.class */
    public static final class C20134c extends PhoneStateListener {
        public C20134c() {
            C20131b.this = r4;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            if (i == 1) {
                C20131b.this.m11506PA().mo11497T6();
            }
        }
    }

    /* renamed from: e.a.s.q.f.b$d */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/f/b$d.class */
    public static final class DialogInterface$OnDismissListenerC20135d implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC20135d() {
            C20131b.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            C20131b.this.m11506PA().mo11496r6();
        }
    }

    /* renamed from: e.a.s.q.f.b$e */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/f/b$e.class */
    public static final class C20136e extends m implements a<TelephonyManager> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20136e() {
            super(0);
            C20131b.this = r4;
        }

        public Object invoke() {
            Object systemService = C20131b.this.requireContext().getSystemService(AnalyticsConstants.PHONE);
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            return (TelephonyManager) systemService;
        }
    }

    public C20131b() {
        super((int) C3605R.layout.fragment_onboarding_step_validation);
    }

    /* renamed from: OA */
    public final C20029f m11507OA() {
        return (C20029f) this.f56764b.m34468b(this, f56762e[0]);
    }

    /* renamed from: PA */
    public final AbstractC20137c m11506PA() {
        AbstractC20137c abstractC20137c = this.f56763a;
        if (abstractC20137c != null) {
            return abstractC20137c;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20138d
    /* renamed from: T */
    public void mo11504T() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("step", OnboardingStep.VALIDATION);
        MediaSessionCompat.m43203r1(this, "step_completed", bundle);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20138d
    /* renamed from: Td */
    public void mo11503Td() {
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C3605R.string.CallAssistantOnboardingValidationSuccessTitle);
        g_a.m3664e(C3605R.string.CallAssistantOnboardingValidationSuccessMessage);
        g_a.m3660i(2131887893, null);
        g_a.f70854a.f165o = new DialogInterface$OnDismissListenerC20135d();
        g_a.m3652q();
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20138d
    /* renamed from: Uk */
    public void mo11502Uk(boolean z) {
        MaterialButton materialButton = m11507OA().f56594b;
        s1.z.c.l.d(materialButton, "binding.verifyButton");
        C19286f.m13683U(materialButton, z);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20138d
    /* renamed from: en */
    public void mo11501en(String str) {
        s1.z.c.l.e(str, "text");
        TextView textView = m11507OA().f56593a;
        s1.z.c.l.d(textView, "binding.timerText");
        textView.setText(str);
    }

    public void onCreate(Bundle bundle) {
        C20131b.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(requireContext, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        this.f56763a = (AbstractC20137c) new C20128a(abstractC20009b, null).f56760d.get();
    }

    public void onDestroyView() {
        AbstractC20137c abstractC20137c = this.f56763a;
        if (abstractC20137c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20137c.mo9806c();
        C20131b.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20131b.super.onViewCreated(view, bundle);
        AbstractC20137c abstractC20137c = this.f56763a;
        if (abstractC20137c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20137c.mo9029Y0(this);
        m11507OA().f56594b.setOnClickListener(new View$OnClickListenerC20133b());
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20138d
    /* renamed from: qx */
    public void mo11500qx() {
        ((TelephonyManager) this.f56765c.getValue()).listen(this.f56766d, 32);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1209f.AbstractC20138d
    /* renamed from: xa */
    public void mo11499xa() {
        ((TelephonyManager) this.f56765c.getValue()).listen(this.f56766d, 0);
    }
}
