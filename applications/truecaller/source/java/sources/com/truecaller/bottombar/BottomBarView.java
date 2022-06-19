package com.truecaller.bottombar;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.appbar.AppBarLayout;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.DialerMode;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.referral.ReferralManager;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import e.a.h.b.j;
import e.a.h.f.b;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import n3.r.a.k;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.C16614b;
import p193e.p194a.p1011l.p1013c.C16784b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1159q4.AbstractC19668s0;
import p193e.p194a.p1195s.C20010c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p279r0.C7219j;
import p193e.p194a.p372b0.p373a.AbstractC8322o;
import p193e.p194a.p372b0.p373a.C8321n;
import p193e.p194a.p431b3.AbstractC8626c;
import p193e.p194a.p431b3.C8627d;
import p193e.p194a.p682e.AbstractC13289n1;
import p193e.p194a.p837h0.p838a.C14805r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\u0018��2\u00020\u0001:\u0001\u001aJ\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/truecaller/bottombar/BottomBarView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/truecaller/bottombar/BottomBarButtonType;", "getCurrentButton", "()Lcom/truecaller/bottombar/BottomBarButtonType;", "type", "Le/a/b3/d;", "f1", "(Lcom/truecaller/bottombar/BottomBarButtonType;)Le/a/b3/d;", ViewAction.VIEW, "", "forceSelect", "Ls1/s;", "g1", "(Le/a/b3/d;Z)V", "Lcom/truecaller/bottombar/BottomBarView$a;", "v", "Lcom/truecaller/bottombar/BottomBarView$a;", "listener", "", "u", "I", "buttonWidth", "t", "Le/a/b3/d;", "selectedButton", "a", "bottom-bar-view_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bottombar/BottomBarView.class */
public final class BottomBarView extends ConstraintLayout {

    /* renamed from: w */
    public static final /* synthetic */ int f10465w = 0;

    /* renamed from: t */
    public C8627d f10466t;

    /* renamed from: u */
    public final int f10467u = getResources().getDimensionPixelSize(C3559R.dimen.bottom_tab_tcx_width);

    /* renamed from: v */
    public AbstractC3558a f10468v;

