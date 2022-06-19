package p193e.p194a.p1011l;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.AppBarLayout$b;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.tablayout.TabLayoutX;
import com.truecaller.data.entity.Contact;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.PremiumType;
import com.truecaller.premium.p173ui.friendpromo.PremiumFriendUpgradedPromoView;
import com.truecaller.premium.p173ui.goldgift.PremiumGoldGiftPromoView;
import io.agora.rtc.Constants;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p373a.p381c0.C8280a;
import p193e.p194a.p372b0.p373a.p381c0.C8281b;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\b¢\u0006\u0005\b\u0080\u0001\u0010\u0016J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b \u0010\u001eJ\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u001d\u0010(\u001a\u00020\u00062\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0016J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020!H\u0016¢\u0006\u0004\b,\u0010$J\u0017\u0010-\u001a\u00020\u00062\u0006\u0010+\u001a\u00020!H\u0016¢\u0006\u0004\b-\u0010$J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J%\u00109\u001a\u00020\u00062\f\u00107\u001a\b\u0012\u0004\u0012\u0002060%2\u0006\u00108\u001a\u00020!H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010\u0016J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\u0016R%\u0010C\u001a\n >*\u0004\u0018\u00010=0=8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\"\u0010K\u001a\u00020D8��@��X\u0081.¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR%\u0010P\u001a\n >*\u0004\u0018\u00010L0L8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010@\u001a\u0004\bN\u0010OR%\u0010U\u001a\n >*\u0004\u0018\u00010Q0Q8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010@\u001a\u0004\bS\u0010TR%\u0010Z\u001a\n >*\u0004\u0018\u00010V0V8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010@\u001a\u0004\bX\u0010YR%\u0010_\u001a\n >*\u0004\u0018\u00010[0[8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010@\u001a\u0004\b]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR%\u0010l\u001a\n >*\u0004\u0018\u00010h0h8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bi\u0010@\u001a\u0004\bj\u0010kR%\u0010q\u001a\n >*\u0004\u0018\u00010m0m8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bn\u0010@\u001a\u0004\bo\u0010pR%\u0010v\u001a\n >*\u0004\u0018\u00010r0r8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bs\u0010@\u001a\u0004\bt\u0010uR(\u0010\u007f\u001a\u00020w8��@��X\u0081.¢\u0006\u0018\n\u0004\bx\u0010y\u0012\u0004\b~\u0010\u0016\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}¨\u0006\u0081\u0001"}, d2 = {"Le/a/l/d1;", "Landroidx/fragment/app/Fragment;", "Le/a/l/g1;", "Le/a/l/x1;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "onDetach", "Le/a/l/w1;", "tt", "()Le/a/l/w1;", "", "title", "I4", "(Ljava/lang/String;)V", "url", "fx", "", "imageRes", "F6", "(I)V", "", "Le/a/l/s1;", "pages", "Sz", "(Ljava/util/List;)V", "fe", "position", "Kj", "xw", "Lcom/truecaller/premium/data/PremiumType;", "premiumType", "bp", "(Lcom/truecaller/premium/data/PremiumType;)V", "", "removeElevation", "hn", "(Z)V", "Lcom/truecaller/data/entity/Contact;", "contactsForPromo", "totalNumber", "Q2", "(Ljava/util/List;I)V", "Tn", "Re", "Lcom/google/android/material/appbar/CollapsingToolbarLayout;", "kotlin.jvm.PlatformType", "f", "Ls1/g;", "PA", "()Lcom/google/android/material/appbar/CollapsingToolbarLayout;", "collapsingToolbar", "Le/a/l/e1;", "a", "Le/a/l/e1;", "getPresenter$truecaller_googlePlayRelease", "()Le/a/l/e1;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/l/e1;)V", "presenter", "Landroidx/viewpager2/widget/ViewPager2;", "l", "UA", "()Landroidx/viewpager2/widget/ViewPager2;", "viewPager", "Lcom/google/android/material/appbar/AppBarLayout;", "e", "OA", "()Lcom/google/android/material/appbar/AppBarLayout;", "appBar", "Landroid/widget/ImageView;", "i", "getPremiumHeaderImage", "()Landroid/widget/ImageView;", "premiumHeaderImage", "Lcom/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView;", "h", "RA", "()Lcom/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView;", "goldGiftPromoView", "Le/a/l/l;", AbstractC2405c.f7629a, "Le/a/l/l;", "featuresStyleProvider", "Le/a/l/z;", "d", "Le/a/l/z;", "onTypeselectedListener", "Lcom/truecaller/common/ui/tablayout/TabLayoutX;", "j", "SA", "()Lcom/truecaller/common/ui/tablayout/TabLayoutX;", "tabLayout", "Lcom/google/android/material/appbar/MaterialToolbar;", "k", "TA", "()Lcom/google/android/material/appbar/MaterialToolbar;", "toolbar", "Lcom/truecaller/premium/ui/friendpromo/PremiumFriendUpgradedPromoView;", "g", "QA", "()Lcom/truecaller/premium/ui/friendpromo/PremiumFriendUpgradedPromoView;", "friendUpgradedPromoView", "Lcom/truecaller/premium/PremiumLaunchContext;", C22021b.f61237c, "Lcom/truecaller/premium/PremiumLaunchContext;", "getLaunchContext$truecaller_googlePlayRelease", "()Lcom/truecaller/premium/PremiumLaunchContext;", "setLaunchContext$truecaller_googlePlayRelease", "(Lcom/truecaller/premium/PremiumLaunchContext;)V", "getLaunchContext$truecaller_googlePlayRelease$annotations", "launchContext", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.d1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/d1.class */
public final class C16848d1 extends Fragment implements AbstractC16930g1, AbstractC17301x1 {

