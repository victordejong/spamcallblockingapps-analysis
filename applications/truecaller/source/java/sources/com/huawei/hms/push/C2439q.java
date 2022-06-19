package com.huawei.hms.push;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.q */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/q.class */
public class C2439q {
    /* renamed from: a */
    public static int m37268a() {
        return m37256d() ? 603979776 : 536870912;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: a */
    public static long m37261a(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        char c = 0;
        try {
            Date date = new Date();
            int hours = (date.getHours() * 2) + (date.getMinutes() / 30);
            String concat = str2.concat(str2);
            StringBuilder sb = new StringBuilder();
            sb.append("startIndex is ");
            sb.append(hours);
            sb.append(",ap is:");
            sb.append(concat);
            sb.append(",length is:");
            sb.append(concat.length());
            HMSLog.m37193i("PushSelfShowLog", sb.toString());
            int length = concat.length();
            for (int i = hours; i < length; i++) {
                if (concat.charAt(i) != '0') {
                    ?? minutes = (((i - hours) * 30) - (date.getMinutes() % 30)) * DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("startIndex is:");
                    sb2.append(hours);
                    sb2.append(" i is:");
                    sb2.append(i);
                    sb2.append(" delay:");
                    sb2.append((long) minutes);
                    HMSLog.m37198d("PushSelfShowLog", sb2.toString());
                    if (minutes >= 0) {
                        c = minutes;
                    }
                    return c;
                }
            }
            return 0L;
        } catch (Exception e) {
            HMSLog.m37194e("PushSelfShowLog", "error ", e);
            return 0L;
        }
    }

    /* renamed from: a */
    public static Boolean m37262a(Context context, String str, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (queryIntentActivities != null && queryIntentActivities.size() > 0) {
                int size = queryIntentActivities.size();
                for (int i = 0; i < size; i++) {
                    if (queryIntentActivities.get(i).activityInfo != null && str.equals(queryIntentActivities.get(i).activityInfo.applicationInfo.packageName)) {
                        return Boolean.TRUE;
                    }
                }
            }
        } catch (Exception e) {
            HMSLog.m37194e("PushSelfShowLog", e.toString(), e);
        }
        return Boolean.FALSE;
    }

    /* renamed from: a */
    public static String m37263a(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 128)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37193i("PushSelfShowLog", "get the app name of package:" + str + " failed.");
            return null;
        }
    }

    /* renamed from: a */
    public static void m37266a(Context context, int i) {
        if (context == null) {
            HMSLog.m37195e("PushSelfShowLog", "context is null");
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager == null) {
                return;
            }
            notificationManager.cancel(i);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("removeNotifiCationById err:");
            m8728C.append(e.toString());
            HMSLog.m37195e("PushSelfShowLog", m8728C.toString());
        }
    }

    /* renamed from: a */
    public static void m37265a(Context context, Intent intent) {
        try {
            int intExtra = intent.getIntExtra("selfshow_auto_clear_id", 0);
            StringBuilder sb = new StringBuilder();
            sb.append("setDelayAlarm(cancel) alarmNotityId ");
            sb.append(intExtra);
            HMSLog.m37198d("PushSelfShowLog", sb.toString());
            if (intExtra == 0) {
                return;
            }
            Intent intent2 = new Intent("com.huawei.intent.action.PUSH_DELAY_NOTIFY");
            intent2.setPackage(context.getPackageName()).setFlags(32);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            PendingIntent broadcast = PendingIntent.getBroadcast(context, intExtra, intent2, m37268a());
            if (broadcast == null || alarmManager == null) {
                HMSLog.m37198d("PushSelfShowLog", "alarm not exist");
            } else {
                HMSLog.m37198d("PushSelfShowLog", "alarm cancel");
                alarmManager.cancel(broadcast);
            }
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("cancelAlarm err:");
            m8728C.append(e.toString());
            HMSLog.m37195e("PushSelfShowLog", m8728C.toString());
        }
    }

    /* renamed from: a */
    public static void m37264a(Context context, Intent intent, long j) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("enter setAPDelayAlarm(interval:");
            sb.append(j);
            sb.append("ms.");
            HMSLog.m37198d("PushSelfShowLog", sb.toString());
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            if (alarmManager == null) {
                return;
            }
            alarmManager.set(0, System.currentTimeMillis() + j, PendingIntent.getBroadcast(context, (int) (System.currentTimeMillis() / 1000), intent, m37260b()));
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("set DelayAlarm error");
            m8728C.append(e.toString());
            HMSLog.m37192w("PushSelfShowLog", m8728C.toString());
        }
    }

    /* renamed from: a */
    public static boolean m37267a(Context context) {
        return "com.huawei.hwid".equals(context.getPackageName());
    }

    /* renamed from: b */
    public static int m37260b() {
        return m37258c() ? 67108864 : 134217728;
    }

    /* renamed from: b */
    public static Intent m37259b(Context context, String str) {
        Intent intent;
        try {
            intent = context.getPackageManager().getLaunchIntentForPackage(str);
        } catch (Exception e) {
            HMSLog.m37192w("PushSelfShowLog", str + " not have launch activity");
            intent = null;
        }
        return intent;
    }

    /* renamed from: c */
    public static boolean m37258c() {
        return true;
    }

    /* renamed from: c */
    public static boolean m37257c(Context context, String str) {
        if (context == null || str == null || "".equals(str)) {
            return false;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(str, 8192) == null) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" is installed");
            HMSLog.m37198d("PushSelfShowLog", sb.toString());
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m37256d() {
        return Build.VERSION.SDK_INT >= 30;
    }

    /* renamed from: d */
    public static boolean m37255d(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        context.getPackageManager().getPreferredActivities(arrayList, arrayList2, str);
        return arrayList2.size() > 0;
    }

    /* renamed from: e */
    public static void m37253e(Context context, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            HMSLog.m37193i("PushSelfShowLog", "url is null.");
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setFlags(402653184);
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            Iterator<ResolveInfo> it = queryIntentActivities.iterator();
            do {
                str2 = null;
                if (!it.hasNext()) {
                    break;
                }
                str2 = it.next().activityInfo.packageName;
            } while (!m37255d(context, str2));
            String str3 = str2;
            if (str2 == null) {
                Iterator<ResolveInfo> it2 = queryIntentActivities.iterator();
                do {
                    str3 = str2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    str3 = it2.next().activityInfo.packageName;
                } while (!"com.android.browser".equalsIgnoreCase(str3));
            }
            if (str3 != null) {
                intent.setPackage(str3);
            }
            context.startActivity(intent);
        } catch (Exception e) {
            C22128a.m8735A0(e, C22128a.m8728C("start browser activity failed, exception:"), "PushSelfShowLog");
        }
    }

    /* renamed from: e */
    public static boolean m37254e() {
        return true;
    }
}
