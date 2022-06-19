package p193e.p194a.p1195s.p1201n.p1203b;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1199l.C20025b;
import p193e.p194a.p1195s.p1201n.p1203b.p1204g.C20084d;
import s1.a.l;
import s1.z.c.d0;
import s1.z.c.m;
import s1.z.c.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b-\u0010\u001dJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001d\u0010,\u001a\u00020'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u0006."}, d2 = {"Le/a/s/n/b/a;", "Landroidx/fragment/app/Fragment;", "Le/a/s/n/b/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/view/Menu;", "menu", "onPrepareOptionsMenu", "(Landroid/view/Menu;)V", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "isChecked", "Ry", "(Z)V", "ju", "D9", "Vx", "()V", "onDestroyView", "Le/a/s/n/b/b;", C22021b.f61237c, "Le/a/s/n/b/b;", "PA", "()Le/a/s/n/b/b;", "setPresenter", "(Le/a/s/n/b/b;)V", "presenter", "Le/a/s/l/b;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/s/l/b;", "binding", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.n.b.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/a.class */
public final class C20065a extends Fragment implements AbstractC20073c {

    /* renamed from: c */
    public static final /* synthetic */ l[] f56645c = {d0.d(new w(C20065a.class, "binding", "getBinding()Lcom/truecaller/callhero_assistant/databinding/FragmentCallAssistantSettingsBinding;", 0))};

    /* renamed from: a */
    public final ViewBindingProperty f56646a = new C19350a(new C20066a());
    @Inject

    /* renamed from: b */
    public AbstractC20072b f56647b;

