package p193e.p194a.p1011l.p1033v2;

import android.content.Context;
import android.content.DialogInterface;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p200c.C5802x1;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p679d5.p680g.AbstractC12636o;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b7\u0010\u0016J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\u000eJ\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001c\u0010&\u001a\u00020!8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u00069"}, d2 = {"Le/a/l/v2/b;", "Le/a/d5/g/o;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroidx/fragment/app/FragmentManager;", "manager", "", RemoteMessageConst.Notification.TAG, AnalyticsConstants.SHOW, "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "", "QA", "()Ljava/lang/Integer;", "bB", "()V", "", "OA", "()Z", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "m", "Z", "converted", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "o", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "Le/a/l/a2;", "k", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "Le/a/b0/o/a;", "l", "Le/a/b0/o/a;", "getCoreSettings", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "<init>", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.v2.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/b.class */
public final class C17253b extends AbstractC12636o {
    @Inject

    /* renamed from: k */
    public AbstractC16613a2 f48401k;
    @Inject

    /* renamed from: l */
    public AbstractC8541a f48402l;

    /* renamed from: m */
    public boolean f48403m;

    /* renamed from: n */
    public C5802x1 f48404n;

    /* renamed from: o */
    public final StartupDialogEvent.Type f48405o = StartupDialogEvent.Type.PremiumBlockingPrompt;

    /* renamed from: e.a.l.v2.b$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/v2/b$a.class */
    public static final class C17254a {
        /* renamed from: a */
        public static final C17253b m16323a(FragmentManager fragmentManager) {
            l.e(fragmentManager, "fragmentManager");
            C17253b c17253b = new C17253b();
            c17253b.show(fragmentManager, C17253b.class.getSimpleName());
            return c17253b;
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: OA */
    public boolean mo16325OA() {
        return true;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        Integer num;
        Context context = getContext();
        if (context != null) {
            l.d(context, "it");
            num = Integer.valueOf(C19291g.m13559d0(C17422k.m16113E(context, true), C2752R.attr.tcx_blockingPremiumDetailsIcon));
        } else {
            num = null;
        }
        return num;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        String string = getResources().getString(2131887882);
        l.d(string, "resources.getString(R.string.StrDismiss)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getResources().getString(C2752R.string.BlockFragmentLearnMore);
        l.d(string, "resources.getString(R.st…g.BlockFragmentLearnMore)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        String string = getString((int) C2752R.string.BlockPremiumPromptSubtitle);
        l.d(string, "getString(R.string.BlockPremiumPromptSubtitle)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String quantityString = getResources().getQuantityString(C2752R.plurals.NumbersBlockedMessage, 1);
        l.d(quantityString, "resources.getQuantityStr…NumbersBlockedMessage, 1)");
        return quantityString;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        super.mo8996bB();
        AbstractC16613a2 abstractC16613a2 = this.f48401k;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        abstractC16613a2.mo17168a(requireContext, PremiumLaunchContext.REPORT_SPAM_PROMO, "premiumAdvancedBlocking");
        this.f48403m = true;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    /* renamed from: cB */
    public StartupDialogEvent.Type mo16324cB() {
        return this.f48405o;
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C17253b.super.onAttach(context);
        AbstractC16444k2.f46188a.m17389a().mo11395G(this);
        AbstractC8541a abstractC8541a = this.f48402l;
        if (abstractC8541a == null) {
            l.l("coreSettings");
            throw null;
        }
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        abstractC8541a.putLong("premiumBlockPromoLastShown", ((e) bVar).a);
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        super.onDismiss(dialogInterface);
        C5802x1 c5802x1 = this.f48404n;
        if (c5802x1 != null) {
            c5802x1.f19411a.f19482a.mo33525Rj(this.f48403m);
        }
    }

    public void show(FragmentManager fragmentManager, String str) {
        l.e(fragmentManager, "manager");
        if (fragmentManager.f830E || fragmentManager.m42929X()) {
            return;
        }
        C17253b.super.show(fragmentManager, str);
    }
}
