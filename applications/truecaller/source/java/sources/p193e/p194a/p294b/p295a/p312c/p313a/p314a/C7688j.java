package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.placepicker.data.GeocodedPlace;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7735h;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7667a;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8095p0;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00022\u00020\u0003:\u0001PB\u0007¢\u0006\u0004\bO\u0010\u0014J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0014J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u0014J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u0014J\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0014J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0014J\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\u0014J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010*\u001a\u00020$H\u0016¢\u0006\u0004\b+\u0010'J\u0017\u0010-\u001a\u00020\u00062\u0006\u0010,\u001a\u00020$H\u0016¢\u0006\u0004\b-\u0010'J\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\u0014J!\u00102\u001a\u00020\u00062\b\u00100\u001a\u0004\u0018\u00010/2\u0006\u00101\u001a\u00020\u0015H\u0016¢\u0006\u0004\b2\u00103J\u0019\u00104\u001a\u00020\u00062\b\u00100\u001a\u0004\u0018\u00010/H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0014J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0014J\u000f\u00108\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u0010\u0014J\u000f\u00109\u001a\u00020\u0006H\u0016¢\u0006\u0004\b9\u0010\u0014J\u000f\u0010:\u001a\u00020\u0006H\u0016¢\u0006\u0004\b:\u0010\u0014R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR$\u0010J\u001a\u0004\u0018\u00010C8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006Q"}, d2 = {"Le/a/b/a/c/a/a/j;", "Le/a/b/a/c/a/a/d;", "Le/a/b/a/c/a/i;", "Le/a/b/a/c/a/a/a$b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "pt", "()Z", "Gb", "onResume", "onPause", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "businessProfile", "b4", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V", "ie", "Le/a/b/a/f/a;", "businessAPIResult", "G2", "(Le/a/b/a/f/a;)V", "", "error", "M", "(Ljava/lang/String;)V", "a0", "b0", "resolvedPincode", "Ht", "errorString", "dt", "ql", "Lcom/truecaller/placepicker/data/GeocodedPlace;", "resolvedPincodePlace", "enabled", "ny", "(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V", "yq", "(Lcom/truecaller/placepicker/data/GeocodedPlace;)V", "Lj", "Z4", "b3", "km", "e9", "Le/a/b/a/c/a/h;", C22021b.f61237c, "Le/a/b/a/c/a/h;", "getPresenter", "()Le/a/b/a/c/a/h;", "setPresenter", "(Le/a/b/a/c/a/h;)V", "presenter", "Le/a/b/a/c/a/a/j$a;", AbstractC2405c.f7629a, "Le/a/b/a/c/a/a/j$a;", "getCallback$bizmon_release", "()Le/a/b/a/c/a/a/j$a;", "setCallback$bizmon_release", "(Le/a/b/a/c/a/a/j$a;)V", "callback", "Le/a/b/m/p0;", "d", "Le/a/b/m/p0;", "binding", "<init>", "a", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.j */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/j.class */
public final class C7688j extends AbstractC7675d<AbstractC7736i> implements AbstractC7736i, C7667a.AbstractC7669b {
    @Inject

    /* renamed from: b */
    public AbstractC7735h f24082b;

    /* renamed from: c */
    public AbstractC7689a f24083c;

    /* renamed from: d */
    public C8095p0 f24084d;

    /* renamed from: e.a.b.a.c.a.a.j$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/j$a.class */
    public interface AbstractC7689a {
        /* renamed from: L8 */
        void mo29441L8(GeocodedPlace geocodedPlace, boolean z);

        /* renamed from: z5 */
        void mo29440z5(GeocodedPlace geocodedPlace);
    }

    /* renamed from: e.a.b.a.c.a.a.j$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/j$b.class */
    public static final class C7690b extends m implements l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7690b() {
            super(1);
            C7688j.this = r4;
        }

        /* renamed from: d */
        public Object m29439d(Object obj) {
            Editable editable = (Editable) obj;
            AbstractC7735h abstractC7735h = C7688j.this.f24082b;
            String str = null;
            if (abstractC7735h == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            if (editable != null) {
                str = editable.toString();
            }
            abstractC7735h.mo29372K5(str);
            return s.a;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: G2 */
    public void mo29336G2(AbstractC7780a abstractC7780a) {
        s1.z.c.l.e(abstractC7780a, "businessAPIResult");
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: Gb */
    public void mo29335Gb() {
        AbstractC7735h abstractC7735h = this.f24082b;
        if (abstractC7735h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7735h.mo29339d4();
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        AbstractC7748u abstractC7748u = requireActivity;
        abstractC7748u.mo29324B7(false);
        abstractC7748u.mo29315u5(C3478R.string.BusinessProfile_Next_Btn);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i
    /* renamed from: Ht */
    public void mo29367Ht(String str) {
        s1.z.c.l.e(str, "resolvedPincode");
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c8095p0.f25062d;
        s1.z.c.l.d(textView, "binding.tvResolvedPincode");
        textView.setText(str);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i
    /* renamed from: Lj */
    public void mo29366Lj() {
        C7667a c7667a = new C7667a();
        c7667a.f24048a = this;
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            c7667a.show(fragmentManager, c7667a.getTag());
        }
        AbstractC7735h abstractC7735h = this.f24082b;
        if (abstractC7735h != null) {
            abstractC7735h.mo29371Lf();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: M */
    public void mo29334M(String str) {
        s1.z.c.l.e(str, "error");
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7667a.AbstractC7669b
    /* renamed from: Z4 */
    public void mo29443Z4() {
        AbstractC7735h abstractC7735h = this.f24082b;
        if (abstractC7735h != null) {
            abstractC7735h.mo29369Z4();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
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

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7667a.AbstractC7669b
    /* renamed from: b3 */
    public void mo29442b3() {
        AbstractC7735h abstractC7735h = this.f24082b;
        if (abstractC7735h != null) {
            abstractC7735h.mo29368b3();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: b4 */
    public void mo29331b4(BusinessProfile businessProfile) {
        LocationDetail locationDetail;
        String zipCode;
        s1.z.c.l.e(businessProfile, "businessProfile");
        List<LocationDetail> locationDetails = businessProfile.getLocationDetails();
        if (locationDetails == null || (locationDetail = (LocationDetail) i.G(locationDetails, 0)) == null || (zipCode = locationDetail.getZipCode()) == null) {
            return;
        }
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        c8095p0.f25060b.setText(zipCode);
        c8095p0.f25060b.setSelection(zipCode.length());
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i
    /* renamed from: dt */
    public void mo29365dt(String str) {
        s1.z.c.l.e(str, "errorString");
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8095p0.f25061c;
        s1.z.c.l.d(textInputLayout, "tilPincode");
        textInputLayout.setErrorEnabled(true);
        TextInputLayout textInputLayout2 = c8095p0.f25061c;
        s1.z.c.l.d(textInputLayout2, "tilPincode");
        textInputLayout2.setError(str);
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
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: km */
    public void mo29328km() {
        AbstractC7735h abstractC7735h = this.f24082b;
        if (abstractC7735h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8095p0.f25060b;
        s1.z.c.l.d(textInputEditText, "binding.etPincode");
        abstractC7735h.mo29370Y5(String.valueOf(textInputEditText.getText()));
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i
    /* renamed from: ny */
    public void mo29364ny(GeocodedPlace geocodedPlace, boolean z) {
        AbstractC7689a abstractC7689a = this.f24083c;
        if (abstractC7689a != null) {
            abstractC7689a.mo29441L8(geocodedPlace, z);
        }
    }

    public void onCreate(Bundle bundle) {
        C7688j.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f24082b = (AbstractC7735h) ((C7805e) C18334g0.m15219l(activity)).f24293d0.get();
        }
        AbstractC7735h abstractC7735h = this.f24082b;
        if (abstractC7735h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7735h.mo9029Y0(this);
        AbstractC7735h abstractC7735h2 = this.f24082b;
        if (abstractC7735h2 != null) {
            m29451OA(abstractC7735h2);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.fragment_location_form, viewGroup, false);
        int i = C3478R.C3480id.etPincode;
        TextInputEditText findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.tilPincode;
            TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(i);
            if (textInputLayout != null) {
                i = C3478R.C3480id.tvLocTitle;
                TextView textView = (TextView) inflate.findViewById(i);
                if (textView != null) {
                    i = C3478R.C3480id.tvResolvedPincode;
                    TextView textView2 = (TextView) inflate.findViewById(i);
                    if (textView2 != null) {
                        C8095p0 c8095p0 = new C8095p0((ConstraintLayout) inflate, findViewById, textInputLayout, textView, textView2);
                        s1.z.c.l.d(c8095p0, "FragmentLocationFormBind…flater, container, false)");
                        this.f24084d = c8095p0;
                        if (c8095p0 != null) {
                            return c8095p0.f25059a;
                        }
                        s1.z.c.l.l("binding");
                        throw null;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroyView() {
        AbstractC7735h abstractC7735h = this.f24082b;
        if (abstractC7735h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7735h.mo9806c();
        C7688j.super.onDestroyView();
    }

    public void onPause() {
        C7688j.super.onPause();
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8095p0.f25060b;
        s1.z.c.l.d(textInputEditText, "binding.etPincode");
        C19286f.m13679Y(textInputEditText, false, 0L, 2);
    }

    public void onResume() {
        C7688j.super.onResume();
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8095p0.f25060b;
        s1.z.c.l.d(textInputEditText, "binding.etPincode");
        C19286f.m13679Y(textInputEditText, true, 0L, 2);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7688j.super.onViewCreated(view, bundle);
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = c8095p0.f25060b;
        s1.z.c.l.d(textInputEditText, "binding.etPincode");
        C19291g.m13542j(textInputEditText, new C7690b());
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: pt */
    public boolean mo29327pt() {
        return this.f24082b != null;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i
    /* renamed from: ql */
    public void mo29363ql() {
        C8095p0 c8095p0 = this.f24084d;
        if (c8095p0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8095p0.f25061c;
        s1.z.c.l.d(textInputLayout, "tilPincode");
        textInputLayout.setError(null);
        TextInputLayout textInputLayout2 = c8095p0.f25061c;
        s1.z.c.l.d(textInputLayout2, "tilPincode");
        textInputLayout2.setErrorEnabled(false);
        TextView textView = c8095p0.f25062d;
        s1.z.c.l.d(textView, "tvResolvedPincode");
        textView.setText("");
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i
    /* renamed from: yq */
    public void mo29362yq(GeocodedPlace geocodedPlace) {
        AbstractC7689a abstractC7689a = this.f24083c;
        if (abstractC7689a != null) {
            abstractC7689a.mo29440z5(geocodedPlace);
        }
    }
}
