package com.truecaller.notifications;

import android.app.Service;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcelable;
import android.widget.Toast;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import e.m.d.y.n;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1114o5.AbstractC19044j;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bS\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ'\u0010\r\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ)\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR.\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"0!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010R\u001a\u00020K8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010Q¨\u0006T"}, d2 = {"Lcom/truecaller/notifications/OTPCopierService;", "Landroid/app/Service;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "", "actionType", "Lcom/truecaller/notifications/OtpAnalyticsModel;", "otpAnalyticsModel", "actionInfo", "a", "(Ljava/lang/String;Lcom/truecaller/notifications/OtpAnalyticsModel;Ljava/lang/String;)V", "Landroid/content/ClipboardManager;", "h", "Landroid/content/ClipboardManager;", "clipboardManager", "Le/a/p5/c0;", "Le/a/p5/c0;", "getResourceProvider", "()Le/a/p5/c0;", "setResourceProvider", "(Le/a/p5/c0;)V", "resourceProvider", "Lo3/a;", "Le/a/r2/f;", "Le/a/a/g/m;", "d", "Lo3/a;", "getMessageStorageRef", "()Lo3/a;", "setMessageStorageRef", "(Lo3/a;)V", "messageStorageRef", "Le/a/i4/e;", C22021b.f61237c, "Le/a/i4/e;", "getAnalyticsNotificationManager", "()Le/a/i4/e;", "setAnalyticsNotificationManager", "(Le/a/i4/e;)V", "analyticsNotificationManager", "Le/a/c/c0/o;", "f", "Le/a/c/c0/o;", "getInsightConfig", "()Le/a/c/c0/o;", "setInsightConfig", "(Le/a/c/c0/o;)V", "insightConfig", "Le/a/q2/a;", AbstractC2405c.f7629a, "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/c/e/c;", "e", "Le/a/c/e/c;", "getInsightsAnalyticsManager", "()Le/a/c/e/c;", "setInsightsAnalyticsManager", "(Le/a/c/e/c;)V", "insightsAnalyticsManager", "Le/a/o5/j;", "g", "Le/a/o5/j;", "getAppListener", "()Le/a/o5/j;", "setAppListener", "(Le/a/o5/j;)V", "appListener", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/OTPCopierService.class */
public final class OTPCopierService extends Service {
    @Inject

    /* renamed from: a */
    public AbstractC19223c0 f14090a;
    @Inject

    /* renamed from: b */
    public AbstractC15275e f14091b;
    @Inject

    /* renamed from: c */
    public AbstractC19462a f14092c;
    @Inject

    /* renamed from: d */
    public a<AbstractC19854f<AbstractC6233m>> f14093d;
    @Inject

    /* renamed from: e */
    public AbstractC10060c f14094e;
    @Inject

    /* renamed from: f */
    public AbstractC10028o f14095f;
    @Inject

    /* renamed from: g */
    public AbstractC19044j f14096g;
    @Inject

    /* renamed from: h */
    public ClipboardManager f14097h;