    /* renamed from: com.truecaller.bottombar.BottomBarView$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bottombar/BottomBarView$a.class */
    public interface AbstractC3558a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* renamed from: f1 */
    public final C8627d m35809f1(BottomBarButtonType bottomBarButtonType) {
        l.e(bottomBarButtonType, "type");
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            BottomBarButtonType bottomBarButtonType2 = null;
            if (i < childCount) {
                View childAt = getChildAt(i);
                Objects.requireNonNull(childAt, "null cannot be cast to non-null type com.truecaller.bottombar.BottomBarButtonView");
                C8627d c8627d = (C8627d) childAt;
                AbstractC8626c state = c8627d.getState();
                if (state != null) {
                    bottomBarButtonType2 = state.mo21981e();
                }
                if (bottomBarButtonType2 == bottomBarButtonType) {
                    return c8627d;
                }
                i++;
            } else {
                return null;
            }
        }
    }

    /* renamed from: g1 */
    public final void m35808g1(C8627d c8627d, boolean z) {
        ReferralManager referralManager;
        AbstractC8626c state;
        AbstractC8626c state2 = c8627d.getState();
        if (state2 != null) {
            C8627d c8627d2 = this.f10466t;
            if (((c8627d2 == null || (state = c8627d2.getState()) == null) ? null : state.mo21981e()) != state2.mo21981e() || z) {
                h hVar = this.f10468v;
                if (hVar != null) {
                    BottomBarButtonType mo21981e = state2.mo21981e();
                    h hVar2 = (TruecallerInit) hVar;
                    int ordinal = mo21981e.ordinal();
                    String str = "messages";
                    if (ordinal == 0) {
                        str = "calls";
                    } else if (ordinal == 3) {
                        str = "contacts";
                    } else if (ordinal == 4) {
                        str = "blocking";
                    } else if (ordinal == 5) {
                        str = "premium";
                    } else if (ordinal == 6) {
                        str = "assistant";
                    } else if (ordinal == 7) {
                        str = "invite";
                    }
                    C26907a c26907a = new C26907a(hVar2.f15588S);
                    c26907a.f75332p = true;
                    c26907a.f75322f = 0;
                    Fragment m42942K = hVar2.f15588S.m42942K(str);
                    hVar2.m34581Ha();
                    hVar2.mo28649v7(false);
                    if (m42942K == null) {
                        boolean z2 = true;
                        switch (str.hashCode()) {
                            case -1183699191:
                                if (str.equals("invite")) {
                                    z2 = false;
                                    break;
                                }
                                break;
                            case -664572875:
                                if (str.equals("blocking")) {
                                    z2 = true;
                                    break;
                                }
                                break;
                            case -567451565:
                                if (str.equals("contacts")) {
                                    z2 = true;
                                    break;
                                }
                                break;
                            case -462094004:
                                if (str.equals("messages")) {
                                    z2 = true;
                                    break;
                                }
                                break;
                            case -318452137:
                                if (str.equals("premium")) {
                                    z2 = true;
                                    break;
                                }
                                break;
                            case 94425557:
                                if (str.equals("calls")) {
                                    z2 = true;
                                    break;
                                }
                                break;
                            case 1429828318:
                                if (str.equals("assistant")) {
                                    z2 = true;
                                    break;
                                }
                                break;
                        }
                        switch (z2) {
                            case false:
                                if (!hVar2.f15602Z.m13090c() || (referralManager = hVar2.f15590T) == null) {
                                    StringBuilder m8728C = C22128a.m8728C("Referral manager : ");
                                    m8728C.append(hVar2.f15590T);
                                    m8728C.append(" may not be ready");
                                    AssertionUtil.reportWeirdnessButNeverCrash(m8728C.toString());
                                    break;
                                } else {
                                    m42942K = ((AbstractC19668s0) referralManager).mo13044Hv(ReferralManager.ReferralLaunchContext.BOTTOM_BAR);
                                    c26907a.mo1122k(2131363814, m42942K, str, 1);
                                    break;
                                }
                                break;
                            case true:
                                m42942K = new C14805r();
                                c26907a.mo1122k(2131363814, m42942K, str, 1);
                                break;
                            case true:
                                m42942K = new b();
                                c26907a.mo1122k(2131363814, m42942K, str, 1);
                                break;
                            case true:
                                m42942K = new C7219j();
                                c26907a.mo1122k(2131363814, m42942K, str, 1);
                                break;
                            case true:
                                C20592g c20592g = hVar2.f15626l0.f47176a;
                                if (c20592g.f57787N.m10941a(c20592g, C20592g.f57695p6[36]).isEnabled()) {
                                    m42942K = new C16784b();
                                } else {
                                    int dimensionPixelSize = hVar2.getResources().getDimensionPixelSize(C2752R.dimen.control_semispace);
                                    PremiumLaunchContext premiumLaunchContext = PremiumLaunchContext.BOTTOM_BAR;
                                    C16614b.C16618e c16618e = new C16614b.C16618e(null, dimensionPixelSize, false);
                                    int i = C16614b.f46672s;
                                    l.e(premiumLaunchContext, "launchContext");
                                    l.e(c16618e, "premiumFeaturesStyle");
                                    m42942K = new C16614b();
                                    Bundle bundle = new Bundle();
                                    bundle.putSerializable("launchContext", premiumLaunchContext);
                                    bundle.putParcelable("analyticsMetadata", null);
                                    bundle.putString("selectedPage", null);
                                    bundle.putSerializable("premiumFeaturesStyle", c16618e);
                                    m42942K.setArguments(bundle);
                                }
                                c26907a.mo1122k(2131363814, m42942K, str, 1);
                                break;
                            case true:
                                DialerMode dialerMode = DialerMode.INSIDE_TAB;
                                FilterType filterType = FilterType.NONE;
                                l.e(dialerMode, AnalyticsConstants.MODE);
                                l.e(filterType, "filterType");
                                m42942K = new j();
                                Bundle bundle2 = new Bundle();
                                bundle2.putSerializable("dialer_mode", dialerMode);
                                bundle2.putSerializable("filter_type", filterType);
                                m42942K.setArguments(bundle2);
                                c26907a.mo1122k(2131363814, m42942K, str, 1);
                                break;
                            case true:
                                m42942K = new C20010c();
                                c26907a.mo1122k(2131363814, m42942K, str, 1);
                                break;
                            default:
                                c26907a.mo1122k(2131363814, m42942K, str, 1);
                                break;
                        }
                    }
                    AbstractC13289n1 abstractC13289n1 = hVar2.f38724a;
                    if (abstractC13289n1 != null && hVar2.f15560C && (abstractC13289n1 instanceof AbstractC13289n1)) {
                        abstractC13289n1.mo10106bx(true);
                    }
                    List<Fragment> m42936Q = hVar2.f15588S.m42936Q();
                    if (m42936Q != null) {
                        for (Fragment fragment : m42936Q) {
                            if (fragment != null && !fragment.isHidden()) {
                                if (fragment instanceof k) {
                                    c26907a.mo1121l(fragment);
                                } else {
                                    FragmentManager fragmentManager = fragment.mFragmentManager;
                                    if (fragmentManager != null && fragmentManager != c26907a.f75269q) {
                                        StringBuilder m8728C2 = C22128a.m8728C("Cannot hide Fragment attached to a different FragmentManager. Fragment ");
                                        m8728C2.append(fragment.toString());
                                        m8728C2.append(" is already attached to a FragmentManager.");
                                        throw new IllegalStateException(m8728C2.toString());
                                    }
                                    c26907a.m1129d(new AbstractC26924f0.C26925a(4, fragment));
                                }
                            }
                        }
                    }
                    Menu menu = hVar2.f15619j.getMenu();
                    if (menu != null) {
                        menu.close();
                    }
                    FragmentManager fragmentManager2 = m42942K.mFragmentManager;
                    if (fragmentManager2 != null && fragmentManager2 != c26907a.f75269q) {
                        StringBuilder m8728C3 = C22128a.m8728C("Cannot show Fragment attached to a different FragmentManager. Fragment ");
                        m8728C3.append(m42942K.toString());
                        m8728C3.append(" is already attached to a FragmentManager.");
                        throw new IllegalStateException(m8728C3.toString());
                    }
                    c26907a.m1129d(new AbstractC26924f0.C26925a(5, m42942K));
                    c26907a.mo1126g();
                    hVar2.f15556A = str;
                    hVar2.f38724a = m42942K;
                    hVar2.m34562bb();
                    if (hVar2.f15588S.m42946G()) {
                        AppBarLayout appBarLayout = hVar2.f15625l;
                        if (appBarLayout != null) {
                            appBarLayout.d(true, false, true);
                        }
                        hVar2.m34569Ta();
                    }
                    if (hVar2.f15560C) {
                        AbstractC13289n1 abstractC13289n12 = hVar2.f38724a;
                        if (abstractC13289n12 instanceof AbstractC13289n1) {
                            abstractC13289n12.mo10102j();
                        }
                    }
                    hVar2.m34558fb(hVar2.f38724a);
                    hVar2.m34557hb();
                    AbstractC8322o abstractC8322o = hVar2.f38724a;
                    C8321n mo10111LA = abstractC8322o instanceof AbstractC8322o ? abstractC8322o.mo10111LA() : null;
                    if (!Objects.equals(hVar2.f15584Q, mo10111LA)) {
                        hVar2.f15584Q = mo10111LA;
                        if (mo10111LA == null) {
                            C17422k.m16071k(hVar2.getWindow());
                        } else {
                            hVar2.getWindow().setStatusBarColor(mo10111LA.f25617a);
                            C17422k.m16073j(hVar2.getWindow(), mo10111LA.f25618b);
                        }
                        VoipInAppNotificationView voipInAppNotificationView = hVar2.f15654v;
                        Integer num = null;
                        if (mo10111LA != null) {
                            num = Integer.valueOf(mo10111LA.f25617a);
                        }
                        voipInAppNotificationView.f16385x = num;
                        voipInAppNotificationView.f16384w = mo10111LA != null ? mo10111LA.f25618b : true;
                        if (C19286f.m13663p(voipInAppNotificationView)) {
                            voipInAppNotificationView.m34321i1();
                        }
                    }
                }
            } else {
                AbstractC3558a abstractC3558a = this.f10468v;
                if (abstractC3558a != null) {
                    state2.mo21981e();
                    TruecallerInit truecallerInit = (TruecallerInit) abstractC3558a;
                    truecallerInit.f15625l.d(true, true, true);
                    AbstractC13289n1 abstractC13289n13 = truecallerInit.f38724a;
                    if (abstractC13289n13 instanceof AbstractC13289n1) {
                        abstractC13289n13.mo10101y0();
                    }
                }
            }
            C8627d c8627d3 = this.f10466t;
            if (c8627d3 != null) {
                c8627d3.setSelected(false);
            }
            c8627d.setSelected(true);
            this.f10466t = c8627d;
        }
    }

    public final BottomBarButtonType getCurrentButton() {
        AbstractC8626c state;
        C8627d c8627d = this.f10466t;
        return (c8627d == null || (state = c8627d.getState()) == null) ? null : state.mo21981e();
    }
}
