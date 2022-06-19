package p193e.p194a.p294b.p295a.p318d.p319a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.C2080R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.awareness.p147ui.BusinessAwarenessDetailsActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7758a;
import p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7759b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8096q;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� '2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001;B\u0007¢\u0006\u0004\b:\u0010)J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ-\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\t2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u001dH\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u001dH\u0016¢\u0006\u0004\b'\u0010%J\u000f\u0010(\u001a\u00020\tH\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u001dH\u0016¢\u0006\u0004\b+\u0010%R\u001d\u00101\u001a\u00020,8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\"\u00109\u001a\u0002028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006<"}, d2 = {"Le/a/b/a/d/a/a;", "Le/m/a/g/e/e;", "Landroid/content/DialogInterface$OnShowListener;", "Le/a/b/a/d/b/b;", "", "getTheme", "()I", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/content/DialogInterface;", "dialog", "onShow", "(Landroid/content/DialogInterface;)V", "", "getType", "()Ljava/lang/String;", "illustration", "K9", "(I)V", "title", "setTitle", "(Ljava/lang/String;)V", "desc", "d", "s", "()V", "type", "vw", "Le/a/b/m/q;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/q;", "binding", "Le/a/b/a/d/b/a;", "a", "Le/a/b/a/d/b/a;", "getPresenter", "()Le/a/b/a/d/b/a;", "setPresenter", "(Le/a/b/a/d/b/a;)V", "presenter", "<init>", AbstractC2405c.f7629a, "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.d.a.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/d/a/a.class */
public final class DialogInterface$OnShowListenerC7754a extends e implements DialogInterface.OnShowListener, AbstractC7759b {

    /* renamed from: c */
    public static final /* synthetic */ l[] f24213c = {C22128a.m8621g0(DialogInterface$OnShowListenerC7754a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BottomsheetBusinessAwarenessBinding;", 0)};

    /* renamed from: d */
    public static final C7757c f24214d = new C7757c(null);
    @Inject

    /* renamed from: a */
    public AbstractC7758a f24215a;

    /* renamed from: b */
    public final ViewBindingProperty f24216b = new C19350a(new C7756b());

    /* renamed from: e.a.b.a.d.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/a/d/a/a$a.class */
    public static final class View$OnClickListenerC7755a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f24217a;

        /* renamed from: b */
        public final /* synthetic */ Object f24218b;

        public View$OnClickListenerC7755a(int i, Object obj) {
            this.f24217a = i;
            this.f24218b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f24217a;
            if (i == 0) {
                AbstractC7758a abstractC7758a = ((DialogInterface$OnShowListenerC7754a) this.f24218b).f24215a;
                if (abstractC7758a != null) {
                    abstractC7758a.mo29299G0();
                } else {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC7758a abstractC7758a2 = ((DialogInterface$OnShowListenerC7754a) this.f24218b).f24215a;
                if (abstractC7758a2 != null) {
                    abstractC7758a2.mo29298a7();
                } else {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.b.a.d.a.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/d/a/a$b.class */
    public static final class C7756b extends m implements s1.z.b.l<DialogInterface$OnShowListenerC7754a, C8096q> {
        public C7756b() {
            super(1);
        }

        /* renamed from: d */
        public Object m29304d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.buttonDemo;
            MaterialButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C3478R.C3480id.buttonDismiss;
                MaterialButton findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C3478R.C3480id.imageVbaIllus;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(i);
                    if (appCompatImageView != null) {
                        i = C3478R.C3480id.textVbaDesc;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) requireView.findViewById(i);
                        if (appCompatTextView != null) {
                            i = C3478R.C3480id.textVbaTitle;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) requireView.findViewById(i);
                            if (appCompatTextView2 != null) {
                                return new C8096q((ConstraintLayout) requireView, findViewById, findViewById2, appCompatImageView, appCompatTextView, appCompatTextView2);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.b.a.d.a.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/d/a/a$c.class */
    public static final class C7757c {
        public C7757c(f fVar) {
        }
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7759b
    /* renamed from: K9 */
    public void mo29303K9(int i) {
        Context context = getContext();
        if (context != null) {
            C17891a1.C17902k.m15658M1(this).m8961y(C19291g.m13600P(context, i)).m8427O(m29305OA().f25065c);
        }
    }

    /* renamed from: OA */
    public final C8096q m29305OA() {
        return (C8096q) this.f24216b.m34468b(this, f24213c[0]);
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7759b
    /* renamed from: d */
    public void mo29302d(String str) {
        s1.z.c.l.e(str, "desc");
        AppCompatTextView appCompatTextView = m29305OA().f25066d;
        s1.z.c.l.d(appCompatTextView, "binding.textVbaDesc");
        appCompatTextView.setText(str);
    }

    public int getTheme() {
        return C3478R.style.Widget_Bizmon_BottomSheetDialog;
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7759b
    public String getType() {
        String string;
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("type")) == null) {
            throw new Exception("Type should be passed");
        }
        return string;
    }

    public void onCreate(Bundle bundle) {
        DialogInterface$OnShowListenerC7754a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f24215a = (AbstractC7758a) ((C7805e) C18334g0.m15219l(activity)).f24313n0.get();
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d dVar = new d(requireContext(), C3478R.style.Widget_Bizmon_BottomSheetDialog);
        Window window = dVar.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
        dVar.setOnShowListener(this);
        dVar.setCanceledOnTouchOutside(false);
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3478R.layout.bottomsheet_business_awareness, viewGroup, false);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        try {
            if (dialogInterface == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
            }
            FrameLayout frameLayout = (FrameLayout) ((d) dialogInterface).findViewById(C2080R.C2082id.design_bottom_sheet);
            if (frameLayout == null) {
                return;
            }
            BottomSheetBehavior H = BottomSheetBehavior.H(frameLayout);
            H.L(frameLayout.getHeight());
            H.M(3);
            H.K(true);
        } catch (Exception e) {
            C10480a.m26061I1(new AssertionError("Bottom sheet unavailable"));
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        DialogInterface$OnShowListenerC7754a.super.onViewCreated(view, bundle);
        AbstractC7758a abstractC7758a = this.f24215a;
        if (abstractC7758a == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7758a.mo9029Y0(this);
        C8096q m29305OA = m29305OA();
        m29305OA.f25064b.setOnClickListener(new View$OnClickListenerC7755a(0, this));
        m29305OA.f25063a.setOnClickListener(new View$OnClickListenerC7755a(1, this));
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7759b
    /* renamed from: s */
    public void mo29301s() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7759b
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        AppCompatTextView appCompatTextView = m29305OA().f25067e;
        s1.z.c.l.d(appCompatTextView, "binding.textVbaTitle");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7759b
    /* renamed from: vw */
    public void mo29300vw(String str) {
        s1.z.c.l.e(str, "type");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(str, "type");
        Intent intent = new Intent(requireContext, BusinessAwarenessDetailsActivity.class);
        intent.putExtra("type", str);
        startActivity(intent);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
    }
}
