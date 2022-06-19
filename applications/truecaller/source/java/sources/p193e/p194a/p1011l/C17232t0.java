package p193e.p194a.p1011l;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18899g;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R%\u0010\u0019\u001a\n \u0014*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Le/a/l/t0;", "Landroidx/fragment/app/Fragment;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroidx/recyclerview/widget/RecyclerView;", "kotlin.jvm.PlatformType", "d", "Ls1/g;", "getList", "()Landroidx/recyclerview/widget/RecyclerView;", "list", "Le/a/o2/f;", "a", "Le/a/o2/f;", "listAdapter", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.t0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/t0.class */
public final class C17232t0 extends Fragment {

    /* renamed from: a */
    public C18898f f48362a;
    @Inject

    /* renamed from: b */
    public C17300x0 f48363b;
    @Inject

    /* renamed from: c */
    public C17244u0 f48364c;

    /* renamed from: d */
    public final g f48365d = C19286f.m13659t(this, 2131364633);

    /* renamed from: e.a.l.t0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/t0$a.class */
    public static final class C17233a extends m implements l<View, C17306z0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17233a() {
            super(1);
            C17232t0.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [e.a.l.t0, n3.v.b0] */
        /* renamed from: d */
        public Object m16355d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "v");
            ?? r0 = C17232t0.this;
            C18898f c18898f = r0.f48362a;
            if (c18898f != null) {
                return new C17306z0(view, c18898f, r0);
            }
            s1.z.c.l.l("listAdapter");
            throw null;
        }
    }

    /* renamed from: e.a.l.t0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/t0$b.class */
    public static final class C17234b extends m implements l<C17306z0, C17306z0> {

        /* renamed from: b */
        public static final C17234b f48367b = new C17234b();

        public C17234b() {
            super(1);
        }

        /* renamed from: d */
        public Object m16354d(Object obj) {
            C17306z0 c17306z0 = (C17306z0) obj;
            s1.z.c.l.e(c17306z0, "it");
            return c17306z0;
        }
    }

    /* renamed from: e.a.l.t0$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/t0$c.class */
    public static final class C17235c extends m implements l<View, C17297w0> {

        /* renamed from: b */
        public static final C17235c f48368b = new C17235c();

        public C17235c() {
            super(1);
        }

        /* renamed from: d */
        public Object m16353d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "v");
            return new C17297w0(view);
        }
    }

    /* renamed from: e.a.l.t0$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/t0$d.class */
    public static final class C17236d extends m implements l<C17297w0, C17297w0> {

        /* renamed from: b */
        public static final C17236d f48369b = new C17236d();

        public C17236d() {
            super(1);
        }

        /* renamed from: d */
        public Object m16352d(Object obj) {
            C17297w0 c17297w0 = (C17297w0) obj;
            s1.z.c.l.e(c17297w0, "it");
            return c17297w0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r8 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttach(android.content.Context r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            r1 = r8
            p193e.p194a.p1011l.C17232t0.super.onAttach(r1)
            r0 = r7
            android.os.Bundle r0 = r0.getArguments()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L22
            r0 = r8
            java.lang.String r1 = "type"
            java.io.Serializable r0 = r0.getSerializable(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L22
            goto L26
        L22:
            com.truecaller.premium.data.PremiumType r0 = com.truecaller.premium.data.PremiumType.PREMIUM
            r8 = r0
        L26:
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.data.PremiumType"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            com.truecaller.premium.data.PremiumType r0 = (com.truecaller.premium.data.PremiumType) r0
            r8 = r0
            r0 = r7
            androidx.fragment.app.Fragment r0 = r0.getParentFragment()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.PremiumScreenEntryPointProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            e.a.l.x1 r0 = (p193e.p194a.p1011l.AbstractC17301x1) r0
            e.a.l.w1 r0 = r0.mo16270tt()
            r10 = r0
            r0 = r10
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r8
            java.lang.String r1 = "premiumType"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            java.lang.Class<e.a.l.w1> r1 = p193e.p194a.p1011l.AbstractC17298w1.class
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3846s(r0, r1)
            r0 = r8
            java.lang.String r1 = "Cannot return null from a non-@Nullable @Provides method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r10
            e.a.l.i2 r0 = r0.mo11963W0()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Cannot return null from a non-@Nullable component method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r10
            e.a.l.q0 r0 = r0.mo11897v()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Cannot return null from a non-@Nullable component method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            e.a.l.x0 r1 = new e.a.l.x0
            r2 = r1
            r3 = r8
            r4 = r9
            r5 = r11
            r2.<init>(r3, r4, r5)
            r0.f48363b = r1
            r0 = r8
            java.lang.String r1 = "Cannot return null from a non-@Nullable @Provides method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r10
            e.a.l.i2 r0 = r0.mo11963W0()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Cannot return null from a non-@Nullable component method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            e.a.l.u0 r1 = new e.a.l.u0
            r2 = r1
            r3 = r8
            r4 = r9
            r2.<init>(r3, r4)
            r0.f48364c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C17232t0.onAttach(android.content.Context):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_premium_features_list, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C17232t0.super.onViewCreated(view, bundle);
        C17300x0 c17300x0 = this.f48363b;
        if (c17300x0 == null) {
            s1.z.c.l.l("listItemPresenter");
            throw null;
        }
        C18910r c18910r = new C18910r(c17300x0, C2752R.layout.listitem_premium_feature, new C17233a(), C17234b.f48367b);
        C17244u0 c17244u0 = this.f48364c;
        if (c17244u0 == null) {
            s1.z.c.l.l("listHeaderPresenter");
            throw null;
        }
        this.f48362a = new C18898f(c18910r.mo14330f(new C18910r(c17244u0, C2752R.layout.listitem_premium_header, C17235c.f48368b, C17236d.f48369b), new C18899g(0, 1)));
        RecyclerView recyclerView = (RecyclerView) this.f48365d.getValue();
        s1.z.c.l.d(recyclerView, "list");
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        RecyclerView recyclerView2 = (RecyclerView) this.f48365d.getValue();
        s1.z.c.l.d(recyclerView2, "list");
        C18898f c18898f = this.f48362a;
        if (c18898f == null) {
            s1.z.c.l.l("listAdapter");
            throw null;
        }
        recyclerView2.setAdapter(c18898f);
        C18898f c18898f2 = this.f48362a;
        if (c18898f2 != null) {
            c18898f2.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("listAdapter");
            throw null;
        }
    }
}
