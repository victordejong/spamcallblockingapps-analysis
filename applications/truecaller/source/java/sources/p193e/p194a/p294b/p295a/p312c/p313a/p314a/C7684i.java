package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.placepicker.data.GeocodedPlace;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7733f;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7734g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8093o0;
import s1.s;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0002:\u0001OB\u0007¢\u0006\u0004\bN\u0010\u0016J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0016J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0016J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010\u0016J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0012H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u0010\u0016J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0016R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u0010<R$\u0010E\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010M\u001a\u00020F8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010L¨\u0006P"}, d2 = {"Le/a/b/a/c/a/a/i;", "Le/a/b/a/c/a/a/d;", "Le/a/b/a/c/a/g;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "pt", "()Z", "a0", "()V", "b0", "onDestroyView", "Gb", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "businessProfile", "b4", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V", "ie", "Le/a/b/a/f/a;", "businessAPIResult", "G2", "(Le/a/b/a/f/a;)V", "", "error", "M", "(Ljava/lang/String;)V", "", "errorResId", "Rk", "(I)V", "qq", "Zb", "showAutocomplete", "gf", "(Z)V", "km", "e9", "Le/a/b/a/c/a/a/i$a;", AbstractC2405c.f7629a, "Le/a/b/a/c/a/a/i$a;", "getCallback", "()Le/a/b/a/c/a/a/i$a;", "setCallback", "(Le/a/b/a/c/a/a/i$a;)V", "callback", "Le/a/b/m/o0;", "e", "Le/a/b/m/o0;", "binding", "Lcom/truecaller/placepicker/data/GeocodedPlace;", "d", "Lcom/truecaller/placepicker/data/GeocodedPlace;", "getGeocodedPlace", "()Lcom/truecaller/placepicker/data/GeocodedPlace;", "setGeocodedPlace", "(Lcom/truecaller/placepicker/data/GeocodedPlace;)V", "geocodedPlace", "Le/a/b/a/c/a/f;", C22021b.f61237c, "Le/a/b/a/c/a/f;", "getPresenter", "()Le/a/b/a/c/a/f;", "setPresenter", "(Le/a/b/a/c/a/f;)V", "presenter", "<init>", "a", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/i.class */
public final class C7684i extends AbstractC7675d<AbstractC7734g> implements AbstractC7734g {
    @Inject

    /* renamed from: b */
    public AbstractC7733f f24076b;

    /* renamed from: c */
    public AbstractC7685a f24077c;

    /* renamed from: d */
    public GeocodedPlace f24078d;

    /* renamed from: e */
    public C8093o0 f24079e;

    /* renamed from: e.a.b.a.c.a.a.i$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/i$a.class */
    public interface AbstractC7685a {
        /* renamed from: K */
        void mo29445K(GeocodedPlace geocodedPlace, boolean z);
    }

