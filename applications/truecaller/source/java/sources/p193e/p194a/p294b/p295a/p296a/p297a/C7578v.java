package p193e.p194a.p294b.p295a.p296a.p297a;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.material.C2080R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import com.truecaller.profile.data.dto.businessV2.OpenHours;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p294b.p295a.p296a.p306d.C7633b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8090n;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� >2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b=\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00132\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0019\u001a\u00020\u0004*\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00160\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001d\u0010$\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00160\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\u001dR\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R#\u00104\u001a\b\u0012\u0004\u0012\u00020\u00170/8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001d\u00109\u001a\u0002058F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b6\u00101\u001a\u0004\b7\u00108R\u001c\u0010<\u001a\b\u0012\u0004\u0012\u00020:0\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010\u001d¨\u0006?"}, d2 = {"Le/a/b/a/a/a/v;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/widget/Spinner;", "", "time", "RA", "(Landroid/widget/Spinner;Ljava/lang/String;)V", "", AbstractC2405c.f7629a, "Ljava/util/List;", "closeSpinners", "Le/a/b/m/n;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/n;", "binding", C22021b.f61237c, "openSpinners", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "", "g", "Ls1/g;", "QA", "()[Ljava/lang/String;", "timesArray", "Le/a/b/a/a/d/b;", "f", "PA", "()Le/a/b/a/a/d/b;", "bizProfileViewModel", "Landroid/widget/CheckBox;", "d", "daysCheckboxes", "<init>", "i", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.a.v */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v.class */
public final class C7578v extends e {

