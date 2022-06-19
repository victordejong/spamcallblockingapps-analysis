package p193e.p194a.p1080o.p1081a.p1085b.p1086k;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.C3771R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1102o.C18792e;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� .2\u00020\u00012\u00020\u0002:\u0001/B\u0007¢\u0006\u0004\b-\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010 \u001a\u00020\u00198��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001d\u0010&\u001a\u00020!8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001d\u0010,\u001a\u00020'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u00060"}, d2 = {"Le/a/o/a/b/k/a;", "Ln3/b/a/q;", "Le/a/o/a/b/k/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "t", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/o/a/b/k/c;", "e", "Le/a/o/a/b/k/c;", "getPresenter$context_call_release", "()Le/a/o/a/b/k/c;", "setPresenter$context_call_release", "(Le/a/o/a/b/k/c;)V", "presenter", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "g", "Ls1/g;", "r", "()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "requestedCallOptions", "Le/a/o/o/e;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/o/o/e;", "binding", "<init>", "i", C22021b.f61237c, "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.b.k.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/k/a.class */
public final class C18540a extends AbstractC18549f implements AbstractC18547d {

    /* renamed from: h */
    public static final /* synthetic */ l[] f52296h = {C22128a.m8621g0(C18540a.class, "binding", "getBinding()Lcom/truecaller/contextcall/databinding/ContextCallDialogHiddenContactInfoBinding;", 0)};

    /* renamed from: i */
    public static final C18542b f52297i = new C18542b(null);
    @Inject

    /* renamed from: e */
    public AbstractC18546c f52298e;

    /* renamed from: f */
    public final ViewBindingProperty f52299f = new C19350a(new C18541a());

    /* renamed from: g */
    public final g f52300g = C25225a.m3978P1(new C18544d());

    /* renamed from: e.a.o.a.b.k.a$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/b/k/a$a.class */
    public static final class C18541a extends m implements s1.z.b.l<C18540a, C18792e> {
        public C18541a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14796d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3771R.C3773id.descriptionTextView;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C3771R.C3773id.gotItButton;
                Button button = (Button) requireView.findViewById(i);
                if (button != null) {
                    i = C3771R.C3773id.titleTextView;
                    TextView textView2 = (TextView) requireView.findViewById(i);
                    if (textView2 != null) {
                        return new C18792e((CardView) requireView, textView, button, textView2);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.o.a.b.k.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/b/k/a$b.class */
    public static final class C18542b {
        public C18542b(f fVar) {
        }
    }

    /* renamed from: e.a.o.a.b.k.a$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/b/k/a$c.class */
    public static final class View$OnClickListenerC18543c implements View.OnClickListener {
        public View$OnClickListenerC18543c() {
            C18540a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18546c abstractC18546c = C18540a.this.f52298e;
            if (abstractC18546c != null) {
                abstractC18546c.mo14793F();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.o.a.b.k.a$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/b/k/a$d.class */
    public static final class C18544d extends m implements a<InitiateCallHelper.CallOptions> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18544d() {
            super(0);
            C18540a.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C18540a.this.getArguments();
            InitiateCallHelper.CallOptions callOptions = arguments != null ? (InitiateCallHelper.CallOptions) arguments.getParcelable("CallOptions") : null;
            if (!(callOptions instanceof InitiateCallHelper.CallOptions)) {
                callOptions = null;
            }
            if (callOptions != null) {
                return callOptions;
            }
            throw new IllegalArgumentException("Call options needs to be set");
        }
    }

    public void onCreate(Bundle bundle) {
        C18540a.super.onCreate(bundle);
        setStyle(0, C3771R.style.StyleX_Dialog_Startup);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3771R.layout.context_call_dialog_hidden_contact_info, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC18546c abstractC18546c = this.f52298e;
        if (abstractC18546c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18546c.mo9806c();
        C18540a.super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        AbstractC18546c abstractC18546c = this.f52298e;
        if (abstractC18546c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18546c.onDismiss();
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
        C18540a.super.onDismiss(dialogInterface);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C18540a.super.onViewCreated(view, bundle);
        AbstractC18546c abstractC18546c = this.f52298e;
        if (abstractC18546c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18546c.mo9029Y0(this);
        ((C18792e) this.f52299f.m34468b(this, f52296h[0])).f52791a.setOnClickListener(new View$OnClickListenerC18543c());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1085b.p1086k.AbstractC18547d
    /* renamed from: r */
    public InitiateCallHelper.CallOptions mo14795r() {
        return (InitiateCallHelper.CallOptions) this.f52300g.getValue();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1085b.p1086k.AbstractC18547d
    /* renamed from: t */
    public void mo14794t() {
        dismissAllowingStateLoss();
    }
}