    /* renamed from: e.a.b.a.c.a.a.i$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/i$b.class */
    public static final class View$OnClickListenerC7686b implements View.OnClickListener {
        public View$OnClickListenerC7686b() {
            C7684i.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7733f abstractC7733f = C7684i.this.f24076b;
            if (abstractC7733f != null) {
                abstractC7733f.mo29380O0();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.b.a.c.a.a.i$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/i$c.class */
    public static final class C7687c extends m implements s1.z.b.l<Editable, s> {

        /* renamed from: b */
        public final /* synthetic */ C8093o0 f24081b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7687c(C8093o0 c8093o0) {
            super(1);
            this.f24081b = c8093o0;
        }

        /* renamed from: d */
        public Object m29444d(Object obj) {
            Editable editable = (Editable) obj;
            TextInputLayout textInputLayout = this.f24081b.f25053d;
            l.d(textInputLayout, "tilBldgName");
            textInputLayout.setErrorEnabled(false);
            return s.a;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: G2 */
    public void mo29336G2(AbstractC7780a abstractC7780a) {
        l.e(abstractC7780a, "businessAPIResult");
        AbstractC7733f abstractC7733f = this.f24076b;
        if (abstractC7733f != null) {
            abstractC7733f.mo29342G2(abstractC7780a);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: Gb */
    public void mo29335Gb() {
        if (!(this.f24076b != null)) {
            return;
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            GeocodedPlace geocodedPlace = (GeocodedPlace) arguments.getParcelable("key_arg_geo_place");
            this.f24078d = geocodedPlace;
            if (geocodedPlace != null) {
                AbstractC7733f abstractC7733f = this.f24076b;
                if (abstractC7733f == null) {
                    l.l("presenter");
                    throw null;
                }
                abstractC7733f.mo29378i2();
                this.f24078d = geocodedPlace;
                C8093o0 c8093o0 = this.f24079e;
                if (c8093o0 == null) {
                    l.l("binding");
                    throw null;
                }
                TextView textView = c8093o0.f25054e;
                l.d(textView, "tvAddress");
                textView.setText(geocodedPlace.f14181b);
                TextInputEditText textInputEditText = c8093o0.f25051b;
                l.d(textInputEditText, "etBuilingName");
                C19286f.m13680X(textInputEditText, true, 100L);
            }
        }
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        AbstractC7748u abstractC7748u = requireActivity;
        abstractC7748u.mo29324B7(false);
        abstractC7748u.mo29315u5(C3478R.string.BusinessProfile_Finish);
        AbstractC7733f abstractC7733f2 = this.f24076b;
        if (abstractC7733f2 != null) {
            abstractC7733f2.mo29339d4();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: M */
    public void mo29334M(String str) {
        l.e(str, "error");
        n3.r.a.l requireActivity = requireActivity();
        l.d(requireActivity, "requireActivity()");
        C19291g.m13589S1(requireActivity, 0, str, 0, 5);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7734g
    /* renamed from: Rk */
    public void mo29376Rk(int i) {
        Toast.makeText((Context) getActivity(), (CharSequence) getString(i), 0).show();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7734g
    /* renamed from: Zb */
    public void mo29375Zb() {
        C8093o0 c8093o0 = this.f24079e;
        if (c8093o0 == null) {
            l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8093o0.f25053d;
        l.d(textInputLayout, "binding.tilBldgName");
        textInputLayout.setError(null);
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
        l.e(businessProfile, "businessProfile");
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: e9 */
    public void mo29330e9() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29314v1();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7734g
    /* renamed from: gf */
    public void mo29374gf(boolean z) {
        AbstractC7685a abstractC7685a = this.f24077c;
        if (abstractC7685a != null) {
            abstractC7685a.mo29445K(this.f24078d, z);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: ie */
    public void mo29329ie() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29318c2();
        AbstractC7733f abstractC7733f = this.f24076b;
        if (abstractC7733f != null) {
            abstractC7733f.mo29377q1();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: km */
    public void mo29328km() {
        C8093o0 c8093o0 = this.f24079e;
        if (c8093o0 == null) {
            l.l("binding");
            throw null;
        }
        AbstractC7733f abstractC7733f = this.f24076b;
        if (abstractC7733f == null) {
            l.l("presenter");
            throw null;
        }
        GeocodedPlace geocodedPlace = this.f24078d;
        TextInputEditText textInputEditText = c8093o0.f25051b;
        l.d(textInputEditText, "etBuilingName");
        String valueOf = String.valueOf(textInputEditText.getText());
        TextInputEditText textInputEditText2 = c8093o0.f25052c;
        l.d(textInputEditText2, "etLandmark");
        abstractC7733f.mo29379Va(geocodedPlace, valueOf, String.valueOf(textInputEditText2.getText()));
    }

    public void onCreate(Bundle bundle) {
        C7684i.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f24076b = (AbstractC7733f) ((C7805e) C18334g0.m15219l(activity)).f24305j0.get();
        }
        AbstractC7733f abstractC7733f = this.f24076b;
        if (abstractC7733f != null) {
            m29451OA(abstractC7733f);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.fragment_location_confirmation, viewGroup, false);
        int i = C3478R.C3480id.etBuilingName;
        TextInputEditText findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.etLandmark;
            TextInputEditText findViewById2 = inflate.findViewById(i);
            if (findViewById2 != null) {
                i = C3478R.C3480id.tilBldgName;
                TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(i);
                if (textInputLayout != null) {
                    i = C3478R.C3480id.tvAddress;
                    TextView textView = (TextView) inflate.findViewById(i);
                    if (textView != null) {
                        i = C3478R.C3480id.tvChangeAddress;
                        TextView textView2 = (TextView) inflate.findViewById(i);
                        if (textView2 != null) {
                            i = C3478R.C3480id.tvTitle;
                            TextView textView3 = (TextView) inflate.findViewById(i);
                            if (textView3 != null) {
                                C8093o0 c8093o0 = new C8093o0((ConstraintLayout) inflate, findViewById, findViewById2, textInputLayout, textView, textView2, textView3);
                                l.d(c8093o0, "FragmentLocationConfirma…flater, container, false)");
                                this.f24079e = c8093o0;
                                if (c8093o0 != null) {
                                    return c8093o0.f25050a;
                                }
                                l.l("binding");
                                throw null;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroyView() {
        AbstractC7733f abstractC7733f = this.f24076b;
        if (abstractC7733f == null) {
            l.l("presenter");
            throw null;
        }
        abstractC7733f.mo9806c();
        C7684i.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7684i.super.onViewCreated(view, bundle);
        AbstractC7733f abstractC7733f = this.f24076b;
        if (abstractC7733f == null) {
            l.l("presenter");
            throw null;
        }
        abstractC7733f.mo9029Y0(this);
        C8093o0 c8093o0 = this.f24079e;
        if (c8093o0 == null) {
            l.l("binding");
            throw null;
        }
        c8093o0.f25055f.setOnClickListener(new View$OnClickListenerC7686b());
        TextInputEditText textInputEditText = c8093o0.f25051b;
        l.d(textInputEditText, "etBuilingName");
        C19291g.m13542j(textInputEditText, new C7687c(c8093o0));
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: pt */
    public boolean mo29327pt() {
        return this.f24076b != null;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7734g
    /* renamed from: qq */
    public void mo29373qq(int i) {
        C8093o0 c8093o0 = this.f24079e;
        if (c8093o0 == null) {
            l.l("binding");
            throw null;
        }
        TextInputLayout textInputLayout = c8093o0.f25053d;
        l.d(textInputLayout, "binding.tilBldgName");
        textInputLayout.setError(getString(i));
    }
}
