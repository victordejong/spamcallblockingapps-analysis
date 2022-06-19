package p193e.p1485h.p1486a.p1488b.p1490i;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.MraidCloseCommand;
import com.clevertap.android.pushtemplates.PTPushNotificationReceiver;
import com.clevertap.android.pushtemplates.PushTemplateReceiver;
import com.clevertap.android.sdk.pushnotification.CTNotificationIntentService;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Random;
import kotlin.Metadata;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1488b.C22675d;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import s1.z.c.l;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J<\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007J \u0010\u0019\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J*\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/clevertap/android/pushtemplates/content/PendingIntentFactory;", "", "()V", "launchIntent", "Landroid/content/Intent;", "getLaunchIntent", "()Landroid/content/Intent;", "setLaunchIntent", "(Landroid/content/Intent;)V", "getCtaLaunchPendingIntent", "Landroid/app/PendingIntent;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "extras", "Landroid/os/Bundle;", "dl", "", "notificationId", "", "getPendingIntent", "isLauncher", "", "identifier", "renderer", "Lcom/clevertap/android/pushtemplates/TemplateRenderer;", "setDismissIntent", "intent", "setPendingIntent", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.i.g */
/* loaded from: classes-dex2jar.jar:e/h/a/b/i/g.class */
public final class C22688g {

    /* renamed from: a */
    public static Intent f62809a;

