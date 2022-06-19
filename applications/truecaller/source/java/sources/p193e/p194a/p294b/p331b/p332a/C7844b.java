package p193e.p194a.p294b.p331b.p332a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition$Builder;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.p152ui.address.BusinessAddressInput;
import com.truecaller.bizmon.p152ui.address.GeocodedBusinessAddress;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p294b.p331b.p334c.p335u.C7905c;
import p193e.p194a.p294b.p354l.AbstractC8018a;
import p193e.p194a.p294b.p355m.C8110x;
import p193e.p194a.p372b0.p373a.p374a.DialogC8225e;
import s1.a.l;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� Y2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001UB\u0007¢\u0006\u0004\bX\u0010&J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ-\u0010\u001f\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010\bJ\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u001bH\u0016¢\u0006\u0004\b(\u0010#J\u0019\u0010)\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b)\u0010\bJ\u0017\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J7\u0010.\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\b\u0010!\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b0\u0010\bJ\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010&J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010&J#\u00106\u001a\u00020\u00062\b\b\u0001\u00104\u001a\u0002032\b\b\u0001\u00105\u001a\u000203H\u0016¢\u0006\u0004\b6\u00107J\u001f\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u0002032\u0006\u00105\u001a\u000203H\u0016¢\u0006\u0004\b9\u00107J\u0017\u0010;\u001a\u00020\u00062\u0006\u0010+\u001a\u00020:H\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010&J\u000f\u0010>\u001a\u00020\u0006H\u0016¢\u0006\u0004\b>\u0010&R\u0016\u0010A\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u001d\u0010K\u001a\u00020F8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\"\u0010S\u001a\u00020L8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bU\u0010V¨\u0006Z"}, d2 = {"Le/a/b/b/a/b;", "Landroidx/fragment/app/Fragment;", "Le/a/b/b/a/j;", "Le/a/b/b/a/l;", "Lcom/google/android/gms/maps/model/LatLng;", "latLng", "Ls1/s;", "QA", "(Lcom/google/android/gms/maps/model/LatLng;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "street", "zipCode", "city", "te", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "countryName", "zi", "(Ljava/lang/String;)V", "zz", "s7", "()V", "um", "Iu", "Vj", "Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;", "address", "Wx", "(Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;)V", "v4", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Lt", "Rs", "Wt", "", "inputField", "errorMessage", "K2", "(II)V", "textField", "I2", "Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;", "ff", "(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V", "cancel", "onDestroyView", C22021b.f61237c, "Landroid/view/View;", "rootView", "Lcom/google/android/gms/maps/GoogleMap;", "d", "Lcom/google/android/gms/maps/GoogleMap;", "map", "Le/a/b/m/x;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/x;", "binding", "Le/a/b/b/a/k;", "a", "Le/a/b/b/a/k;", "PA", "()Le/a/b/b/a/k;", "setPresenter", "(Le/a/b/b/a/k;)V", "presenter", "Le/a/b/b/a/d;", AbstractC2405c.f7629a, "Le/a/b/b/a/d;", "businessAddressListener", "<init>", "g", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.b.a.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/a/b.class */
public final class C7844b extends Fragment implements AbstractC7857j, AbstractC7859l {

    /* renamed from: f */
    public static final /* synthetic */ l[] f24397f = {C22128a.m8621g0(C7844b.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileFragmentAddressBinding;", 0)};

    /* renamed from: g */
    public static final C7847c f24398g = new C7847c(null);
    @Inject

    /* renamed from: a */
    public C7858k f24399a;

    /* renamed from: b */
    public View f24400b;

    /* renamed from: c */
    public AbstractC7851d f24401c;

    /* renamed from: d */
    public GoogleMap f24402d;

    /* renamed from: e */
    public final ViewBindingProperty f24403e = new C19350a(new C7846b());

    /* renamed from: e.a.b.b.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/b/a/b$a.class */
    public static final class View$OnClickListenerC7845a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f24404a;

        /* renamed from: b */
        public final /* synthetic */ Object f24405b;

        public View$OnClickListenerC7845a(int i, Object obj) {
            this.f24404a = i;
            this.f24405b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BusinessAddressInput businessAddressInput;
            AbstractC7857j abstractC7857j;
            int i = this.f24404a;
            Double d = null;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                AbstractC7857j abstractC7857j2 = (AbstractC7857j) ((C7844b) this.f24405b).m29253PA().f57683a;
                if (abstractC7857j2 == null) {
                    return;
                }
                abstractC7857j2.cancel();
                return;
            }
            C7844b c7844b = (C7844b) this.f24405b;
            l[] lVarArr = C7844b.f24397f;
            C8110x m29254OA = c7844b.m29254OA();
            TextInputEditText textInputEditText = m29254OA.f25163i;
            s1.z.c.l.d(textInputEditText, "streetEditText");
            String obj = v.g0(String.valueOf(textInputEditText.getText())).toString();
            TextInputEditText textInputEditText2 = m29254OA.f25165k;
            s1.z.c.l.d(textInputEditText2, "zipCodeEditText");
            String obj2 = v.g0(String.valueOf(textInputEditText2.getText())).toString();
            TextInputEditText textInputEditText3 = m29254OA.f25158d;
            s1.z.c.l.d(textInputEditText3, "cityEditText");
            String obj3 = v.g0(String.valueOf(textInputEditText3.getText())).toString();
            C7858k c7858k = c7844b.f24399a;
            if (c7858k == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.e(obj, "street");
            s1.z.c.l.e(obj2, "zipCode");
            s1.z.c.l.e(obj3, "city");
            String str = c7858k.f24422c;
            if (r.p(obj)) {
                AbstractC7857j abstractC7857j3 = (AbstractC7857j) c7858k.f57683a;
                businessAddressInput = null;
                if (abstractC7857j3 != null) {
                    abstractC7857j3.mo29234K2(C3478R.C3480id.streetEditText, C3478R.string.BusinessProfile_ErrorRequired);
                    businessAddressInput = null;
                }
            } else if (r.p(obj3)) {
                AbstractC7857j abstractC7857j4 = (AbstractC7857j) c7858k.f57683a;
                businessAddressInput = null;
                if (abstractC7857j4 != null) {
                    abstractC7857j4.mo29234K2(C3478R.C3480id.cityEditText, C3478R.string.BusinessProfile_ErrorRequired);
                    businessAddressInput = null;
                }
            } else {
                boolean z = true;
                if (str != null) {
                    z = r.p(str);
                }
                if (z) {
                    AbstractC7857j abstractC7857j5 = (AbstractC7857j) c7858k.f57683a;
                    businessAddressInput = null;
                    if (abstractC7857j5 != null) {
                        abstractC7857j5.mo29236I2(C3478R.C3480id.countryEditText, C3478R.string.BusinessProfile_ErrorRequired);
                        businessAddressInput = null;
                    }
                } else {
                    LatLng latLng = c7858k.f24423d;
                    Double valueOf = latLng != null ? Double.valueOf(latLng.a) : null;
                    LatLng latLng2 = c7858k.f24423d;
                    if (latLng2 != null) {
                        d = Double.valueOf(latLng2.b);
                    }
                    businessAddressInput = new BusinessAddressInput(obj, obj2, obj3, str, valueOf, d);
                }
            }
            if (businessAddressInput == null || (abstractC7857j = (AbstractC7857j) c7858k.f57683a) == null) {
                return;
            }
            abstractC7857j.mo29230ff(businessAddressInput);
        }
    }

    /* renamed from: e.a.b.b.a.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/a/b$b.class */
    public static final class C7846b extends m implements s1.z.b.l<C7844b, C8110x> {
        public C7846b() {
            super(1);
        }

        /* renamed from: d */
        public Object m29251d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.businessAddressPlaceholder;
            FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
            if (frameLayout != null) {
                i = C3478R.C3480id.cancelButton;
                ImageButton imageButton = (ImageButton) requireView.findViewById(i);
                if (imageButton != null) {
                    i = C3478R.C3480id.cityEditText;
                    TextInputEditText findViewById = requireView.findViewById(i);
                    if (findViewById != null) {
                        i = C3478R.C3480id.cityInputLayout;
                        TextInputLayout textInputLayout = (TextInputLayout) requireView.findViewById(i);
                        if (textInputLayout != null) {
                            i = C3478R.C3480id.countryEditText;
                            TextView textView = (TextView) requireView.findViewById(i);
                            if (textView != null) {
                                i = C3478R.C3480id.countryInputLayout;
                                TextInputLayout textInputLayout2 = (TextInputLayout) requireView.findViewById(i);
                                if (textInputLayout2 != null) {
                                    i = C3478R.C3480id.mapLocationButton;
                                    Button button = (Button) requireView.findViewById(i);
                                    if (button != null) {
                                        i = C3478R.C3480id.mapOverlayView;
                                        View findViewById2 = requireView.findViewById(i);
                                        if (findViewById2 != null) {
                                            i = C3478R.C3480id.mapViewMarker;
                                            ImageView imageView = (ImageView) requireView.findViewById(i);
                                            if (imageView != null) {
                                                i = C3478R.C3480id.streetEditText;
                                                TextInputEditText findViewById3 = requireView.findViewById(i);
                                                if (findViewById3 != null) {
                                                    i = C3478R.C3480id.streetInputLayout;
                                                    TextInputLayout textInputLayout3 = (TextInputLayout) requireView.findViewById(i);
                                                    if (textInputLayout3 != null) {
                                                        i = C3478R.C3480id.submitButton;
                                                        ImageButton imageButton2 = (ImageButton) requireView.findViewById(i);
                                                        if (imageButton2 != null) {
                                                            i = C3478R.C3480id.zipCodeEditText;
                                                            TextInputEditText findViewById4 = requireView.findViewById(i);
                                                            if (findViewById4 != null) {
                                                                i = C3478R.C3480id.zipCodeInputLayout;
                                                                TextInputLayout textInputLayout4 = (TextInputLayout) requireView.findViewById(i);
                                                                if (textInputLayout4 != null) {
                                                                    return new C8110x((FrameLayout) requireView, frameLayout, imageButton, findViewById, textInputLayout, textView, textInputLayout2, button, findViewById2, imageView, findViewById3, textInputLayout3, imageButton2, findViewById4, textInputLayout4);
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
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.b.b.a.b$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/a/b$c.class */
    public static final class C7847c {
        public C7847c(f fVar) {
        }
    }

    /* renamed from: e.a.b.b.a.b$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/a/b$d.class */
    public static final class C7848d implements AdapterView.OnItemClickListener {
        public C7848d() {
            C7844b.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AbstractC7857j abstractC7857j;
            Object itemAtPosition = adapterView.getItemAtPosition(i);
            Objects.requireNonNull(itemAtPosition, "null cannot be cast to non-null type com.truecaller.common.network.country.CountryListDto.Country");
            String str = ((CountryListDto.C3679a) itemAtPosition).f10912c;
            if (str != null) {
                C7858k m29253PA = C7844b.this.m29253PA();
                s1.z.c.l.d(str, "it");
                Objects.requireNonNull(m29253PA);
                s1.z.c.l.e(str, "countryIso");
                m29253PA.f24422c = str;
                String mo28967c = m29253PA.f24424e.mo28967c(str);
                if (mo28967c == null || (abstractC7857j = (AbstractC7857j) m29253PA.f57683a) == null) {
                    return;
                }
                abstractC7857j.mo29235Iu(mo28967c);
            }
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: I2 */
    public void mo29236I2(int i, int i2) {
        View view = this.f24400b;
        if (view == null) {
            s1.z.c.l.l("rootView");
            throw null;
        }
        TextView textView = (TextView) view.findViewById(i);
        textView.setError(getString(i2));
        textView.requestFocus();
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: Iu */
    public void mo29235Iu(String str) {
        s1.z.c.l.e(str, "countryName");
        C8110x m29254OA = m29254OA();
        TextView textView = m29254OA.f25159e;
        s1.z.c.l.d(textView, "countryEditText");
        textView.setText(str);
        TextView textView2 = m29254OA.f25159e;
        s1.z.c.l.d(textView2, "countryEditText");
        textView2.setError(null);
        View view = getView();
        if (view != null) {
            C19286f.m13679Y(view, false, 0L, 2);
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: K2 */
    public void mo29234K2(int i, int i2) {
        View view = this.f24400b;
        if (view == null) {
            s1.z.c.l.l("rootView");
            throw null;
        }
        EditText editText = (EditText) view.findViewById(i);
        editText.setError(getString(i2));
        editText.requestFocus();
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: Lt */
    public void mo29233Lt(LatLng latLng) {
        s1.z.c.l.e(latLng, "latLng");
        C8110x m29254OA = m29254OA();
        if (this.f24402d != null) {
            m29252QA(latLng);
            ImageView imageView = m29254OA.f25162h;
            s1.z.c.l.d(imageView, "mapViewMarker");
            C19286f.m13684T(imageView);
            Button button = m29254OA.f25160f;
            s1.z.c.l.d(button, "mapLocationButton");
            C19286f.m13689O(button);
        }
    }

    /* renamed from: OA */
    public final C8110x m29254OA() {
        return (C8110x) this.f24403e.m34468b(this, f24397f[0]);
    }

    /* renamed from: PA */
    public final C7858k m29253PA() {
        C7858k c7858k = this.f24399a;
        if (c7858k != null) {
            return c7858k;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: QA */
    public final void m29252QA(LatLng latLng) {
        CameraPosition$Builder cameraPosition$Builder = new CameraPosition$Builder();
        cameraPosition$Builder.f6250b = 17.0f;
        cameraPosition$Builder.f6249a = latLng;
        CameraPosition m38628a = cameraPosition$Builder.m38628a();
        GoogleMap googleMap = this.f24402d;
        if (googleMap != null) {
            googleMap.m38707b(CameraUpdateFactory.m38710a(m38628a));
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7859l
    /* renamed from: Rs */
    public void mo29223Rs() {
        C7858k c7858k = this.f24399a;
        if (c7858k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC7857j abstractC7857j = (AbstractC7857j) c7858k.f57683a;
        if (abstractC7857j == null) {
            return;
        }
        abstractC7857j.mo29231Wt();
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: Vj */
    public void mo29232Vj(LatLng latLng) {
        Objects.requireNonNull(C7839a.f24387g);
        Fragment c7839a = new C7839a();
        Bundle bundle = new Bundle();
        bundle.putParcelable("arg_latlng", latLng);
        c7839a.setArguments(bundle);
        C26907a c26907a = new C26907a(getChildFragmentManager());
        c26907a.m1118o(0, 0, 0, C3478R.anim.fast_slide_out_down);
        c26907a.m1120m(C3478R.C3480id.businessAddressPlaceholder, c7839a, null);
        c26907a.m1128e(C7839a.class.getName());
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: Wt */
    public void mo29231Wt() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        if (childFragmentManager.m42940M() > 0) {
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            childFragmentManager2.m42951B(new FragmentManager.C0177n(C7839a.class.getName(), -1, 1), false);
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7859l
    /* renamed from: Wx */
    public void mo29222Wx(GeocodedBusinessAddress geocodedBusinessAddress) {
        s1.z.c.l.e(geocodedBusinessAddress, "address");
        C7858k c7858k = this.f24399a;
        if (c7858k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        s1.z.c.l.e(geocodedBusinessAddress, "address");
        c7858k.f24422c = geocodedBusinessAddress.getCountryCode();
        c7858k.f24423d = new LatLng(geocodedBusinessAddress.getLatitude(), geocodedBusinessAddress.getLongitude());
        AbstractC7857j abstractC7857j = (AbstractC7857j) c7858k.f57683a;
        if (abstractC7857j != null) {
            abstractC7857j.mo29226v4(geocodedBusinessAddress.getStreet(), geocodedBusinessAddress.getZipCode(), geocodedBusinessAddress.getCity(), c7858k.f24424e.mo28967c(geocodedBusinessAddress.getCountryCode()));
        }
        AbstractC7857j abstractC7857j2 = (AbstractC7857j) c7858k.f57683a;
        if (abstractC7857j2 != null) {
            abstractC7857j2.mo29233Lt(new LatLng(geocodedBusinessAddress.getLatitude(), geocodedBusinessAddress.getLongitude()));
        }
        AbstractC7857j abstractC7857j3 = (AbstractC7857j) c7858k.f57683a;
        if (abstractC7857j3 == null) {
            return;
        }
        abstractC7857j3.mo29231Wt();
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    public void cancel() {
        AbstractC7851d abstractC7851d = this.f24401c;
        if (abstractC7851d == null) {
            s1.z.c.l.l("businessAddressListener");
            throw null;
        }
        abstractC7851d.mo29249x1();
        View view = getView();
        if (view == null) {
            return;
        }
        C19286f.m13679Y(view, false, 0L, 2);
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: ff */
    public void mo29230ff(BusinessAddressInput businessAddressInput) {
        s1.z.c.l.e(businessAddressInput, "address");
        AbstractC7851d abstractC7851d = this.f24401c;
        if (abstractC7851d == null) {
            s1.z.c.l.l("businessAddressListener");
            throw null;
        }
        abstractC7851d.mo29250N1(businessAddressInput);
        View view = getView();
        if (view == null) {
            return;
        }
        C19286f.m13679Y(view, false, 0L, 2);
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C7844b.super.onAttach(context);
        this.f24401c = (AbstractC7851d) context;
    }

    public void onCreate(Bundle bundle) {
        C7844b.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f24399a = new C7858k((AbstractC8018a) ((C7905c) C18334g0.m15217m(activity)).f24522s.get());
        }
        C7858k c7858k = this.f24399a;
        BusinessAddressInput businessAddressInput = null;
        if (c7858k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            businessAddressInput = (BusinessAddressInput) arguments.getParcelable("arg_address");
        }
        c7858k.f24421b = businessAddressInput;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.business_profile_fragment_address, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…ddress, container, false)");
        this.f24400b = inflate;
        if (inflate != null) {
            return inflate;
        }
        s1.z.c.l.l("rootView");
        throw null;
    }

    public void onDestroyView() {
        C7844b.super.onDestroyView();
        C7858k c7858k = this.f24399a;
        if (c7858k != null) {
            c7858k.f57683a = null;
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7844b.super.onViewCreated(view, bundle);
        C19286f.m13679Y(view, false, 0L, 2);
        m29254OA().f25159e.setOnTouchListener(new View$OnTouchListenerC7852e(this));
        SupportMapFragment m42943J = getChildFragmentManager().m42943J(C3478R.C3480id.mapView);
        Objects.requireNonNull(m42943J, "null cannot be cast to non-null type com.google.android.gms.maps.SupportMapFragment");
        m42943J.OA(new C7849c(this));
        C7858k c7858k = this.f24399a;
        if (c7858k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        s1.z.c.l.e(this, "presenterView");
        c7858k.f57683a = this;
        BusinessAddressInput businessAddressInput = c7858k.f24421b;
        if (businessAddressInput != null) {
            String mo28967c = c7858k.f24424e.mo28967c(businessAddressInput.getCountryCode());
            if (mo28967c != null) {
                c7858k.f24422c = businessAddressInput.getCountryCode();
                if (businessAddressInput.getLatitude() != null && businessAddressInput.getLongitude() != null) {
                    c7858k.f24423d = new LatLng(businessAddressInput.getLatitude().doubleValue(), businessAddressInput.getLongitude().doubleValue());
                }
                AbstractC7857j abstractC7857j = (AbstractC7857j) c7858k.f57683a;
                if (abstractC7857j != null) {
                    abstractC7857j.mo29228te(businessAddressInput.getStreet(), businessAddressInput.getZipCode(), businessAddressInput.getCity());
                }
                AbstractC7857j abstractC7857j2 = (AbstractC7857j) c7858k.f57683a;
                if (abstractC7857j2 != null) {
                    abstractC7857j2.mo29225zi(mo28967c);
                }
            }
        } else {
            String mo28969a = c7858k.f24424e.mo28969a();
            String mo28966d = c7858k.f24424e.mo28966d();
            if (mo28969a != null && mo28966d != null) {
                c7858k.f24422c = mo28969a;
                AbstractC7857j abstractC7857j3 = (AbstractC7857j) c7858k.f57683a;
                if (abstractC7857j3 != null) {
                    abstractC7857j3.mo29225zi(mo28966d);
                }
            }
        }
        m29254OA().f25164j.setOnClickListener(new View$OnClickListenerC7845a(0, this));
        m29254OA().f25157c.setOnClickListener(new View$OnClickListenerC7845a(1, this));
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: s7 */
    public void mo29229s7() {
        C8110x m29254OA = m29254OA();
        ImageView imageView = m29254OA.f25162h;
        s1.z.c.l.d(imageView, "mapViewMarker");
        C19286f.m13689O(imageView);
        Button button = m29254OA.f25160f;
        s1.z.c.l.d(button, "mapLocationButton");
        C19286f.m13684T(button);
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: te */
    public void mo29228te(String str, String str2, String str3) {
        C8110x m29254OA = m29254OA();
        m29254OA.f25163i.setText(str);
        m29254OA.f25165k.setText(str2);
        m29254OA.f25158d.setText(str3);
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: um */
    public void mo29227um() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            new DialogC8225e(activity, C3478R.string.BusinessProfile_SelectCountry, C3478R.string.BusinessProfile_SearchCountryName, 0, new C7848d(), null).show();
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: v4 */
    public void mo29226v4(String str, String str2, String str3, String str4) {
        C8110x m29254OA = m29254OA();
        m29254OA.f25163i.setText(str);
        m29254OA.f25165k.setText(str2);
        m29254OA.f25158d.setText(str3);
        TextView textView = m29254OA.f25159e;
        s1.z.c.l.d(textView, "countryEditText");
        textView.setText(str4);
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: zi */
    public void mo29225zi(String str) {
        s1.z.c.l.e(str, "countryName");
        TextView textView = m29254OA().f25159e;
        s1.z.c.l.d(textView, "binding.countryEditText");
        textView.setText(str);
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7857j
    /* renamed from: zz */
    public void mo29224zz(LatLng latLng) {
        s1.z.c.l.e(latLng, "latLng");
        C8110x m29254OA = m29254OA();
        m29252QA(latLng);
        ImageView imageView = m29254OA.f25162h;
        s1.z.c.l.d(imageView, "mapViewMarker");
        C19286f.m13684T(imageView);
        Button button = m29254OA.f25160f;
        s1.z.c.l.d(button, "mapLocationButton");
        C19286f.m13689O(button);
    }
}
