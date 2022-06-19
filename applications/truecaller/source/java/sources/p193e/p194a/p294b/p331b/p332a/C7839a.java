package p193e.p194a.p294b.p331b.p332a;

import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition$Builder;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.material.snackbar.Snackbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.p152ui.address.GeocodedBusinessAddress;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p294b.p331b.p334c.p335u.C7905c;
import p193e.p194a.p294b.p354l.AbstractC8018a;
import p193e.p194a.p294b.p355m.C8112y;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� E2\u00020\u00012\u00020\u0002:\u0001AB\u0007¢\u0006\u0004\bD\u0010\u0017J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J7\u0010\u001e\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u00192\b\u0010\u001d\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020\u00052\b\b\u0001\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0017J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0017J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0017R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00101\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006F"}, d2 = {"Le/a/b/b/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/b/b/a/g;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/google/android/gms/maps/model/LatLng;", "latLng", "w7", "(Lcom/google/android/gms/maps/model/LatLng;)V", "w9", "()V", "a0", "", "street", "zipCode", "city", "countryName", "v4", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "errorMessage", "Eo", "(I)V", "yy", "Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;", "address", "dc", "(Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;)V", "cancel", "onDestroyView", "Lcom/google/android/gms/maps/GoogleMap;", "d", "Lcom/google/android/gms/maps/GoogleMap;", "map", C22021b.f61237c, "Landroid/view/View;", "rootView", "Le/a/b/m/y;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/y;", "binding", "Le/a/b/b/a/i;", "a", "Le/a/b/b/a/i;", "PA", "()Le/a/b/b/a/i;", "setPresenter", "(Le/a/b/b/a/i;)V", "presenter", "Le/a/b/b/a/l;", AbstractC2405c.f7629a, "Le/a/b/b/a/l;", "listener", "<init>", "g", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.b.a.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/a/a.class */
public final class C7839a extends Fragment implements AbstractC7854g {

    /* renamed from: f */
    public static final /* synthetic */ l[] f24386f = {C22128a.m8621g0(C7839a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileFragmentAddressGeolocationBinding;", 0)};

    /* renamed from: g */
    public static final C7842c f24387g = new C7842c(null);
    @Inject

    /* renamed from: a */
    public C7856i f24388a;

    /* renamed from: b */
    public View f24389b;

    /* renamed from: c */
    public AbstractC7859l f24390c;

    /* renamed from: d */
    public GoogleMap f24391d;

    /* renamed from: e */
    public final ViewBindingProperty f24392e = new C19350a(new C7841b());

    /* renamed from: e.a.b.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/b/a/a$a.class */
    public static final class View$OnClickListenerC7840a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f24393a;

        /* renamed from: b */
        public final /* synthetic */ Object f24394b;

        public View$OnClickListenerC7840a(int i, Object obj) {
            this.f24393a = i;
            this.f24394b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f24393a;
            boolean z = true;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                AbstractC7854g abstractC7854g = (AbstractC7854g) ((C7839a) this.f24394b).m29257PA().f57683a;
                if (abstractC7854g == null) {
                    return;
                }
                abstractC7854g.cancel();
                return;
            }
            C7856i m29257PA = ((C7839a) this.f24394b).m29257PA();
            GeocodedBusinessAddress geocodedBusinessAddress = m29257PA.f24418e;
            if (geocodedBusinessAddress != null) {
                if (geocodedBusinessAddress.getLongitude() == PlaceLikelihood.LIKELIHOOD_MIN_VALUE || geocodedBusinessAddress.getLatitude() == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                    z = false;
                }
                if (z) {
                    AbstractC7854g abstractC7854g2 = (AbstractC7854g) m29257PA.f57683a;
                    if (abstractC7854g2 == null) {
                        return;
                    }
                    abstractC7854g2.mo29245dc(geocodedBusinessAddress);
                    return;
                }
            }
            AbstractC7854g abstractC7854g3 = (AbstractC7854g) m29257PA.f57683a;
            if (abstractC7854g3 == null) {
                return;
            }
            abstractC7854g3.mo29241yy();
        }
    }

    /* renamed from: e.a.b.b.a.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/a/a$b.class */
    public static final class C7841b extends m implements s1.z.b.l<C7839a, C8112y> {
        public C7841b() {
            super(1);
        }