    /* renamed from: h */
    public static final /* synthetic */ l[] f23897h = {C22128a.m8621g0(C7578v.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BottomsheetBizHoursBinding;", 0)};

    /* renamed from: i */
    public static final C7581c f23898i = new C7581c(null);
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f23899a;

    /* renamed from: f */
    public final g f23904f;

    /* renamed from: b */
    public final List<Spinner> f23900b = new ArrayList();

    /* renamed from: c */
    public final List<Spinner> f23901c = new ArrayList();

    /* renamed from: d */
    public final List<CheckBox> f23902d = new ArrayList();

    /* renamed from: e */
    public final ViewBindingProperty f23903e = new C19350a(new C7579a());

    /* renamed from: g */
    public final g f23905g = C25225a.m3978P1(new C7586h());

    /* renamed from: e.a.b.a.a.a.v$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$a.class */
    public static final class C7579a extends m implements s1.z.b.l<C7578v, C8090n> {
        public C7579a() {
            super(1);
        }

        /* renamed from: d */
        public Object m29506d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.btnSave;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C3478R.C3480id.chkEachDayTime;
                Switch r0 = (Switch) requireView.findViewById(i);
                if (r0 != null) {
                    i = C3478R.C3480id.chkFriday;
                    CheckBox checkBox = (CheckBox) requireView.findViewById(i);
                    if (checkBox != null) {
                        i = C3478R.C3480id.chkMonday;
                        CheckBox checkBox2 = (CheckBox) requireView.findViewById(i);
                        if (checkBox2 != null) {
                            i = C3478R.C3480id.chkSaturday;
                            CheckBox checkBox3 = (CheckBox) requireView.findViewById(i);
                            if (checkBox3 != null) {
                                i = C3478R.C3480id.chkSunday;
                                CheckBox checkBox4 = (CheckBox) requireView.findViewById(i);
                                if (checkBox4 != null) {
                                    i = C3478R.C3480id.chkThursday;
                                    CheckBox checkBox5 = (CheckBox) requireView.findViewById(i);
                                    if (checkBox5 != null) {
                                        i = C3478R.C3480id.chkWednesday;
                                        CheckBox checkBox6 = (CheckBox) requireView.findViewById(i);
                                        if (checkBox6 != null) {
                                            i = C3478R.C3480id.chktuesday;
                                            CheckBox checkBox7 = (CheckBox) requireView.findViewById(i);
                                            if (checkBox7 != null) {
                                                i = C3478R.C3480id.fridayCloseSpinner;
                                                Spinner spinner = (Spinner) requireView.findViewById(i);
                                                if (spinner != null) {
                                                    i = C3478R.C3480id.fridayOpenSpinner;
                                                    Spinner spinner2 = (Spinner) requireView.findViewById(i);
                                                    if (spinner2 != null) {
                                                        i = C3478R.C3480id.lblClosingTime;
                                                        TextView textView = (TextView) requireView.findViewById(i);
                                                        if (textView != null) {
                                                            i = C3478R.C3480id.lblFriday;
                                                            TextView textView2 = (TextView) requireView.findViewById(i);
                                                            if (textView2 != null) {
                                                                i = C3478R.C3480id.lblMonday;
                                                                TextView textView3 = (TextView) requireView.findViewById(i);
                                                                if (textView3 != null) {
                                                                    i = C3478R.C3480id.lblOpeningTime;
                                                                    TextView textView4 = (TextView) requireView.findViewById(i);
                                                                    if (textView4 != null) {
                                                                        i = C3478R.C3480id.lblSaturday;
                                                                        TextView textView5 = (TextView) requireView.findViewById(i);
                                                                        if (textView5 != null) {
                                                                            i = C3478R.C3480id.lblSunday;
                                                                            TextView textView6 = (TextView) requireView.findViewById(i);
                                                                            if (textView6 != null) {
                                                                                i = C3478R.C3480id.lblThursday;
                                                                                TextView textView7 = (TextView) requireView.findViewById(i);
                                                                                if (textView7 != null) {
                                                                                    i = C3478R.C3480id.lblWednesday;
                                                                                    TextView textView8 = (TextView) requireView.findViewById(i);
                                                                                    if (textView8 != null) {
                                                                                        i = C3478R.C3480id.lbltuesday;
                                                                                        TextView textView9 = (TextView) requireView.findViewById(i);
                                                                                        if (textView9 != null) {
                                                                                            i = C3478R.C3480id.mainClosingSpinner;
                                                                                            Spinner spinner3 = (Spinner) requireView.findViewById(i);
                                                                                            if (spinner3 != null) {
                                                                                                i = C3478R.C3480id.mainOpeningSpinner;
                                                                                                Spinner spinner4 = (Spinner) requireView.findViewById(i);
                                                                                                if (spinner4 != null) {
                                                                                                    i = C3478R.C3480id.mondayCloseSpinner;
                                                                                                    Spinner spinner5 = (Spinner) requireView.findViewById(i);
                                                                                                    if (spinner5 != null) {
                                                                                                        i = C3478R.C3480id.mondayOpenSpinner;
                                                                                                        Spinner spinner6 = (Spinner) requireView.findViewById(i);
                                                                                                        if (spinner6 != null) {
                                                                                                            i = C3478R.C3480id.saturdayCloseSpinner;
                                                                                                            Spinner spinner7 = (Spinner) requireView.findViewById(i);
                                                                                                            if (spinner7 != null) {
                                                                                                                i = C3478R.C3480id.saturdayOpenSpinner;
                                                                                                                Spinner spinner8 = (Spinner) requireView.findViewById(i);
                                                                                                                if (spinner8 != null) {
                                                                                                                    i = C3478R.C3480id.sundayCloseSpinner;
                                                                                                                    Spinner spinner9 = (Spinner) requireView.findViewById(i);
                                                                                                                    if (spinner9 != null) {
                                                                                                                        i = C3478R.C3480id.sundayOpenSpinner;
                                                                                                                        Spinner spinner10 = (Spinner) requireView.findViewById(i);
                                                                                                                        if (spinner10 != null) {
                                                                                                                            i = C3478R.C3480id.thursdayCloseSpinner;
                                                                                                                            Spinner spinner11 = (Spinner) requireView.findViewById(i);
                                                                                                                            if (spinner11 != null) {
                                                                                                                                i = C3478R.C3480id.thursdayOpenSpinner;
                                                                                                                                Spinner spinner12 = (Spinner) requireView.findViewById(i);
                                                                                                                                if (spinner12 != null) {
                                                                                                                                    i = C3478R.C3480id.tuesdayCloseSpinner;
                                                                                                                                    Spinner spinner13 = (Spinner) requireView.findViewById(i);
                                                                                                                                    if (spinner13 != null) {
                                                                                                                                        i = C3478R.C3480id.tuesdayOpenSpinner;
                                                                                                                                        Spinner spinner14 = (Spinner) requireView.findViewById(i);
                                                                                                                                        if (spinner14 != null) {
                                                                                                                                            i = C3478R.C3480id.wednesdayCloseSpinner;
                                                                                                                                            Spinner spinner15 = (Spinner) requireView.findViewById(i);
                                                                                                                                            if (spinner15 != null) {
                                                                                                                                                i = C3478R.C3480id.wednesdayOpenSpinner;
                                                                                                                                                Spinner spinner16 = (Spinner) requireView.findViewById(i);
                                                                                                                                                if (spinner16 != null) {
                                                                                                                                                    return new C8090n((ScrollView) requireView, button, r0, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, spinner, spinner2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, spinner3, spinner4, spinner5, spinner6, spinner7, spinner8, spinner9, spinner10, spinner11, spinner12, spinner13, spinner14, spinner15, spinner16);
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
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.b.a.a.a.v$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$b.class */
    public static final class C7580b extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f23906b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7580b(a aVar) {
            super(0);
            this.f23906b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f23906b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.b.a.a.a.v$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$c.class */
    public static final class C7581c {
        public C7581c(f fVar) {
        }
    }

    /* renamed from: e.a.b.a.a.a.v$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$d.class */
    public static final class C7582d extends m implements a<AbstractC26996c1> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7582d() {
            super(0);
            C7578v.this = r4;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = C7578v.this.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity;
        }
    }

    /* renamed from: e.a.b.a.a.a.v$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$e.class */
    public static final class C7583e extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7583e() {
            super(0);
            C7578v.this = r4;
        }

        public Object invoke() {
            C26986a1.AbstractC26987b abstractC26987b = C7578v.this.f23899a;
            if (abstractC26987b != null) {
                return abstractC26987b;
            }
            s1.z.c.l.l("viewModelFactory");
            throw null;
        }
    }

    /* renamed from: e.a.b.a.a.a.v$f */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$f.class */
    public static final class DialogInterface$OnShowListenerC7584f implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public static final DialogInterface$OnShowListenerC7584f f23909a = new DialogInterface$OnShowListenerC7584f();

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            Objects.requireNonNull(dialogInterface, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
            FrameLayout frameLayout = (FrameLayout) ((d) dialogInterface).findViewById(C2080R.C2082id.design_bottom_sheet);
            if (frameLayout != null) {
                BottomSheetBehavior H = BottomSheetBehavior.H(frameLayout);
                s1.z.c.l.d(H, "BottomSheetBehavior.from…rameLayout?>(bottomSheet)");
                H.M(3);
                BottomSheetBehavior H2 = BottomSheetBehavior.H(frameLayout);
                s1.z.c.l.d(H2, "BottomSheetBehavior.from…rameLayout?>(bottomSheet)");
                H2.D = true;
                BottomSheetBehavior H3 = BottomSheetBehavior.H(frameLayout);
                s1.z.c.l.d(H3, "BottomSheetBehavior.from…rameLayout?>(bottomSheet)");
                H3.K(true);
            }
        }
    }

    /* renamed from: e.a.b.a.a.a.v$g */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$g.class */
    public static final class View$OnClickListenerC7585g implements View.OnClickListener {
        public View$OnClickListenerC7585g() {
            C7578v.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7578v.this.m29509PA().m29465e(new BusinessProfileRequest(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null));
        }
    }

    /* renamed from: e.a.b.a.a.a.v$h */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/v$h.class */
    public static final class C7586h extends m implements a<String[]> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7586h() {
            super(0);
            C7578v.this = r4;
        }

        public Object invoke() {
            return C7578v.this.getResources().getStringArray(C3478R.array.BusinessEditProfile_time);
        }
    }

    public C7578v() {
        C7582d c7582d = new C7582d();
        this.f23904f = MediaSessionCompat.m43278P(this, d0.a(C7633b.class), new C7580b(c7582d), new C7583e());
    }

    /* renamed from: OA */
    public final C8090n m29510OA() {
        return (C8090n) this.f23903e.m34468b(this, f23897h[0]);
    }

    /* renamed from: PA */
    public final C7633b m29509PA() {
        return (C7633b) this.f23904f.getValue();
    }

    /* renamed from: QA */
    public final String[] m29508QA() {
        return (String[]) this.f23905g.getValue();
    }

    /* renamed from: RA */
    public final void m29507RA(Spinner spinner, String str) {
        int m3854q1 = C25225a.m3854q1(m29508QA(), str);
        if (m3854q1 > -1) {
            spinner.setSelection(m3854q1);
        }
    }

    public void onCreate(Bundle bundle) {
        C7578v.super.onCreate(bundle);
        setStyle(2, C3478R.style.StyleX_FormBottomSheetDialogTheme);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d onCreateDialog = C7578v.super.onCreateDialog(bundle);
        Objects.requireNonNull(onCreateDialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        d dVar = onCreateDialog;
        dVar.setOnShowListener(DialogInterface$OnShowListenerC7584f.f23909a);
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        this.f23899a = (C26986a1.AbstractC26987b) ((C7805e) C18334g0.m15219l(requireActivity)).f24270K.get();
        return layoutInflater.inflate(C3478R.layout.bottomsheet_biz_hours, viewGroup, false);
    }

    public void onDestroyView() {
        C7578v.super.onDestroyView();
        this.f23900b.clear();
        this.f23901c.clear();
        this.f23902d.clear();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7578v.super.onViewCreated(view, bundle);
        C8090n m29510OA = m29510OA();
        List<Spinner> list = this.f23900b;
        Spinner spinner = m29510OA.f25032s;
        s1.z.c.l.d(spinner, "sundayOpenSpinner");
        list.add(spinner);
        List<Spinner> list2 = this.f23900b;
        Spinner spinner2 = m29510OA.f25028o;
        s1.z.c.l.d(spinner2, "mondayOpenSpinner");
        list2.add(spinner2);
        List<Spinner> list3 = this.f23900b;
        Spinner spinner3 = m29510OA.f25036w;
        s1.z.c.l.d(spinner3, "tuesdayOpenSpinner");
        list3.add(spinner3);
        List<Spinner> list4 = this.f23900b;
        Spinner spinner4 = m29510OA.f25038y;
        s1.z.c.l.d(spinner4, "wednesdayOpenSpinner");
        list4.add(spinner4);
        List<Spinner> list5 = this.f23900b;
        Spinner spinner5 = m29510OA.f25034u;
        s1.z.c.l.d(spinner5, "thursdayOpenSpinner");
        list5.add(spinner5);
        List<Spinner> list6 = this.f23900b;
        Spinner spinner6 = m29510OA.f25024k;
        s1.z.c.l.d(spinner6, "fridayOpenSpinner");
        list6.add(spinner6);
        List<Spinner> list7 = this.f23900b;
        Spinner spinner7 = m29510OA.f25030q;
        s1.z.c.l.d(spinner7, "saturdayOpenSpinner");
        list7.add(spinner7);
        List<Spinner> list8 = this.f23901c;
        Spinner spinner8 = m29510OA.f25031r;
        s1.z.c.l.d(spinner8, "sundayCloseSpinner");
        list8.add(spinner8);
        List<Spinner> list9 = this.f23901c;
        Spinner spinner9 = m29510OA.f25027n;
        s1.z.c.l.d(spinner9, "mondayCloseSpinner");
        list9.add(spinner9);
        List<Spinner> list10 = this.f23901c;
        Spinner spinner10 = m29510OA.f25035v;
        s1.z.c.l.d(spinner10, "tuesdayCloseSpinner");
        list10.add(spinner10);
        List<Spinner> list11 = this.f23901c;
        Spinner spinner11 = m29510OA.f25037x;
        s1.z.c.l.d(spinner11, "wednesdayCloseSpinner");
        list11.add(spinner11);
        List<Spinner> list12 = this.f23901c;
        Spinner spinner12 = m29510OA.f25033t;
        s1.z.c.l.d(spinner12, "thursdayCloseSpinner");
        list12.add(spinner12);
        List<Spinner> list13 = this.f23901c;
        Spinner spinner13 = m29510OA.f25023j;
        s1.z.c.l.d(spinner13, "fridayCloseSpinner");
        list13.add(spinner13);
        List<Spinner> list14 = this.f23901c;
        Spinner spinner14 = m29510OA.f25029p;
        s1.z.c.l.d(spinner14, "saturdayCloseSpinner");
        list14.add(spinner14);
        List<CheckBox> list15 = this.f23902d;
        CheckBox checkBox = m29510OA.f25019f;
        s1.z.c.l.d(checkBox, "chkSunday");
        list15.add(checkBox);
        List<CheckBox> list16 = this.f23902d;
        CheckBox checkBox2 = m29510OA.f25017d;
        s1.z.c.l.d(checkBox2, "chkMonday");
        list16.add(checkBox2);
        List<CheckBox> list17 = this.f23902d;
        CheckBox checkBox3 = m29510OA.f25022i;
        s1.z.c.l.d(checkBox3, "chktuesday");
        list17.add(checkBox3);
        List<CheckBox> list18 = this.f23902d;
        CheckBox checkBox4 = m29510OA.f25021h;
        s1.z.c.l.d(checkBox4, "chkWednesday");
        list18.add(checkBox4);
        List<CheckBox> list19 = this.f23902d;
        CheckBox checkBox5 = m29510OA.f25020g;
        s1.z.c.l.d(checkBox5, "chkThursday");
        list19.add(checkBox5);
        List<CheckBox> list20 = this.f23902d;
        CheckBox checkBox6 = m29510OA.f25016c;
        s1.z.c.l.d(checkBox6, "chkFriday");
        list20.add(checkBox6);
        List<CheckBox> list21 = this.f23902d;
        CheckBox checkBox7 = m29510OA.f25018e;
        s1.z.c.l.d(checkBox7, "chkSaturday");
        list21.add(checkBox7);
        m29510OA().f25014a.setOnClickListener(new View$OnClickListenerC7585g());
        m29509PA().f23996m.m42867f(getViewLifecycleOwner(), new C7519c0(this));
        C8090n m29510OA2 = m29510OA();
        m29510OA2.f25015b.setOnCheckedChangeListener(new C7482a0(m29510OA2, this));
        C7494b0 c7494b0 = new C7494b0(this);
        C8090n m29510OA3 = m29510OA();
        Spinner spinner15 = m29510OA3.f25026m;
        s1.z.c.l.d(spinner15, "mainOpeningSpinner");
        c7494b0.m29553a(spinner15);
        Spinner spinner16 = m29510OA3.f25025l;
        s1.z.c.l.d(spinner16, "mainClosingSpinner");
        c7494b0.m29553a(spinner16);
        Spinner spinner17 = m29510OA3.f25025l;
        s1.z.c.l.d(spinner17, "mainClosingSpinner");
        m29507RA(spinner17, "07:30 pm");
        for (int i = 0; i < 7; i++) {
            c7494b0.m29553a(this.f23900b.get(i));
            c7494b0.m29553a(this.f23901c.get(i));
            m29507RA(this.f23901c.get(i), "07:30 pm");
        }
        C7588x c7588x = C7588x.f23914b;
        for (int i2 = 0; i2 < 7; i2++) {
            C7588x c7588x2 = C7588x.f23914b;
            CheckBox checkBox8 = this.f23902d.get(i2);
            Spinner spinner18 = this.f23900b.get(i2);
            Spinner spinner19 = this.f23901c.get(i2);
            Objects.requireNonNull(c7588x2);
            s1.z.c.l.e(checkBox8, "chk");
            s1.z.c.l.e(spinner18, "openSpinner");
            s1.z.c.l.e(spinner19, "closeSpinner");
            checkBox8.setOnCheckedChangeListener(new C7587w(spinner18, spinner19));
        }
        Bundle arguments = getArguments();
        String str = null;
        ArrayList<OpenHours> parcelableArrayList = arguments != null ? arguments.getParcelableArrayList("biz_open_hours") : null;
        Bundle arguments2 = getArguments();
        if (arguments2 != null) {
            str = arguments2.getString("biz_loc_id");
        }
        C7589y c7589y = new C7589y(this);
        if (parcelableArrayList == null) {
            C8090n m29510OA4 = m29510OA();
            Switch r0 = m29510OA4.f25015b;
            s1.z.c.l.d(r0, "chkEachDayTime");
            r0.setChecked(false);
            Spinner spinner20 = m29510OA4.f25026m;
            s1.z.c.l.d(spinner20, "mainOpeningSpinner");
            spinner20.setEnabled(true);
            Spinner spinner21 = m29510OA4.f25025l;
            s1.z.c.l.d(spinner21, "mainClosingSpinner");
            spinner21.setEnabled(true);
        } else if (C18334g0.m15234d0(parcelableArrayList)) {
            C8090n m29510OA5 = m29510OA();
            Switch r02 = m29510OA5.f25015b;
            s1.z.c.l.d(r02, "chkEachDayTime");
            r02.setChecked(false);
            Spinner spinner22 = m29510OA5.f25026m;
            s1.z.c.l.d(spinner22, "mainOpeningSpinner");
            spinner22.setEnabled(true);
            Spinner spinner23 = m29510OA5.f25025l;
            s1.z.c.l.d(spinner23, "mainClosingSpinner");
            spinner23.setEnabled(true);
            Spinner spinner24 = m29510OA5.f25026m;
            s1.z.c.l.d(spinner24, "mainOpeningSpinner");
            m29507RA(spinner24, ((OpenHours) parcelableArrayList.get(0)).getOpens());
            Spinner spinner25 = m29510OA5.f25025l;
            s1.z.c.l.d(spinner25, "mainClosingSpinner");
            m29507RA(spinner25, ((OpenHours) parcelableArrayList.get(0)).getCloses());
            for (OpenHours openHours : parcelableArrayList) {
                Integer weekday = openHours.getWeekday();
                if (weekday != null) {
                    this.f23902d.get(weekday.intValue() - 1).setChecked(true);
                }
            }
        } else {
            Switch r03 = m29510OA().f25015b;
            s1.z.c.l.d(r03, "binding.chkEachDayTime");
            r03.setChecked(true);
            for (OpenHours openHours2 : parcelableArrayList) {
                Integer weekday2 = openHours2.getWeekday();
                if (weekday2 != null) {
                    int intValue = weekday2.intValue() - 1;
                    CheckBox checkBox9 = this.f23902d.get(intValue);
                    Spinner spinner26 = this.f23900b.get(intValue);
                    Spinner spinner27 = this.f23901c.get(intValue);
                    String opens = openHours2.getOpens();
                    String closes = openHours2.getCloses();
                    s1.z.c.l.e(checkBox9, "chk");
                    s1.z.c.l.e(spinner26, "openSpinner");
                    s1.z.c.l.e(spinner27, "closeSpinner");
                    checkBox9.setChecked(true);
                    c7589y.f23915b.m29507RA(spinner26, opens);
                    c7589y.f23915b.m29507RA(spinner27, closes);
                }
            }
        }
        m29510OA().f25014a.setOnClickListener(new View$OnClickListenerC7590z(this, str));
    }
}
