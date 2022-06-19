package com.truecaller.incallui.callui.ongoing.backgroundCall;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.incallui.C4013R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13623b;
import p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13624c;
import p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13627f;
import p193e.p194a.p717f.p718a.p721b.p725w.C13625d;
import p193e.p194a.p717f.p718a.p721b.p725w.C13626e;
import p193e.p194a.p717f.p732x.C13744c;
import p193e.p194a.p717f.p734z.C13827k0;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b1\u0010\u001cJ+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u001cR\u001d\u0010$\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00062"}, d2 = {"Lcom/truecaller/incallui/callui/ongoing/backgroundCall/BackgroundCallFragment;", "Landroidx/fragment/app/Fragment;", "Le/a/f/a/b/w/c;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", AnalyticsConstants.NAME, "setProfileName", "(Ljava/lang/String;)V", "", "i3", "(I)V", "Le/a/f/z/k0;", "profilePicture", "Ny", "(Le/a/f/z/k0;)V", "bA", "()V", "R", "onDestroyView", "Le/a/f/x/c;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/f/x/c;", "binding", "Le/a/b0/a/b/a;", "g", "Le/a/b0/a/b/a;", "avatarPresenter", "Le/a/f/a/b/w/b;", "f", "Le/a/f/a/b/w/b;", "getPresenter", "()Le/a/f/a/b/w/b;", "setPresenter", "(Le/a/f/a/b/w/b;)V", "presenter", "<init>", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/ongoing/backgroundCall/BackgroundCallFragment.class */
public final class BackgroundCallFragment extends AbstractC13627f implements AbstractC13624c {

    /* renamed from: h */
    public static final /* synthetic */ l[] f12420h = {C22128a.m8621g0(BackgroundCallFragment.class, "binding", "getBinding()Lcom/truecaller/incallui/databinding/FragmentIncalluiBackgroundCallBinding;", 0)};

    /* renamed from: e */
    public final ViewBindingProperty f12421e = new C19350a(new C4024a());
    @Inject

    /* renamed from: f */
    public AbstractC13623b f12422f;

    /* renamed from: g */
    public C8243a f12423g;

    /* renamed from: com.truecaller.incallui.callui.ongoing.backgroundCall.BackgroundCallFragment$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/ongoing/backgroundCall/BackgroundCallFragment$a.class */
    public static final class C4024a extends m implements s1.z.b.l<BackgroundCallFragment, C13744c> {
        public C4024a() {
            super(1);
        }

        /* renamed from: d */
        public Object m35294d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4013R.C4015id.image_profile_picture;
            AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
            if (avatarXView != null) {
                LinearLayout linearLayout = (LinearLayout) requireView;
                i = C4013R.C4015id.text_profile_name;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    return new C13744c(linearLayout, avatarXView, linearLayout, textView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13624c
    /* renamed from: Ny */
    public void mo21481Ny(C13827k0 c13827k0) {
        s1.z.c.l.e(c13827k0, "profilePicture");
        C8243a c8243a = this.f12423g;
        if (c8243a != null) {
            C8243a.m28739ok(c8243a, C17891a1.C17902k.m15647R0(c13827k0), false, 2, null);
        } else {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
    }

    /* renamed from: QA */
    public final C13744c m35295QA() {
        return (C13744c) this.f12421e.m34468b(this, f12420h[0]);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13624c
    /* renamed from: R */
    public void mo21480R() {
        View view = getView();
        if (view != null) {
            C19286f.m13689O(view);
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13624c
    /* renamed from: bA */
    public void mo21479bA() {
        View view = getView();
        if (view != null) {
            C19286f.m13684T(view);
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13624c
    /* renamed from: i3 */
    public void mo21478i3(int i) {
        TextView textView = m35295QA().f39811b;
        s1.z.c.l.d(textView, "binding.textProfileName");
        textView.setText(getString(C4013R.string.incallui_on_hold_background_call, new Object[]{getString(i)}));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4013R.layout.fragment_incallui_background_call, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…d_call, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC13623b abstractC13623b = this.f12422f;
        if (abstractC13623b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC13623b).mo9806c();
        BackgroundCallFragment.super.onDestroyView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        BackgroundCallFragment.super.onViewCreated(view, bundle);
        AvatarXView avatarXView = m35295QA().f39810a;
        s1.z.c.l.d(avatarXView, "binding.imageProfilePicture");
        Context context = avatarXView.getContext();
        s1.z.c.l.d(context, "binding.imageProfilePicture.context");
        this.f12423g = new C8243a(new C19235i0(context));
        AvatarXView avatarXView2 = m35295QA().f39810a;
        C8243a c8243a = this.f12423g;
        if (c8243a == null) {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
        avatarXView2.setPresenter(c8243a);
        AbstractC13623b abstractC13623b = this.f12422f;
        if (abstractC13623b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC13623b).f57683a = this;
        if (abstractC13623b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C13626e c13626e = (C13626e) abstractC13623b;
        C19291g.m13599P0(c13626e, c13626e.f39479d.mo21199h(), new C13625d(c13626e, null));
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p725w.AbstractC13624c
    public void setProfileName(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        TextView textView = m35295QA().f39811b;
        s1.z.c.l.d(textView, "binding.textProfileName");
        textView.setText(getString(C4013R.string.incallui_on_hold_background_call, new Object[]{str}));
    }
}
