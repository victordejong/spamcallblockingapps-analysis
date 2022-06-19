package p193e.p194a.p1080o.p1081a.p1089g;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.view.CustomTextInputLayout;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f;
import p193e.p194a.p1080o.p1102o.C18789b;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018��*\b\b��\u0010\u0002*\u00020\u0001*\u000e\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u00028��0\u00032\u00020\u00052\u00020\u0001B\u0007¢\u0006\u0004\bG\u0010!J\u000f\u0010\u0006\u001a\u00028\u0001H&¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00028��H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J-\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\fH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\f2\u0006\u0010*\u001a\u00020\"H\u0016¢\u0006\u0004\b+\u0010%J\u000f\u0010,\u001a\u00020\fH\u0016¢\u0006\u0004\b,\u0010!J\u000f\u0010-\u001a\u00020\fH\u0016¢\u0006\u0004\b-\u0010!J\u0017\u00100\u001a\u00020\f2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\fH\u0016¢\u0006\u0004\b2\u0010!R\u0016\u00106\u001a\u0002038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b4\u00105R\u0016\u00109\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u001d\u0010?\u001a\u00020:8D@\u0004X\u0084\u0084\u0002¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00018\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006H"}, d2 = {"Le/a/o/a/g/a;", "Le/a/o/a/g/f;", "PV", "Le/a/o/a/g/e;", "Presenter", "Le/m/a/g/e/e;", "SA", "()Le/a/o/a/g/e;", "QA", "()Le/a/o/a/g/f;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "", "getTheme", "()I", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "", "message", "l", "(Ljava/lang/String;)V", "", "enabled", "C8", "(Z)V", "errorMessage", "a5", "s", "t7", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "onDestroyView", "Le/a/o/a/g/d;", "RA", "()Le/a/o/a/g/d;", "type", AbstractC2405c.f7629a, "Z", "notifyDoneOnDismiss", "Le/a/o/o/b;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/o/o/b;", "binding", "Le/a/o/a/g/c;", "PA", "()Le/a/o/a/g/c;", "listener", "a", "Le/a/o/a/g/e;", "presenter", "<init>", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.g.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/a.class */
public abstract class AbstractC18584a<PV extends AbstractC18598f, Presenter extends AbstractC18597e<PV>> extends e implements AbstractC18598f {

    /* renamed from: d */
    public static final /* synthetic */ l[] f52366d = {C22128a.m8621g0(AbstractC18584a.class, "binding", "getBinding()Lcom/truecaller/contextcall/databinding/BottomSheetCustomMessageContextCallBinding;", 0)};

    /* renamed from: a */
    public Presenter f52367a;

    /* renamed from: b */
    public final ViewBindingProperty f52368b = new C19350a(new C18585a());

    /* renamed from: c */
    public boolean f52369c;

    /* renamed from: e.a.o.a.g.a$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/a$a.class */
    public static final class C18585a extends m implements s1.z.b.l<AbstractC18584a<PV, Presenter>, C18789b> {
        public C18585a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14751d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3771R.C3773id.communityGuidelineText;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C3771R.C3773id.customTextInputLayout;
                CustomTextInputLayout customTextInputLayout = (CustomTextInputLayout) requireView.findViewById(i);
                if (customTextInputLayout != null) {
                    i = C3771R.C3773id.dismissButton;
                    Button button = (Button) requireView.findViewById(i);
                    if (button != null) {
                        i = C3771R.C3773id.doneButton;
                        Button button2 = (Button) requireView.findViewById(i);
                        if (button2 != null) {
                            i = C3771R.C3773id.title;
                            TextView textView2 = (TextView) requireView.findViewById(i);
                            if (textView2 != null) {
                                return new C18789b((ScrollView) requireView, textView, customTextInputLayout, button, button2, textView2);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.o.a.g.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/a$b.class */
    public static final class C18586b implements CustomTextInputLayout.AbstractC3791a {
        public C18586b() {
            AbstractC18584a.this = r4;
        }

        @Override // com.truecaller.contextcall.utils.view.CustomTextInputLayout.AbstractC3791a
        /* renamed from: T */
        public void mo14750T(CharSequence charSequence) {
            Presenter presenter = AbstractC18584a.this.f52367a;
            if (presenter != null) {
                presenter.mo14745T(charSequence);
            }
        }

        @Override // com.truecaller.contextcall.utils.view.CustomTextInputLayout.AbstractC3791a
        /* renamed from: w1 */
        public void mo14749w1(String str) {
            Presenter presenter = AbstractC18584a.this.f52367a;
            if (presenter != null) {
                presenter.mo14681w1(str);
            }
        }
    }

    /* renamed from: e.a.o.a.g.a$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/a$c.class */
    public static final class View$OnClickListenerC18587c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C18789b f52371a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC18584a f52372b;

        public View$OnClickListenerC18587c(C18789b c18789b, AbstractC18584a abstractC18584a) {
            this.f52371a = c18789b;
            this.f52372b = abstractC18584a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Presenter presenter = this.f52372b.f52367a;
            if (presenter != null) {
                presenter.mo14681w1(this.f52371a.f52782b.getMessage());
            }
        }
    }

    /* renamed from: e.a.o.a.g.a$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/a$d.class */
    public static final class View$OnClickListenerC18588d implements View.OnClickListener {
        public View$OnClickListenerC18588d() {
            AbstractC18584a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Presenter presenter = AbstractC18584a.this.f52367a;
            if (presenter != null) {
                presenter.mo14685G0();
            }
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f
    /* renamed from: C8 */
    public void mo14744C8(boolean z) {
        Button button = m14753OA().f52784d;
        s1.z.c.l.d(button, "binding.doneButton");
        button.setEnabled(z);
    }

    /* renamed from: OA */
    public final C18789b m14753OA() {
        return (C18789b) this.f52368b.m34468b(this, f52366d[0]);
    }

    /* renamed from: PA */
    public final AbstractC18590c m14752PA() {
        Fragment parentFragment = getParentFragment();
        if (!(parentFragment instanceof AbstractC18590c)) {
            parentFragment = null;
        }
        AbstractC18590c abstractC18590c = parentFragment;
        if (abstractC18590c == null) {
            AbstractC18590c activity = getActivity();
            if (!(activity instanceof AbstractC18590c)) {
                activity = null;
            }
            abstractC18590c = activity;
        }
        return abstractC18590c;
    }

    /* renamed from: QA */
    public abstract PV mo14710QA();

    /* renamed from: RA */
    public abstract AbstractC18591d mo14709RA();

    /* renamed from: SA */
    public abstract Presenter mo14708SA();

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f
    /* renamed from: a5 */
    public void mo14743a5(String str) {
        s1.z.c.l.e(str, "errorMessage");
        m14753OA().f52782b.m35579M(str);
    }

    public Context getContext() {
        Context context = AbstractC18584a.super.getContext();
        return context != null ? C17422k.m16113E(context, true) : null;
    }

    public int getTheme() {
        return C3771R.style.StyleX_BottomSheetDialogTheme_ContextCall_CustomMessage;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f
    /* renamed from: l */
    public void mo14742l(String str) {
        s1.z.c.l.e(str, "message");
        m14753OA().f52782b.setTextMessage(str);
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        AbstractC18584a.super.onAttach(context);
        this.f52367a = mo14708SA();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3771R.layout.bottom_sheet_custom_message_context_call, viewGroup, false);
    }

    public void onDestroyView() {
        Presenter presenter = this.f52367a;
        if (presenter != null) {
            presenter.mo9806c();
        }
        AbstractC18584a.super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        if (this.f52369c) {
            AbstractC18590c m14752PA = m14752PA();
            if (m14752PA != null) {
                m14752PA.mo14747Vi(mo14709RA());
            }
        } else {
            AbstractC18590c m14752PA2 = m14752PA();
            if (m14752PA2 != null) {
                m14752PA2.mo14746q4();
            }
        }
        AbstractC18584a.super.onDismiss(dialogInterface);
    }

    public void onResume() {
        AbstractC18584a.super.onResume();
        m14753OA().f52782b.m35576h1();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        AbstractC18584a.super.onViewCreated(view, bundle);
        d dialog = getDialog();
        Objects.requireNonNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        BottomSheetBehavior e = dialog.e();
        s1.z.c.l.d(e, "(dialog as BottomSheetDialog).behavior");
        e.M(3);
        Presenter presenter = this.f52367a;
        if (presenter != null) {
            presenter.mo9029Y0(mo14710QA());
        }
        C18789b m14753OA = m14753OA();
        m14753OA.f52782b.setCustomTextInputLayoutCallback(new C18586b());
        m14753OA.f52784d.setOnClickListener(new View$OnClickListenerC18587c(m14753OA, this));
        m14753OA.f52783c.setOnClickListener(new View$OnClickListenerC18588d());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f
    /* renamed from: s */
    public void mo14741s() {
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f
    /* renamed from: t7 */
    public void mo14720t7() {
        this.f52369c = true;
        dismissAllowingStateLoss();
    }
}