    /* renamed from: a */
    public static final PendingIntent m7946a(Context context, Bundle bundle, String str, int i) {
        Class<?> cls;
        PendingIntent pendingIntent;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        l.e(str, "dl");
        try {
            cls = Class.forName("com.clevertap.android.sdk.pushnotification.CTNotificationIntentService");
        } catch (ClassNotFoundException e) {
            cls = null;
        }
        boolean m7838l = C22741j0.m7838l(context, cls);
        if (Build.VERSION.SDK_INT >= 31 || !m7838l) {
            bundle.putString("wzrk_dl", str);
            pendingIntent = C26232y.m2404V(bundle, context);
            l.d(pendingIntent, "{\n            extras.put…xtras, context)\n        }");
        } else {
            bundle.putBoolean(RemoteMessageConst.Notification.AUTO_CANCEL, true);
            bundle.putInt("notificationId", i);
            Intent intent = new Intent(CTNotificationIntentService.MAIN_ACTION);
            f62809a = intent;
            l.c(intent);
            intent.putExtras(bundle);
            Intent intent2 = f62809a;
            l.c(intent2);
            intent2.putExtra("dl", str);
            Intent intent3 = f62809a;
            l.c(intent3);
            intent3.setPackage(context.getPackageName());
            Intent intent4 = f62809a;
            l.c(intent4);
            intent4.putExtra("ct_type", CTNotificationIntentService.TYPE_BUTTON_CLICK);
            int currentTimeMillis = (int) System.currentTimeMillis();
            Intent intent5 = f62809a;
            l.c(intent5);
            pendingIntent = PendingIntent.getService(context, currentTimeMillis, intent5, 201326592);
            l.d(pendingIntent, "{\n            extras.put…t\n            )\n        }");
        }
        return pendingIntent;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public static final PendingIntent m7945b(Context context, int i, Bundle bundle, boolean z, int i2, C22675d c22675d) {
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        int i3 = Build.VERSION.SDK_INT;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        f62809a = null;
        if (z && i3 < 31) {
            f62809a = new Intent(context, PTPushNotificationReceiver.class);
        } else if (!z) {
            f62809a = new Intent(context, PushTemplateReceiver.class);
        }
        switch (i2) {
            case 1:
            case 2:
            case 3:
                break;
            case 4:
                Intent intent = f62809a;
                l.c(intent);
                intent.putExtra("right_swipe", true);
                Intent intent2 = f62809a;
                l.c(intent2);
                intent2.putExtra("notificationId", i);
                Intent intent3 = f62809a;
                l.c(intent3);
                intent3.putExtras(bundle);
                return m7943d(context, i, bundle, f62809a);
            case 5:
                Intent intent4 = f62809a;
                l.c(intent4);
                intent4.putExtra("right_swipe", false);
                Intent intent5 = f62809a;
                l.c(intent5);
                intent5.putExtra("notificationId", i);
                Intent intent6 = f62809a;
                l.c(intent6);
                intent6.putExtras(bundle);
                return m7943d(context, i, bundle, f62809a);
            case 6:
                return m7944c(context, bundle, new Intent(context, PushTemplateReceiver.class));
            case 7:
                bundle.putString("wzrk_dl", c22675d == null ? null : c22675d.f62780s);
                return i3 < 31 ? m7943d(context, i, bundle, f62809a) : C26232y.m2404V(bundle, context);
            case 8:
                Intent intent7 = f62809a;
                l.c(intent7);
                intent7.putExtras(bundle);
                Intent intent8 = f62809a;
                l.c(intent8);
                intent8.putExtra("click1", true);
                Intent intent9 = f62809a;
                l.c(intent9);
                intent9.putExtra("clickedStar", 1);
                Intent intent10 = f62809a;
                l.c(intent10);
                intent10.putExtra("notificationId", i);
                Intent intent11 = f62809a;
                l.c(intent11);
                intent11.putExtra(DTBMetricsConfiguration.CONFIG_DIR, c22675d == null ? null : c22675d.f62760S);
                int nextInt = new Random().nextInt();
                Intent intent12 = f62809a;
                l.c(intent12);
                return PendingIntent.getBroadcast(context, nextInt, intent12, 67108864);
            case 9:
                Intent intent13 = f62809a;
                l.c(intent13);
                intent13.putExtras(bundle);
                Intent intent14 = f62809a;
                l.c(intent14);
                intent14.putExtra("click2", true);
                Intent intent15 = f62809a;
                l.c(intent15);
                intent15.putExtra("clickedStar", 2);
                Intent intent16 = f62809a;
                l.c(intent16);
                intent16.putExtra("notificationId", i);
                Intent intent17 = f62809a;
                l.c(intent17);
                intent17.putExtra(DTBMetricsConfiguration.CONFIG_DIR, c22675d == null ? null : c22675d.f62760S);
                int nextInt2 = new Random().nextInt();
                Intent intent18 = f62809a;
                l.c(intent18);
                return PendingIntent.getBroadcast(context, nextInt2, intent18, 67108864);
            case 10:
                Intent intent19 = f62809a;
                l.c(intent19);
                intent19.putExtras(bundle);
                Intent intent20 = f62809a;
                l.c(intent20);
                intent20.putExtra("click3", true);
                Intent intent21 = f62809a;
                l.c(intent21);
                intent21.putExtra("clickedStar", 3);
                Intent intent22 = f62809a;
                l.c(intent22);
                intent22.putExtra("notificationId", i);
                Intent intent23 = f62809a;
                l.c(intent23);
                intent23.putExtra(DTBMetricsConfiguration.CONFIG_DIR, c22675d == null ? null : c22675d.f62760S);
                int nextInt3 = new Random().nextInt();
                Intent intent24 = f62809a;
                l.c(intent24);
                return PendingIntent.getBroadcast(context, nextInt3, intent24, 67108864);
            case 11:
                Intent intent25 = f62809a;
                l.c(intent25);
                intent25.putExtras(bundle);
                Intent intent26 = f62809a;
                l.c(intent26);
                intent26.putExtra("click4", true);
                Intent intent27 = f62809a;
                l.c(intent27);
                intent27.putExtra("clickedStar", 4);
                Intent intent28 = f62809a;
                l.c(intent28);
                intent28.putExtra("notificationId", i);
                Intent intent29 = f62809a;
                l.c(intent29);
                intent29.putExtra(DTBMetricsConfiguration.CONFIG_DIR, c22675d == null ? null : c22675d.f62760S);
                int nextInt4 = new Random().nextInt();
                Intent intent30 = f62809a;
                l.c(intent30);
                return PendingIntent.getBroadcast(context, nextInt4, intent30, 67108864);
            case 12:
                Intent intent31 = f62809a;
                l.c(intent31);
                intent31.putExtras(bundle);
                Intent intent32 = f62809a;
                l.c(intent32);
                intent32.putExtra("click5", true);
                Intent intent33 = f62809a;
                l.c(intent33);
                intent33.putExtra("clickedStar", 5);
                Intent intent34 = f62809a;
                l.c(intent34);
                intent34.putExtra("notificationId", i);
                Intent intent35 = f62809a;
                l.c(intent35);
                intent35.putExtra(DTBMetricsConfiguration.CONFIG_DIR, c22675d == null ? null : c22675d.f62760S);
                int nextInt5 = new Random().nextInt();
                Intent intent36 = f62809a;
                l.c(intent36);
                return PendingIntent.getBroadcast(context, nextInt5, intent36, 67108864);
            case 13:
                bundle.putString("wzrk_dl", null);
                return m7943d(context, i, bundle, f62809a);
            default:
                switch (i2) {
                    case 19:
                        int nextInt6 = new Random().nextInt();
                        Intent intent37 = f62809a;
                        l.c(intent37);
                        intent37.putExtra(MraidCloseCommand.NAME, true);
                        Intent intent38 = f62809a;
                        l.c(intent38);
                        intent38.putExtra("notificationId", i);
                        Intent intent39 = f62809a;
                        l.c(intent39);
                        intent39.putExtras(bundle);
                        Intent intent40 = f62809a;
                        l.c(intent40);
                        return PendingIntent.getBroadcast(context, nextInt6, intent40, 67108864);
                    case 20:
                    case 29:
                    case 30:
                    case 31:
                        break;
                    case 21:
                        int nextInt7 = new Random().nextInt();
                        Intent intent41 = f62809a;
                        l.c(intent41);
                        intent41.putExtras(bundle);
                        Intent intent42 = f62809a;
                        l.c(intent42);
                        intent42.putExtra("pt_current_position", 0);
                        Intent intent43 = f62809a;
                        l.c(intent43);
                        intent43.putExtra("notificationId", i);
                        Intent intent44 = f62809a;
                        l.c(intent44);
                        ArrayList<String> arrayList = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList);
                        intent44.putExtra("pt_buy_now_dl", arrayList.get(0));
                        Intent intent45 = f62809a;
                        l.c(intent45);
                        return PendingIntent.getBroadcast(context, nextInt7, intent45, 67108864);
                    case 22:
                        int nextInt8 = new Random().nextInt();
                        Intent intent46 = f62809a;
                        l.c(intent46);
                        intent46.putExtras(bundle);
                        Intent intent47 = f62809a;
                        l.c(intent47);
                        intent47.putExtra("pt_current_position", 1);
                        Intent intent48 = f62809a;
                        l.c(intent48);
                        intent48.putExtra("notificationId", i);
                        Intent intent49 = f62809a;
                        l.c(intent49);
                        ArrayList<String> arrayList2 = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList2);
                        intent49.putExtra("pt_buy_now_dl", arrayList2.get(1));
                        Intent intent50 = f62809a;
                        l.c(intent50);
                        return PendingIntent.getBroadcast(context, nextInt8, intent50, 67108864);
                    case 23:
                        int nextInt9 = new Random().nextInt();
                        Intent intent51 = f62809a;
                        l.c(intent51);
                        intent51.putExtras(bundle);
                        Intent intent52 = f62809a;
                        l.c(intent52);
                        intent52.putExtra("pt_current_position", 2);
                        Intent intent53 = f62809a;
                        l.c(intent53);
                        intent53.putExtra("notificationId", i);
                        Intent intent54 = f62809a;
                        l.c(intent54);
                        ArrayList<String> arrayList3 = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList3);
                        intent54.putExtra("pt_buy_now_dl", arrayList3.get(2));
                        Intent intent55 = f62809a;
                        l.c(intent55);
                        return PendingIntent.getBroadcast(context, nextInt9, intent55, 67108864);
                    case 24:
                        ArrayList<String> arrayList4 = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList4);
                        bundle.putString("wzrk_dl", arrayList4.get(0));
                        return m7943d(context, i, bundle, f62809a);
                    case 25:
                        ArrayList<String> arrayList5 = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList5);
                        bundle.putString("wzrk_dl", arrayList5.get(1));
                        return m7943d(context, i, bundle, f62809a);
                    case 26:
                        ArrayList<String> arrayList6 = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList6);
                        bundle.putString("wzrk_dl", arrayList6.get(2));
                        return m7943d(context, i, bundle, f62809a);
                    case 27:
                        Intent intent56 = f62809a;
                        l.c(intent56);
                        intent56.putExtra("img1", true);
                        Intent intent57 = f62809a;
                        l.c(intent57);
                        intent57.putExtra("notificationId", i);
                        Intent intent58 = f62809a;
                        l.c(intent58);
                        ArrayList<String> arrayList7 = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList7);
                        intent58.putExtra("pt_buy_now_dl", arrayList7.get(0));
                        Intent intent59 = f62809a;
                        l.c(intent59);
                        intent59.putExtra("buynow", true);
                        Intent intent60 = f62809a;
                        l.c(intent60);
                        intent60.putExtra(DTBMetricsConfiguration.CONFIG_DIR, c22675d == null ? null : c22675d.f62760S);
                        Intent intent61 = f62809a;
                        l.c(intent61);
                        intent61.putExtras(bundle);
                        int nextInt10 = new Random().nextInt();
                        Intent intent62 = f62809a;
                        l.c(intent62);
                        return PendingIntent.getBroadcast(context, nextInt10, intent62, 67108864);
                    case 28:
                        return m7944c(context, bundle, new Intent(context, PushTemplateReceiver.class));
                    case 32:
                        ArrayList<String> arrayList8 = c22675d == null ? null : c22675d.f62773l;
                        l.c(arrayList8);
                        if (arrayList8.size() > 0) {
                            ArrayList<String> arrayList9 = c22675d == null ? null : c22675d.f62773l;
                            l.c(arrayList9);
                            bundle.putString("wzrk_dl", arrayList9.get(0));
                        }
                        Intent intent63 = f62809a;
                        l.c(intent63);
                        intent63.putExtra("pt_input_feedback", c22675d == null ? null : c22675d.f62786y);
                        Intent intent64 = f62809a;
                        l.c(intent64);
                        intent64.putExtra("pt_input_auto_open", c22675d == null ? null : c22675d.f62787z);
                        Intent intent65 = f62809a;
                        l.c(intent65);
                        intent65.putExtra(DTBMetricsConfiguration.CONFIG_DIR, c22675d == null ? null : c22675d.f62760S);
                        if ((c22675d == null ? null : c22675d.f62773l) != null) {
                            pendingIntent2 = m7943d(context, i, bundle, f62809a);
                        } else {
                            bundle.putString("wzrk_dl", null);
                            pendingIntent2 = m7943d(context, i, bundle, f62809a);
                        }
                        return pendingIntent2;
                    default:
                        throw new IllegalArgumentException("invalid pendingIntentType");
                }
        }
        if ((c22675d == null ? null : c22675d.f62773l) != null) {
            ArrayList<String> arrayList10 = c22675d.f62773l;
            l.c(arrayList10);
            if (arrayList10.size() > 0) {
                ArrayList<String> arrayList11 = c22675d.f62773l;
                l.c(arrayList11);
                bundle.putString("wzrk_dl", arrayList11.get(0));
                pendingIntent = m7943d(context, i, bundle, f62809a);
                return pendingIntent;
            }
        }
        if (bundle.get("wzrk_dl") == null) {
            bundle.putString("wzrk_dl", null);
        }
        pendingIntent = m7943d(context, i, bundle, f62809a);
        return pendingIntent;
    }

    /* renamed from: c */
    public static final PendingIntent m7944c(Context context, Bundle bundle, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        l.e(intent, "intent");
        intent.putExtras(bundle);
        intent.putExtra("pt_dismiss_intent", true);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, (int) System.currentTimeMillis(), intent, Build.VERSION.SDK_INT >= 31 ? 301989888 : 268435456);
        l.d(broadcast, "getBroadcast(\n          …chPendingIntent\n        )");
        return broadcast;
    }

    /* renamed from: d */
    public static final PendingIntent m7943d(Context context, int i, Bundle bundle, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        Object obj = bundle.get("wzrk_dl");
        bundle.putInt("notificationId", i);
        if (obj != null) {
            bundle.putBoolean("default_dl", true);
        }
        if (intent == null) {
            PendingIntent m2404V = C26232y.m2404V(bundle, context);
            l.d(m2404V, "getActivityIntent(extras, context)");
            return m2404V;
        }
        intent.putExtras(bundle);
        intent.removeExtra("wzrk_acts");
        intent.putExtra("wzrk_from", "CTPushNotificationReceiver");
        intent.setFlags(872415232);
        int i2 = 134217728;
        if (Build.VERSION.SDK_INT >= 31) {
            i2 = 167772160;
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(context, (int) System.currentTimeMillis(), intent, i2);
        l.d(broadcast, "getBroadcast(\n          …ndingIntent\n            )");
        return broadcast;
    }
}
