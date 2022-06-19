package com.truecaller.p183ui.settings.troubleshoot;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.tcpermissions.PermissionPoller;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1059m3.C18171l0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p195a.p258m.C6794d;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p684b.p696p.AbstractC13039e;
import p193e.p194a.p682e.p684b.p696p.AbstractC13040f;
import p193e.p194a.p682e.p684b.p696p.C13037c;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p851h5.C14945l;
import s1.a.l;
import s1.g;
import s1.i;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bL\u0010\u0014J\u001d\u0010\u0007\u001a\u00020\u0006*\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u0014J\u000f\u0010\u001f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001f\u0010\u0014J\u000f\u0010 \u001a\u00020\u000bH\u0016¢\u0006\u0004\b \u0010\u0014J\u000f\u0010!\u001a\u00020\u000bH\u0016¢\u0006\u0004\b!\u0010\u0014J\u000f\u0010\"\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\"\u0010\u0014J\u001d\u0010&\u001a\u00020\u000b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0016¢\u0006\u0004\b&\u0010'R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00107\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001d\u0010=\u001a\u0002088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u001d\u0010B\u001a\u00020>8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010:\u001a\u0004\b@\u0010AR\u001d\u0010H\u001a\u00020C8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR\u001d\u0010K\u001a\u00020>8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010:\u001a\u0004\bJ\u0010A¨\u0006M"}, d2 = {"Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/p/f;", "Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;", "Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;", "callerIdState", "Landroid/view/View;", "QA", "(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;)Landroid/view/View;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "onResume", "", "title", "setTitle", "(I)V", "", "options", "Tu", "(Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;Ljava/util/Set;)V", "ri", "Bq", "Dm", "jj", "T8", "", "", "permissions", "Tv", "(Ljava/util/List;)V", "Le/a/e/b/p/e;", "a", "Le/a/e/b/p/e;", "OA", "()Le/a/e/b/p/e;", "setPresenter", "(Le/a/e/b/p/e;)V", "presenter", "Le/a/h5/y;", C22021b.f61237c, "Le/a/h5/y;", "getTcPermissionsView", "()Le/a/h5/y;", "setTcPermissionsView", "(Le/a/h5/y;)V", "tcPermissionsView", "Lcom/truecaller/tcpermissions/PermissionPoller;", "f", "Ls1/g;", "getPermissionPoller", "()Lcom/truecaller/tcpermissions/PermissionPoller;", "permissionPoller", "Landroid/view/ViewOutlineProvider;", "d", "getContainerOutlineProvider", "()Landroid/view/ViewOutlineProvider;", "containerOutlineProvider", "Le/a/m3/l0;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/m3/l0;", "viewBinding", "e", "getOptionOutlineProvider", "optionOutlineProvider", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsFragment */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment.class */
public final class TroubleshootSettingsFragment extends Fragment implements AbstractC13040f {

    /* renamed from: g */
    public static final /* synthetic */ l[] f15871g = {C22128a.m8621g0(TroubleshootSettingsFragment.class, "viewBinding", "getViewBinding()Lcom/truecaller/databinding/FragmentSettingsTroubleshootBinding;", 0)};
    @Inject

    /* renamed from: a */
    public AbstractC13039e f15872a;
    @Inject

    /* renamed from: b */
    public AbstractC14967y f15873b;

    /* renamed from: c */
    public final ViewBindingProperty f15874c = new C19350a(new C4695b());

    /* renamed from: d */
    public final g f15875d = C25225a.m3978P1(new a(0, this));

    /* renamed from: e */
    public final g f15876e = C25225a.m3978P1(new a(1, this));

    /* renamed from: f */
    public final g f15877f = C25225a.m3978P1(new C4696c());

    /* renamed from: com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsFragment$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$b.class */
    public static final class C4695b extends m implements s1.z.b.l<TroubleshootSettingsFragment, C18171l0> {
        public C4695b() {
            super(1);
        }

        /* renamed from: d */
        public Object m34485d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362675;
            CallerIdBannerView callerIdBannerView = (CallerIdBannerView) requireView.findViewById(C2752R.C2754id.caller_id_variant_a);
            if (callerIdBannerView != null) {
                i = 2131362676;
                CallerIdBannerView callerIdBannerView2 = (CallerIdBannerView) requireView.findViewById(C2752R.C2754id.caller_id_variant_b);
                if (callerIdBannerView2 != null) {
                    i = 2131363778;
                    Flow findViewById = requireView.findViewById(C2752R.C2754id.flow_options);
                    if (findViewById != null) {
                        i = 2131366349;
                        TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.text_accessibility_service);
                        if (textView != null) {
                            i = 2131366354;
                            TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.text_call_recording_visit_help);
                            if (textView2 != null) {
                                i = 2131366357;
                                TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.text_caller_id_app);
                                if (textView3 != null) {
                                    i = 2131366359;
                                    TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.text_caller_id_visit_help);
                                    if (textView4 != null) {
                                        i = 2131366366;
                                        TextView textView5 = (TextView) requireView.findViewById(C2752R.C2754id.text_default_dialer);
                                        if (textView5 != null) {
                                            i = 2131366370;
                                            TextView textView6 = (TextView) requireView.findViewById(C2752R.C2754id.text_disable_battery_opt);
                                            if (textView6 != null) {
                                                i = 2131366371;
                                                TextView textView7 = (TextView) requireView.findViewById(C2752R.C2754id.text_draw_over);
                                                if (textView7 != null) {
                                                    i = 2131366381;
                                                    TextView textView8 = (TextView) requireView.findViewById(C2752R.C2754id.text_mic_permission);
                                                    if (textView8 != null) {
                                                        i = 2131366398;
                                                        TextView textView9 = (TextView) requireView.findViewById(C2752R.C2754id.text_storage_permission);
                                                        if (textView9 != null) {
                                                            i = 2131366403;
                                                            TextView textView10 = (TextView) requireView.findViewById(2131366403);
                                                            if (textView10 != null) {
                                                                return new C18171l0((ConstraintLayout) requireView, callerIdBannerView, callerIdBannerView2, findViewById, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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

    /* renamed from: com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsFragment$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$c.class */
    public static final class C4696c extends m implements a<PermissionPoller> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4696c() {
            super(0);
            TroubleshootSettingsFragment.this = r4;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = TroubleshootSettingsFragment.this.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return new PermissionPoller(requireActivity, new Handler(Looper.getMainLooper()), requireActivity.getIntent());
        }
    }

    /* renamed from: com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsFragment$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d.class */
    public static final class C4697d extends m implements s1.z.b.l<C14945l, s> {

        /* renamed from: b */
        public static final C4697d f15879b = new C4697d();

        public C4697d() {
            super(1);
        }

        /* renamed from: d */
        public Object m34484d(Object obj) {
            s1.z.c.l.e((C14945l) obj, "it");
            return s.a;
        }
    }

    public TroubleshootSettingsFragment() {
        super((int) C2752R.layout.fragment_settings_troubleshoot);
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    /* renamed from: Bq */
    public void mo22130Bq() {
        Context context = getContext();
        if (context != null) {
            C19291g.m13567a1(context, false, 1);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    /* renamed from: Dm */
    public void mo22129Dm() {
        C12864a2.m22575S(requireActivity(), "https://support.truecaller.com/hc/en-us/articles/212028169-Live-Caller-ID-is-not-working-All-devices-", false);
    }

    /* renamed from: OA */
    public final AbstractC13039e m34488OA() {
        AbstractC13039e abstractC13039e = this.f15872a;
        if (abstractC13039e != null) {
            return abstractC13039e;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: PA */
    public final C18171l0 m34487PA() {
        return (C18171l0) this.f15874c.m34468b(this, f15871g[0]);
    }

    /* renamed from: QA */
    public final View m34486QA(TroubleshootOption troubleshootOption, CallerIdState callerIdState) {
        TextView textView;
        C18171l0 m34487PA = m34487PA();
        switch (troubleshootOption.ordinal()) {
            case 0:
                textView = m34487PA.f51310j;
                s1.z.c.l.d(textView, "textDrawOver");
                break;
            case 1:
                C18171l0 m34487PA2 = m34487PA();
                int ordinal = callerIdState.ordinal();
                if (ordinal == 0) {
                    textView = m34487PA2.f51301a;
                    s1.z.c.l.d(textView, "callerIdVariantA");
                    break;
                } else if (ordinal == 1) {
                    textView = m34487PA2.f51302b;
                    s1.z.c.l.d(textView, "callerIdVariantB");
                    break;
                } else if (ordinal != 2) {
                    throw new i();
                } else {
                    textView = m34487PA2.f51306f;
                    s1.z.c.l.d(textView, "textCallerIdApp");
                    break;
                }
            case 2:
                textView = m34487PA.f51309i;
                s1.z.c.l.d(textView, "textDisableBatteryOpt");
                break;
            case 3:
                textView = m34487PA.f51308h;
                s1.z.c.l.d(textView, "textDefaultDialer");
                break;
            case 4:
                textView = m34487PA.f51307g;
                s1.z.c.l.d(textView, "textCallerIdVisitHelp");
                break;
            case 5:
                textView = m34487PA.f51305e;
                s1.z.c.l.d(textView, "textCallRecordingVisitHelp");
                break;
            case 6:
                textView = m34487PA.f51304d;
                s1.z.c.l.d(textView, "textAccessibilityService");
                break;
            case 7:
                textView = m34487PA.f51312l;
                s1.z.c.l.d(textView, "textStoragePermission");
                break;
            case 8:
                textView = m34487PA.f51311k;
                s1.z.c.l.d(textView, "textMicPermission");
                break;
            default:
                throw new i();
        }
        return textView;
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    /* renamed from: T8 */
    public void mo22128T8() {
        Context context = getContext();
        if (context != null) {
            C18334g0.m15224i0(context);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    /* renamed from: Tu */
    public void mo22127Tu(CallerIdState callerIdState, Set<? extends TroubleshootOption> set) {
        s1.z.c.l.e(callerIdState, "callerIdState");
        s1.z.c.l.e(set, "options");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        TroubleshootOption[] values = TroubleshootOption.values();
        for (int i = 0; i < 9; i++) {
            TroubleshootOption troubleshootOption = values[i];
            View m34486QA = m34486QA(troubleshootOption, callerIdState);
            if (set.contains(troubleshootOption)) {
                C19286f.m13684T(m34486QA);
                linkedHashSet.add(Integer.valueOf(m34486QA.getId()));
            } else {
                C19286f.m13689O(m34486QA);
            }
        }
        Flow flow = m34487PA().f51303c;
        s1.z.c.l.d(flow, "viewBinding.flowOptions");
        flow.setReferencedIds(s1.u.i.R0(linkedHashSet));
        m34487PA().f51303c.requestLayout();
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    /* renamed from: Tv */
    public void mo22126Tv(List<String> list) {
        s1.z.c.l.e(list, "permissions");
        AbstractC14967y abstractC14967y = this.f15873b;
        if (abstractC14967y != null) {
            abstractC14967y.mo19337c(list, C4697d.f15879b);
        } else {
            s1.z.c.l.l("tcPermissionsView");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    /* renamed from: jj */
    public void mo22125jj() {
        C12864a2.m22575S(requireContext(), "https://support.truecaller.com/hc/en-us/articles/360001264545", false);
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        TroubleshootSettingsFragment.super.onAttach(context);
        C20399t1.C20433w c20433w = (C20399t1.C20433w) AbstractC17399l2.f48744a.m16142a().mo11171m();
        this.f15872a = (AbstractC13039e) c20433w.f57505d.get();
        AbstractC14967y mo12672K = c20433w.f57502a.f57299b.mo12672K();
        Objects.requireNonNull(mo12672K, "Cannot return null from a non-@Nullable component method");
        this.f15873b = mo12672K;
    }

    public void onDestroyView() {
        AbstractC13039e abstractC13039e = this.f15872a;
        if (abstractC13039e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC13039e.mo9806c();
        TroubleshootSettingsFragment.super.onDestroyView();
    }

    public void onResume() {
        TroubleshootSettingsFragment.super.onResume();
        PermissionPoller permissionPoller = (PermissionPoller) this.f15877f.getValue();
        permissionPoller.f15304b.removeCallbacks(permissionPoller);
        AbstractC13039e abstractC13039e = this.f15872a;
        if (abstractC13039e != null) {
            abstractC13039e.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        TroubleshootSettingsFragment.super.onViewCreated(view, bundle);
        C13037c c13037c = new C13037c(this);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        SpannableString m30436N4 = C6794d.m30436N4(requireContext, c13037c);
        m34487PA().f51301a.setSubtitleWithLink(m30436N4);
        CallerIdBannerView callerIdBannerView = m34487PA().f51302b;
        callerIdBannerView.setSubtitleWithLink(m30436N4);
        callerIdBannerView.setTitleIcon(C2752R.C2753drawable.ic_caller_id_banner_icon);
        callerIdBannerView.m34489a();
        view.setOutlineProvider((ViewOutlineProvider) this.f15875d.getValue());
        view.setClipToOutline(true);
        TroubleshootOption[] values = TroubleshootOption.values();
        for (int i = 0; i < 9; i++) {
            View m34486QA = m34486QA(values[i], CallerIdState.DEFAULT);
            m34486QA.setOutlineProvider((ViewOutlineProvider) this.f15876e.getValue());
            m34486QA.setClipToOutline(true);
        }
        C18171l0 m34487PA = m34487PA();
        m34487PA.f51310j.setOnClickListener(new q0(2, this));
        m34487PA.f51306f.setOnClickListener(new q0(3, this));
        m34487PA.f51301a.setEnableButtonClickListener(new C27616o2(0, this));
        m34487PA.f51302b.setEnableButtonClickListener(new C27616o2(1, this));
        m34487PA.f51309i.setOnClickListener(new q0(4, this));
        m34487PA.f51308h.setOnClickListener(new q0(5, this));
        m34487PA.f51307g.setOnClickListener(new q0(6, this));
        m34487PA.f51304d.setOnClickListener(new q0(7, this));
        m34487PA.f51312l.setOnClickListener(new q0(8, this));
        m34487PA.f51311k.setOnClickListener(new q0(0, this));
        m34487PA.f51305e.setOnClickListener(new q0(1, this));
        AbstractC13039e abstractC13039e = this.f15872a;
        if (abstractC13039e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC13039e.mo9029Y0(this);
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    /* renamed from: ri */
    public void mo22124ri() {
        AbstractC14967y abstractC14967y = this.f15873b;
        if (abstractC14967y == null) {
            s1.z.c.l.l("tcPermissionsView");
            throw null;
        }
        abstractC14967y.mo19339a();
        ((PermissionPoller) this.f15877f.getValue()).m34618a(PermissionPoller.Permission.DRAW_OVERLAY);
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13040f
    public void setTitle(int i) {
        m34487PA().f51313m.setText(i);
    }
}
