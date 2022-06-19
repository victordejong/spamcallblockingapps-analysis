package com.truecaller.insights.p168ui.important.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.core.widget.NestedScrollView$b;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8343c;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.p440a.C8684c;
import p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b;
import p193e.p194a.p437c.p438a.p446c.p447a.C8776d;
import p193e.p194a.p437c.p438a.p446c.p447a.C8777e;
import p193e.p194a.p437c.p438a.p446c.p447a.C8779f;
import p193e.p194a.p437c.p438a.p446c.p447a.ViewTreeObserver$OnGlobalLayoutListenerC8775c;
import p193e.p194a.p437c.p438a.p446c.p448e.C8784a;
import p193e.p194a.p437c.p438a.p446c.p448e.C8785b;
import p193e.p194a.p437c.p438a.p446c.p449f.C8819o;
import p193e.p194a.p437c.p438a.p446c.p449f.C8821p;
import p193e.p194a.p437c.p438a.p446c.p451h.C8838b;
import p193e.p194a.p437c.p438a.p446c.p451h.C8843d;
import p193e.p194a.p437c.p438a.p446c.p451h.C8844e;
import p193e.p194a.p437c.p438a.p446c.p451h.C8846f;
import p193e.p194a.p437c.p438a.p477g.C9022d0;
import p193e.p194a.p437c.p438a.p477g.C9051m0;
import p193e.p194a.p437c.p438a.p478h.AbstractC9103e;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import p193e.p194a.p437c.p548h.AbstractC10256f;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p548h.AbstractC10259i;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��À\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� \u0080\u00012\u00020\u00012\u00020\u0002:\u0003H\u0081\u0001B\u0007¢\u0006\u0004\b\u007f\u0010\bJ\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ-\u0010!\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b#\u0010\bJ\u001f\u0010'\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0019\u00106\u001a\u0002018\u0006@\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010N\u001a\u00020G8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010V\u001a\u00020O8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u0016\u0010Z\u001a\u00020W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\"\u0010b\u001a\u00020[8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\"\u0010j\u001a\u00020c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\u001d\u0010p\u001a\u00020k8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u001d\u0010v\u001a\u00020q8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010uR\"\u0010~\u001a\u00020w8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}¨\u0006\u0082\u0001"}, d2 = {"Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;", "Landroidx/fragment/app/Fragment;", "Le/a/c/a/h/e;", "Lcom/google/android/material/appbar/AppBarLayout;", "RA", "()Lcom/google/android/material/appbar/AppBarLayout;", "Ls1/s;", "SA", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "onDestroy", "languageCode", "", "allowsDownloadViaMobile", "k8", "(Ljava/lang/String;Z)V", "Le/a/c/h/i;", "g", "Le/a/c/h/i;", "getMessageTranslationContract", "()Le/a/c/h/i;", "setMessageTranslationContract", "(Le/a/c/h/i;)V", "messageTranslationContract", "Lcom/google/android/material/appbar/AppBarLayout$c;", "k", "Lcom/google/android/material/appbar/AppBarLayout$c;", "getOffsetChangedListener", "()Lcom/google/android/material/appbar/AppBarLayout$c;", "offsetChangedListener", "Ln3/v/a1$b;", "f", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/h/f;", "d", "Le/a/c/h/f;", "getInsightsSmsIntents", "()Le/a/c/h/f;", "setInsightsSmsIntents", "(Le/a/c/h/f;)V", "insightsSmsIntents", "Le/a/b0/m/c/a;", C22021b.f61237c, "Le/a/b0/m/c/a;", "getSearchContactApi", "()Le/a/b0/m/c/a;", "setSearchContactApi", "(Le/a/b0/m/c/a;)V", "searchContactApi", "Le/a/c/b/h;", AbstractC2405c.f7629a, "Le/a/c/b/h;", "getInsightsPermissionHelper", "()Le/a/c/b/h;", "setInsightsPermissionHelper", "(Le/a/c/b/h;)V", "insightsPermissionHelper", "", "i", "F", "currentOffset", "Le/a/c/h/h;", "a", "Le/a/c/h/h;", "getMessageLocator", "()Le/a/c/h/h;", "setMessageLocator", "(Le/a/c/h/h;)V", "messageLocator", "Le/a/c/b/e;", "h", "Le/a/c/b/e;", "getEnvironmentHelper", "()Le/a/c/b/e;", "setEnvironmentHelper", "(Le/a/c/b/e;)V", "environmentHelper", "Le/a/c/a/g/d0;", "l", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/c/a/g/d0;", "binding", "Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;", "j", "Ls1/g;", "QA", "()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;", "businessInsightsViewModel", "Le/a/c/a/a/a/c;", "e", "Le/a/c/a/a/a/c;", "getInsightsAdapter", "()Le/a/c/a/a/a/c;", "setInsightsAdapter", "(Le/a/c/a/a/a/c;)V", "insightsAdapter", "<init>", "n", "SafeLinearLayoutManager", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment.class */
public final class BusinessInsightsFragment extends Fragment implements AbstractC9103e {