    /* renamed from: a */
    public final void m34851a(String str, OtpAnalyticsModel otpAnalyticsModel, String str2) {
        AbstractC10060c abstractC10060c = this.f14094e;
        LinkedHashMap linkedHashMap = null;
        if (abstractC10060c == null) {
            l.l("insightsAnalyticsManager");
            throw null;
        }
        boolean z = true;
        Object obj = "";
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        String str6 = true & true ? "" : null;
        String str7 = true & true ? "" : null;
        if (!(true & true)) {
            obj = null;
        }
        if (true & true) {
            linkedHashMap = new LinkedHashMap();
        }
        l.e(str3, "feature");
        l.e(str4, "eventCategory");
        l.e(str5, "eventInfo");
        l.e(str6, AnalyticsConstants.CONTEXT);
        l.e(str7, "actionType");
        l.e(obj, "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("otp_notification", "<set-?>");
        String otpProcessor = otpAnalyticsModel.getOtpProcessor();
        l.e(otpProcessor, "<set-?>");
        String eventInfo = otpAnalyticsModel.getEventInfo();
        l.e(eventInfo, "<set-?>");
        l.e(str, "<set-?>");
        l.e(str2, "<set-?>");
        String context = otpAnalyticsModel.getContext();
        l.e(context, "<set-?>");
        if ("otp_notification".length() <= 0) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("otp_notification", otpProcessor, eventInfo, context, str, str2, 0L, null, false, 448, null), i.W0(linkedHashMap)));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        l.e(intent, "intent");
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC16444k2.f46188a.m17389a().mo11374s(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        NotificationIdentifier notificationIdentifier;
        ViewActionEvent.C2856a c2856a = ViewActionEvent.f9985d;
        l.e(intent, "intent");
        String action = intent.getAction();
        AssertionUtil.isNotNull(action, "OTPCopierService action should not be null");
        int intExtra = intent.getIntExtra("OTP_NOTIFICATION_ID", -1);
        if (intExtra != -1) {
            notificationIdentifier = new NotificationIdentifier(intExtra, null, 0, 4);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("OTP_NOTIFICATION_ID");
            if (parcelableExtra == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            notificationIdentifier = (NotificationIdentifier) parcelableExtra;
        }
        long longExtra = intent.getLongExtra("MESSAGE_ID", -1L);
        long longExtra2 = intent.getLongExtra("CONVERSATION_ID", 0L);
        String stringExtra = intent.getStringExtra("SILENT_MARK_AS_READ");
        if (longExtra != -1) {
            a<AbstractC19854f<AbstractC6233m>> aVar = this.f14093d;
            if (aVar == null) {
                l.l("messageStorageRef");
                throw null;
            }
            ((AbstractC6233m) ((AbstractC19854f) aVar.get()).mo11854a()).mo31706U(RemoteMessageConst.NOTIFICATION, false, true, new long[]{longExtra2}, longExtra);
        } else if (stringExtra != null) {
            AbstractC10028o abstractC10028o = this.f14095f;
            if (abstractC10028o == null) {
                l.l("insightConfig");
                throw null;
            }
            abstractC10028o.mo26846e0(stringExtra);
            AbstractC19044j abstractC19044j = this.f14096g;
            if (abstractC19044j == null) {
                l.l("appListener");
                throw null;
            } else if (abstractC19044j.mo14186b()) {
                a<AbstractC19854f<AbstractC6233m>> aVar2 = this.f14093d;
                if (aVar2 == null) {
                    l.l("messageStorageRef");
                    throw null;
                }
                ((AbstractC6233m) ((AbstractC19854f) aVar2.get()).mo11854a()).mo31691g();
            }
        }
        String str = notificationIdentifier.f13654b;
        if (str != null) {
            AbstractC15275e abstractC15275e = this.f14091b;
            if (abstractC15275e == null) {
                l.l("analyticsNotificationManager");
                throw null;
            }
            abstractC15275e.mo18972b(str, notificationIdentifier.f13653a);
        } else {
            AbstractC15275e abstractC15275e2 = this.f14091b;
            if (abstractC15275e2 == null) {
                l.l("analyticsNotificationManager");
                throw null;
            }
            abstractC15275e2.mo18968f(notificationIdentifier.f13653a);
        }
        OtpAnalyticsModel otpAnalyticsModel = (OtpAnalyticsModel) intent.getParcelableExtra("extra_otp_analytics_model");
        if (action == null) {
            return 2;
        }
        int hashCode = action.hashCode();
        if (hashCode != -648928470) {
            if (hashCode == 299469613) {
                if (!action.equals("ACTION_DISMISS_OTP")) {
                    return 2;
                }
                if (otpAnalyticsModel != null) {
                    m34851a("dismiss", otpAnalyticsModel, "");
                }
                ViewActionEvent m35926l = c2856a.m35926l(ViewActionEvent.OtpNotifAction.DISMISS_OTP);
                AbstractC19462a abstractC19462a = this.f14092c;
                if (abstractC19462a != null) {
                    n.B0(m35926l, abstractC19462a);
                    return 2;
                }
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            } else if (hashCode != 2031677783 || !action.equals("ACTION_MARK_MESSAGE_READ") || otpAnalyticsModel == null) {
                return 2;
            } else {
                m34851a("click", otpAnalyticsModel, "mark_read");
                ViewActionEvent m35926l2 = c2856a.m35926l(ViewActionEvent.OtpNotifAction.MARK_OTP_READ);
                AbstractC19462a abstractC19462a2 = this.f14092c;
                if (abstractC19462a2 != null) {
                    n.B0(m35926l2, abstractC19462a2);
                    return 2;
                }
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
        } else if (!action.equals("ACTION_COPY_OTP")) {
            return 2;
        } else {
            C19291g.m13515s(this);
            ClipData newPlainText = ClipData.newPlainText("com.truecaller.OTP", intent.getStringExtra("OTP"));
            ClipboardManager clipboardManager = this.f14097h;
            if (clipboardManager == null) {
                AssertionUtil.report("Clipboard manager is null.");
                return 2;
            }
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(newPlainText);
            }
            AbstractC19223c0 abstractC19223c0 = this.f14090a;
            if (abstractC19223c0 == null) {
                l.l("resourceProvider");
                throw null;
            }
            Toast.makeText(this, abstractC19223c0.mo13768b(C2752R.string.otp_notification_copied_toast, new Object[0]), 0).show();
            ViewActionEvent m35926l3 = c2856a.m35926l(ViewActionEvent.OtpNotifAction.COPY_OTP);
            AbstractC19462a abstractC19462a3 = this.f14092c;
            if (abstractC19462a3 == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            n.B0(m35926l3, abstractC19462a3);
            if (otpAnalyticsModel == null) {
                return 2;
            }
            m34851a("click", otpAnalyticsModel, "copy_message");
            return 2;
        }
    }
}
