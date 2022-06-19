package p193e.p194a.p1159q4;

import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.SupportMessenger;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.analytics.ChosenComponentReceiver;
import com.truecaller.log.AssertionUtil;
import com.truecaller.referral.BulkSmsView;
import com.truecaller.referral.ReferralManager;
import com.truecaller.referral.ReferralUrl;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import n3.r.a.l;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1159q4.C19665r0;
import p193e.p194a.p372b0.p373a.AbstractC8318l;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p679d5.p680g.AbstractC12635n;
/* renamed from: e.a.q4.r0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/r0.class */
public class C19665r0 extends AbstractC12635n implements AbstractC8318l {

    /* renamed from: i */
    public static final List<C19666a> f54617i = Collections.unmodifiableList(Arrays.asList(new C19666a(SupportMessenger.WHATSAPP), new C19666a(SupportMessenger.FB_MESSENGER), new C19666a("com.imo.android.imoim"), new C19666a(SupportMessenger.FACEBOOK), new C19666a(SupportMessenger.TWITTER)));

    /* renamed from: a */
    public AbstractC15539j2 f54618a;

    /* renamed from: b */
    public String f54619b;

    /* renamed from: c */
    public ReferralUrl f54620c;

    /* renamed from: d */
    public ReferralManager.ReferralLaunchContext f54621d;

    /* renamed from: e */
    public PackageManager f54622e;

    /* renamed from: f */
    public String f54623f;

    /* renamed from: g */
    public String f54624g;

    /* renamed from: h */
    public LinearLayout f54625h;

    /* renamed from: e.a.q4.r0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/r0$a.class */
    public static final class C19666a {

        /* renamed from: a */
        public final String f54626a;

        public C19666a(String str) {
            this.f54626a = str;
        }
    }

    /* renamed from: OA */
    public static C19665r0 m13047OA(String str, ReferralUrl referralUrl, ReferralManager.ReferralLaunchContext referralLaunchContext) {
        return m13046PA(str, referralUrl, referralLaunchContext, null);
    }

    /* renamed from: PA */
    public static C19665r0 m13046PA(String str, ReferralUrl referralUrl, ReferralManager.ReferralLaunchContext referralLaunchContext, String str2) {
        C19665r0 c19665r0 = new C19665r0();
        AssertionUtil.isNotNull(referralLaunchContext, new String[0]);
        Bundle bundle = new Bundle();
        bundle.putString("EXTRA_REFERRAL_CODE", str);
        bundle.putParcelable("EXTRA_REFERRAL_LINK", referralUrl);
        bundle.putSerializable("EXTRA_REFERRAL_LAUNCH_CONTEXT", referralLaunchContext);
        bundle.putSerializable("EXTRA_REFERRAL_LAUNCH_CONTEXT", referralLaunchContext);
        bundle.putSerializable("EXTRA_DEEPLINK_CAMPAIGN_ID", str2);
        c19665r0.setArguments(bundle);
        return c19665r0;
    }

