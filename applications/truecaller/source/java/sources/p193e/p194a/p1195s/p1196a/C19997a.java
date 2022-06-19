package p193e.p194a.p1195s.p1196a;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.button.MaterialButton;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18192w;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b%\u0010\u0011J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001d\u0010$\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Le/a/s/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/s/a/c;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "fb", "()V", "onDestroyView", "", "videoLink", "Pz", "(Ljava/lang/String;)V", "Le/a/s/a/d;", "f", "Le/a/s/a/d;", "QA", "()Le/a/s/a/d;", "setPresenter", "(Le/a/s/a/d;)V", "presenter", "Le/a/m3/w;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/m3/w;", "binding", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.a.a */
/* loaded from: classes6-dex2jar.jar:e/a/s/a/a.class */
public final class C19997a extends AbstractC20008f implements AbstractC20001c {

    /* renamed from: g */
    public static final /* synthetic */ l[] f56520g = {C22128a.m8621g0(C19997a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentCallAssistantSubscribeBinding;", 0)};

    /* renamed from: e */
    public final ViewBindingProperty f56521e = new C19350a(new C19999b());
    @Inject

    /* renamed from: f */
    public C20002d f56522f;

    /* renamed from: e.a.s.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/s/a/a$a.class */
    public static final class View$OnClickListenerC19998a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f56523a;

        /* renamed from: b */
        public final /* synthetic */ Object f56524b;

        public View$OnClickListenerC19998a(int i, Object obj) {
            this.f56523a = i;
            this.f56524b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f56523a;
            boolean z = true;
            if (i != 0) {
                if (i == 1) {
                    C20002d m11678QA = ((C19997a) this.f56524b).m11678QA();
                    n3.r.a.l requireActivity = ((C19997a) this.f56524b).requireActivity();
                    s1.z.c.l.d(requireActivity, "requireActivity()");
                    m11678QA.m11673Ij(requireActivity);
                    return;
                } else if (i != 2) {
                    throw null;
                } else {
                    C20002d m11678QA2 = ((C19997a) this.f56524b).m11678QA();
                    n3.r.a.l requireActivity2 = ((C19997a) this.f56524b).requireActivity();
                    s1.z.c.l.d(requireActivity2, "requireActivity()");
                    m11678QA2.m11673Ij(requireActivity2);
                    return;
                }
            }
            C20002d m11678QA3 = ((C19997a) this.f56524b).m11678QA();
            C20592g c20592g = m11678QA3.f56529h;
            String mo10938g = ((AbstractC20597i) c20592g.f57965k6.m10941a(c20592g, C20592g.f57695p6[382])).mo10938g();
            if (mo10938g.length() != 0) {
                z = false;
            }
            if (z) {
                AssertionUtil.reportWeirdnessButNeverCrash("Truecaller Assistant introduction video link is empty");
                return;
            }
            AbstractC20001c abstractC20001c = (AbstractC20001c) m11678QA3.f57683a;
            if (abstractC20001c == null) {
                return;
            }
            abstractC20001c.mo11675Pz(mo10938g);
        }
    }

    /* renamed from: e.a.s.a.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/s/a/a$b.class */
    public static final class C19999b extends m implements s1.z.b.l<C19997a, C18192w> {
        public C19999b() {
            super(1);
        }

        /* renamed from: d */
        public Object m11677d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362380;
            FrameLayout frameLayout = (FrameLayout) requireView.findViewById(C2752R.C2754id.bottom_sheet);
            if (frameLayout != null) {
                i = 2131362523;
                MaterialButton findViewById = requireView.findViewById(C2752R.C2754id.buttonUnlockPremium);
                if (findViewById != null) {
                    i = 2131362525;
                    MaterialButton findViewById2 = requireView.findViewById(C2752R.C2754id.buttonWatchVideo);
                    if (findViewById2 != null) {
                        i = 2131362592;
                        LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C2752R.C2754id.callAssistantWatchVideoContainer);
                        if (linearLayout != null) {
                            i = 2131362593;
                            TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.callAssistantWatchVideoTitle);
                            if (textView != null) {
                                i = 2131362621;
                                LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(C2752R.C2754id.callScreeningSettingSwitchContainer);
                                if (linearLayout2 != null) {
                                    i = 2131363001;
                                    LinearLayout linearLayout3 = (LinearLayout) requireView.findViewById(C2752R.C2754id.crispCallRecordingSettingSwitchContainer);
                                    if (linearLayout3 != null) {
                                        i = 2131364277;
                                        ImageView imageView = (ImageView) requireView.findViewById(2131364277);
                                        if (imageView != null) {
                                            i = 2131365200;
                                            LinearLayout linearLayout4 = (LinearLayout) requireView.findViewById(C2752R.C2754id.premiumAssistantOptionsContainer);
                                            if (linearLayout4 != null) {
                                                i = 2131365611;
                                                LinearLayout linearLayout5 = (LinearLayout) requireView.findViewById(C2752R.C2754id.secondNumberSettingSwitchContainer);
                                                if (linearLayout5 != null) {
                                                    return new C18192w((ConstraintLayout) requireView, frameLayout, findViewById, findViewById2, linearLayout, textView, linearLayout2, linearLayout3, imageView, linearLayout4, linearLayout5);
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

    @Override // p193e.p194a.p1195s.p1196a.AbstractC20001c
    /* renamed from: Pz */
    public void mo11675Pz(String str) {
        s1.z.c.l.e(str, "videoLink");
        C8613t.m28198n(requireContext(), C8613t.m28205g(str));
    }

    /* renamed from: QA */
    public final C20002d m11678QA() {
        C20002d c20002d = this.f56522f;
        if (c20002d != null) {
            return c20002d;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1195s.p1196a.AbstractC20001c
    /* renamed from: fb */
    public void mo11674fb() {
        startActivity(new Intent().setClassName(requireContext(), "com.truecaller.callhero_assistant.onboarding.AssistantOnboardingActivity"));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_call_assistant_subscribe, viewGroup, false);
    }

    public void onDestroyView() {
        C20002d c20002d = this.f56522f;
        if (c20002d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c20002d.mo9806c();
        C19997a.super.onDestroyView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C19997a.super.onViewCreated(view, bundle);
        C20002d c20002d = this.f56522f;
        if (c20002d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c20002d.f57683a = this;
        C18192w c18192w = (C18192w) this.f56521e.m34468b(this, f56520g[0]);
        c18192w.f51438c.setOnClickListener(new View$OnClickListenerC19998a(0, this));
        c18192w.f51439d.setOnClickListener(new View$OnClickListenerC19998a(1, this));
        c18192w.f51437b.setOnClickListener(new View$OnClickListenerC19998a(2, this));
    }
}
