package com.truecaller.notifications.support;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import e.m.d.y.n;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p804h.p833q0.AbstractC14722a;
import p193e.p194a.p912i4.p915z.AbstractC15312b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018�� 72\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b6\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n*\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fR.\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00170\r8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u0013\"\u0004\b\u001a\u0010\u0015R(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\r8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R\"\u0010(\u001a\u00020!8��@��X\u0081.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u00100\u001a\u00020)8��@��X\u0081.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R(\u00105\u001a\b\u0012\u0004\u0012\u0002010\r8��@��X\u0081.¢\u0006\u0012\n\u0004\b2\u0010\u0011\u001a\u0004\b3\u0010\u0013\"\u0004\b4\u0010\u0015¨\u00069"}, d2 = {"Lcom/truecaller/notifications/support/NotificationTrampolineActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "qa", "()V", "Landroid/content/Intent;", "", "pa", "(Landroid/content/Intent;)Ljava/lang/String;", "Lo3/a;", "Le/a/r2/f;", "Le/a/l0/c;", "f", "Lo3/a;", "getCallHistoryManager$truecaller_googlePlayRelease", "()Lo3/a;", "setCallHistoryManager$truecaller_googlePlayRelease", "(Lo3/a;)V", "callHistoryManager", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;", "h", "getInitiateCallHelper$truecaller_googlePlayRelease", "setInitiateCallHelper$truecaller_googlePlayRelease", "initiateCallHelper", "Le/a/d/c0/s1;", "g", "getVoipUtil$truecaller_googlePlayRelease", "setVoipUtil$truecaller_googlePlayRelease", "voipUtil", "Ln3/k/a/x;", "e", "Ln3/k/a/x;", "getNotificationManager$truecaller_googlePlayRelease", "()Ln3/k/a/x;", "setNotificationManager$truecaller_googlePlayRelease", "(Ln3/k/a/x;)V", "notificationManager", "Le/a/q2/a;", "d", "Le/a/q2/a;", "getAnalytics$truecaller_googlePlayRelease", "()Le/a/q2/a;", "setAnalytics$truecaller_googlePlayRelease", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/h/q0/a;", "i", "getMissedCallReminderManager$truecaller_googlePlayRelease", "setMissedCallReminderManager$truecaller_googlePlayRelease", "missedCallReminderManager", "<init>", "j", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/support/NotificationTrampolineActivity.class */
public final class NotificationTrampolineActivity extends AbstractC15312b {

    /* renamed from: j */
    public static final C4317a f14119j = new C4317a(null);
    @Inject

    /* renamed from: d */
    public AbstractC19462a f14120d;
    @Inject

    /* renamed from: e */
    public C26458x f14121e;
    @Inject

    /* renamed from: f */
    public a<AbstractC19854f<AbstractC17348c>> f14122f;
    @Inject

    /* renamed from: g */
    public a<AbstractC11476s1> f14123g;
    @Inject

    /* renamed from: h */
    public a<InitiateCallHelper> f14124h;
    @Inject

    /* renamed from: i */
    public a<AbstractC14722a> f14125i;

    /* renamed from: com.truecaller.notifications.support.NotificationTrampolineActivity$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/support/NotificationTrampolineActivity$a.class */
    public static final class C4317a {
        public C4317a(f fVar) {
        }

        /* renamed from: b */
        public static Intent m34834b(C4317a c4317a, Context context, String str, String str2, Long l, String str3, boolean z, int i) {
            if ((i & 8) != 0) {
                l = null;
            }
            if ((i & 16) != 0) {
                str3 = null;
            }
            if ((i & 32) != 0) {
                z = false;
            }
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "analyticsContext");
            l.e(str2, "number");
            Intent putExtra = new Intent(context, NotificationTrampolineActivity.class).putExtra("notification-name", "com.truecaller.intent.action.CALL").putExtra("analytics-context", str).putExtra("number", str2).putExtra("call-log-id", l).putExtra("reminder-id", str3).putExtra("region-parser", z);
            l.d(putExtra, "Intent(context, Notifica…SER_ID, userRegionParser)");
            return putExtra;
        }

        /* renamed from: a */
        public final Intent m34835a(Context context, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "notificationName");
            Intent putExtra = new Intent(context, NotificationTrampolineActivity.class).putExtra("notification-name", str);
            l.d(putExtra, "Intent(context, Notifica…N_NAME, notificationName)");
            return putExtra;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Intent intent;
        NotificationTrampolineActivity.super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("notification-name");
        getIntent().removeExtra("notification-name");
        if (stringExtra != null && bundle == null) {
            switch (stringExtra.hashCode()) {
                case -1930142778:
                    if (stringExtra.equals("com.truecaller.intent.action.ALLOW_DRAW_OVER_APPS")) {
                        Intent intent2 = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                        StringBuilder m8728C = C22128a.m8728C("package:");
                        m8728C.append(getPackageName());
                        intent = intent2.setData(Uri.parse(m8728C.toString())).addFlags(268435456);
                        break;
                    }
                    intent = null;
                    break;
                case -1187399354:
                    if (stringExtra.equals("com.truecaller.intent.action.BATTERY_OPTIMIZATIONS")) {
                        intent = C19291g.m13564b1(this, true);
                        break;
                    }
                    intent = null;
                    break;
                case 23772491:
                    if (stringExtra.equals("com.truecaller.intent.action.SMS")) {
                        Intent intent3 = getIntent();
                        l.d(intent3, "intent");
                        intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("smsto", m34837pa(intent3), null)).addFlags(268435456);
                        break;
                    }
                    intent = null;
                    break;
                case 1370363729:
                    if (stringExtra.equals("com.truecaller.intent.action.SHARE")) {
                        intent = C8582g0.m28329L(getString(C2752R.string.MePageShareApp), getString(C2752R.string.ShareTruecallerTitle), getString(C2752R.string.ShareTruecallerText2), null, null, null).addFlags(268435456);
                        break;
                    }
                    intent = null;
                    break;
                default:
                    intent = null;
                    break;
            }
            int hashCode = stringExtra.hashCode();
            if (hashCode == -284944935) {
                stringExtra.equals("com.truecaller.intent.action.VOIP_CALL_LEGACY");
            } else if (hashCode == 736458892) {
                stringExtra.equals("com.truecaller.intent.action.CALL");
            } else if (hashCode == 1284213807) {
                stringExtra.equals("com.truecaller.intent.action.VOIP_CALL");
            }
            switch (stringExtra.hashCode()) {
                case -1930142778:
                    if (stringExtra.equals("com.truecaller.intent.action.ALLOW_DRAW_OVER_APPS")) {
                        Toast.makeText((Context) this, (int) C2752R.string.PermissionToastEnableDrawOverOtherAppsText, 1).show();
                        break;
                    }
                    break;
                case -1187399354:
                    if (stringExtra.equals("com.truecaller.intent.action.BATTERY_OPTIMIZATIONS")) {
                        C26458x c26458x = this.f14121e;
                        if (c26458x == null) {
                            l.l("notificationManager");
                            throw null;
                        } else {
                            c26458x.m1816b(C2752R.C2754id.request_ignore_battery_optimizations_notification);
                            break;
                        }
                    }
                    break;
                case -284944935:
                    if (stringExtra.equals("com.truecaller.intent.action.VOIP_CALL_LEGACY")) {
                        Intent intent4 = getIntent();
                        l.d(intent4, "intent");
                        String m34837pa = m34837pa(intent4);
                        if (m34837pa != null) {
                            a<AbstractC11476s1> aVar = this.f14123g;
                            if (aVar == null) {
                                l.l("voipUtil");
                                throw null;
                            } else {
                                ((AbstractC11476s1) aVar.get()).mo24619e(m34837pa, true);
                                break;
                            }
                        }
                    }
                    break;
                case 23772491:
                    if (stringExtra.equals("com.truecaller.intent.action.SMS")) {
                        m34836qa();
                        break;
                    }
                    break;
                case 736458892:
                    if (stringExtra.equals("com.truecaller.intent.action.CALL")) {
                        m34836qa();
                        String stringExtra2 = getIntent().getStringExtra("reminder-id");
                        if (stringExtra2 != null) {
                            a<AbstractC14722a> aVar2 = this.f14125i;
                            if (aVar2 == null) {
                                l.l("missedCallReminderManager");
                                throw null;
                            }
                            ((AbstractC14722a) aVar2.get()).m19724b(stringExtra2);
                        }
                        InitiateCallHelper.CallContextOption.ShowOnBoarded showOnBoarded = InitiateCallHelper.CallContextOption.ShowOnBoarded.a;
                        Intent intent5 = getIntent();
                        l.d(intent5, "intent");
                        String m34837pa2 = m34837pa(intent5);
                        Intent intent6 = getIntent();
                        l.d(intent6, "intent");
                        String stringExtra3 = intent6.getStringExtra("analytics-context");
                        if (stringExtra3 == null) {
                            stringExtra3 = RemoteMessageConst.NOTIFICATION;
                        }
                        boolean booleanExtra = getIntent().getBooleanExtra("region-parser", false);
                        l.e(stringExtra3, "analyticsContext");
                        l.e(showOnBoarded, "callContextOption");
                        InitiateCallHelper.CallOptions callOptions = new InitiateCallHelper.CallOptions(m34837pa2, stringExtra3, m34837pa2, null, false, false, null, booleanExtra, showOnBoarded);
                        a<InitiateCallHelper> aVar3 = this.f14124h;
                        if (aVar3 == null) {
                            l.l("initiateCallHelper");
                            throw null;
                        } else {
                            ((InitiateCallHelper) aVar3.get()).m35744b(callOptions);
                            break;
                        }
                    }
                    break;
                case 1284213807:
                    if (stringExtra.equals("com.truecaller.intent.action.VOIP_CALL")) {
                        C26458x c26458x2 = this.f14121e;
                        if (c26458x2 == null) {
                            l.l("notificationManager");
                            throw null;
                        }
                        c26458x2.m1816b(2131366922);
                        Intent intent7 = getIntent();
                        l.d(intent7, "intent");
                        String m34837pa3 = m34837pa(intent7);
                        Intent intent8 = getIntent();
                        l.d(intent8, "intent");
                        String stringExtra4 = intent8.getStringExtra("analytics-context");
                        if (m34837pa3 != null && stringExtra4 != null) {
                            a<AbstractC11476s1> aVar4 = this.f14123g;
                            if (aVar4 == null) {
                                l.l("voipUtil");
                                throw null;
                            } else {
                                ((AbstractC11476s1) aVar4.get()).mo24623a(m34837pa3, stringExtra4);
                                break;
                            }
                        }
                    }
                    break;
            }
            if (intent != null) {
                startActivity(intent);
            }
            ViewActionEvent m35923o = (stringExtra.hashCode() == 1370363729 && stringExtra.equals("com.truecaller.intent.action.SHARE")) ? ViewActionEvent.f9985d.m35923o(RemoteMessageConst.NOTIFICATION, ViewActionEvent.ViralityAction.SHARE) : null;
            if (m35923o != null) {
                AbstractC19462a abstractC19462a = this.f14120d;
                if (abstractC19462a == null) {
                    l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                    throw null;
                }
                n.B0(m35923o, abstractC19462a);
            }
        }
        finish();
    }

    /* renamed from: pa */
    public final String m34837pa(Intent intent) {
        return intent.getStringExtra("number");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: qa */
    public final void m34836qa() {
        Long valueOf = Long.valueOf(getIntent().getLongExtra("call-log-id", -1L));
        if (!(valueOf.longValue() >= 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            long longValue = valueOf.longValue();
            a<AbstractC19854f<AbstractC17348c>> aVar = this.f14122f;
            if (aVar != null) {
                ((AbstractC17348c) ((AbstractC19854f) aVar.get()).mo11854a()).mo16243e(longValue);
            } else {
                l.l("callHistoryManager");
                throw null;
            }
        }
    }
}