    /* renamed from: QA */
    public final View m13045QA(CharSequence charSequence, Drawable drawable) {
        View inflate = LayoutInflater.from(requireContext()).inflate(C2752R.layout.listitem_share_option, (ViewGroup) this.f54625h, false);
        ((TextView) inflate.findViewById(2131364642)).setText(charSequence);
        ((ImageView) inflate.findViewById(C2752R.C2754id.listItemIcon)).setImageDrawable(drawable);
        return inflate;
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8318l
    /* renamed from: Wy */
    public int mo10109Wy() {
        return 8;
    }

    public void onCreate(Bundle bundle) {
        C19665r0.super.onCreate(bundle);
        setStyle(1, 0);
        if (bundle == null) {
            bundle = getArguments();
        }
        AssertionUtil.isNotNull(bundle, new String[0]);
        this.f54622e = requireContext().getPackageManager();
        this.f54619b = bundle.getString("EXTRA_REFERRAL_CODE");
        this.f54620c = (ReferralUrl) bundle.getParcelable("EXTRA_REFERRAL_LINK");
        this.f54621d = (ReferralManager.ReferralLaunchContext) bundle.getSerializable("EXTRA_REFERRAL_LAUNCH_CONTEXT");
        this.f54623f = bundle.getString("EXTRA_DEEPLINK_CAMPAIGN_ID");
        this.f54618a = TrueApp.m36032b0().mo10154s();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view;
        boolean z = this.f54621d == ReferralManager.ReferralLaunchContext.BOTTOM_BAR;
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(z ? 2131559671 : 2131559670, viewGroup, false);
        this.f54625h = (LinearLayout) inflate.findViewById(2131362924);
        TextView textView = (TextView) inflate.findViewById(2131366469);
        TextView textView2 = (TextView) inflate.findViewById(2131366110);
        ImageView imageView = (ImageView) inflate.findViewById(2131364203);
        View findViewById = inflate.findViewById(C2752R.C2754id.actionClose);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C19665r0.this.dismiss();
                }
            });
        }
        textView.setText(C2752R.string.referral_dialog_title_v2);
        textView2.setText(C2752R.string.referral_dialog_subtitle_without_call_recording);
        if (z) {
            l requireActivity = requireActivity();
            s1.z.c.l.e(requireActivity, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(imageView, ViewAction.VIEW);
            C19291g.m13528n1(imageView, C19291g.m13559d0(C17422k.m16113E(requireActivity, true), C2752R.attr.tcx_referral_illustration), true);
        } else {
            imageView.setImageResource(C2752R.C2753drawable.ic_invite_present);
        }
        LinearLayout linearLayout = this.f54625h;
        final ReferralManager.ReferralLaunchContext referralLaunchContext = this.f54621d;
        View m13045QA = m13045QA(getString(2131889956), C8605o.m28236d(requireContext(), C2752R.C2753drawable.ic_refer_sms));
        m13045QA.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C19665r0 c19665r0 = C19665r0.this;
                ReferralManager.ReferralLaunchContext referralLaunchContext2 = referralLaunchContext;
                ReferralUrl referralUrl = c19665r0.f54620c;
                referralUrl.f14455a = ReferralUrl.EnumC4396b.BULK_SMS;
                C19674v.m13024OA(c19665r0.getString((int) C2752R.string.referral_bulk_sms_v3, new Object[]{referralUrl.m34789a(), c19665r0.f54624g}), new BulkSmsView.PromoLayout(C2752R.layout.include_large_icon_with_title_subtitle, new int[]{2131366469, 2131366110}, new String[]{c19665r0.getString((int) C2752R.string.referral_dialog_title_v2), c19665r0.getString((int) C2752R.string.referral_bulk_sms_cost_disclaimer)}, new int[]{2131364203}, new int[]{C2752R.C2753drawable.ic_invite_present}, null), referralLaunchContext2, c19665r0.f54623f).show(c19665r0.requireFragmentManager(), C19674v.class.getSimpleName());
                if (referralLaunchContext2 != ReferralManager.ReferralLaunchContext.BOTTOM_BAR) {
                    c19665r0.dismiss();
                }
            }
        });
        linearLayout.addView(m13045QA);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        List<ResolveInfo> queryIntentActivities = requireContext().getPackageManager().queryIntentActivities(intent, 0);
        for (final C19666a c19666a : f54617i) {
            Iterator<ResolveInfo> it = queryIntentActivities.iterator();
            while (true) {
                if (!it.hasNext()) {
                    view = null;
                    break;
                }
                ResolveInfo next = it.next();
                if (next.activityInfo.packageName.equals(c19666a.f54626a)) {
                    view = m13045QA(next.loadLabel(this.f54622e), next.loadIcon(this.f54622e));
                    view.setTag(c19666a);
                    break;
                }
            }
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.o
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        C19665r0 c19665r0 = C19665r0.this;
                        C19665r0.C19666a c19666a2 = c19666a;
                        Objects.requireNonNull(c19665r0);
                        String str = c19666a2.f54626a;
                        ReferralUrl.EnumC4396b orDefault = ReferralUrl.f14452d.getOrDefault(str, null);
                        ReferralUrl.EnumC4396b enumC4396b = orDefault;
                        if (orDefault == null) {
                            enumC4396b = ReferralUrl.EnumC4396b.OTHERS;
                        }
                        ReferralUrl referralUrl = c19665r0.f54620c;
                        referralUrl.f14455a = enumC4396b;
                        String m34789a = referralUrl.m34789a();
                        Intent intent2 = new Intent();
                        intent2.setAction("android.intent.action.SEND");
                        intent2.putExtra("android.intent.extra.TEXT", c19665r0.getString((int) C2752R.string.referral_bulk_sms_v3, new Object[]{m34789a, c19665r0.f54624g}));
                        intent2.setPackage(str);
                        intent2.setType("text/plain");
                        C8613t.m28198n(c19665r0.requireContext(), intent2);
                    }
                });
                this.f54625h.addView(view);
            }
        }
        LinearLayout linearLayout2 = this.f54625h;
        View m13045QA2 = m13045QA(getString(2131889955), C8605o.m28236d(requireContext(), C2752R.C2753drawable.ic_refer_share));
        m13045QA2.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C19665r0 c19665r0 = C19665r0.this;
                Objects.requireNonNull(c19665r0);
                IntentSender intentSender = ChosenComponentReceiver.m35946a(c19665r0.requireContext(), "Referral").getIntentSender();
                ReferralUrl referralUrl = c19665r0.f54620c;
                referralUrl.f14455a = ReferralUrl.EnumC4396b.OTHERS;
                C8582g0.m28322S(c19665r0.requireContext(), c19665r0.getString((int) C2752R.string.referral_share_title), c19665r0.getString((int) C2752R.string.ShareTruecallerTitle), c19665r0.getString((int) C2752R.string.referral_bulk_sms_v3, new Object[]{referralUrl.m34789a(), c19665r0.f54624g}), null, intentSender);
            }
        });
        linearLayout2.addView(m13045QA2);
        this.f54624g = C17422k.m16109I(this.f54618a.mo12420d());
        return inflate;
    }

    public void onSaveInstanceState(Bundle bundle) {
        C19665r0.super.onSaveInstanceState(bundle);
        String str = this.f54619b;
        ReferralUrl referralUrl = this.f54620c;
        ReferralManager.ReferralLaunchContext referralLaunchContext = this.f54621d;
        String str2 = this.f54623f;
        bundle.putString("EXTRA_REFERRAL_CODE", str);
        bundle.putParcelable("EXTRA_REFERRAL_LINK", referralUrl);
        bundle.putSerializable("EXTRA_REFERRAL_LAUNCH_CONTEXT", referralLaunchContext);
        bundle.putSerializable("EXTRA_REFERRAL_LAUNCH_CONTEXT", referralLaunchContext);
        bundle.putSerializable("EXTRA_DEEPLINK_CAMPAIGN_ID", str2);
    }

    public void onStart() {
        Window window;
        C19665r0.super.onStart();
        if (getDialog() == null || (window = getDialog().getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -2);
    }
}
