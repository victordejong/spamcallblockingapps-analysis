package p193e.p194a.p195a.p269n;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.tablayout.TabLayoutX;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.mediamanager.AttachmentType;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.List;
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
import p193e.p194a.p1059m3.C18163h0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p195a.p269n.p270j.C7019k;
import p193e.p194a.p372b0.p373a.p381c0.C8280a;
import p193e.p194a.p372b0.p373a.p381c0.C8281b;
import s1.a.l;
import s1.g;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� :2\u00020\u00012\u00020\u0002:\u0001\u001cB\u0007¢\u0006\u0004\b9\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001c\u0010\u001aR\u001d\u0010\"\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00020$0#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u001d\u0010,\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010)\u001a\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\"\u00108\u001a\u0002018��@��X\u0081.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006;"}, d2 = {"Le/a/a/n/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/n/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "onStart", "onStop", "onDestroy", "", "title", "setTitle", "(Ljava/lang/String;)V", "subtitle", AbstractC2405c.f7629a, "Le/a/b0/a/c0/b;", "a", "Ls1/g;", "QA", "()Le/a/b0/a/c0/b;", "tabLayoutXHelper", "", "Le/a/a/n/j/k;", C22021b.f61237c, "Ljava/util/List;", "mediaFragmentList", "Le/a/m3/h0;", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/h0;", "binding", "Ln3/b/a/a;", "PA", "()Ln3/b/a/a;", "supportActionBar", "Le/a/a/n/e;", "d", "Le/a/a/n/e;", "getPresenter$truecaller_googlePlayRelease", "()Le/a/a/n/e;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/n/e;)V", "presenter", "<init>", "f", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.n.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/a.class */
public final class C6988a extends Fragment implements AbstractC7000f {

    /* renamed from: e */
    public static final /* synthetic */ l[] f22577e = {C22128a.m8621g0(C6988a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentMediaManagerBinding;", 0)};

    /* renamed from: f */
    public static final C6990c f22578f = new C6990c(null);

    /* renamed from: a */
    public final g f22579a = C25225a.m3978P1(new C6993f());

    /* renamed from: b */
    public final List<C7019k> f22580b = new ArrayList();

    /* renamed from: c */
    public final ViewBindingProperty f22581c = new C19350a(new C6989b());
    @Inject

    /* renamed from: d */
    public AbstractC6999e f22582d;

    /* renamed from: e.a.a.n.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/a$b.class */
    public static final class C6989b extends m implements s1.z.b.l<C6988a, C18163h0> {
        public C6989b() {
            super(1);
        }

        /* renamed from: d */
        public Object m30325d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131366197;
            TabLayoutX tabLayoutX = (TabLayoutX) requireView.findViewById(C2752R.C2754id.tabsLayout);
            if (tabLayoutX != null) {
                i = 2131366512;
                MaterialToolbar findViewById = requireView.findViewById(2131366512);
                if (findViewById != null) {
                    i = 2131366788;
                    ViewPager2 viewPager2 = (ViewPager2) requireView.findViewById(2131366788);
                    if (viewPager2 != null) {
                        return new C18163h0((LinearLayout) requireView, tabLayoutX, findViewById, viewPager2);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.n.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/a$c.class */
    public static final class C6990c {
        public C6990c(f fVar) {
        }
    }

    /* renamed from: e.a.a.n.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/a$d.class */
    public static final class C6991d extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ C7019k f22583b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6991d(C7019k c7019k) {
            super(0);
            this.f22583b = c7019k;
        }

        public Object invoke() {
            return this.f22583b;
        }
    }

    /* renamed from: e.a.a.n.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/a$e.class */
    public static final class C6992e extends m implements p<C8280a, Integer, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6992e() {
            super(2);
            C6988a.this = r4;
        }

        /* renamed from: k */
        public Object m30324k(Object obj, Object obj2) {
            ((Number) obj2).intValue();
            s1.z.c.l.e((C8280a) obj, "<anonymous parameter 0>");
            for (C7019k c7019k : C6988a.this.f22580b) {
                c7019k.mo30260e();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.n.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/a$f.class */
    public static final class C6993f extends m implements a<C8281b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6993f() {
            super(0);
            C6988a.this = r4;
        }

        public Object invoke() {
            return new C8281b(C6988a.this, false, 2);
        }
    }

    /* renamed from: OA */
    public final C18163h0 m30328OA() {
        return (C18163h0) this.f22581c.m34468b(this, f22577e[0]);
    }

    /* renamed from: PA */
    public final AbstractC25393a m30327PA() {
        n3.r.a.l activity = getActivity();
        if (!(activity instanceof h)) {
            activity = null;
        }
        h hVar = activity;
        AbstractC25393a abstractC25393a = null;
        if (hVar != null) {
            abstractC25393a = hVar.getSupportActionBar();
        }
        return abstractC25393a;
    }

    /* renamed from: QA */
    public final C8281b m30326QA() {
        return (C8281b) this.f22579a.getValue();
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC7000f
    /* renamed from: c */
    public void mo30321c(String str) {
        s1.z.c.l.e(str, "subtitle");
        AbstractC25393a m30327PA = m30327PA();
        if (m30327PA != null) {
            m30327PA.mo3544w(str);
        }
    }

    public void onCreate(Bundle bundle) {
        Conversation conversation;
        Bundle arguments;
        String string;
        Bundle arguments2;
        C6988a.super.onCreate(bundle);
        Bundle arguments3 = getArguments();
        if (arguments3 == null || (conversation = (Conversation) arguments3.getParcelable("conversation")) == null || (arguments = getArguments()) == null || (string = arguments.getString("analytics_context")) == null || (arguments2 = getArguments()) == null) {
            return;
        }
        C6998d c6998d = new C6998d(conversation, string, arguments2.getBoolean("is_delete_mode"));
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c6998d, C6998d.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        this.f22582d = (AbstractC6999e) new C6994b(c6998d, mo10154s, null).f22590e.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_media_manager, viewGroup, false);
    }

    public void onDestroy() {
        m30326QA().m28692c();
        C6988a.super.onDestroy();
    }

    public void onDestroyView() {
        AbstractC6999e abstractC6999e = this.f22582d;
        if (abstractC6999e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6999e.mo9806c();
        C6988a.super.onDestroyView();
    }

    public void onStart() {
        C6988a.super.onStart();
        AbstractC6999e abstractC6999e = this.f22582d;
        if (abstractC6999e != null) {
            abstractC6999e.onStart();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        C6988a.super.onStop();
        AbstractC6999e abstractC6999e = this.f22582d;
        if (abstractC6999e != null) {
            abstractC6999e.onStop();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        Conversation conversation;
        Bundle arguments;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C6988a.super.onViewCreated(view, bundle);
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar(m30328OA().f51255b);
        }
        AbstractC25393a m30327PA = m30327PA();
        if (m30327PA != null) {
            m30327PA.mo3553n(true);
        }
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (conversation = (Conversation) arguments2.getParcelable("conversation")) == null || (arguments = getArguments()) == null) {
            return;
        }
        boolean z = arguments.getBoolean("is_delete_mode", false);
        C7019k m30304QA = C7019k.m30304QA(conversation, AttachmentType.MEDIA, z);
        C7019k m30304QA2 = C7019k.m30304QA(conversation, AttachmentType.DOCUMENT, z);
        C7019k m30304QA3 = C7019k.m30304QA(conversation, AttachmentType.AUDIO, z);
        i.c(this.f22580b, new C7019k[]{m30304QA, m30304QA2, m30304QA3});
        C8281b m30326QA = m30326QA();
        String string = getString((int) C2752R.string.media_manager_media_tab);
        s1.z.c.l.d(string, "getString(R.string.media_manager_media_tab)");
        m30326QA.m28694a(new C8281b.C8285d(string, 2131232623, 2131232622, 0, 0, "media", new a(0, this, m30304QA, m30304QA2, m30304QA3, conversation, z), null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        String string2 = getString((int) C2752R.string.media_manager_documents_tab);
        s1.z.c.l.d(string2, "getString(R.string.media_manager_documents_tab)");
        m30326QA.m28694a(new C8281b.C8285d(string2, 2131232566, 2131232565, 0, 0, "documents", new a(1, this, m30304QA, m30304QA2, m30304QA3, conversation, z), null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        String string3 = getString((int) C2752R.string.media_manager_audio_tab);
        s1.z.c.l.d(string3, "getString(R.string.media_manager_audio_tab)");
        m30326QA.m28694a(new C8281b.C8285d(string3, 2131232583, 2131232582, 0, 0, "audio", new a(2, this, m30304QA, m30304QA2, m30304QA3, conversation, z), null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        AbstractC6999e abstractC6999e = this.f22582d;
        if (abstractC6999e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        if (abstractC6999e.mo30319X7()) {
            C7019k m30304QA4 = C7019k.m30304QA(conversation, AttachmentType.LINK, z);
            this.f22580b.add(m30304QA4);
            m30328OA().f51254a.setSelectedTabWidthRatio(1.5f);
            String string4 = getString((int) C2752R.string.media_manager_links_tab);
            s1.z.c.l.d(string4, "getString(R.string.media_manager_links_tab)");
            m30326QA.m28694a(new C8281b.C8285d(string4, C2752R.C2753drawable.ic_link, C2752R.C2753drawable.ic_link, 0, 0, "links", new C6991d(m30304QA4), null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        }
        ViewPager2 viewPager2 = m30328OA().f51256c;
        s1.z.c.l.d(viewPager2, "binding.viewPager");
        TabLayoutX tabLayoutX = m30328OA().f51254a;
        s1.z.c.l.d(tabLayoutX, "binding.tabsLayout");
        m30326QA.m28693b(viewPager2, tabLayoutX);
        m30326QA().m28690e(new C6992e());
        AbstractC6999e abstractC6999e2 = this.f22582d;
        if (abstractC6999e2 != null) {
            abstractC6999e2.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC7000f
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        AbstractC25393a m30327PA = m30327PA();
        if (m30327PA != null) {
            m30327PA.mo3542y(str);
        }
    }
}