    /* renamed from: e.a.s.n.b.a$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/a$a.class */
    public static final class C20066a extends m implements s1.z.b.l<C20065a, C20025b> {
        public C20066a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11589d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2114060310;
            LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C3605R.C3606id.settingsAssistantVoiceContainer);
            if (linearLayout != null) {
                i = 2114060311;
                TextView textView = (TextView) requireView.findViewById(C3605R.C3606id.settingsAssistantVoiceTitle);
                if (textView != null) {
                    i = 2114060312;
                    LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(C3605R.C3606id.settingsBlockNumbersNotInPhonebookContainer);
                    if (linearLayout2 != null) {
                        i = 2114060313;
                        SwitchCompat switchCompat = (SwitchCompat) requireView.findViewById(C3605R.C3606id.settingsBlockNumbersNotInPhonebookSwitch);
                        if (switchCompat != null) {
                            i = 2114060314;
                            LinearLayout linearLayout3 = (LinearLayout) requireView.findViewById(C3605R.C3606id.settingsBlockSpammerContainer);
                            if (linearLayout3 != null) {
                                i = 2114060320;
                                SwitchCompat switchCompat2 = (SwitchCompat) requireView.findViewById(C3605R.C3606id.settings_block_top_spammer_switch);
                                if (switchCompat2 != null) {
                                    i = 2114060315;
                                    LinearLayout linearLayout4 = (LinearLayout) requireView.findViewById(C3605R.C3606id.settingsForwardRulesContainer);
                                    if (linearLayout4 != null) {
                                        i = 2114060316;
                                        TextView textView2 = (TextView) requireView.findViewById(C3605R.C3606id.settingsForwardRulesTitle);
                                        if (textView2 != null) {
                                            i = 2114060317;
                                            CardView cardView = (CardView) requireView.findViewById(C3605R.C3606id.settingsMessagingUrgentMessagesSection);
                                            if (cardView != null) {
                                                i = 2114060318;
                                                LinearLayout linearLayout5 = (LinearLayout) requireView.findViewById(C3605R.C3606id.settingsScreenBlockListContactContainer);
                                                if (linearLayout5 != null) {
                                                    i = 2114060319;
                                                    SwitchCompat switchCompat3 = (SwitchCompat) requireView.findViewById(C3605R.C3606id.settingsScreenBlockListContactSwitch);
                                                    if (switchCompat3 != null) {
                                                        return new C20025b((FrameLayout) requireView, linearLayout, textView, linearLayout2, switchCompat, linearLayout3, switchCompat2, linearLayout4, textView2, cardView, linearLayout5, switchCompat3);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.s.n.b.a$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/a$b.class */
    public static final class View$OnClickListenerC20067b implements View.OnClickListener {
        public View$OnClickListenerC20067b() {
            C20065a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20065a.this.m11590PA().mo11579cg();
        }
    }

    /* renamed from: e.a.s.n.b.a$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/a$c.class */
    public static final class View$OnClickListenerC20068c implements View.OnClickListener {
        public View$OnClickListenerC20068c() {
            C20065a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20065a.this.m11590PA().mo11577k7();
        }
    }

    /* renamed from: e.a.s.n.b.a$d */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/a$d.class */
    public static final class C20069d implements CompoundButton.OnCheckedChangeListener {
        public C20069d() {
            C20065a.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C20065a.this.m11590PA().mo11580W2(z);
        }
    }

    /* renamed from: e.a.s.n.b.a$e */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/a$e.class */
    public static final class C20070e implements CompoundButton.OnCheckedChangeListener {
        public C20070e() {
            C20065a.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C20065a.this.m11590PA().mo11581Eb(z);
        }
    }

    /* renamed from: e.a.s.n.b.a$f */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/a$f.class */
    public static final class C20071f implements CompoundButton.OnCheckedChangeListener {
        public C20071f() {
            C20065a.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C20065a.this.m11590PA().mo11578j9(z);
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20073c
    /* renamed from: D9 */
    public void mo11588D9(boolean z) {
        SwitchCompat switchCompat = m11591OA().f56582c;
        s1.z.c.l.d(switchCompat, "binding.settingsBlockNumbersNotInPhonebookSwitch");
        switchCompat.setChecked(z);
    }

    /* renamed from: OA */
    public final C20025b m11591OA() {
        return (C20025b) this.f56646a.m34468b(this, f56645c[0]);
    }

    /* renamed from: PA */
    public final AbstractC20072b m11590PA() {
        AbstractC20072b abstractC20072b = this.f56647b;
        if (abstractC20072b != null) {
            return abstractC20072b;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20073c
    /* renamed from: Ry */
    public void mo11587Ry(boolean z) {
        SwitchCompat switchCompat = m11591OA().f56583d;
        s1.z.c.l.d(switchCompat, "binding.settingsBlockTopSpammerSwitch");
        switchCompat.setChecked(z);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20073c
    /* renamed from: Vx */
    public void mo11586Vx() {
        FragmentManager parentFragmentManager = getParentFragmentManager();
        s1.z.c.l.d(parentFragmentManager, "parentFragmentManager");
        C26907a c26907a = new C26907a(parentFragmentManager);
        s1.z.c.l.d(c26907a, "beginTransaction()");
        c26907a.m1120m(C3605R.C3606id.fragmentContainer, new C20084d(), null);
        c26907a.f75332p = true;
        c26907a.m1128e(null);
        c26907a.mo1127f();
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20073c
    /* renamed from: ju */
    public void mo11585ju(boolean z) {
        SwitchCompat switchCompat = m11591OA().f56585f;
        s1.z.c.l.d(switchCompat, "binding.settingsScreenBlockListContactSwitch");
        switchCompat.setChecked(z);
    }

    public void onCreate(Bundle bundle) {
        C20065a.super.onCreate(bundle);
        setHasOptionsMenu(true);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(requireContext, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        this.f56647b = (AbstractC20072b) new C20076f(abstractC20009b, null).f56667d.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3605R.layout.fragment_call_assistant_settings, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC20072b abstractC20072b = this.f56647b;
        if (abstractC20072b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20072b.mo9806c();
        C20065a.super.onDestroyView();
    }

    public void onPrepareOptionsMenu(Menu menu) {
        s1.z.c.l.e(menu, "menu");
        C20065a.super.onPrepareOptionsMenu(menu);
        menu.clear();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20065a.super.onViewCreated(view, bundle);
        requireActivity().setTitle(C3605R.string.CallAssistantScreeningSettings);
        C20025b m11591OA = m11591OA();
        m11591OA.f56584e.setOnClickListener(new View$OnClickListenerC20067b());
        m11591OA.f56581b.setOnClickListener(new View$OnClickListenerC20068c());
        m11591OA.f56583d.setOnCheckedChangeListener(new C20069d());
        m11591OA.f56585f.setOnCheckedChangeListener(new C20070e());
        m11591OA.f56582c.setOnCheckedChangeListener(new C20071f());
        AbstractC20072b abstractC20072b = this.f56647b;
        if (abstractC20072b != null) {
            abstractC20072b.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }
}
