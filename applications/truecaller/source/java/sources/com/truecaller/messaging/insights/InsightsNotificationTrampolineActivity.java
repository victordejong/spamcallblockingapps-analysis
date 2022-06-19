package com.truecaller.messaging.insights;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p194a.p195a.p282u0.AbstractC7271c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p565l.p566e.C10401a;
import p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a;
import p193e.p194a.p437c.p598v.AbstractC10709a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b7\u00108J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u00069"}, d2 = {"Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/b0/o/a;", "f", "Le/a/b0/o/a;", "getCoreSettings", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "Le/a/c/e/c;", "d", "Le/a/c/e/c;", "getAnalyticsManager", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "Ln3/k/a/x;", "g", "Ln3/k/a/x;", "getNotificationManager", "()Ln3/k/a/x;", "setNotificationManager", "(Ln3/k/a/x;)V", "notificationManager", "Le/a/c/v/a;", "i", "Le/a/c/v/a;", "getReminderManager", "()Le/a/c/v/a;", "setReminderManager", "(Le/a/c/v/a;)V", "reminderManager", "Le/a/c/i/l/f/a;", "e", "Le/a/c/i/l/f/a;", "getSmartNotificationManager", "()Le/a/c/i/l/f/a;", "setSmartNotificationManager", "(Le/a/c/i/l/f/a;)V", "smartNotificationManager", "Le/a/c/i/l/e/a;", "h", "Le/a/c/i/l/e/a;", "getNotificationBannerHelper", "()Le/a/c/i/l/e/a;", "setNotificationBannerHelper", "(Le/a/c/i/l/e/a;)V", "notificationBannerHelper", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/insights/InsightsNotificationTrampolineActivity.class */
public final class InsightsNotificationTrampolineActivity extends AbstractC7271c {
    @Inject

    /* renamed from: d */
    public AbstractC10060c f13521d;
    @Inject

    /* renamed from: e */
    public AbstractC10406a f13522e;
    @Inject

    /* renamed from: f */
    public AbstractC8541a f13523f;
    @Inject

    /* renamed from: g */
    public C26458x f13524g;
    @Inject

    /* renamed from: h */
    public C10401a f13525h;
    @Inject

    /* renamed from: i */
    public AbstractC10709a f13526i;

    /* renamed from: pa */
    public static final Intent m34975pa(Context context, SmartNotificationMetadata smartNotificationMetadata, NotificationIdentifier notificationIdentifier, String str, String str2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(notificationIdentifier, "identifier");
        l.e(str, "url");
        l.e(str2, "actionInfo");
        Intent intent = new Intent(context, InsightsNotificationTrampolineActivity.class);
        intent.putExtra("extra_notification_origin", "extra_smart_notification");
        intent.putExtra("notification_name", "com.truecaller.insights.notifications.WEB");
        intent.putExtra("extra_notification_id", notificationIdentifier.f13653a);
        intent.putExtra("extra_smart_notif_metadata", smartNotificationMetadata);
        intent.putExtra("extra_web_url", str);
        intent.putExtra("extra_action_type", "click");
        intent.putExtra("extra_action_info", str2);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03ad  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x045f -> B:96:0x034f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 1123
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.insights.InsightsNotificationTrampolineActivity.onCreate(android.os.Bundle):void");
    }
}