        /* renamed from: d */
        public Object m29256d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.addressTextView;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C3478R.C3480id.cancelButton;
                ImageButton imageButton = (ImageButton) requireView.findViewById(i);
                if (imageButton != null) {
                    i = C3478R.C3480id.loadingProgressBar;
                    FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                    if (frameLayout != null) {
                        i = C3478R.C3480id.submitButton;
                        ImageButton imageButton2 = (ImageButton) requireView.findViewById(i);
                        if (imageButton2 != null) {
                            return new C8112y((RelativeLayout) requireView, textView, imageButton, frameLayout, imageButton2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.b.b.a.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/a/a$c.class */
    public static final class C7842c {
        public C7842c(f fVar) {
        }
    }

    /* renamed from: e.a.b.b.a.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/a/a$d.class */
    public static final class C7843d implements GoogleMap.OnCameraIdleListener {

        /* renamed from: a */
        public final /* synthetic */ GoogleMap f24395a;

        /* renamed from: b */
        public final /* synthetic */ C7839a f24396b;

        public C7843d(GoogleMap googleMap, C7839a c7839a) {
            this.f24395a = googleMap;
            this.f24396b = c7839a;
        }

        @Override // com.google.android.gms.maps.GoogleMap.OnCameraIdleListener
        /* renamed from: a */
        public final void mo29255a() {
            GoogleMap googleMap = this.f24395a;
            Objects.requireNonNull(googleMap);
            try {
                LatLng latLng = googleMap.f6237a.m38686y0().a;
                C7856i m29257PA = this.f24396b.m29257PA();
                double d = latLng.a;
                double d2 = latLng.b;
                Objects.requireNonNull(m29257PA);
                d.w2(m29257PA, (s1.w.f) null, (j0) null, new C7855h(m29257PA, d, d2, null), 3, (Object) null);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    /* renamed from: Eo */
    public void mo29247Eo(int i) {
        FrameLayout frameLayout = m29258OA().f25171c;
        s1.z.c.l.d(frameLayout, "binding.loadingProgressBar");
        C19286f.m13687Q(frameLayout);
        TextView textView = m29258OA().f25169a;
        s1.z.c.l.d(textView, "binding.addressTextView");
        textView.setText(getString(i));
    }

    /* renamed from: OA */
    public final C8112y m29258OA() {
        return (C8112y) this.f24392e.m34468b(this, f24386f[0]);
    }

    /* renamed from: PA */
    public final C7856i m29257PA() {
        C7856i c7856i = this.f24388a;
        if (c7856i != null) {
            return c7856i;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    /* renamed from: a0 */
    public void mo29246a0() {
        FrameLayout frameLayout = m29258OA().f25171c;
        s1.z.c.l.d(frameLayout, "binding.loadingProgressBar");
        C19286f.m13684T(frameLayout);
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    public void cancel() {
        AbstractC7859l abstractC7859l = this.f24390c;
        if (abstractC7859l != null) {
            abstractC7859l.mo29223Rs();
        } else {
            s1.z.c.l.l("listener");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    /* renamed from: dc */
    public void mo29245dc(GeocodedBusinessAddress geocodedBusinessAddress) {
        s1.z.c.l.e(geocodedBusinessAddress, "address");
        AbstractC7859l abstractC7859l = this.f24390c;
        if (abstractC7859l != null) {
            abstractC7859l.mo29222Wx(geocodedBusinessAddress);
        } else {
            s1.z.c.l.l("listener");
            throw null;
        }
    }

    public void onCreate(Bundle bundle) {
        C7839a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            C7905c c7905c = (C7905c) C18334g0.m15217m(activity);
            AbstractC8018a abstractC8018a = (AbstractC8018a) c7905c.f24522s.get();
            s1.w.f mo12378g = c7905c.f24504a.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            this.f24388a = new C7856i(abstractC8018a, mo12378g);
        }
        AbstractC7859l parentFragment = getParentFragment();
        if (parentFragment != null) {
            s1.z.c.l.d(parentFragment, "it");
            if (parentFragment instanceof AbstractC7859l) {
                this.f24390c = parentFragment;
            }
        }
        C7856i c7856i = this.f24388a;
        LatLng latLng = null;
        if (c7856i == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            latLng = (LatLng) arguments.getParcelable("arg_latlng");
        }
        c7856i.f24417d = latLng;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.business_profile_fragment_address_geolocation, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…cation, container, false)");
        this.f24389b = inflate;
        if (inflate != null) {
            return inflate;
        }
        s1.z.c.l.l("rootView");
        throw null;
    }

    public void onDestroyView() {
        C7839a.super.onDestroyView();
        C7856i c7856i = this.f24388a;
        if (c7856i != null) {
            c7856i.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7839a.super.onViewCreated(view, bundle);
        C7856i c7856i = this.f24388a;
        if (c7856i == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c7856i.f57683a = this;
        C19286f.m13679Y(view, false, 0L, 2);
        SupportMapFragment m42943J = getChildFragmentManager().m42943J(C3478R.C3480id.mapView);
        Objects.requireNonNull(m42943J, "null cannot be cast to non-null type com.google.android.gms.maps.SupportMapFragment");
        m42943J.OA(new C7853f(this));
        m29258OA().f25172d.setOnClickListener(new View$OnClickListenerC7840a(0, this));
        m29258OA().f25170b.setOnClickListener(new View$OnClickListenerC7840a(1, this));
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    /* renamed from: v4 */
    public void mo29244v4(String str, String str2, String str3, String str4) {
        FrameLayout frameLayout = m29258OA().f25171c;
        s1.z.c.l.d(frameLayout, "binding.loadingProgressBar");
        C19286f.m13687Q(frameLayout);
        TextView textView = m29258OA().f25169a;
        s1.z.c.l.d(textView, "binding.addressTextView");
        textView.setText(C19231g0.m13813D(", ", str, str2, str3, str4));
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    /* renamed from: w7 */
    public void mo29243w7(LatLng latLng) {
        s1.z.c.l.e(latLng, "latLng");
        CameraPosition$Builder cameraPosition$Builder = new CameraPosition$Builder();
        cameraPosition$Builder.f6250b = 17.0f;
        cameraPosition$Builder.f6249a = latLng;
        CameraPosition m38628a = cameraPosition$Builder.m38628a();
        GoogleMap googleMap = this.f24391d;
        if (googleMap != null) {
            googleMap.m38707b(CameraUpdateFactory.m38710a(m38628a));
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    /* renamed from: w9 */
    public void mo29242w9() {
        GoogleMap googleMap = this.f24391d;
        if (googleMap != null) {
            googleMap.m38705d(new C7843d(googleMap, this));
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7854g
    /* renamed from: yy */
    public void mo29241yy() {
        View view = this.f24389b;
        if (view != null) {
            Snackbar.k(view, C3478R.string.BusinessProfile_GeocodeErrorRequired, -1).n();
        } else {
            s1.z.c.l.l("rootView");
            throw null;
        }
    }
}