    /* renamed from: m */
    public static final /* synthetic */ int f47236m = 0;
    @Inject

    /* renamed from: a */
    public AbstractC16868e1 f47237a;
    @Inject

    /* renamed from: b */
    public PremiumLaunchContext f47238b;

    /* renamed from: c */
    public AbstractC16949l f47239c;

    /* renamed from: d */
    public AbstractC17305z f47240d;

    /* renamed from: e */
    public final g f47241e = C19286f.m13659t(this, 2131362175);

    /* renamed from: f */
    public final g f47242f = C19286f.m13659t(this, 2131362837);

    /* renamed from: g */
    public final g f47243g = C19286f.m13659t(this, 2131363967);

    /* renamed from: h */
    public final g f47244h = C19286f.m13659t(this, C2752R.C2754id.goldGiftPromoView);

    /* renamed from: i */
    public final g f47245i = C19286f.m13659t(this, C2752R.C2754id.premiumHeaderImage);

    /* renamed from: j */
    public final g f47246j = C19286f.m13659t(this, 2131366187);

    /* renamed from: k */
    public final g f47247k = C19286f.m13659t(this, 2131366512);

    /* renamed from: l */
    public final g f47248l = C19286f.m13659t(this, 2131366788);

    /* renamed from: e.a.l.d1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/d1$a.class */
    public static final class C16849a implements AppBarLayout.c {

        /* renamed from: a */
        public static final C16849a f47249a = new C16849a();

