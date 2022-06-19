package p193e.p194a.p195a.p229f;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.view.ContactPhoto;
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
import p193e.p194a.p1059m3.C18150c0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018��  2\u00020\u00012\u00020\u0002:\u0001>B\u0007¢\u0006\u0004\b=\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001e\u0010\u0019J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0016H\u0016¢\u0006\u0004\b \u0010\u0019J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0013J\u0017\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0013J\u0019\u0010.\u001a\u00020\u00052\b\b\u0001\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/R\u001d\u00105\u001a\u0002008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\"\u0010<\u001a\u0002068��@��X\u0081.¢\u0006\u0012\n\u0004\b.\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;¨\u0006?"}, d2 = {"Le/a/a/f/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/f/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "onPause", "onDestroyView", "", "title", "I4", "(Ljava/lang/String;)V", "Landroid/net/Uri;", "uri", "u", "(Landroid/net/Uri;)V", "setTitle", "description", "d", "", "visible", "Im", "(Z)V", "h", "finish", "Lcom/truecaller/data/entity/messaging/Participant;", "participant", "s0", "(Lcom/truecaller/data/entity/messaging/Participant;)V", "w0", "", "res", "a", "(I)V", "Le/a/m3/c0;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/c0;", "binding", "Le/a/a/f/d;", "Le/a/a/f/d;", "PA", "()Le/a/a/f/d;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/f/d;)V", "presenter", "<init>", AbstractC2405c.f7629a, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.f.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/f/a.class */
public final class C6042a extends Fragment implements AbstractC6051e {

