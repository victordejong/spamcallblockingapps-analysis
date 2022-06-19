package p193e.p194a.p294b.p345k.p351d.p353b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.covidDirectory.config.CovidDirectoryDisclaimerData;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1868v.C27020r;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p294b.p345k.p346a.C7964d;
import p193e.p194a.p294b.p345k.p347b.p349b.C7980a;
import p193e.p194a.p294b.p345k.p350c.AbstractC7983a;
import p193e.p194a.p294b.p345k.p350c.C7986c;
import p193e.p194a.p294b.p345k.p351d.p352a.C7995a;
import p193e.p194a.p294b.p345k.p351d.p352a.C7998b;
import p193e.p194a.p294b.p355m.C8076j1;
import p193e.p194a.p294b.p355m.C8089m0;
import p193e.p194a.p294b.p370p.AbstractC8207f;
import p193e.p194a.p294b.p370p.C8200a;
import p193e.p194a.p294b.p370p.C8203b;
import q3.a.x2.u0;
import s1.a.l;
import s1.f0.r;
import s1.f0.v;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018�� a2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u00015B\u0007¢\u0006\u0004\b`\u0010#J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001d\u001a\u00020\u000e2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u000eH\u0016¢\u0006\u0004\b$\u0010#J\u001f\u0010(\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u0006\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020\u0017H\u0016¢\u0006\u0004\b+\u0010!J\u000f\u0010,\u001a\u00020\u000eH\u0016¢\u0006\u0004\b,\u0010#J\u000f\u0010-\u001a\u00020\u000eH\u0016¢\u0006\u0004\b-\u0010#J\u001f\u00100\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u00172\u0006\u0010/\u001a\u00020\u0017H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u0017H\u0016¢\u0006\u0004\b2\u0010!J\u000f\u00103\u001a\u00020\u000eH\u0016¢\u0006\u0004\b3\u0010#J\u0017\u00105\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u0017H\u0016¢\u0006\u0004\b5\u0010!J\u0017\u00107\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\u0017H\u0016¢\u0006\u0004\b7\u0010!J\u0017\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u001bH\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u001bH\u0016¢\u0006\u0004\b;\u0010:J\u0017\u0010=\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u0017H\u0016¢\u0006\u0004\b=\u0010!J\u000f\u0010>\u001a\u00020\u000eH\u0016¢\u0006\u0004\b>\u0010#J\u0017\u0010A\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u0017\u0010E\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bG\u0010FJ\u0017\u0010H\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bH\u0010FJ\u0017\u0010J\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u0017H\u0016¢\u0006\u0004\bJ\u0010!R\u0016\u0010M\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u001d\u0010S\u001a\u00020N8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\"\u0010[\u001a\u00020T8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u0016\u0010_\u001a\u00020\\8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b]\u0010^¨\u0006b"}, d2 = {"Le/a/b/k/d/b/a;", "Landroidx/fragment/app/Fragment;", "Le/a/b/k/c/a;", "Le/a/b/k/d/a/a$a;", "Le/a/b/p/f;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "N3", "()Ljava/lang/Long;", "", "P1", "()Ljava/lang/String;", "", "Le/a/b/k/b/b/a;", "list", "H5", "(Ljava/util/List;)V", "stateName", "o", "(Ljava/lang/String;)V", "onResume", "()V", "v", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "searchHint", "K", "N1", "Hk", "disclaimerText", "hyperlinkText", "Pf", "(Ljava/lang/String;Ljava/lang/String;)V", "G8", "sw", "url", C22021b.f61237c, "countData", "J5", AnalyticsConstants.CONTACT, "xx", "(Le/a/b/k/b/b/a;)V", "H8", "phoneUri", "z5", "onDestroyView", "", "listSize", "F", "(I)V", "", RemoteMessageConst.Notification.VISIBILITY, "B", "(Z)V", "H", "O4", "text", "y", "i", "Ljava/lang/String;", "searchQuery", "Le/a/b/m/m0;", "j", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/b/m/m0;", "binding", "Le/a/b/k/d/a/a;", "g", "Le/a/b/k/d/a/a;", "getContactListAdapter", "()Le/a/b/k/d/a/a;", "setContactListAdapter", "(Le/a/b/k/d/a/a;)V", "contactListAdapter", "Landroidx/appcompat/widget/SearchView;", "h", "Landroidx/appcompat/widget/SearchView;", "mSearchView", "<init>", "l", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.k.d.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/a.class */
public final class C8003a extends AbstractC8016e implements AbstractC7983a, C7995a.AbstractC7996a, AbstractC8207f {

    /* renamed from: k */
    public static final /* synthetic */ l[] f24706k = {C22128a.m8621g0(C8003a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/FragmentGoveServicesContactListBinding;", 0)};

    /* renamed from: l */
    public static final C8005b f24707l = new C8005b(null);
    @Inject

    /* renamed from: e */
    public C7998b f24708e;
    @Inject

    /* renamed from: f */
    public C7986c f24709f;

    /* renamed from: g */
    public C7995a f24710g;

    /* renamed from: h */
    public SearchView f24711h;

    /* renamed from: i */
    public String f24712i = "";

    /* renamed from: j */
    public final ViewBindingProperty f24713j = new C19350a(new C8004a());

    /* renamed from: e.a.b.k.d.b.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/a$a.class */
    public static final class C8004a extends m implements s1.z.b.l<C8003a, C8089m0> {
        public C8004a() {
            super(1);
        }

        /* renamed from: d */
        public Object m29004d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            return C8089m0.m28910a(fragment.requireView());
        }
    }

    /* renamed from: e.a.b.k.d.b.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/a$b.class */
    public static final class C8005b {
        public C8005b(f fVar) {
        }
    }

    @e(c = "com.truecaller.bizmon.covidDirectory.ui.fragments.CovidContactListFragment$setUpSearchView$2", f = "CovidContactListFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.k.d.b.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/a$c.class */
    public static final class C8006c extends i implements p<String, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f24714e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8006c(d dVar) {
            super(2, dVar);
            C8003a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29003i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C8006c c8006c = new C8006c(dVar);
            c8006c.f24714e = obj;
            return c8006c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0037, code lost:
            if (r4 != null) goto L7;
         */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29002k(java.lang.Object r4, java.lang.Object r5) {
            /*
                r3 = this;
                s1.s r0 = s1.s.a
                r6 = r0
                r0 = r5
                s1.w.d r0 = (s1.w.d) r0
                r7 = r0
                r0 = r7
                java.lang.String r1 = "completion"
                s1.z.c.l.e(r0, r1)
                r0 = r3
                e.a.b.k.d.b.a r0 = p193e.p194a.p294b.p345k.p351d.p353b.C8003a.this
                r5 = r0
                r0 = r7
                s1.w.f r0 = r0.getContext()
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                java.lang.String r0 = (java.lang.String) r0
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L3d
                r0 = r7
                java.lang.CharSequence r0 = s1.f0.v.g0(r0)
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L3d
                goto L40
            L3d:
                java.lang.String r0 = ""
                r4 = r0
            L40:
                r0 = r5
                r1 = r4
                r0.f24712i = r1
                r0 = r5
                e.a.b.k.c.c r0 = r0.f24709f
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L82
                r0 = r4
                PV r0 = r0.f57683a
                e.a.b.k.c.a r0 = (p193e.p194a.p294b.p345k.p350c.AbstractC7983a) r0
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L80
                r0 = r7
                if (r0 == 0) goto L80
                r0 = r4
                r1 = r7
                r0.mo29006y(r1)
                r0 = r7
                int r0 = r0.length()
                if (r0 != 0) goto L75
                r0 = 1
                r8 = r0
                goto L78
            L75:
                r0 = 0
                r8 = r0
            L78:
                r0 = r4
                r1 = r8
                r0.mo29014O4(r1)
            L80:
                r0 = r6
                return r0
            L82:
                java.lang.String r0 = "presenter"
                s1.z.c.l.l(r0)
                r0 = 0
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p345k.p351d.p353b.C8003a.C8006c.m29002k(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001e, code lost:
            if (r4 != null) goto L7;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29001s(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r3
                java.lang.Object r0 = r0.f24714e
                java.lang.String r0 = (java.lang.String) r0
                r5 = r0
                r0 = r3
                e.a.b.k.d.b.a r0 = p193e.p194a.p294b.p345k.p351d.p353b.C8003a.this
                r6 = r0
                r0 = r5
                if (r0 == 0) goto L24
                r0 = r5
                java.lang.CharSequence r0 = s1.f0.v.g0(r0)
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L24
                goto L27
            L24:
                java.lang.String r0 = ""
                r4 = r0
            L27:
                r0 = r6
                r1 = r4
                r0.f24712i = r1
                r0 = r3
                e.a.b.k.d.b.a r0 = p193e.p194a.p294b.p345k.p351d.p353b.C8003a.this
                e.a.b.k.c.c r0 = r0.f24709f
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L6b
                r0 = r4
                PV r0 = r0.f57683a
                e.a.b.k.c.a r0 = (p193e.p194a.p294b.p345k.p350c.AbstractC7983a) r0
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L67
                r0 = r5
                if (r0 == 0) goto L67
                r0 = r4
                r1 = r5
                r0.mo29006y(r1)
                r0 = r5
                int r0 = r0.length()
                if (r0 != 0) goto L5c
                r0 = 1
                r7 = r0
                goto L5f
            L5c:
                r0 = 0
                r7 = r0
            L5f:
                r0 = r4
                r1 = r7
                r0.mo29014O4(r1)
            L67:
                s1.s r0 = s1.s.a
                return r0
            L6b:
                java.lang.String r0 = "presenter"
                s1.z.c.l.l(r0)
                r0 = 0
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p345k.p351d.p353b.C8003a.C8006c.m29001s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.b.k.d.b.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/a$d.class */
    public static final class View$OnClickListenerC8007d implements View.OnClickListener {
        public View$OnClickListenerC8007d() {
            C8003a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7986c c7986c = C8003a.this.f24709f;
            if (c7986c == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC7983a abstractC7983a = (AbstractC7983a) c7986c.f57683a;
            if (abstractC7983a == null) {
                return;
            }
            abstractC7983a.mo29008v();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: B */
    public void mo29025B(boolean z) {
        C8076j1 c8076j1 = m29011QA().f25013f;
        s1.z.c.l.d(c8076j1, "binding.viewEmptySearch");
        LinearLayout linearLayout = c8076j1.f24956a;
        s1.z.c.l.d(linearLayout, "binding.viewEmptySearch.root");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p294b.p345k.p351d.p352a.C7995a.AbstractC7996a
    /* renamed from: F */
    public void mo29024F(int i) {
        C7986c c7986c = this.f24709f;
        if (c7986c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Integer valueOf = Integer.valueOf(i);
        AbstractC7983a abstractC7983a = (AbstractC7983a) c7986c.f57683a;
        if (abstractC7983a == null) {
            return;
        }
        if (valueOf != null && valueOf.intValue() == 0) {
            abstractC7983a.mo29025B(true);
            abstractC7983a.mo29022H(false);
            return;
        }
        abstractC7983a.mo29025B(false);
        abstractC7983a.mo29022H(true);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: G8 */
    public void mo29023G8(String str) {
        s1.z.c.l.e(str, "disclaimerText");
        AppCompatTextView appCompatTextView = m29011QA().f25011d;
        s1.z.c.l.d(appCompatTextView, "binding.textDisclaimer");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: H */
    public void mo29022H(boolean z) {
        RecyclerView recyclerView = m29011QA().f25008a;
        s1.z.c.l.d(recyclerView, "binding.contactList");
        C19286f.m13683U(recyclerView, z);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: H5 */
    public void mo29021H5(List<C7980a> list) {
        s1.z.c.l.e(list, "list");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "it");
            C7998b c7998b = this.f24708e;
            if (c7998b == null) {
                s1.z.c.l.l("itemPresenter");
                throw null;
            }
            this.f24710g = new C7995a(context, list, c7998b, this);
            RecyclerView recyclerView = m29011QA().f25008a;
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            recyclerView.setHasFixedSize(true);
            C7995a c7995a = this.f24710g;
            if (c7995a != null) {
                recyclerView.setAdapter(c7995a);
            } else {
                s1.z.c.l.l("contactListAdapter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p294b.p345k.p351d.p352a.C7995a.AbstractC7996a
    /* renamed from: H8 */
    public void mo29020H8(C7980a c7980a) {
        s1.z.c.l.e(c7980a, AnalyticsConstants.CONTACT);
        C7986c c7986c = this.f24709f;
        if (c7986c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c7986c);
        s1.z.c.l.e(c7980a, AnalyticsConstants.CONTACT);
        AbstractC7983a abstractC7983a = (AbstractC7983a) c7986c.f57683a;
        if (abstractC7983a != null) {
            StringBuilder m8728C = C22128a.m8728C("tel:");
            m8728C.append(c7980a.f24647c);
            abstractC7983a.mo29005z5(m8728C.toString());
        }
        C22128a.m8711G0("COVID_DIRECTORY_CALL_CLICKED", null, C22128a.m8667T("Type", c7980a.f24646b), null, "eventBuilder.build()", c7986c.f24670k);
        AbstractC19463a0 mo11854a = c7986c.f24671l.mo11854a();
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("COVID_DIRECTORY_CALL_CLICKED");
        m15852a.m15848d(C25225a.m3938Z1(new k("Type", c7980a.f24646b)));
        mo11854a.mo13111a(m15852a.build());
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: Hk */
    public void mo29019Hk() {
        LinearLayout linearLayout = m29011QA().f25009b;
        s1.z.c.l.d(linearLayout, "binding.disclaimerContainer");
        C19286f.m13684T(linearLayout);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: J5 */
    public void mo29018J5(String str) {
        s1.z.c.l.e(str, "countData");
        AppCompatTextView appCompatTextView = m29011QA().f25010c;
        s1.z.c.l.d(appCompatTextView, "binding.textContactsCount");
        appCompatTextView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: K */
    public void mo29017K(String str) {
        s1.z.c.l.e(str, "searchHint");
        SearchView searchView = this.f24711h;
        if (searchView == null) {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
        searchView.setMaxWidth(Integer.MAX_VALUE);
        searchView.findViewById(C0032R.C0034id.search_plate).setBackgroundColor(0);
        EditText editText = (EditText) searchView.findViewById(C0032R.C0034id.search_src_text);
        editText.setHintTextColor(C19291g.m13612L(requireActivity(), C3478R.attr.tcx_textTertiary));
        s1.z.c.l.d(editText, "editText");
        editText.setHint(str);
        SearchView searchView2 = this.f24711h;
        if (searchView2 == null) {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
        s1.z.c.l.e(searchView2, "$this$onQueryChangeListenerFlow");
        s1.a.a.a.v0.f.d.x2(new u0(s1.a.a.a.v0.f.d.z0(s1.a.a.a.v0.f.d.P(new C8200a(searchView2, null)), 500L), new C8006c(null)), C27020r.m994b(this));
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: N1 */
    public void mo29016N1() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: N3 */
    public Long mo29015N3() {
        Bundle arguments = getArguments();
        return arguments != null ? Long.valueOf(arguments.getLong("extra_district_id")) : null;
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: O4 */
    public void mo29014O4(boolean z) {
        AppCompatTextView appCompatTextView = m29011QA().f25010c;
        s1.z.c.l.d(appCompatTextView, "binding.textContactsCount");
        C19286f.m13683U(appCompatTextView, z);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: P1 */
    public String mo29013P1() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("extra_district_name") : null;
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: Pf */
    public void mo29012Pf(String str, String str2) {
        s1.z.c.l.e(str, "disclaimerText");
        s1.z.c.l.e(str2, "hyperlinkText");
        AppCompatTextView appCompatTextView = m29011QA().f25011d;
        s1.z.c.l.d(appCompatTextView, "binding.textDisclaimer");
        s1.z.c.l.e(appCompatTextView, "$this$setHyperLink");
        s1.z.c.l.e(str, "text");
        s1.z.c.l.e(str2, "linkText");
        s1.z.c.l.e(this, "listener");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new C8203b(appCompatTextView, this), v.H(str, str2, 0, false, 6), str2.length() + v.H(str, str2, 0, false, 6), 33);
        appCompatTextView.setText(spannableStringBuilder);
        appCompatTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* renamed from: QA */
    public final C8089m0 m29011QA() {
        return (C8089m0) this.f24713j.m34468b(this, f24706k[0]);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: b */
    public void mo29010b(String str) {
        s1.z.c.l.e(str, "url");
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e) {
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: o */
    public void mo29009o(String str) {
        s1.z.c.l.e(str, "stateName");
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar(m29011QA().f25012e);
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3542y(str);
                supportActionBar.mo3553n(true);
                supportActionBar.mo3552o(true);
            }
        }
        m29011QA().f25012e.setNavigationOnClickListener(new View$OnClickListenerC8007d());
    }

    public void onCreate(Bundle bundle) {
        C8003a.super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuInflater menuInflater2;
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C7986c c7986c = this.f24709f;
        if (c7986c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        if (!c7986c.f24663d.isEmpty()) {
            n3.r.a.l activity = getActivity();
            if (activity != null && (menuInflater2 = activity.getMenuInflater()) != null) {
                menuInflater2.inflate(C3478R.C3482menu.menu_search, menu);
            }
            MenuItem findItem = menu.findItem(C3478R.C3480id.actionSearch);
            s1.z.c.l.d(findItem, "mSearch");
            findItem.setVisible(true);
            View actionView = findItem.getActionView();
            Objects.requireNonNull(actionView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
            this.f24711h = (SearchView) actionView;
            C7986c c7986c2 = this.f24709f;
            if (c7986c2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC7983a abstractC7983a = (AbstractC7983a) c7986c2.f57683a;
            if (abstractC7983a != null) {
                String mo13768b = c7986c2.f24665f.mo13768b(C3478R.string.biz_govt_search, new Object[0]);
                s1.z.c.l.d(mo13768b, "resourceProvider.getStri…R.string.biz_govt_search)");
                abstractC7983a.mo29017K(mo13768b);
            }
            SearchView searchView = this.f24711h;
            if (searchView == null) {
                s1.z.c.l.l("mSearchView");
                throw null;
            }
            searchView.m43120B(this.f24712i, false);
            SearchView searchView2 = this.f24711h;
            if (searchView2 == null) {
                s1.z.c.l.l("mSearchView");
                throw null;
            }
            searchView2.setIconified(r.p(this.f24712i));
        }
        C8003a.super.onCreateOptionsMenu(menu, menuInflater);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3478R.layout.fragment_gove_services_contact_list, viewGroup, false);
    }

    public void onDestroyView() {
        C8003a.super.onDestroyView();
        C7986c c7986c = this.f24709f;
        if (c7986c != null) {
            c7986c.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C8003a.super.onResume();
        C7986c c7986c = this.f24709f;
        if (c7986c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC7983a abstractC7983a = (AbstractC7983a) c7986c.f57683a;
        if (abstractC7983a == null) {
            return;
        }
        abstractC7983a.mo29009o(c7986c.f24664e);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8003a.super.onViewCreated(view, bundle);
        C7986c c7986c = this.f24709f;
        if (c7986c != null) {
            c7986c.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p370p.AbstractC8207f
    /* renamed from: sw */
    public void mo28775sw() {
        String url;
        AbstractC7983a abstractC7983a;
        C7986c c7986c = this.f24709f;
        if (c7986c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        CovidDirectoryDisclaimerData m29056b = ((C7964d) c7986c.f24666g).m29056b();
        if (m29056b == null || (url = m29056b.getUrl()) == null || (abstractC7983a = (AbstractC7983a) c7986c.f57683a) == null) {
            return;
        }
        abstractC7983a.mo29010b(url);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: v */
    public void mo29008v() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p351d.p352a.C7995a.AbstractC7996a
    /* renamed from: xx */
    public void mo29007xx(C7980a c7980a) {
        s1.z.c.l.e(c7980a, AnalyticsConstants.CONTACT);
        C7986c c7986c = this.f24709f;
        if (c7986c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c7986c);
        s1.z.c.l.e(c7980a, AnalyticsConstants.CONTACT);
        C22128a.m8711G0("COVID_DIRECTORY_CONTACT_CLICKED", null, C22128a.m8667T("Type", c7980a.f24646b), null, "eventBuilder.build()", c7986c.f24670k);
        AbstractC19463a0 mo11854a = c7986c.f24671l.mo11854a();
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("COVID_DIRECTORY_CONTACT_CLICKED");
        m15852a.m15848d(C25225a.m3938Z1(new k("Type", c7980a.f24646b)));
        mo11854a.mo13111a(m15852a.build());
        String str = c7980a.f24647c;
        if (!r.y(str, "+", false, 2)) {
            str = C22128a.m8702I1('+', str);
        }
        c7986c.f24672m.mo28345i(c7980a.f24646b, str);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: y */
    public void mo29006y(String str) {
        s1.z.c.l.e(str, "text");
        C7995a c7995a = this.f24710g;
        if (c7995a != null) {
            new C7995a.C7997b().filter(str);
        } else {
            s1.z.c.l.l("contactListAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7983a
    /* renamed from: z5 */
    public void mo29005z5(String str) {
        s1.z.c.l.e(str, "phoneUri");
        Intent intent = new Intent("android.intent.action.CALL");
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }
}