    /* renamed from: m */
    public static final /* synthetic */ l[] f12805m = {C22128a.m8621g0(BusinessInsightsFragment.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentBusinessInsightsBinding;", 0)};

    /* renamed from: n */
    public static final C4098b f12806n = new C4098b(null);
    @Inject

    /* renamed from: a */
    public AbstractC10258h f12807a;
    @Inject

    /* renamed from: b */
    public AbstractC8511a f12808b;
    @Inject

    /* renamed from: c */
    public AbstractC9689h f12809c;
    @Inject

    /* renamed from: d */
    public AbstractC10256f f12810d;
    @Inject

    /* renamed from: e */
    public C8684c f12811e;
    @Inject

    /* renamed from: f */
    public C26986a1.AbstractC26987b f12812f;
    @Inject

    /* renamed from: g */
    public AbstractC10259i f12813g;
    @Inject

    /* renamed from: h */
    public AbstractC9686e f12814h;

    /* renamed from: i */
    public float f12815i;

    /* renamed from: j */
    public final g f12816j = C25225a.m3978P1(new C4099c());

    /* renamed from: k */
    public final AppBarLayout.c f12817k = new C4100d();

    /* renamed from: l */
    public final ViewBindingProperty f12818l = new C19350a(new C4097a());

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ#\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$SafeLinearLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Landroidx/recyclerview/widget/RecyclerView$v;", "Landroidx/recyclerview/widget/RecyclerView;", "recycler", "Landroidx/recyclerview/widget/RecyclerView$z;", "state", "Ls1/s;", "onLayoutChildren", "(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "<init>", "(Landroid/content/Context;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment$SafeLinearLayoutManager */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment$SafeLinearLayoutManager.class */
    public static final class SafeLinearLayoutManager extends LinearLayoutManager {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SafeLinearLayoutManager(Context context) {
            super(context);
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0329o
        public void onLayoutChildren(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
            s1.z.c.l.e(c0341v, "recycler");
            s1.z.c.l.e(c0347z, "state");
            try {
                super.onLayoutChildren(c0341v, c0347z);
            } catch (IndexOutOfBoundsException e) {
                C10263b.f30414d.m26508b(e, null);
            }
        }
    }

    /* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment$a.class */
    public static final class C4097a extends m implements s1.z.b.l<BusinessInsightsFragment, C9022d0> {
        public C4097a() {
            super(1);
        }

        /* renamed from: d */
        public Object m35180d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4078R.C4080id.businessRv;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
            if (recyclerView != null) {
                i = C4078R.C4080id.description;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.footer;
                    View findViewById = requireView.findViewById(i);
                    if (findViewById != null) {
                        int i2 = C4078R.C4080id.imageView;
                        ImageView imageView = (ImageView) findViewById.findViewById(i2);
                        if (imageView != null) {
                            i2 = C4078R.C4080id.subtitle;
                            TextView textView2 = (TextView) findViewById.findViewById(i2);
                            if (textView2 != null) {
                                i2 = C4078R.C4080id.title;
                                TextView textView3 = (TextView) findViewById.findViewById(i2);
                                if (textView3 != null) {
                                    C9051m0 c9051m0 = new C9051m0((ConstraintLayout) findViewById, imageView, textView2, textView3);
                                    i = C4078R.C4080id.grantPermission;
                                    MaterialButton findViewById2 = requireView.findViewById(i);
                                    if (findViewById2 != null) {
                                        i = C4078R.C4080id.introductionTitle;
                                        TextView textView4 = (TextView) requireView.findViewById(i);
                                        if (textView4 != null) {
                                            i = C4078R.C4080id.noPermissionGroup;
                                            Group group = (Group) requireView.findViewById(i);
                                            if (group != null) {
                                                i = C4078R.C4080id.noPermissionState;
                                                ImageView imageView2 = (ImageView) requireView.findViewById(i);
                                                if (imageView2 != null) {
                                                    i = C4078R.C4080id.permissionGroup;
                                                    Group group2 = (Group) requireView.findViewById(i);
                                                    if (group2 != null) {
                                                        return new C9022d0(requireView, recyclerView, textView, c9051m0, findViewById2, textView4, group, imageView2, group2);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        throw new NullPointerException("Missing required view with ID: ".concat(findViewById.getResources().getResourceName(i2)));
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment$b.class */
    public static final class C4098b {
        public C4098b() {
        }

        public C4098b(f fVar) {
        }
    }

    /* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment$c.class */
    public static final class C4099c extends m implements a<BusinessInsightsViewModel> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4099c() {
            super(0);
            BusinessInsightsFragment.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.insights.ui.important.view.BusinessInsightsFragment, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = BusinessInsightsFragment.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f12812f;
            if (abstractC26987b == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = BusinessInsightsViewModel.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (BusinessInsightsViewModel.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, BusinessInsightsViewModel.class) : abstractC26987b.create(BusinessInsightsViewModel.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …htsViewModel::class.java)");
            return (BusinessInsightsViewModel) abstractC27040y0;
        }
    }

    /* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment$d */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment$d.class */
    public static final class C4100d implements AppBarLayout.c {
        public C4100d() {
            BusinessInsightsFragment.this = r4;
        }

        /* renamed from: Xm */
        public final void m35179Xm(AppBarLayout appBarLayout, int i) {
            s1.z.c.l.d(appBarLayout, "appBarLayout");
            float height = appBarLayout.getHeight();
            BusinessInsightsFragment.this.f12815i = 1.0f - ((height - Math.abs(i)) / height);
            BusinessInsightsFragment.m35185OA(BusinessInsightsFragment.this);
        }
    }

    /* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment$e */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment$e.class */
    public static final class View$OnClickListenerC4101e implements View.OnClickListener {
        public View$OnClickListenerC4101e() {
            BusinessInsightsFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Fragment fragment = BusinessInsightsFragment.this;
            AbstractC9689h abstractC9689h = fragment.f12809c;
            if (abstractC9689h == null) {
                s1.z.c.l.l("insightsPermissionHelper");
                throw null;
            } else if (abstractC9689h.mo27296g()) {
            } else {
                AbstractC9689h abstractC9689h2 = fragment.f12809c;
                if (abstractC9689h2 == null) {
                    s1.z.c.l.l("insightsPermissionHelper");
                    throw null;
                }
                if (!abstractC9689h2.mo27295h()) {
                    AbstractC9689h abstractC9689h3 = fragment.f12809c;
                    if (abstractC9689h3 == null) {
                        s1.z.c.l.l("insightsPermissionHelper");
                        throw null;
                    } else if (!abstractC9689h3.mo27300c()) {
                        BusinessInsightsViewModel m35183QA = fragment.m35183QA();
                        Objects.requireNonNull(m35183QA);
                        s1.z.c.l.e("default_sms", "eventCategory");
                        m35183QA.m35192e("default_sms", ViewAction.VIEW, "grant_permission");
                        AbstractC10256f abstractC10256f = fragment.f12810d;
                        if (abstractC10256f == null) {
                            s1.z.c.l.l("insightsSmsIntents");
                            throw null;
                        }
                        Context context = fragment.getContext();
                        if (context == null) {
                            return;
                        }
                        s1.z.c.l.d(context, "context ?: return");
                        fragment.startActivityForResult(abstractC10256f.mo26526a(context), 12);
                        return;
                    }
                }
                BusinessInsightsViewModel m35183QA2 = fragment.m35183QA();
                Objects.requireNonNull(m35183QA2);
                s1.z.c.l.e("read_sms", "eventCategory");
                m35183QA2.m35192e("read_sms", ViewAction.VIEW, "grant_permission");
                AbstractC9689h abstractC9689h4 = fragment.f12809c;
                if (abstractC9689h4 != null) {
                    abstractC9689h4.mo27299d(fragment, abstractC9689h4.mo27301a(), 11);
                } else {
                    s1.z.c.l.l("insightsPermissionHelper");
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.truecaller.insights.ui.important.view.BusinessInsightsFragment$f */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/view/BusinessInsightsFragment$f.class */
    public static final class C4102f implements NestedScrollView$b {
        public C4102f() {
            BusinessInsightsFragment.this = r4;
        }

        @Override // androidx.core.widget.NestedScrollView$b
        /* renamed from: a */
        public final void mo2161a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            boolean z = i2 > i4;
            AbstractC8343c.AbstractC8344a activity = BusinessInsightsFragment.this.getActivity();
            n3.r.a.l lVar = activity;
            if (!(activity instanceof AbstractC8343c.AbstractC8344a)) {
                lVar = null;
            }
            AbstractC8343c.AbstractC8344a abstractC8344a = lVar;
            if (abstractC8344a != null) {
                abstractC8344a.mo28649v7(z);
            }
        }
    }

    /* renamed from: OA */
    public static final void m35185OA(BusinessInsightsFragment businessInsightsFragment) {
        View view = businessInsightsFragment.getView();
        if (view != null) {
            s1.z.c.l.d(view, "view ?: return");
            RecyclerView recyclerView = businessInsightsFragment.m35184PA().f27432a;
            s1.z.c.l.d(recyclerView, "binding.businessRv");
            int height = recyclerView.getHeight();
            float dimension = businessInsightsFragment.getResources().getDimension(C4078R.dimen.bottom_bar_height);
            if (height > view.getHeight() - dimension) {
                view.setPadding(0, 0, 0, 0);
            } else {
                view.setPadding(0, 0, 0, (int) (dimension - (businessInsightsFragment.f12815i * dimension)));
            }
        }
    }

    /* renamed from: PA */
    public final C9022d0 m35184PA() {
        return (C9022d0) this.f12818l.m34468b(this, f12805m[0]);
    }

    /* renamed from: QA */
    public final BusinessInsightsViewModel m35183QA() {
        return (BusinessInsightsViewModel) this.f12816j.getValue();
    }

    /* renamed from: RA */
    public final AppBarLayout m35182RA() {
        n3.r.a.l activity = getActivity();
        if (!(activity instanceof AbstractC8774b)) {
            activity = null;
        }
        AbstractC8774b abstractC8774b = activity;
        AppBarLayout appBarLayout = null;
        if (abstractC8774b != null) {
            appBarLayout = abstractC8774b.mo28080d8();
        }
        return appBarLayout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: SA */
    public final void m35181SA() {
        ActivityResultRegistry activityResultRegistry;
        C9022d0 m35184PA = m35184PA();
        AbstractC9689h abstractC9689h = this.f12809c;
        if (abstractC9689h == null) {
            s1.z.c.l.l("insightsPermissionHelper");
            throw null;
        } else if (!abstractC9689h.mo27296g()) {
            Group group = m35184PA.f27435d;
            s1.z.c.l.d(group, "noPermissionGroup");
            C19286f.m13684T(group);
            Group group2 = m35184PA.f27437f;
            s1.z.c.l.d(group2, "permissionGroup");
            C19286f.m13689O(group2);
            ImageView imageView = m35184PA.f27436e;
            s1.z.c.l.d(imageView, "noPermissionState");
            if (imageView.getDrawable() != null) {
                return;
            }
            m35184PA.f27436e.setImageResource(C4078R.C4079drawable.ic_tcx_no_sms_permission);
        } else {
            BusinessInsightsViewModel m35183QA = m35183QA();
            n3.r.a.l activity = getActivity();
            if (activity != null && (activityResultRegistry = activity.getActivityResultRegistry()) != null) {
                s1.z.c.l.d(activityResultRegistry, "activity?.activityResultRegistry ?: return");
                AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
                s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
                Objects.requireNonNull(m35183QA);
                s1.z.c.l.e(activityResultRegistry, "registry");
                s1.z.c.l.e(viewLifecycleOwner, "lifecycleOwner");
                d.w2(MediaSessionCompat.m43315C0(m35183QA), (s1.w.f) null, (j0) null, new C8844e(m35183QA, null), 3, (Object) null);
                m35183QA.f12780m.mo26857Y().m42867f(viewLifecycleOwner, new C8843d(m35183QA, viewLifecycleOwner));
                d.w2(MediaSessionCompat.m43315C0(m35183QA), (s1.w.f) null, (j0) null, new C8838b(m35183QA, activityResultRegistry, null), 3, (Object) null);
                if (m35183QA.f12779l.mo27274U()) {
                    d.w2(MediaSessionCompat.m43315C0(m35183QA), (s1.w.f) null, (j0) null, new C8846f(m35183QA, null), 3, (Object) null);
                }
                RecyclerView recyclerView = m35184PA().f27432a;
                s1.z.c.l.d(recyclerView, "binding.businessRv");
                RecyclerView.AbstractC0317g adapter = recyclerView.getAdapter();
                Objects.requireNonNull(adapter, "null cannot be cast to non-null type com.truecaller.insights.ui.presentation.adapter.BusinessInsightsAdapter");
                C8684c c8684c = (C8684c) adapter;
                BusinessInsightsViewModel m35183QA2 = m35183QA();
                s1.z.c.l.e(m35183QA2, "businessInsightsViewModel");
                c8684c.f26581b = m35183QA2;
                LiveData m43264W = MediaSessionCompat.m43264W(m35183QA().f12769b);
                s1.z.c.l.b(m43264W, "Transformations.distinctUntilChanged(this)");
                m43264W.m42867f(getViewLifecycleOwner(), new C8776d(this));
                C27020r.m994b(this).m981b(new C8777e(this, null));
                m35183QA().f12780m.mo26815u().m42867f(getViewLifecycleOwner(), new b1(0, this));
                m35183QA().f12780m.mo26872J().m42867f(getViewLifecycleOwner(), new b1(1, this));
            }
            Group group3 = m35184PA.f27435d;
            s1.z.c.l.d(group3, "noPermissionGroup");
            C19286f.m13689O(group3);
            Group group4 = m35184PA.f27437f;
            s1.z.c.l.d(group4, "permissionGroup");
            C19286f.m13684T(group4);
        }
    }

    @Override // p193e.p194a.p437c.p438a.p478h.AbstractC9103e
    /* renamed from: k8 */
    public void mo27882k8(String str, boolean z) {
        s1.z.c.l.e(str, "languageCode");
        BusinessInsightsViewModel m35183QA = m35183QA();
        Objects.requireNonNull(m35183QA);
        s1.z.c.l.e(str, "languageCode");
        C8819o c8819o = m35183QA.f12778k;
        Objects.requireNonNull(c8819o);
        s1.z.c.l.e(str, "languageCode");
        c8819o.f26901c.mo26516c(str, z, new C8821p(c8819o));
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        BusinessInsightsFragment.super.onActivityResult(i, i2, intent);
        if (i == 12) {
            boolean z = i2 == -1;
            if (z) {
                m35181SA();
            }
            BusinessInsightsViewModel m35183QA = m35183QA();
            Objects.requireNonNull(m35183QA);
            s1.z.c.l.e("default_sms", "eventCategory");
            m35183QA.m35192e("default_sms", "click", z ? "granted" : Constants.TAS_DENIED);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        AbstractC8412c m15207r = C18334g0.m15207r(this);
        AbstractC10451a abstractC10451a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        C8784a c8784a = new C8784a();
        AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        AbstractC8510a abstractC8510a = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
        C25225a.m3846s(m15207r, AbstractC8412c.class);
        C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
        C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
        C25225a.m3846s(abstractC8510a, AbstractC8510a.class);
        C8785b c8785b = new C8785b(c8784a, m15207r, abstractC10451a, abstractC10261a, abstractC8510a, null);
        AbstractC10258h mo12203t = abstractC10261a.mo12203t();
        Objects.requireNonNull(mo12203t, "Cannot return null from a non-@Nullable component method");
        this.f12807a = mo12203t;
        AbstractC8511a mo12189u = c8785b.f26794b.mo12189u();
        Objects.requireNonNull(mo12189u, "Cannot return null from a non-@Nullable component method");
        this.f12808b = mo12189u;
        AbstractC9689h mo12618O0 = c8785b.f26795c.mo12618O0();
        Objects.requireNonNull(mo12618O0, "Cannot return null from a non-@Nullable component method");
        this.f12809c = mo12618O0;
        AbstractC10256f mo12391f1 = c8785b.f26793a.mo12391f1();
        Objects.requireNonNull(mo12391f1, "Cannot return null from a non-@Nullable component method");
        this.f12810d = mo12391f1;
        this.f12811e = (C8684c) c8785b.f26804l.get();
        this.f12812f = (C26986a1.AbstractC26987b) c8785b.f26817y.get();
        AbstractC10259i mo12575R3 = c8785b.f26793a.mo12575R3();
        Objects.requireNonNull(mo12575R3, "Cannot return null from a non-@Nullable component method");
        this.f12813g = mo12575R3;
        AbstractC9686e mo12141x6 = c8785b.f26795c.mo12141x6();
        Objects.requireNonNull(mo12141x6, "Cannot return null from a non-@Nullable component method");
        this.f12814h = mo12141x6;
        AbstractC27028u lifecycle = getLifecycle();
        AbstractC8511a abstractC8511a = this.f12808b;
        if (abstractC8511a == null) {
            s1.z.c.l.l("searchContactApi");
            throw null;
        }
        lifecycle.mo988a(abstractC8511a);
        BusinessInsightsViewModel m35183QA = m35183QA();
        AbstractC27028u lifecycle2 = getLifecycle();
        s1.z.c.l.d(lifecycle2, "lifecycle");
        Objects.requireNonNull(m35183QA);
        s1.z.c.l.e(lifecycle2, "lifecycle");
        lifecycle2.mo988a(m35183QA.f12782o);
        lifecycle2.mo988a(m35183QA.f12783p);
        if (!m35183QA.f12780m.mo26863S()) {
            lifecycle2.mo988a(m35183QA.f12781n);
        }
        lifecycle2.mo988a(m35183QA.f12784q);
        lifecycle2.mo988a(m35183QA);
        lifecycle2.mo988a(m35183QA.f12788u);
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_business_insights, viewGroup, false);
    }

    public void onDestroy() {
        BusinessInsightsFragment.super.onDestroy();
        AppBarLayout m35182RA = m35182RA();
        if (m35182RA != null) {
            AppBarLayout.c cVar = this.f12817k;
            List list = m35182RA.h;
            if (list == null || cVar == null) {
                return;
            }
            list.remove(cVar);
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        BusinessInsightsFragment.super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 11) {
            AbstractC9689h abstractC9689h = this.f12809c;
            if (abstractC9689h == null) {
                s1.z.c.l.l("insightsPermissionHelper");
                throw null;
            }
            abstractC9689h.mo27298e(strArr, iArr);
            AbstractC9689h abstractC9689h2 = this.f12809c;
            if (abstractC9689h2 == null) {
                s1.z.c.l.l("insightsPermissionHelper");
                throw null;
            }
            boolean mo27296g = abstractC9689h2.mo27296g();
            if (mo27296g) {
                m35181SA();
            }
            BusinessInsightsViewModel m35183QA = m35183QA();
            Objects.requireNonNull(m35183QA);
            s1.z.c.l.e("read_sms", "eventCategory");
            m35183QA.m35192e("read_sms", "click", mo27296g ? "granted" : Constants.TAS_DENIED);
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        BusinessInsightsFragment.super.onViewCreated(view, bundle);
        C9022d0 m35184PA = m35184PA();
        RecyclerView recyclerView = m35184PA.f27432a;
        s1.z.c.l.d(recyclerView, "businessRv");
        C8684c c8684c = this.f12811e;
        View view2 = null;
        if (c8684c == null) {
            s1.z.c.l.l("insightsAdapter");
            throw null;
        }
        recyclerView.setAdapter(c8684c);
        RecyclerView recyclerView2 = m35184PA.f27432a;
        s1.z.c.l.d(recyclerView2, "businessRv");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        recyclerView2.setLayoutManager(new SafeLinearLayoutManager(requireContext));
        RecyclerView recyclerView3 = m35184PA.f27432a;
        s1.z.c.l.d(recyclerView3, "businessRv");
        recyclerView3.setItemAnimator(new n3.b0.a.g());
        m35184PA.f27432a.addOnScrollListener(new C8779f(this));
        m35181SA();
        m35184PA().f27434c.setOnClickListener(new View$OnClickListenerC4101e());
        RecyclerView recyclerView4 = m35184PA().f27432a;
        s1.z.c.l.d(recyclerView4, "binding.businessRv");
        recyclerView4.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC8775c(recyclerView4, this));
        View view3 = getView();
        if (view3 instanceof NestedScrollView) {
            view2 = view3;
        }
        NestedScrollView nestedScrollView = view2;
        if (nestedScrollView == null) {
            return;
        }
        nestedScrollView.setOnScrollChangeListener(new C4102f());
    }
}
