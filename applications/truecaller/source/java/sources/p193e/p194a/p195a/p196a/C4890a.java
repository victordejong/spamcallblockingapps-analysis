package p193e.p194a.p195a.p196a;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18153d0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p372b0.p373a.p374a.C8230h;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� 22\u00020\u00012\u00020\u0002:\u00013B\u0007¢\u0006\u0004\b1\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u0017J\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\tJ\u0019\u0010\"\u001a\u00020\u00052\b\b\u0001\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#R\"\u0010*\u001a\u00020$8��@��X\u0081.¢\u0006\u0012\n\u0004\b\"\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001d\u00100\u001a\u00020+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/¨\u00064"}, d2 = {"Le/a/a/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/a/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroyView", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "inviteLink", "ev", "(Ljava/lang/String;)V", "link", "Zi", "gz", "Lcom/truecaller/messaging/ForwardContentItem;", "contentToShare", "It", "(Lcom/truecaller/messaging/ForwardContentItem;)V", "Jd", "", "textId", "a", "(I)V", "Le/a/a/a/d;", "Le/a/a/a/d;", "PA", "()Le/a/a/a/d;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/a/d;)V", "presenter", "Le/a/m3/d0;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/d0;", "binding", "<init>", "d", AbstractC2405c.f7629a, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/a/a.class */
public final class C4890a extends Fragment implements AbstractC4900e {

    /* renamed from: c */
    public static final /* synthetic */ l[] f16614c = {C22128a.m8621g0(C4890a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentImGroupLinkInviteBinding;", 0)};

    /* renamed from: d */
    public static final C4893c f16615d = new C4893c(null);
    @Inject

    /* renamed from: a */
    public AbstractC4899d f16616a;

    /* renamed from: b */
    public final ViewBindingProperty f16617b = new C19350a(new C4892b());

    /* renamed from: e.a.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/a/a/a$a.class */
    public static final class View$OnClickListenerC4891a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f16618a;

        /* renamed from: b */
        public final /* synthetic */ Object f16619b;

        public View$OnClickListenerC4891a(int i, Object obj) {
            this.f16618a = i;
            this.f16619b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f16618a;
            if (i == 0) {
                ((C4890a) this.f16619b).requireActivity().onBackPressed();
            } else if (i == 1) {
                C4903g c4903g = (C4903g) ((C4890a) this.f16619b).m34270PA();
                AbstractC4900e abstractC4900e = (AbstractC4900e) c4903g.f57683a;
                if (abstractC4900e != null) {
                    abstractC4900e.mo34263gz(c4903g.m34256Ij());
                }
                c4903g.m34255Jj(ViewAction.SHARE);
            } else if (i == 2) {
                C4903g c4903g2 = (C4903g) ((C4890a) this.f16619b).m34270PA();
                ForwardContentItem forwardContentItem = new ForwardContentItem(c4903g2.m34256Ij(), false, null, 3, null, null, 32);
                AbstractC4900e abstractC4900e2 = (AbstractC4900e) c4903g2.f57683a;
                if (abstractC4900e2 != null) {
                    abstractC4900e2.mo34268It(forwardContentItem);
                }
                c4903g2.m34255Jj("tcSend");
            } else if (i == 3) {
                C4903g c4903g3 = (C4903g) ((C4890a) this.f16619b).m34270PA();
                AbstractC4900e abstractC4900e3 = (AbstractC4900e) c4903g3.f57683a;
                if (abstractC4900e3 != null) {
                    abstractC4900e3.mo34266Zi(c4903g3.m34256Ij());
                }
                c4903g3.m34255Jj("copy");
            } else if (i == 4) {
                C4903g c4903g4 = (C4903g) ((C4890a) this.f16619b).m34270PA();
                AbstractC4900e abstractC4900e4 = (AbstractC4900e) c4903g4.f57683a;
                if (abstractC4900e4 != null) {
                    abstractC4900e4.mo34263gz(c4903g4.m34256Ij());
                }
                c4903g4.m34255Jj(ViewAction.SHARE);
            } else if (i != 5) {
                throw null;
            } else {
                AbstractC4900e abstractC4900e5 = (AbstractC4900e) ((C4903g) ((C4890a) this.f16619b).m34270PA()).f57683a;
                if (abstractC4900e5 == null) {
                    return;
                }
                abstractC4900e5.mo34267Jd();
            }
        }
    }

    /* renamed from: e.a.a.a.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a/a$b.class */
    public static final class C4892b extends m implements s1.z.b.l<C4890a, C18153d0> {
        public C4892b() {
            super(1);
        }

        /* renamed from: d */
        public Object m34269d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362506;
            TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.buttonLink);
            if (textView != null) {
                i = 2131362972;
                TextView textView2 = (TextView) requireView.findViewById(2131362972);
                if (textView2 != null) {
                    i = 2131364628;
                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C2752R.C2754id.linkActionsContainer);
                    if (linearLayout != null) {
                        i = 2131364629;
                        LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(C2752R.C2754id.linkContainer);
                        if (linearLayout2 != null) {
                            i = 2131365464;
                            TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.reset);
                            if (textView3 != null) {
                                i = 2131365652;
                                TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.send);
                                if (textView4 != null) {
                                    i = 2131365865;
                                    TextView textView5 = (TextView) requireView.findViewById(C2752R.C2754id.share);
                                    if (textView5 != null) {
                                        i = 2131366512;
                                        MaterialToolbar findViewById = requireView.findViewById(2131366512);
                                        if (findViewById != null) {
                                            return new C18153d0((ConstraintLayout) requireView, textView, textView2, linearLayout, linearLayout2, textView3, textView4, textView5, findViewById);
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

    /* renamed from: e.a.a.a.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a/a$c.class */
    public static final class C4893c {
        public C4893c(f fVar) {
        }
    }

    /* renamed from: e.a.a.a.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a/a$d.class */
    public static final class C4894d extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4894d() {
            super(0);
            C4890a.this = r4;
        }

        public Object invoke() {
            C4903g c4903g = (C4903g) C4890a.this.m34270PA();
            Objects.requireNonNull(c4903g);
            d.w2(c4903g, (s1.w.f) null, (j0) null, new C4905h(c4903g, null), 3, (Object) null);
            c4903g.m34255Jj(AnalyticsConstants.RESET);
            return s.a;
        }
    }

    @Override // p193e.p194a.p195a.p196a.AbstractC4900e
    /* renamed from: It */
    public void mo34268It(ForwardContentItem forwardContentItem) {
        s1.z.c.l.e(forwardContentItem, "contentToShare");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(NewConversationActivity.C4229a.m34950a(requireContext, i.e(new ForwardContentItem[]{forwardContentItem}), false));
    }

    @Override // p193e.p194a.p195a.p196a.AbstractC4900e
    /* renamed from: Jd */
    public void mo34267Jd() {
        C8230h.C8233c c8233c = C8230h.f25388k;
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        String string = getString((int) C2752R.string.ImGroupLinkInviteResetTitle);
        s1.z.c.l.d(string, "getString(R.string.ImGroupLinkInviteResetTitle)");
        String string2 = getString((int) C2752R.string.ImGroupLinkInviteResetText);
        s1.z.c.l.d(string2, "getString(R.string.ImGroupLinkInviteResetText)");
        String string3 = getString((int) C2752R.string.ImGroupLinkInviteReset);
        s1.z.c.l.d(string3, "getString(R.string.ImGroupLinkInviteReset)");
        C8230h.C8233c.m28762b(c8233c, hVar, string, string2, string3, getString(2131887867), null, new C4894d(), null, null, false, null, 1952);
    }

    /* renamed from: OA */
    public final C18153d0 m34271OA() {
        return (C18153d0) this.f16617b.m34468b(this, f16614c[0]);
    }

    /* renamed from: PA */
    public final AbstractC4899d m34270PA() {
        AbstractC4899d abstractC4899d = this.f16616a;
        if (abstractC4899d != null) {
            return abstractC4899d;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p196a.AbstractC4900e
    /* renamed from: Zi */
    public void mo34266Zi(String str) {
        s1.z.c.l.e(str, "link");
        Object systemService = requireContext().getSystemService("clipboard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("text", str));
        Toast.makeText(requireContext(), (int) C2752R.string.ImGroupLinkInviteCopyResult, 0).show();
    }

    @Override // p193e.p194a.p195a.p196a.AbstractC4900e
    /* renamed from: a */
    public void mo34265a(int i) {
        Toast.makeText(requireContext(), i, 1).show();
    }

    @Override // p193e.p194a.p195a.p196a.AbstractC4900e
    /* renamed from: ev */
    public void mo34264ev(String str) {
        s1.z.c.l.e(str, "inviteLink");
        TextView textView = m34271OA().f51162a;
        s1.z.c.l.d(textView, "binding.buttonLink");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p196a.AbstractC4900e
    /* renamed from: gz */
    public void mo34263gz(String str) {
        s1.z.c.l.e(str, "link");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setType("text/plain");
        startActivity(Intent.createChooser(intent, null));
    }

    public void onCreate(Bundle bundle) {
        Bundle arguments;
        ImGroupInfo imGroupInfo;
        C4890a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity == null || (arguments = getArguments()) == null || (imGroupInfo = (ImGroupInfo) arguments.getParcelable("group_info")) == null) {
            return;
        }
        Context applicationContext = activity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C4898c c4898c = new C4898c(requireContext, imGroupInfo);
        C25225a.m3846s(c4898c, C4898c.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C4895b c4895b = new C4895b(c4898c, mo10154s, null);
        s1.w.f mo12315k6 = mo10154s.mo12315k6();
        Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
        s1.w.f mo12378g = c4895b.f16621a.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        ImGroupInfo imGroupInfo2 = (ImGroupInfo) c4895b.f16624d.get();
        AbstractC6448d mo12509W2 = c4895b.f16621a.mo12509W2();
        Objects.requireNonNull(mo12509W2, "Cannot return null from a non-@Nullable component method");
        AbstractC6392i0 mo12565S = c4895b.f16621a.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        C19235i0 c19235i0 = new C19235i0(c4895b.f16622b.f16628a);
        ContentResolver mo11652Z = c4895b.f16621a.mo11652Z();
        Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
        Handler handler = (Handler) c4895b.f16625e.get();
        AbstractC19462a mo12776C4 = c4895b.f16621a.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        this.f16616a = new C4903g(mo12315k6, mo12378g, imGroupInfo2, mo12509W2, mo12565S, c19235i0, mo11652Z, handler, mo12776C4);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_im_group_link_invite, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC4899d abstractC4899d = this.f16616a;
        if (abstractC4899d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4899d.mo9806c();
        C4890a.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C4890a.super.onViewCreated(view, bundle);
        AbstractC4899d abstractC4899d = this.f16616a;
        if (abstractC4899d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4899d.mo9029Y0(this);
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar(m34271OA().f51167f);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3552o(true);
        }
        m34271OA().f51167f.setNavigationOnClickListener(new View$OnClickListenerC4891a(0, this));
        AbstractC4899d abstractC4899d2 = this.f16616a;
        if (abstractC4899d2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C4903g c4903g = (C4903g) abstractC4899d2;
        d.w2(c4903g, (s1.w.f) null, (j0) null, new C4901f(c4903g, null), 3, (Object) null);
        m34271OA().f51162a.setOnClickListener(new View$OnClickListenerC4891a(1, this));
        m34271OA().f51165d.setOnClickListener(new View$OnClickListenerC4891a(2, this));
        m34271OA().f51163b.setOnClickListener(new View$OnClickListenerC4891a(3, this));
        m34271OA().f51166e.setOnClickListener(new View$OnClickListenerC4891a(4, this));
        m34271OA().f51164c.setOnClickListener(new View$OnClickListenerC4891a(5, this));
    }
}
