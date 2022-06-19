package p193e.p194a.p1195s.p1200m;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1199l.C20027d;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.a.l;
import s1.z.c.d0;
import s1.z.c.m;
import s1.z.c.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b3\u0010\u001bJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0016H\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00162\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\"\u0010\u0015J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u001bJ\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u001bR\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001d\u00102\u001a\u00020-8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00064"}, d2 = {"Le/a/s/m/b;", "Landroidx/fragment/app/Fragment;", "Le/a/s/m/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "shortCode", "M8", "(Ljava/lang/String;)V", "", "requestCode", "hk", "(Ljava/lang/String;I)V", "cg", "()V", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "link", "j3", "finish", "onDestroyView", "Le/a/s/m/c;", C22021b.f61237c, "Le/a/s/m/c;", "PA", "()Le/a/s/m/c;", "setPresenter", "(Le/a/s/m/c;)V", "presenter", "Le/a/s/l/d;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/s/l/d;", "binding", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.m.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/m/b.class */
public final class C20035b extends Fragment implements AbstractC20042d {

    /* renamed from: c */
    public static final /* synthetic */ l[] f56603c = {d0.d(new w(C20035b.class, "binding", "getBinding()Lcom/truecaller/callhero_assistant/databinding/FragmentDeactivateServiceBinding;", 0))};

    /* renamed from: a */
    public final ViewBindingProperty f56604a = new C19350a(new C20036a());
    @Inject

    /* renamed from: b */
    public AbstractC20041c f56605b;

    /* renamed from: e.a.s.m.b$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/m/b$a.class */
    public static final class C20036a extends m implements s1.z.b.l<C20035b, C20027d> {
        public C20036a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11625d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2114060289;
            MaterialButton findViewById = requireView.findViewById(C3605R.C3606id.callButton);
            if (findViewById != null) {
                i = 2114060295;
                TextView textView = (TextView) requireView.findViewById(C3605R.C3606id.deactivateCallScreeningSubTitle);
                if (textView != null) {
                    i = 2114060296;
                    TextView textView2 = (TextView) requireView.findViewById(C3605R.C3606id.deactivateCallScreeningTitle);
                    if (textView2 != null) {
                        i = 2114060297;
                        TextView textView3 = (TextView) requireView.findViewById(C3605R.C3606id.deactivateServiceInfoText);
                        if (textView3 != null) {
                            i = 2114060298;
                            TextView textView4 = (TextView) requireView.findViewById(C3605R.C3606id.deactivateShortCodeText);
                            if (textView4 != null) {
                                i = 2114060324;
                                MaterialToolbar findViewById2 = requireView.findViewById(C3605R.C3606id.toolbar);
                                if (findViewById2 != null) {
                                    return new C20027d((ConstraintLayout) requireView, findViewById, textView, textView2, textView3, textView4, findViewById2);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.s.m.b$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/m/b$b.class */
    public static final class View$OnClickListenerC20037b implements View.OnClickListener {
        public View$OnClickListenerC20037b() {
            C20035b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20035b.this.m11626PA().mo11619Gi();
        }
    }

    /* renamed from: e.a.s.m.b$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/m/b$c.class */
    public static final class View$OnClickListenerC20038c implements View.OnClickListener {
        public View$OnClickListenerC20038c() {
            C20035b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20035b.this.m11626PA().mo11620G8();
        }
    }

    /* renamed from: e.a.s.m.b$d */
    /* loaded from: classes17-dex2jar.jar:e/a/s/m/b$d.class */
    public static final class DialogInterface$OnClickListenerC20039d implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC20039d() {
            C20035b.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C20035b.this.m11626PA().mo11618Oh();
        }
    }

    /* renamed from: e.a.s.m.b$e */
    /* loaded from: classes17-dex2jar.jar:e/a/s/m/b$e.class */
    public static final class DialogInterface$OnClickListenerC20040e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC20040e() {
            C20035b.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C20035b.this.m11626PA().mo11617h7();
        }
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20042d
    /* renamed from: M8 */
    public void mo11624M8(String str) {
        s1.z.c.l.e(str, "shortCode");
        TextView textView = m11627OA().f56589b;
        s1.z.c.l.d(textView, "binding.deactivateShortCodeText");
        textView.setText(str);
    }

    /* renamed from: OA */
    public final C20027d m11627OA() {
        return (C20027d) this.f56604a.m34468b(this, f56603c[0]);
    }

    /* renamed from: PA */
    public final AbstractC20041c m11626PA() {
        AbstractC20041c abstractC20041c = this.f56605b;
        if (abstractC20041c != null) {
            return abstractC20041c;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20042d
    /* renamed from: cg */
    public void mo11623cg() {
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C3605R.string.CallAssistantDisableServiceFailedDialogTitle);
        g_a.m3664e(C3605R.string.CallAssistantDisableServiceFailedDialogMessage);
        g_a.m3660i(2131887941, new DialogInterface$OnClickListenerC20039d());
        g_a.m3662g(2131887903, new DialogInterface$OnClickListenerC20040e());
        g_a.f70854a.f163m = false;
        g_a.m3652q();
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20042d
    public void finish() {
        requireActivity().finish();
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20042d
    /* renamed from: hk */
    public void mo11622hk(String str, int i) {
        s1.z.c.l.e(str, "shortCode");
        startActivityForResult(new Intent("android.intent.action.CALL").setData(Uri.fromParts("tel", str, StringConstant.HASH)), i);
    }

    @Override // p193e.p194a.p1195s.p1200m.AbstractC20042d
    /* renamed from: j3 */
    public void mo11621j3(String str) {
        s1.z.c.l.e(str, "link");
        C8613t.m28203i(requireContext(), str);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C20035b.super.onActivityResult(i, i2, intent);
        AbstractC20041c abstractC20041c = this.f56605b;
        if (abstractC20041c != null) {
            abstractC20041c.mo11616q(i);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onCreate(Bundle bundle) {
        C20035b.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(requireContext, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        this.f56605b = (AbstractC20041c) new C20032a(abstractC20009b, null).f56601d.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3605R.layout.fragment_deactivate_service, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC20041c abstractC20041c = this.f56605b;
        if (abstractC20041c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20041c.mo9806c();
        C20035b.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20035b.super.onViewCreated(view, bundle);
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar(m11627OA().f56590c);
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
            }
        }
        C20027d m11627OA = m11627OA();
        m11627OA.f56590c.setNavigationOnClickListener(new View$OnClickListenerC20037b());
        m11627OA.f56588a.setOnClickListener(new View$OnClickListenerC20038c());
        AbstractC20041c abstractC20041c = this.f56605b;
        if (abstractC20041c != null) {
            abstractC20041c.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }
}
