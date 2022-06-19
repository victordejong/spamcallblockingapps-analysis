package p193e.p194a.p195a.p227e;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.inboxcleanup.Mode;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18159f0;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p195a.p227e.C5999k;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� 42\u00020\u00012\u00020\u0002:\u0001\u001aB\u0007¢\u0006\u0004\b3\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0013R\"\u0010 \u001a\u00020\u00198��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8��@��X\u0081.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001d\u0010.\u001a\u00020)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b0\u00101¨\u00065"}, d2 = {"Le/a/a/e/y;", "Landroidx/fragment/app/Fragment;", "Le/a/a/e/f0;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "", "title", "setTitle", "(Ljava/lang/String;)V", "c0", "Le/a/a/e/b0;", C22021b.f61237c, "Le/a/a/e/b0;", "getItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/e/b0;", "setItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/e/b0;)V", "itemPresenter", "Le/a/a/e/e0;", "a", "Le/a/a/e/e0;", "getPresenter$truecaller_googlePlayRelease", "()Le/a/a/e/e0;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/e/e0;)V", "presenter", "Le/a/m3/f0;", "d", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/f0;", "binding", "Le/a/o2/f;", AbstractC2405c.f7629a, "Le/a/o2/f;", "messagingListAdapter", "<init>", "f", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.e.y */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/y.class */
public final class C6030y extends Fragment implements AbstractC5990f0 {

    /* renamed from: e */
    public static final /* synthetic */ l[] f20070e = {C22128a.m8621g0(C6030y.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentInboxCleanupPreviewBinding;", 0)};

    /* renamed from: f */
    public static final C6032b f20071f = new C6032b(null);
    @Inject

    /* renamed from: a */
    public AbstractC5986e0 f20072a;
    @Inject

    /* renamed from: b */
    public AbstractC5966b0 f20073b;

    /* renamed from: c */
    public C18898f f20074c;

    /* renamed from: d */
    public final ViewBindingProperty f20075d = new C19350a(new C6031a());

    /* renamed from: e.a.a.e.y$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/y$a.class */
    public static final class C6031a extends m implements s1.z.b.l<C6030y, C18159f0> {
        public C6031a() {
            super(1);
        }

        /* renamed from: d */
        public Object m31938d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131365515;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C2752R.C2754id.rvMessages);
            if (recyclerView != null) {
                i = 2131366512;
                MaterialToolbar findViewById = requireView.findViewById(2131366512);
                if (findViewById != null) {
                    i = 2131366664;
                    TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.txtPreviewTitle);
                    if (textView != null) {
                        return new C18159f0((LinearLayout) requireView, recyclerView, findViewById, textView);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.e.y$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/y$b.class */
    public static final class C6032b {
        public C6032b(f fVar) {
        }
    }

    /* renamed from: e.a.a.e.y$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/y$c.class */
    public static final class View$OnClickListenerC6033c implements View.OnClickListener {
        public View$OnClickListenerC6033c() {
            C6030y.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6030y.this.requireActivity().onBackPressed();
        }
    }

    /* renamed from: e.a.a.e.y$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/y$d.class */
    public static final class C6034d extends m implements s1.z.b.l<View, C5952a0> {

        /* renamed from: b */
        public static final C6034d f20077b = new C6034d();

        public C6034d() {
            super(1);
        }

        /* renamed from: d */
        public Object m31937d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "v");
            return new C5952a0(view);
        }
    }

    /* renamed from: e.a.a.e.y$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/y$e.class */
    public static final class C6035e extends m implements s1.z.b.l<C5952a0, C5952a0> {

        /* renamed from: b */
        public static final C6035e f20078b = new C6035e();

        public C6035e() {
            super(1);
        }

        /* renamed from: d */
        public Object m31936d(Object obj) {
            C5952a0 c5952a0 = (C5952a0) obj;
            s1.z.c.l.e(c5952a0, "it");
            return c5952a0;
        }
    }

    /* renamed from: OA */
    public final C18159f0 m31940OA() {
        return (C18159f0) this.f20075d.m34468b(this, f20070e[0]);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5990f0
    /* renamed from: c0 */
    public void mo31939c0() {
        C18898f c18898f = this.f20074c;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("messagingListAdapter");
            throw null;
        }
    }

    public void onCreate(Bundle bundle) {
        C6030y.super.onCreate(bundle);
        C5999k.C6001b m32061a = C5999k.m32061a();
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Context applicationContext = requireActivity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        m32061a.f19979a = mo10154s;
        C5999k c5999k = (C5999k) m32061a.m32060a();
        this.f20072a = (AbstractC5986e0) c5999k.f19974j.get();
        this.f20073b = (AbstractC5966b0) c5999k.f19978n.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_inbox_cleanup_preview, viewGroup, false);
    }

    public void onStart() {
        String string;
        C6030y.super.onStart();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString(AnalyticsConstants.MODE)) == null) {
            return;
        }
        AbstractC5986e0 abstractC5986e0 = this.f20072a;
        if (abstractC5986e0 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5986e0.mo32088wc(Mode.valueOf(string));
        abstractC5986e0.mo32089li(Mode.valueOf(string));
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C6030y.super.onViewCreated(view, bundle);
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar(m31940OA().f51224b);
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
            }
        }
        m31940OA().f51224b.setNavigationOnClickListener(new View$OnClickListenerC6033c());
        AbstractC5966b0 abstractC5966b0 = this.f20073b;
        if (abstractC5966b0 == null) {
            s1.z.c.l.l("itemPresenter");
            throw null;
        }
        this.f20074c = new C18898f(new C18910r(abstractC5966b0, C2752R.layout.item_conversation, C6034d.f20077b, C6035e.f20078b));
        RecyclerView recyclerView = m31940OA().f51223a;
        s1.z.c.l.d(recyclerView, "binding.rvMessages");
        C18898f c18898f = this.f20074c;
        if (c18898f == null) {
            s1.z.c.l.l("messagingListAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC5986e0 abstractC5986e0 = this.f20072a;
        if (abstractC5986e0 != null) {
            abstractC5986e0.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5990f0
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        TextView textView = m31940OA().f51225c;
        s1.z.c.l.d(textView, "binding.txtPreviewTitle");
        textView.setText(str);
    }
}
