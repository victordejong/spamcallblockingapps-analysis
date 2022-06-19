package p193e.p194a.p195a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import com.truecaller.messaging.insights.InsightsNotificationTrampolineActivity;
import p193e.p194a.p437c.p548h.AbstractC10256f;
import s1.z.c.l;
/* renamed from: e.a.a.z */
/* loaded from: classes10-dex2jar.jar:e/a/a/z.class */
public final class C7353z implements AbstractC10256f {
    @Override // p193e.p194a.p437c.p548h.AbstractC10256f
    /* renamed from: a */
    public Intent mo26526a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent m34991pa = DefaultSmsActivity.m34991pa(context, "inbox");
        l.d(m34991pa, "DefaultSmsActivity.creat… AnalyticsContexts.INBOX)");
        return m34991pa;
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10256f
    /* renamed from: b */
    public boolean mo26525b() {
        TrueApp m36032b0 = TrueApp.m36032b0();
        l.d(m36032b0, "TrueApp.getApp()");
        return m36032b0.mo10154s().mo12512W().mo13794c();
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10256f
    /* renamed from: c */
    public Intent mo26524c(Context context, int i, Bundle bundle) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "bundle");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "bundle");
        Intent intent = new Intent(context, InsightsNotificationTrampolineActivity.class);
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("notification_name", "com.truecaller.insights.reminder.notifications.PAY_BILL");
        intent.putExtra("extra_notification_id", i);
        intent.putExtras(bundle);
        return intent;
    }
}
