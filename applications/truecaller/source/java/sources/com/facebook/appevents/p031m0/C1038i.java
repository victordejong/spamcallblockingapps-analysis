package com.facebook.appevents.p031m0;

import android.os.Bundle;
import com.facebook.appevents.C0953d0;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.network.ImpressionData;
import java.math.BigDecimal;
import java.util.Currency;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\bÇ\u0002\u0018��2\u00020\u0001:\u0001\u0018B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J.\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010\u0010\u001a\u00020\u0011H\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J \u0010\u0016\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;", "", "()V", "APP_EVENTS_IF_AUTO_LOG_SUBS", "", "TAG", "internalAppEventsLogger", "Lcom/facebook/appevents/InternalAppEventsLogger;", "getPurchaseLoggingParameters", "Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;", "purchase", "skuDetails", "extraParameter", "", "isImplicitPurchaseLoggingEnabled", "", "logActivateAppEvent", "", "logActivityTimeSpentEvent", "activityName", "timeSpentInSeconds", "", "logPurchase", "isSubscription", "PurchaseLoggingParameters", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.i */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/i.class */
public final class C1038i {

    /* renamed from: a */
    public static final C1038i f2863a = null;

    /* renamed from: b */
    public static final C0953d0 f2864b = new C0953d0(C23228f0.m7354a());

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0002\u0018��2\u00020\u0001B\u001f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;", "", "purchaseAmount", "Ljava/math/BigDecimal;", ImpressionData.CURRENCY, "Ljava/util/Currency;", RemoteMessageConst.MessageBody.PARAM, "Landroid/os/Bundle;", "(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V", "getCurrency", "()Ljava/util/Currency;", "setCurrency", "(Ljava/util/Currency;)V", "getParam", "()Landroid/os/Bundle;", "setParam", "(Landroid/os/Bundle;)V", "getPurchaseAmount", "()Ljava/math/BigDecimal;", "setPurchaseAmount", "(Ljava/math/BigDecimal;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.m0.i$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/i$a.class */
    public static final class C1039a {

        /* renamed from: a */
        public BigDecimal f2865a;

        /* renamed from: b */
        public Currency f2866b;

        /* renamed from: c */
        public Bundle f2867c;

        public C1039a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
            l.e(bigDecimal, "purchaseAmount");
            l.e(currency, ImpressionData.CURRENCY);
            l.e(bundle, RemoteMessageConst.MessageBody.PARAM);
            this.f2865a = bigDecimal;
            this.f2866b = currency;
            this.f2867c = bundle;
        }
    }

    static {
        C23228f0 c23228f0 = C23228f0.f64291a;
    }

    /* renamed from: a */
    public static final boolean m41864a() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        String m7353b = C23228f0.m7353b();
        C1127d0 c1127d0 = C1127d0.f3107a;
        C1124c0 m41742b = C1127d0.m41742b(m7353b);
        return m41742b != null && C23228f0.m7352c() && m41742b.f3097g;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02b1  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m41863b(java.lang.String r7, java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p031m0.C1038i.m41863b(java.lang.String, java.lang.String, boolean):void");
    }
}