        /* renamed from: Xm */
        public final void m16920Xm(AppBarLayout appBarLayout, int i) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            appBarLayout.setElevation(0.0f);
        }
    }

    /* renamed from: e.a.l.d1$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/d1$b.class */
    public static final class View$OnClickListenerC16850b implements View.OnClickListener {
        public View$OnClickListenerC16850b() {
            C16848d1.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16848d1.this.requireActivity().finish();
        }
    }

    /* renamed from: e.a.l.d1$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/d1$c.class */
    public static final class C16851c implements AppBarLayout.c {

        /* renamed from: a */
        public int f47251a = -1;

        public C16851c() {
            C16848d1.this = r4;
        }

        /* renamed from: Xm */
        public void m16919Xm(AppBarLayout appBarLayout, int i) {
            l.e(appBarLayout, "appBarLayout");
            if (this.f47251a == -1) {
                this.f47251a = appBarLayout.getTotalScrollRange();
            }
            C16848d1 c16848d1 = C16848d1.this;
            int i2 = C16848d1.f47236m;
            CollapsingToolbarLayout m16926PA = c16848d1.m16926PA();
            if (m16926PA != null) {
                if (this.f47251a + i == 0) {
                    m16926PA.setTitleEnabled(true);
                    return;
                }
                CollapsingToolbarLayout m16926PA2 = C16848d1.this.m16926PA();
                l.d(m16926PA2, "collapsingToolbar");
                if (!m16926PA2.f6611m) {
                    return;
                }
                m16926PA.setTitleEnabled(false);
            }
        }
    }

    /* renamed from: e.a.l.d1$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/d1$d.class */
    public static final class C16852d extends m implements p<C8280a, Integer, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16852d() {
            super(2);
            C16848d1.this = r4;
        }

        /* renamed from: k */
        public Object m16918k(Object obj, Object obj2) {
            int intValue = ((Number) obj2).intValue();
            l.e((C8280a) obj, "<anonymous parameter 0>");
            AbstractC16868e1 abstractC16868e1 = C16848d1.this.f47237a;
            if (abstractC16868e1 != null) {
                ((C16877f1) abstractC16868e1).m16814Jj(intValue);
                return s.a;
            }
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: e.a.l.d1$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/d1$e.class */
    public static final class C16853e extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ C17228s1 f47254b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16853e(C17228s1 c17228s1) {
            super(0);
            this.f47254b = c17228s1;
        }

        public Object invoke() {
            PremiumType premiumType = this.f47254b.f48350a;
            l.e(premiumType, "type");
            C17232t0 c17232t0 = new C17232t0();
            Bundle bundle = new Bundle();
            bundle.putSerializable("type", premiumType);
            c17232t0.setArguments(bundle);
            return c17232t0;
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: F6 */
    public void mo16763F6(int i) {
        ((ImageView) this.f47245i.getValue()).setImageResource(i);
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: I4 */
    public void mo16762I4(String str) {
        l.e(str, "title");
        CollapsingToolbarLayout m16926PA = m16926PA();
        l.d(m16926PA, "collapsingToolbar");
        m16926PA.setTitle(str);
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: Kj */
    public void mo16761Kj(int i) {
        m16921UA().m42620d(i, false);
    }

    /* renamed from: OA */
    public final AppBarLayout m16927OA() {
        return (AppBarLayout) this.f47241e.getValue();
    }

    /* renamed from: PA */
    public final CollapsingToolbarLayout m16926PA() {
        return (CollapsingToolbarLayout) this.f47242f.getValue();
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: Q2 */
    public void mo16760Q2(List<? extends Contact> list, int i) {
        l.e(list, "contactsForPromo");
        PremiumGoldGiftPromoView m16924RA = m16924RA();
        l.d(m16924RA, "goldGiftPromoView");
        C19286f.m13689O(m16924RA);
        PremiumFriendUpgradedPromoView m16925QA = m16925QA();
        l.d(m16925QA, "friendUpgradedPromoView");
        C19286f.m13684T(m16925QA);
        m16925QA().m34801g1(list, i);
    }

    /* renamed from: QA */
    public final PremiumFriendUpgradedPromoView m16925QA() {
        return (PremiumFriendUpgradedPromoView) this.f47243g.getValue();
    }

    /* renamed from: RA */
    public final PremiumGoldGiftPromoView m16924RA() {
        return (PremiumGoldGiftPromoView) this.f47244h.getValue();
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: Re */
    public void mo16759Re() {
        PremiumGoldGiftPromoView m16924RA = m16924RA();
        l.d(m16924RA, "goldGiftPromoView");
        C19286f.m13689O(m16924RA);
        PremiumFriendUpgradedPromoView m16925QA = m16925QA();
        l.d(m16925QA, "friendUpgradedPromoView");
        C19286f.m13689O(m16925QA);
    }

    /* renamed from: SA */
    public final TabLayoutX m16923SA() {
        return (TabLayoutX) this.f47246j.getValue();
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: Sz */
    public void mo16758Sz(List<C17228s1> list) {
        l.e(list, "pages");
        C8281b c8281b = new C8281b(this, true);
        c8281b.m28690e(new C16852d());
        for (C17228s1 c17228s1 : list) {
            String string = getString(c17228s1.f48351b);
            l.d(string, "getString(it.titleRes)");
            c8281b.m28694a(new C8281b.C8285d(string, c17228s1.f48352c, c17228s1.f48353d, c17228s1.f48354e, c17228s1.f48355f, null, new C16853e(c17228s1), null, Constants.ERR_ALREADY_IN_RECORDING));
        }
        ViewPager2 m16921UA = m16921UA();
        l.d(m16921UA, "viewPager");
        TabLayoutX m16923SA = m16923SA();
        l.d(m16923SA, "tabLayout");
        c8281b.m28693b(m16921UA, m16923SA);
    }

    /* renamed from: TA */
    public final MaterialToolbar m16922TA() {
        return (MaterialToolbar) this.f47247k.getValue();
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: Tn */
    public void mo16757Tn() {
        PremiumFriendUpgradedPromoView m16925QA = m16925QA();
        l.d(m16925QA, "friendUpgradedPromoView");
        C19286f.m13689O(m16925QA);
        PremiumGoldGiftPromoView m16924RA = m16924RA();
        l.d(m16924RA, "goldGiftPromoView");
        C19286f.m13684T(m16924RA);
    }

    /* renamed from: UA */
    public final ViewPager2 m16921UA() {
        return (ViewPager2) this.f47248l.getValue();
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: bp */
    public void mo16756bp(PremiumType premiumType) {
        l.e(premiumType, "premiumType");
        AbstractC17305z abstractC17305z = this.f47240d;
        if (abstractC17305z != null) {
            abstractC17305z.mo16265R2(premiumType);
        }
        PremiumFriendUpgradedPromoView m16925QA = m16925QA();
        m16925QA.f14304D.D(m16925QA);
        PremiumGoldGiftPromoView m16924RA = m16924RA();
        m16924RA.f14312f.D(m16924RA);
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: fe */
    public void mo16755fe() {
        AppBarLayout m16927OA = m16927OA();
        l.d(m16927OA, "appBar");
        m16927OA.getLayoutParams().height = getResources().getDimensionPixelSize(C2752R.dimen.premium_type_tabs_height) + getResources().getDimensionPixelSize(C2752R.dimen.premium_appbar_height);
        TabLayoutX m16923SA = m16923SA();
        l.d(m16923SA, "tabLayout");
        C19286f.m13684T(m16923SA);
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131165497);
        View childAt = m16923SA().getChildAt(0);
        if (childAt instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) childAt;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt2 = viewGroup.getChildAt(i);
                l.d(childAt2, "tabView");
                childAt2.setBackground(null);
                ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.leftMargin = dimensionPixelSize;
                    marginLayoutParams.rightMargin = dimensionPixelSize;
                }
            }
            m16923SA().requestLayout();
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: fx */
    public void mo16754fx(String str) {
        l.e(str, "url");
        C22234h mo8414k = C17891a1.C17902k.m15664K1(requireContext()).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = str;
        c21852d.f61771N = true;
        ((C21852d) mo8414k).m8427O((ImageView) this.f47245i.getValue());
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: hn */
    public void mo16753hn(boolean z) {
        CollapsingToolbarLayout m16926PA = m16926PA();
        l.d(m16926PA, "collapsingToolbar");
        ViewGroup.LayoutParams layoutParams = m16926PA.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams");
        ((AppBarLayout$b) layoutParams).f6593a = 1;
        if (z) {
            m16927OA().a(C16849a.f47249a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0048, code lost:
        if (r14 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttach(android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C16848d1.onAttach(android.content.Context):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_premium_features, viewGroup, false);
    }

    public void onDestroyView() {
        C16848d1.super.onDestroyView();
        AbstractC16868e1 abstractC16868e1 = this.f47237a;
        if (abstractC16868e1 != null) {
            ((AbstractC20574a) abstractC16868e1).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onDetach() {
        C16848d1.super.onDetach();
        this.f47239c = null;
        this.f47240d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewCreated(android.view.View r6, android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C16848d1.onViewCreated(android.view.View, android.os.Bundle):void");
    }

    @Override // p193e.p194a.p1011l.AbstractC17301x1
    /* renamed from: tt */
    public AbstractC17298w1 mo16270tt() {
        AbstractC17301x1 parentFragment = getParentFragment();
        Objects.requireNonNull(parentFragment, "null cannot be cast to non-null type com.truecaller.premium.PremiumScreenEntryPointProvider");
        return parentFragment.mo16270tt();
    }

    @Override // p193e.p194a.p1011l.AbstractC16930g1
    /* renamed from: xw */
    public void mo16752xw(int i) {
        m16921UA().m42620d(i, true);
    }
}
