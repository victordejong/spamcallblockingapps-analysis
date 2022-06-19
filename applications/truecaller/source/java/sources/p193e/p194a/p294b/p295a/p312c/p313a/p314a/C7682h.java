package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
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
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7705d;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7708e;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8060e0;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b6\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0013J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0013J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\"\u0010\u001aJ\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0013J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0013J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0013R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u00104¨\u00067"}, d2 = {"Le/a/b/a/c/a/a/h;", "Le/a/b/a/c/a/a/d;", "Le/a/b/a/c/a/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "pt", "()Z", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "businessProfile", "fj", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V", "", "error", "M", "(Ljava/lang/String;)V", "a0", "b0", "Gb", "b4", "ie", "Le/a/b/a/f/a;", "businessAPIResult", "G2", "(Le/a/b/a/f/a;)V", "km", "e9", "Le/a/b/a/c/a/d;", C22021b.f61237c, "Le/a/b/a/c/a/d;", "getPresenter", "()Le/a/b/a/c/a/d;", "setPresenter", "(Le/a/b/a/c/a/d;)V", "presenter", "Le/a/b/m/e0;", AbstractC2405c.f7629a, "Le/a/b/m/e0;", "binding", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/h.class */
public final class C7682h extends AbstractC7675d<AbstractC7708e> implements AbstractC7708e {
    @Inject

    /* renamed from: b */
    public AbstractC7705d f24073b;

    /* renamed from: c */
    public C8060e0 f24074c;

    /* renamed from: e.a.b.a.c.a.a.h$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/h$a.class */
    public static final class C7683a extends m implements l<Editable, s> {

        /* renamed from: b */
        public final /* synthetic */ C8060e0 f24075b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7683a(C8060e0 c8060e0) {
            super(1);
            this.f24075b = c8060e0;
        }

        /* renamed from: d */
        public Object m29446d(Object obj) {
            Editable editable = (Editable) obj;
            TextInputLayout textInputLayout = this.f24075b.f24852c;
            s1.z.c.l.d(textInputLayout, "ttlEnterName");
            textInputLayout.setError(null);
            return s.a;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: G2 */
    public void mo29336G2(AbstractC7780a abstractC7780a) {
        s1.z.c.l.e(abstractC7780a, "businessAPIResult");
        AbstractC7705d abstractC7705d = this.f24073b;
        if (abstractC7705d != null) {
            abstractC7705d.mo29342G2(abstractC7780a);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: Gb */
    public void mo29335Gb() {
        AbstractC7705d abstractC7705d = this.f24073b;
        if (abstractC7705d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7705d.mo29339d4();
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        AbstractC7748u abstractC7748u = requireActivity;
        abstractC7748u.mo29324B7(false);
        abstractC7748u.mo29322U3(false);
        C18334g0.m15190z0(abstractC7748u, false, 1, null);
        C8060e0 c8060e0 = this.f24074c;
        if (c8060e0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8060e0.f24851b;
        s1.z.c.l.d(textInputEditText, "binding.editTextName");
        C19286f.m13679Y(textInputEditText, true, 0L, 2);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: M */
    public void mo29334M(String str) {
        s1.z.c.l.e(str, "error");
        C8060e0 c8060e0 = this.f24074c;
        if (c8060e0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8060e0.f24852c;
        s1.z.c.l.d(textInputLayout, "binding.ttlEnterName");
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
        String name = businessProfile.getName();
        if (name != null) {
            C8060e0 c8060e0 = this.f24074c;
            if (c8060e0 == null) {
                s1.z.c.l.l("binding");
                throw null;
            }
            TextInputEditText textInputEditText = c8060e0.f24851b;
            textInputEditText.setText(name);
            textInputEditText.setSelection(name.length());
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: e9 */
    public void mo29330e9() {
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7708e
    /* renamed from: fj */
    public void mo29431fj(BusinessProfile businessProfile) {
        s1.z.c.l.e(businessProfile, "businessProfile");
        AbstractC7705d abstractC7705d = this.f24073b;
        if (abstractC7705d != null) {
            abstractC7705d.mo29343A(businessProfile);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: ie */
    public void mo29329ie() {
        C8060e0 c8060e0 = this.f24074c;
        if (c8060e0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8060e0.f24851b;
        s1.z.c.l.d(textInputEditText, "binding.editTextName");
        C19286f.m13679Y(textInputEditText, false, 0L, 2);
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29317n1();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: km */
    public void mo29328km() {
        AbstractC7705d abstractC7705d = this.f24073b;
        String str = null;
        if (abstractC7705d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C8060e0 c8060e0 = this.f24074c;
        if (c8060e0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8060e0.f24851b;
        s1.z.c.l.d(textInputEditText, "binding.editTextName");
        Editable text = textInputEditText.getText();
        if (text != null) {
            str = text.toString();
        }
        abstractC7705d.mo29409qc(str);
    }

    public void onCreate(Bundle bundle) {
        C7682h.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f24073b = (AbstractC7705d) ((C7805e) C18334g0.m15219l(activity)).f24289b0.get();
        }
        AbstractC7705d abstractC7705d = this.f24073b;
        if (abstractC7705d != null) {
            m29451OA(abstractC7705d);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.fragment_biz_enter_name, viewGroup, false);
        int i = C3478R.C3480id.editTextName;
        TextInputEditText findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.lbl_enter_biz_name;
            TextView textView = (TextView) inflate.findViewById(i);
            if (textView != null) {
                i = C3478R.C3480id.ttlEnterName;
                TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(i);
                if (textInputLayout != null) {
                    C8060e0 c8060e0 = new C8060e0((ConstraintLayout) inflate, findViewById, textView, textInputLayout);
                    s1.z.c.l.d(c8060e0, "FragmentBizEnterNameBind…flater, container, false)");
                    this.f24074c = c8060e0;
                    if (c8060e0 != null) {
                        return c8060e0.f24850a;
                    }
                    s1.z.c.l.l("binding");
                    throw null;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroyView() {
        C7682h.super.onDestroyView();
        AbstractC7705d abstractC7705d = this.f24073b;
        if (abstractC7705d != null) {
            abstractC7705d.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7682h.super.onViewCreated(view, bundle);
        AbstractC7705d abstractC7705d = this.f24073b;
        if (abstractC7705d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7705d.mo9029Y0(this);
        C8060e0 c8060e0 = this.f24074c;
        if (c8060e0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8060e0.f24851b;
        s1.z.c.l.d(textInputEditText, "editTextName");
        C19291g.m13542j(textInputEditText, new C7683a(c8060e0));
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: pt */
    public boolean mo29327pt() {
        return this.f24073b != null;
    }
}
