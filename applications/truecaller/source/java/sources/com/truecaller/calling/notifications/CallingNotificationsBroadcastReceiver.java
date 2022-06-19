package com.truecaller.calling.notifications;

import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.notifications.support.NotificationTrampolineActivity;
import com.truecaller.tcpermissions.RoleRequesterActivity;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver.class */
public final class CallingNotificationsBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static final PendingIntent m35737a(Context context, String str) {
        PendingIntent pendingIntent;
        if (Build.VERSION.SDK_INT >= 31) {
            switch (str.hashCode()) {
                case -2104750529:
                    if (str.equals("com.truecaller.request_allow_draw_over_other_apps")) {
                        pendingIntent = PendingIntent.getActivity(context, C2752R.C2754id.notification_allow_draw_over_apps, NotificationTrampolineActivity.f14119j.m34835a(context, "com.truecaller.intent.action.ALLOW_DRAW_OVER_APPS"), 335544320);
                        l.d(pendingIntent, "when (action) {\n        …ction\")\n                }");
                        break;
                    }
                    throw new RuntimeException(C22128a.m8543z2("Unknown action ", str));
                case -1577368897:
                    if (str.equals("com.truecaller.request_ignore_battery_optimizations")) {
                        pendingIntent = PendingIntent.getActivity(context, C2752R.C2754id.notification_ignore_battery_optimizations, NotificationTrampolineActivity.f14119j.m34835a(context, "com.truecaller.intent.action.BATTERY_OPTIMIZATIONS"), 335544320);
                        l.d(pendingIntent, "when (action) {\n        …ction\")\n                }");
                        break;
                    }
                    throw new RuntimeException(C22128a.m8543z2("Unknown action ", str));
                case -1127064537:
                    if (str.equals("com.truecaller.never_ask_again_ignore_battery_optimizations")) {
                        Intent intent = new Intent(context, CallingNotificationsBroadcastReceiver.class);
                        intent.setAction("com.truecaller.never_ask_again_ignore_battery_optimizations");
                        pendingIntent = PendingIntent.getBroadcast(context, C2752R.C2754id.notification_never_ask_again_ignore_battery_optimizations, intent, 335544320);
                        l.d(pendingIntent, "when (action) {\n        …ction\")\n                }");
                        break;
                    }
                    throw new RuntimeException(C22128a.m8543z2("Unknown action ", str));
                case -720889926:
                    if (str.equals("com.truecaller.request_set_as_default_phone_app")) {
                        pendingIntent = PendingIntent.getActivity(context, C2752R.C2754id.notification_set_as_default_phone, RoleRequesterActivity.m34616qa(context), 335544320);
                        l.d(pendingIntent, "when (action) {\n        …ction\")\n                }");
                        break;
                    }
                    throw new RuntimeException(C22128a.m8543z2("Unknown action ", str));
                case -188537137:
                    if (str.equals("com.truecaller.request_set_as_call_screening_app")) {
                        pendingIntent = PendingIntent.getActivity(context, C2752R.C2754id.notification_set_as_call_screening, RoleRequesterActivity.m34617pa(context), 335544320);
                        l.d(pendingIntent, "when (action) {\n        …ction\")\n                }");
                        break;
                    }
                    throw new RuntimeException(C22128a.m8543z2("Unknown action ", str));
                default:
                    throw new RuntimeException(C22128a.m8543z2("Unknown action ", str));
            }
        }
        Intent intent2 = new Intent(context, CallingNotificationsBroadcastReceiver.class);
        intent2.setAction(str);
        pendingIntent = PendingIntent.getBroadcast(context, 0, intent2, 335544320);
        l.d(pendingIntent, "Intent(context, CallingN…UTABLE)\n                }");
        return pendingIntent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.TrueApp");
        AbstractC15539j2 mo10154s = ((TrueApp) applicationContext).mo10154s();
        l.d(mo10154s, "(context.applicationCont… as TrueApp).objectsGraph");
        String action = intent.getAction();
        if (action != null) {
            switch (action.hashCode()) {
                case -2104750529:
                    if (action.equals("com.truecaller.request_allow_draw_over_other_apps")) {
                        try {
                            Intent intent2 = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                            Intent data = intent2.setData(Uri.parse("package:" + context.getPackageName()));
                            data.addFlags(268435456);
                            context.startActivity(data);
                        } catch (ActivityNotFoundException e) {
                            C10480a.m26061I1(e);
                        }
                        Toast.makeText(context, (int) C2752R.string.PermissionToastEnableDrawOverOtherAppsText, 1).show();
                        return;
                    }
                    break;
                case -1577368897:
                    if (action.equals("com.truecaller.request_ignore_battery_optimizations")) {
                        mo10154s.mo12721G5().m1816b(C2752R.C2754id.request_ignore_battery_optimizations_notification);
                        l.e(context, "$this$requestDisableBatteryOptimizations");
                        try {
                            context.startActivity(C19291g.m13564b1(context, true));
                            return;
                        } catch (ActivityNotFoundException e2) {
                            return;
                        }
                    }
                    break;
                case -1127064537:
                    if (action.equals("com.truecaller.never_ask_again_ignore_battery_optimizations")) {
                        mo10154s.mo12721G5().m1816b(C2752R.C2754id.request_ignore_battery_optimizations_notification);
                        mo10154s.mo12143x4().putBoolean("never_ask_again_disable_ignore_battery_optimizations", true);
                        return;
                    }
                    break;
                case -720889926:
                    if (action.equals("com.truecaller.request_set_as_default_phone_app")) {
                        mo10154s.mo12142x5().mo19388c();
                        return;
                    }
                    break;
                case -188537137:
                    if (action.equals("com.truecaller.request_set_as_call_screening_app")) {
                        mo10154s.mo12142x5().mo19386e();
                        return;
                    }
                    break;
            }
        }
        StringBuilder m8728C = C22128a.m8728C("Unknown action ");
        m8728C.append(intent.getAction());
        m8728C.append(" in onReceive");
        throw new RuntimeException(m8728C.toString());
    }
}
