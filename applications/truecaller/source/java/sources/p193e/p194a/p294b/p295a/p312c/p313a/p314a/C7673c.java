package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7737j;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7738k;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8097q0;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b>\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J+\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001c\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0013J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0013J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J-\u0010'\u001a\u00020\u00052\b\u0010$\u001a\u0004\u0018\u00010\u00172\b\u0010%\u001a\u0004\u0018\u00010\u00172\b\u0010&\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0013J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u0017H\u0016¢\u0006\u0004\b/\u0010\u001aJ\u000f\u00100\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u0010\u0013J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0013R\"\u00109\u001a\u0002028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006?"}, d2 = {"Le/a/b/a/c/a/a/c;", "Le/a/b/a/c/a/a/d;", "Le/a/b/a/c/a/k;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "pt", "()Z", "", "errorString", "zu", "(Ljava/lang/String;)V", "r7", "Y8", "Gb", "a0", "b0", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "businessProfile", "b4", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V", "pincode", "city", "state", "Ql", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "ie", "Le/a/b/a/f/a;", "businessAPIResult", "G2", "(Le/a/b/a/f/a;)V", "error", "M", "km", "e9", "Le/a/b/a/c/a/j;", C22021b.f61237c, "Le/a/b/a/c/a/j;", "getPresenter", "()Le/a/b/a/c/a/j;", "setPresenter", "(Le/a/b/a/c/a/j;)V", "presenter", "Le/a/b/m/q0;", AbstractC2405c.f7629a, "Le/a/b/m/q0;", "binding", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/c.class */
public final class C7673c extends AbstractC7675d<AbstractC7738k> implements AbstractC7738k {
    @Inject

    /* renamed from: b */
    public AbstractC7737j f24056b;

    /* renamed from: c */
    public C8097q0 f24057c;

    /* renamed from: e.a.b.a.c.a.a.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/c$a.class */
    public static final class C7674a extends m implements l<Editable, s> {

        /* renamed from: b */
        public final /* synthetic */ int f24058b;

        /* renamed from: c */
        public final /* synthetic */ Object f24059c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7674a(int i, Object obj) {
            super(1);
            this.f24058b = i;
            this.f24059c = obj;
        }

