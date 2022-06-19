package com.truecaller.premium;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.clevertap.CleverTapManager;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1011l.AbstractC16965n0;
import p193e.p194a.p1011l.AbstractServiceC17299x;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1025p2.AbstractC17037b1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.w.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bI\u0010/J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R(\u00100\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b(\u0010)\u0012\u0004\b.\u0010/\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010G¨\u0006J"}, d2 = {"Lcom/truecaller/premium/PremiumNotificationService;", "Ln3/k/a/a0;", "Landroid/content/Intent;", "intent", "Ls1/s;", "onHandleWork", "(Landroid/content/Intent;)V", "Le/a/l/p2/b1;", "h", "Le/a/l/p2/b1;", "getSubscriptionStatusRepository", "()Le/a/l/p2/b1;", "setSubscriptionStatusRepository", "(Le/a/l/p2/b1;)V", "subscriptionStatusRepository", "Le/a/l/n0;", "f", "Le/a/l/n0;", "getPremiumEventsLogger", "()Le/a/l/n0;", "setPremiumEventsLogger", "(Le/a/l/n0;)V", "premiumEventsLogger", "Le/a/l/n2/e;", "e", "Le/a/l/n2/e;", "getBilling", "()Le/a/l/n2/e;", "setBilling", "(Le/a/l/n2/e;)V", "billing", "Lcom/truecaller/clevertap/CleverTapManager;", "k", "Lcom/truecaller/clevertap/CleverTapManager;", "getCleverTapManager", "()Lcom/truecaller/clevertap/CleverTapManager;", "setCleverTapManager", "(Lcom/truecaller/clevertap/CleverTapManager;)V", "cleverTapManager", "Ls1/w/f;", "d", "Ls1/w/f;", "getUiContext", "()Ls1/w/f;", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "()V", "uiContext", "Le/a/q2/a;", "j", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/b0/o/a;", "g", "Le/a/b0/o/a;", "getCoreSettings", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "Le/a/i4/e;", "i", "Le/a/i4/e;", "getAnalyticsNotificationManager", "()Le/a/i4/e;", "setAnalyticsNotificationManager", "(Le/a/i4/e;)V", "analyticsNotificationManager", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/PremiumNotificationService.class */
public final class PremiumNotificationService extends AbstractServiceC17299x {

    /* renamed from: l */
    public static final /* synthetic */ int f14205l = 0;
    @Inject

    /* renamed from: d */
    public f f14206d;
    @Inject

    /* renamed from: e */
    public AbstractC16987e f14207e;
    @Inject

    /* renamed from: f */
    public AbstractC16965n0 f14208f;
    @Inject

    /* renamed from: g */
    public AbstractC8541a f14209g;
    @Inject

    /* renamed from: h */
    public AbstractC17037b1 f14210h;
    @Inject

    /* renamed from: i */
    public AbstractC15275e f14211i;
    @Inject

    /* renamed from: j */
    public AbstractC19462a f14212j;
    @Inject

    /* renamed from: k */
    public CleverTapManager f14213k;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r11 != null) goto L19;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005a -> B:62:0x0062). Please submit an issue!!! */
    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onHandleWork(android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.premium.PremiumNotificationService.onHandleWork(android.content.Intent):void");
    }
}
