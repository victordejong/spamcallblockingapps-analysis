package p193e.p194a.p1080o.p1081a.p1082a.p1084b;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import p193e.p194a.p1080o.p1081a.p1089g.p1093j.C18628e;
import p193e.p194a.p1080o.p1081a.p1094h.AbstractC18638a;
import p193e.p194a.p1080o.p1081a.p1094h.AbstractC18650i;
import p193e.p194a.p1080o.p1101n.C18787a;
import p193e.p194a.p1080o.p1102o.C18795h;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� O2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001PB\u0007¢\u0006\u0004\bN\u0010!J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ-\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001e\u001a\u00020\u00182\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0018H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\"H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0018H\u0016¢\u0006\u0004\b(\u0010!J\u000f\u0010)\u001a\u00020\u0018H\u0016¢\u0006\u0004\b)\u0010!J\u0017\u0010,\u001a\u00020\u00182\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020\u00182\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0018H\u0016¢\u0006\u0004\b2\u0010!R\u001d\u00107\u001a\u00020\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\"\u0010?\u001a\u0002088��@��X\u0081.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001d\u0010E\u001a\u00020@8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\"\u0010M\u001a\u00020F8��@��X\u0081.¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010L¨\u0006Q"}, d2 = {"Le/a/o/a/a/b/b;", "Le/m/a/g/e/e;", "Le/a/o/a/a/b/e;", "Le/a/o/a/h/i;", "Le/a/o/a/g/c;", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "r", "()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "", "getTheme", "()I", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "Le/a/o/n/a;", "reasons", "rc", "(Ljava/util/List;)V", "uv", "()V", "", "R7", "()Z", "agreed", "c1", "(Z)V", "onDestroyView", "s", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/o/a/g/d;", "type", "Vi", "(Le/a/o/a/g/d;)V", "q4", "h", "Ls1/g;", "getThemedInflater", "()Landroid/view/LayoutInflater;", "themedInflater", "Le/a/o/a/h/a;", "f", "Le/a/o/a/h/a;", "getCommunityGuideline$context_call_release", "()Le/a/o/a/h/a;", "setCommunityGuideline$context_call_release", "(Le/a/o/a/h/a;)V", "communityGuideline", "Le/a/o/o/h;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/o/o/h;", "binding", "Le/a/o/a/a/b/d;", "e", "Le/a/o/a/a/b/d;", "getPresenter$context_call_release", "()Le/a/o/a/a/b/d;", "setPresenter$context_call_release", "(Le/a/o/a/a/b/d;)V", "presenter", "<init>", "j", C22021b.f61237c, "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.a.b.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/b.class */
public final class C18517b extends AbstractC18516a implements AbstractC18524e, AbstractC18650i, AbstractC18590c {

    /* renamed from: i */
    public static final /* synthetic */ l[] f52250i = {C22128a.m8621g0(C18517b.class, "binding", "getBinding()Lcom/truecaller/contextcall/databinding/ContextCallDialogPickerReasonOndemandBinding;", 0)};

    /* renamed from: j */
    public static final C18519b f52251j = new C18519b(null);
    @Inject

    /* renamed from: e */
    public AbstractC18523d f52252e;
    @Inject

    /* renamed from: f */
    public AbstractC18638a f52253f;

    /* renamed from: g */
    public final ViewBindingProperty f52254g = new C19350a(new C18518a());

    /* renamed from: h */
    public final g f52255h = C25225a.m3978P1(new C18521d());

    /* renamed from: e.a.o.a.a.b.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/b$a.class */
    public static final class C18518a extends m implements s1.z.b.l<C18517b, C18795h> {
        public C18518a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14822d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3771R.C3773id.button_type_custom;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) requireView;
                i = C3771R.C3773id.flow_reasons;
                Flow findViewById = requireView.findViewById(i);
                if (findViewById != null) {
                    i = C3771R.C3773id.tv_title;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        return new C18795h(constraintLayout, button, constraintLayout, findViewById, textView);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.o.a.a.b.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/b$b.class */
    public static final class C18519b {
        public C18519b(f fVar) {
        }

        /* renamed from: a */
        public final void m14821a(FragmentManager fragmentManager, InitiateCallHelper.CallOptions callOptions) {
            s1.z.c.l.e(fragmentManager, "fragmentManager");
            s1.z.c.l.e(callOptions, "callOptions");
            C18517b c18517b = new C18517b();
            Bundle bundle = new Bundle();
            bundle.putParcelable("CallOptions", callOptions);
            c18517b.setArguments(bundle);
            c18517b.show(fragmentManager, C18517b.class.getSimpleName());
        }
    }

    /* renamed from: e.a.o.a.a.b.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/b$c.class */
    public static final class View$OnClickListenerC18520c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C18787a f52256a;

        /* renamed from: b */
        public final /* synthetic */ C18517b f52257b;

        /* renamed from: c */
        public final /* synthetic */ List f52258c;

        public View$OnClickListenerC18520c(C18787a c18787a, C18795h c18795h, C18517b c18517b, List list) {
            this.f52256a = c18787a;
            this.f52257b = c18517b;
            this.f52258c = list;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18523d abstractC18523d = this.f52257b.f52252e;
            if (abstractC18523d != null) {
                abstractC18523d.mo14809p1(this.f52256a);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.o.a.a.b.b$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/b$d.class */
    public static final class C18521d extends m implements a<LayoutInflater> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18521d() {
            super(0);
            C18517b.this = r4;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = C18517b.this.getLayoutInflater();
            s1.z.c.l.d(layoutInflater, "layoutInflater");
            return C17422k.m16050u0(layoutInflater, true);
        }
    }

    /* renamed from: QA */
    public static final void m14823QA(FragmentManager fragmentManager, InitiateCallHelper.CallOptions callOptions) {
        f52251j.m14821a(fragmentManager, callOptions);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Hg */
    public void mo14748Hg() {
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18524e
    /* renamed from: R7 */
    public boolean mo14820R7() {
        AbstractC18638a abstractC18638a = this.f52253f;
        if (abstractC18638a == null) {
            s1.z.c.l.l("communityGuideline");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        return abstractC18638a.mo14671b(childFragmentManager, null);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Vi */
    public void mo14747Vi(AbstractC18591d abstractC18591d) {
        s1.z.c.l.e(abstractC18591d, "type");
        AbstractC18523d abstractC18523d = this.f52252e;
        if (abstractC18523d != null) {
            abstractC18523d.mo14810oh();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18650i
    /* renamed from: c1 */
    public void mo14670c1(boolean z) {
        AbstractC18523d abstractC18523d = this.f52252e;
        if (abstractC18523d != null) {
            abstractC18523d.mo14811c1(z);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18516a
    public Context getContext() {
        Context context = super.getContext();
        return context != null ? C17422k.m16113E(context, true) : null;
    }

    public int getTheme() {
        return C3771R.style.StyleX_BottomSheetDialogTheme_ContextCall;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return ((LayoutInflater) this.f52255h.getValue()).inflate(C3771R.layout.context_call_dialog_picker_reason_ondemand, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC18523d abstractC18523d = this.f52252e;
        if (abstractC18523d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18523d.mo9806c();
        C18517b.super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
        C18517b.super.onDismiss(dialogInterface);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C18517b.super.onViewCreated(view, bundle);
        AbstractC18523d abstractC18523d = this.f52252e;
        if (abstractC18523d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18523d.mo9029Y0(this);
        ((C18795h) this.f52254g.m34468b(this, f52250i[0])).f52801a.setOnClickListener(new View$OnClickListenerC18522c(this));
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: q4 */
    public void mo14746q4() {
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18524e
    /* renamed from: r */
    public InitiateCallHelper.CallOptions mo14819r() {
        Bundle arguments = getArguments();
        return arguments != null ? (InitiateCallHelper.CallOptions) arguments.getParcelable("CallOptions") : null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18524e
    /* renamed from: rc */
    public void mo14818rc(List<C18787a> list) {
        s1.z.c.l.e(list, "reasons");
        C18795h c18795h = (C18795h) this.f52254g.m34468b(this, f52250i[0]);
        Flow flow = c18795h.f52803c;
        s1.z.c.l.d(flow, "flowReasons");
        int[] referencedIds = flow.getReferencedIds();
        s1.z.c.l.d(referencedIds, "flowReasons.referencedIds");
        for (int i : referencedIds) {
            ConstraintLayout constraintLayout = c18795h.f52802b;
            constraintLayout.removeView(constraintLayout.findViewById(i));
        }
        for (C18787a c18787a : list) {
            View inflate = ((LayoutInflater) this.f52255h.getValue()).inflate(C3771R.layout.context_call_chip_reason, (ViewGroup) c18795h.f52802b, false);
            Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) inflate;
            textView.setId(View.generateViewId());
            textView.setText(c18787a.f52776c);
            textView.setOnClickListener(new View$OnClickListenerC18520c(c18787a, c18795h, this, list));
            c18795h.f52802b.addView(textView);
            c18795h.f52803c.m1986h(textView);
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18524e
    /* renamed from: s */
    public void mo14817s() {
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18524e
    /* renamed from: uv */
    public void mo14816uv() {
        C18628e.C18629a c18629a = C18628e.f52433k;
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        Bundle arguments = getArguments();
        C18628e.C18629a.m14705b(c18629a, childFragmentManager, arguments != null ? (InitiateCallHelper.CallOptions) arguments.getParcelable("CallOptions") : null, new OnDemandMessageSource.DetailsScreen(null, 1, null), null, 8);
    }
}