        /* renamed from: d */
        public final Object m29453d(Object obj) {
            s sVar = s.a;
            int i = this.f24058b;
            if (i == 0) {
                Editable editable = (Editable) obj;
                TextInputLayout textInputLayout = ((C8097q0) this.f24059c).f25077j;
                s1.z.c.l.d(textInputLayout, "tilStreet");
                textInputLayout.setErrorEnabled(false);
                return sVar;
            } else if (i == 1) {
                Editable editable2 = (Editable) obj;
                TextInputLayout textInputLayout2 = ((C8097q0) this.f24059c).f25074g;
                s1.z.c.l.d(textInputLayout2, "tilCity");
                textInputLayout2.setErrorEnabled(false);
                return sVar;
            } else if (i != 2) {
                throw null;
            } else {
                Editable editable3 = (Editable) obj;
                TextInputLayout textInputLayout3 = ((C8097q0) this.f24059c).f25076i;
                s1.z.c.l.d(textInputLayout3, "tilState");
                textInputLayout3.setErrorEnabled(false);
                return sVar;
            }
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: G2 */
    public void mo29336G2(AbstractC7780a abstractC7780a) {
        s1.z.c.l.e(abstractC7780a, "businessAPIResult");
        AbstractC7737j abstractC7737j = this.f24056b;
        if (abstractC7737j != null) {
            abstractC7737j.mo29342G2(abstractC7780a);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: Gb */
    public void mo29335Gb() {
        AbstractC7737j abstractC7737j = this.f24056b;
        if (!(abstractC7737j != null)) {
            return;
        }
        if (abstractC7737j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7737j.mo29339d4();
        C8097q0 c8097q0 = this.f24057c;
        if (c8097q0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8097q0.f25073f;
        s1.z.c.l.d(textInputEditText, "binding.etStreet");
        C19286f.m13679Y(textInputEditText, false, 0L, 3);
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        AbstractC7748u abstractC7748u = requireActivity;
        abstractC7748u.mo29324B7(false);
        abstractC7748u.mo29315u5(C3478R.string.BusinessProfile_Finish);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: M */
    public void mo29334M(String str) {
        s1.z.c.l.e(str, "error");
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        C19291g.m13589S1(requireActivity, 0, str, 0, 5);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7738k
    /* renamed from: Ql */
    public void mo29358Ql(String str, String str2, String str3) {
        C8097q0 c8097q0 = this.f24057c;
        if (c8097q0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8097q0.f25071d;
        textInputEditText.setText(str);
        textInputEditText.setFocusable(false);
        textInputEditText.setClickable(false);
        TextInputLayout textInputLayout = c8097q0.f25075h;
        s1.z.c.l.d(textInputLayout, "tilPincode");
        textInputLayout.setEndIconVisible(false);
        TextInputEditText textInputEditText2 = c8097q0.f25069b;
        textInputEditText2.setText(str2);
        textInputEditText2.setFocusable(str2 == null);
        textInputEditText2.setClickable(str2 == null);
        TextInputEditText textInputEditText3 = c8097q0.f25072e;
        textInputEditText3.setText(str3);
        textInputEditText3.setFocusable(str3 == null);
        boolean z = false;
        if (str3 == null) {
            z = true;
        }
        textInputEditText3.setClickable(z);
        TextInputEditText textInputEditText4 = c8097q0.f25073f;
        s1.z.c.l.d(textInputEditText4, "etStreet");
        C19286f.m13680X(textInputEditText4, true, 100L);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7738k
    /* renamed from: Y8 */
    public void mo29357Y8(String str) {
        s1.z.c.l.e(str, "errorString");
        C8097q0 c8097q0 = this.f24057c;
        if (c8097q0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8097q0.f25076i;
        s1.z.c.l.d(textInputLayout, "binding.tilState");
        textInputLayout.setError(str);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: a0 */
    public void mo29333a0() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29320a0();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: b0 */
    public void mo29332b0() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29319b0();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: b4 */
    public void mo29331b4(BusinessProfile businessProfile) {
        s1.z.c.l.e(businessProfile, "businessProfile");
        AbstractC7737j abstractC7737j = this.f24056b;
        if (abstractC7737j != null) {
            abstractC7737j.mo29361o9(businessProfile);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: e9 */
    public void mo29330e9() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29314v1();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: ie */
    public void mo29329ie() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29318c2();
        AbstractC7737j abstractC7737j = this.f24056b;
        if (abstractC7737j != null) {
            abstractC7737j.mo29360q1();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: km */
    public void mo29328km() {
        C8097q0 c8097q0 = this.f24057c;
        if (c8097q0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        AbstractC7737j abstractC7737j = this.f24056b;
        if (abstractC7737j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        TextInputEditText textInputEditText = c8097q0.f25071d;
        s1.z.c.l.d(textInputEditText, "etPincode");
        String valueOf = String.valueOf(textInputEditText.getText());
        TextInputEditText textInputEditText2 = c8097q0.f25073f;
        s1.z.c.l.d(textInputEditText2, "etStreet");
        String valueOf2 = String.valueOf(textInputEditText2.getText());
        TextInputEditText textInputEditText3 = c8097q0.f25070c;
        s1.z.c.l.d(textInputEditText3, "etLandmark");
        String valueOf3 = String.valueOf(textInputEditText3.getText());
        TextInputEditText textInputEditText4 = c8097q0.f25069b;
        s1.z.c.l.d(textInputEditText4, "etCity");
        String valueOf4 = String.valueOf(textInputEditText4.getText());
        TextInputEditText textInputEditText5 = c8097q0.f25072e;
        s1.z.c.l.d(textInputEditText5, "etState");
        abstractC7737j.mo29359rf(valueOf, valueOf2, valueOf3, valueOf4, String.valueOf(textInputEditText5.getText()));
    }

    public void onCreate(Bundle bundle) {
        C7673c.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f24056b = (AbstractC7737j) ((C7805e) C18334g0.m15219l(activity)).f24309l0.get();
        }
        AbstractC7737j abstractC7737j = this.f24056b;
        if (abstractC7737j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        m29451OA(abstractC7737j);
        AbstractC7737j abstractC7737j2 = this.f24056b;
        if (abstractC7737j2 != null) {
            abstractC7737j2.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.fragment_location_manual_form, viewGroup, false);
        int i = C3478R.C3480id.etCity;
        TextInputEditText findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.etLandmark;
            TextInputEditText findViewById2 = inflate.findViewById(i);
            if (findViewById2 != null) {
                i = C3478R.C3480id.etPincode;
                TextInputEditText findViewById3 = inflate.findViewById(i);
                if (findViewById3 != null) {
                    i = C3478R.C3480id.etState;
                    TextInputEditText findViewById4 = inflate.findViewById(i);
                    if (findViewById4 != null) {
                        i = C3478R.C3480id.etStreet;
                        TextInputEditText findViewById5 = inflate.findViewById(i);
                        if (findViewById5 != null) {
                            i = C3478R.C3480id.tilCity;
                            TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(i);
                            if (textInputLayout != null) {
                                i = C3478R.C3480id.tilLandmark;
                                TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(i);
                                if (textInputLayout2 != null) {
                                    i = C3478R.C3480id.tilPincode;
                                    TextInputLayout textInputLayout3 = (TextInputLayout) inflate.findViewById(i);
                                    if (textInputLayout3 != null) {
                                        i = C3478R.C3480id.tilState;
                                        TextInputLayout textInputLayout4 = (TextInputLayout) inflate.findViewById(i);
                                        if (textInputLayout4 != null) {
                                            i = C3478R.C3480id.tilStreet;
                                            TextInputLayout textInputLayout5 = (TextInputLayout) inflate.findViewById(i);
                                            if (textInputLayout5 != null) {
                                                i = C3478R.C3480id.tvLocTitle;
                                                TextView textView = (TextView) inflate.findViewById(i);
                                                if (textView != null) {
                                                    C8097q0 c8097q0 = new C8097q0((ScrollView) inflate, findViewById, findViewById2, findViewById3, findViewById4, findViewById5, textInputLayout, textInputLayout2, textInputLayout3, textInputLayout4, textInputLayout5, textView);
                                                    s1.z.c.l.d(c8097q0, "FragmentLocationManualFo…flater, container, false)");
                                                    this.f24057c = c8097q0;
                                                    if (c8097q0 == null) {
                                                        s1.z.c.l.l("binding");
                                                        throw null;
                                                    }
                                                    ScrollView scrollView = c8097q0.f25068a;
                                                    s1.z.c.l.d(scrollView, "binding.root");
                                                    return scrollView;
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
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroyView() {
        AbstractC7737j abstractC7737j = this.f24056b;
        if (abstractC7737j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7737j.mo9806c();
        C7673c.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7673c.super.onViewCreated(view, bundle);
        C8097q0 c8097q0 = this.f24057c;
        if (c8097q0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8097q0.f25073f;
        s1.z.c.l.d(textInputEditText, "etStreet");
        C19291g.m13542j(textInputEditText, new C7674a(0, c8097q0));
        TextInputEditText textInputEditText2 = c8097q0.f25069b;
        s1.z.c.l.d(textInputEditText2, "etCity");
        C19291g.m13542j(textInputEditText2, new C7674a(1, c8097q0));
        TextInputEditText textInputEditText3 = c8097q0.f25072e;
        s1.z.c.l.d(textInputEditText3, "etState");
        C19291g.m13542j(textInputEditText3, new C7674a(2, c8097q0));
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: pt */
    public boolean mo29327pt() {
        return this.f24056b != null;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7738k
    /* renamed from: r7 */
    public void mo29356r7(String str) {
        s1.z.c.l.e(str, "errorString");
        C8097q0 c8097q0 = this.f24057c;
        if (c8097q0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8097q0.f25074g;
        s1.z.c.l.d(textInputLayout, "binding.tilCity");
        textInputLayout.setError(str);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7738k
    /* renamed from: zu */
    public void mo29355zu(String str) {
        s1.z.c.l.e(str, "errorString");
        C8097q0 c8097q0 = this.f24057c;
        if (c8097q0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8097q0.f25077j;
        s1.z.c.l.d(textInputLayout, "binding.tilStreet");
        textInputLayout.setError(str);
    }
}
