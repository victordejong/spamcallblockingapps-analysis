package p193e.p194a.p195a.p282u0;

import android.content.Intent;
import com.truecaller.insights.models.smartnotifications.NotificationBannerMetaData;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import com.truecaller.notifications.OtpAnalyticsModel;
import io.agora.rtc.Constants;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.z.c.l;
/* renamed from: e.a.a.u0.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/u0/h.class */
public final class C7281h {
    /* renamed from: a */
    public static final C10530c m29862a(Intent intent) {
        l.e(intent, "$this$buildAnalyticsBuilder");
        if (!m29861b(intent)) {
            return new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
        }
        String stringExtra = intent.getStringExtra("extra_action_info");
        String str = "";
        if (stringExtra == null) {
            stringExtra = "";
        }
        l.d(stringExtra, "getStringExtra(EXTRA_ACTION_INFO) ?: \"\"");
        String stringExtra2 = intent.getStringExtra("extra_action_type");
        if (stringExtra2 != null) {
            str = stringExtra2;
        }
        l.d(str, "getStringExtra(EXTRA_ACTION_TYPE) ?: \"\"");
        NotificationBannerMetaData notificationBannerMetaData = (NotificationBannerMetaData) intent.getParcelableExtra("extra_promo_banner_data");
        if (notificationBannerMetaData != null) {
            l.e(notificationBannerMetaData, "$this$createNotifEventBuilder");
            C10530c c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
            c10530c.m25821g("promo_banner");
            c10530c.m25823e(notificationBannerMetaData.getBannerName());
            c10530c.m25822f(notificationBannerMetaData.getBannerCategory());
            c10530c.m25824d("smart_notification");
            c10530c.m25825c("click");
            c10530c.m25826b("show_details");
            return c10530c;
        }
        OtpAnalyticsModel otpAnalyticsModel = (OtpAnalyticsModel) intent.getParcelableExtra("extra_otp_analytics_model");
        if (otpAnalyticsModel != null) {
            l.e(otpAnalyticsModel, "$this$createOtpNotifEventBuilder");
            l.e("show_message", "actionInfo");
            C10530c c10530c2 = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
            c10530c2.m25821g("otp_notification");
            c10530c2.m25823e(otpAnalyticsModel.getOtpProcessor());
            c10530c2.m25822f(otpAnalyticsModel.getEventInfo());
            c10530c2.m25824d(otpAnalyticsModel.getContext());
            c10530c2.m25825c("click");
            c10530c2.m25826b("show_message");
            return c10530c2;
        }
        SmartNotificationMetadata smartNotificationMetadata = (SmartNotificationMetadata) intent.getParcelableExtra("extra_smart_notif_metadata");
        C10530c c10530c3 = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
        String str2 = "custom_smart_notification";
        String str3 = str2;
        if (smartNotificationMetadata != null) {
            if (smartNotificationMetadata.isUpdateNotification()) {
                str2 = "updates_notification";
            }
            c10530c3.m25823e(smartNotificationMetadata.getCategory());
            c10530c3.m25822f(C10031q.m26803a(smartNotificationMetadata.getSenderId(), smartNotificationMetadata.isIM()));
            str3 = str2;
        }
        c10530c3.m25821g(str3);
        c10530c3.m25825c(str);
        c10530c3.m25826b(stringExtra);
        return c10530c3;
    }

    /* renamed from: b */
    public static final boolean m29861b(Intent intent) {
        l.e(intent, "$this$isSmartNotifIntent");
        return l.a(intent.getStringExtra("extra_notification_origin"), "extra_smart_notification");
    }
}