    /* renamed from: c */
    public static final /* synthetic */ l[] f20090c = {C22128a.m8621g0(C6042a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentImGroupInvitationBinding;", 0)};

    /* renamed from: d */
    public static final C6045c f20091d = new C6045c(null);
    @Inject

    /* renamed from: a */
    public AbstractC6050d f20092a;

    /* renamed from: b */
    public final ViewBindingProperty f20093b = new C19350a(new C6044b());

    /* renamed from: e.a.a.f.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/f/a$a.class */
    public static final class View$OnClickListenerC6043a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f20094a;

        /* renamed from: b */
        public final /* synthetic */ Object f20095b;

        public View$OnClickListenerC6043a(int i, Object obj) {
            this.f20094a = i;
            this.f20095b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f20094a;
            if (i == 0) {
                ((C6042a) this.f20095b).m31928PA().mo31912r0();
            } else if (i == 1) {
                ((C6042a) this.f20095b).m31928PA().mo31917Ij();
            } else if (i != 2) {
                throw null;
            } else {
                ((C6042a) this.f20095b).m31928PA().mo31918Hj();
            }
        }
    }

    /* renamed from: e.a.a.f.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/a$b.class */
    public static final class C6044b extends m implements s1.z.b.l<C6042a, C18150c0> {
        public C6044b() {
            super(1);
        }

        /* renamed from: d */
        public Object m31927d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362906;
            ContactPhoto contactPhoto = (ContactPhoto) requireView.findViewById(2131362906);
            if (contactPhoto != null) {
                i = 2131363253;
                Button button = (Button) requireView.findViewById(C2752R.C2754id.declineButton);
                if (button != null) {
                    i = 2131363286;
                    TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.descriptionText);
                    if (textView != null) {
                        i = 2131363497;
                        FrameLayout frameLayout = (FrameLayout) requireView.findViewById(C2752R.C2754id.emptyStateLogo);
                        if (frameLayout != null) {
                            i = 2131364520;
                            Button button2 = (Button) requireView.findViewById(C2752R.C2754id.joinButton);
                            if (button2 != null) {
                                i = 2131365276;
                                ProgressBar progressBar = (ProgressBar) requireView.findViewById(2131365276);
                                if (progressBar != null) {
                                    i = 2131366487;
                                    TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.titleText);
                                    if (textView2 != null) {
                                        i = 2131366512;
                                        Toolbar toolbar = (Toolbar) requireView.findViewById(2131366512);
                                        if (toolbar != null) {
                                            return new C18150c0((ConstraintLayout) requireView, contactPhoto, button, textView, frameLayout, button2, progressBar, textView2, toolbar);
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

    /* renamed from: e.a.a.f.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/a$c.class */
    public static final class C6045c {
        public C6045c(f fVar) {
        }
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: I4 */
    public void mo31926I4(String str) {
        s1.z.c.l.e(str, "title");
        Toolbar toolbar = m31929OA().f51148h;
        s1.z.c.l.d(toolbar, "binding.toolbar");
        toolbar.setTitle(str);
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: Im */
    public void mo31925Im(boolean z) {
        Button button = m31929OA().f51145e;
        s1.z.c.l.d(button, "binding.joinButton");
        button.setVisibility(z ? 0 : 4);
        Button button2 = m31929OA().f51142b;
        s1.z.c.l.d(button2, "binding.declineButton");
        button2.setVisibility(z ? 0 : 4);
    }

    /* renamed from: OA */
    public final C18150c0 m31929OA() {
        return (C18150c0) this.f20093b.m34468b(this, f20090c[0]);
    }

    /* renamed from: PA */
    public final AbstractC6050d m31928PA() {
        AbstractC6050d abstractC6050d = this.f20092a;
        if (abstractC6050d != null) {
            return abstractC6050d;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: a */
    public void mo31924a(int i) {
        Toast.makeText(getContext(), i, 1).show();
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: d */
    public void mo31923d(String str) {
        s1.z.c.l.e(str, "description");
        TextView textView = m31929OA().f51143c;
        s1.z.c.l.d(textView, "binding.descriptionText");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: h */
    public void mo31922h(boolean z) {
        ProgressBar progressBar = m31929OA().f51146f;
        s1.z.c.l.d(progressBar, "binding.progressBar");
        progressBar.setVisibility(z ? 0 : 4);
    }

    public void onCreate(Bundle bundle) {
        Bundle arguments;
        ImGroupInfo imGroupInfo;
        C6042a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity == null || (arguments = getArguments()) == null || (imGroupInfo = (ImGroupInfo) arguments.getParcelable("group_info")) == null) {
            return;
        }
        Context applicationContext = activity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C6049c c6049c = new C6049c(imGroupInfo);
        C25225a.m3846s(c6049c, C6049c.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        this.f20092a = (AbstractC6050d) new C6046b(c6049c, mo10154s, null).f20100e.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_im_group_invitation, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC6050d abstractC6050d = this.f20092a;
        if (abstractC6050d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6050d.f57683a = null;
        C6042a.super.onDestroyView();
    }

    public void onPause() {
        AbstractC6050d abstractC6050d = this.f20092a;
        if (abstractC6050d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6050d.onPause();
        C6042a.super.onPause();
    }

    public void onResume() {
        C6042a.super.onResume();
        AbstractC6050d abstractC6050d = this.f20092a;
        if (abstractC6050d != null) {
            abstractC6050d.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C6042a.super.onViewCreated(view, bundle);
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar(m31929OA().f51148h);
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
                supportActionBar.mo3551p(false);
            }
            m31929OA().f51148h.setNavigationOnClickListener(new View$OnClickListenerC6043a(0, this));
            m31929OA().f51145e.setOnClickListener(new View$OnClickListenerC6043a(1, this));
            m31929OA().f51142b.setOnClickListener(new View$OnClickListenerC6043a(2, this));
            m31929OA().f51141a.f15894o = 0;
            m31929OA().f51141a.setDrawableRes(2131231057);
            AbstractC6050d abstractC6050d = this.f20092a;
            if (abstractC6050d != null) {
                abstractC6050d.mo9029Y0(this);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: s0 */
    public void mo31921s0(Participant participant) {
        s1.z.c.l.e(participant, "participant");
        Intent intent = new Intent(getContext(), ConversationActivity.class);
        intent.putExtra("participants", new Participant[]{participant});
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        TextView textView = m31929OA().f51147g;
        s1.z.c.l.d(textView, "binding.titleText");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: u */
    public void mo31920u(Uri uri) {
        m31929OA().f51141a.m34479f(uri, null);
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6051e
    /* renamed from: w0 */
    public void mo31919w0() {
        startActivity(TruecallerInit.m34553xa(getContext(), "messages", "imGroupInvitation"));
    }
}
