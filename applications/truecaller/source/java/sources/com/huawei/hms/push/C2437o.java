package com.huawei.hms.push;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.api.push.TransActivity;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.o */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/o.class */
public class C2437o {

    /* renamed from: a */
    public static int f7765a;

    /* renamed from: a */
    public static Notification m37283a(Context context, C2433k c2433k, int[] iArr) {
        Notification.Builder builder = new Notification.Builder(context);
        if (C2435m.m37290a(c2433k) == EnumC2436n.STYLE_BIGTEXT) {
            C2435m.m37291a(builder, c2433k.m37320g(), c2433k);
        }
        C2434l.m37294a(context, builder, c2433k);
        m37277b(c2433k, builder);
        m37273d(c2433k, builder);
        m37284a(context, c2433k, builder);
        m37288a(builder);
        m37280a(c2433k, builder);
        m37275c(c2433k, builder);
        builder.setContentIntent(m37276c(context, c2433k, iArr));
        builder.setDeleteIntent(m37278b(context, c2433k, iArr));
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setChannelId("HwPushChannelID");
        }
        m37279b(context, builder, c2433k);
        m37287a(context, builder, c2433k);
        return builder.build();
    }

    /* renamed from: a */
    public static Intent m37282a(Context context, C2433k c2433k, int[] iArr, String str, int i) {
        Intent intent = new Intent("com.huawei.intent.action.PUSH_DELAY_NOTIFY");
        intent.putExtra("selfshow_info", c2433k.m37307o()).putExtra("selfshow_token", c2433k.m37297y()).putExtra("selfshow_event_id", str).putExtra("selfshow_notify_id", iArr[0]).putExtra("selfshow_auto_clear_id", iArr[3]).setPackage(context.getPackageName()).setFlags(i);
        return intent;
    }

    /* renamed from: a */
    public static void m37288a(Notification.Builder builder) {
        builder.setShowWhen(true);
        builder.setWhen(System.currentTimeMillis());
    }

    /* renamed from: a */
    public static void m37287a(Context context, Notification.Builder builder, C2433k c2433k) {
        if (HwBuildEx.VERSION.EMUI_SDK_INT < 11 || !C2439q.m37267a(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        String m37312k = c2433k.m37312k();
        HMSLog.m37193i("PushSelfShowLog", "the package name of notification is:" + m37312k);
        if (!TextUtils.isEmpty(m37312k)) {
            String m37263a = C2439q.m37263a(context, m37312k);
            HMSLog.m37193i("PushSelfShowLog", "the app name is:" + m37263a);
            if (m37263a != null) {
                bundle.putCharSequence("android.extraAppName", m37263a);
            }
        }
        builder.setExtras(bundle);
    }

    /* renamed from: a */
    public static void m37286a(Context context, Intent intent, long j, int i) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("enter setDelayAlarm(interval:");
            sb.append(j);
            sb.append("ms.");
            HMSLog.m37198d("PushSelfShowLog", sb.toString());
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            if (alarmManager == null) {
                return;
            }
            alarmManager.set(0, System.currentTimeMillis() + j, PendingIntent.getBroadcast(context, i, intent, C2439q.m37260b()));
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("set DelayAlarm error.");
            m8728C.append(e.toString());
            HMSLog.m37192w("PushSelfShowLog", m8728C.toString());
        }
    }

    /* renamed from: a */
    public static void m37285a(Context context, C2433k c2433k) {
        int i;
        int i2;
        int i3;
        int i4;
        synchronized (C2437o.class) {
            if (context != null) {
                try {
                    if (!m37281a(c2433k)) {
                        HMSLog.m37198d("PushSelfShowLog", "showNotification, the msg id = " + c2433k.m37306p());
                        if (f7765a == 0) {
                            f7765a = (context.getPackageName() + System.currentTimeMillis()).hashCode();
                        }
                        if (TextUtils.isEmpty(c2433k.m37310l())) {
                            String m37305q = c2433k.m37305q();
                            if (!TextUtils.isEmpty(m37305q)) {
                                int hashCode = m37305q.hashCode();
                                c2433k.m37333a(hashCode);
                                HMSLog.m37198d("PushSelfShowLog", "notification msgTag = " + hashCode);
                            }
                            if (c2433k.m37303s() != -1) {
                                i3 = c2433k.m37303s();
                                i2 = (c2433k.m37312k() + System.currentTimeMillis()).hashCode();
                                i = i2 + 1;
                                i4 = (c2433k.m37303s() + c2433k.m37312k() + context.getPackageName()).hashCode();
                            } else {
                                i3 = f7765a + 1;
                                f7765a = i3;
                                i2 = i3 + 1;
                                f7765a = i2;
                                i = i2 + 1;
                                f7765a = i;
                                i4 = i + 1;
                                f7765a = i4;
                            }
                        } else {
                            i3 = (c2433k.m37310l() + c2433k.m37312k()).hashCode();
                            i2 = f7765a + 1;
                            f7765a = i2;
                            i = i2 + 1;
                            f7765a = i;
                            i4 = (c2433k.m37310l() + c2433k.m37312k() + context.getPackageName()).hashCode();
                        }
                        HMSLog.m37198d("PushSelfShowLog", "notifyId:" + i3 + ",openNotifyId:" + i2 + ",delNotifyId:" + i + ",alarmNotifyId:" + i4);
                        int[] iArr = new int[4];
                        iArr[0] = i3;
                        iArr[1] = i2;
                        iArr[2] = i;
                        if (c2433k.m37322f() <= 0) {
                            i4 = 0;
                        }
                        iArr[3] = i4;
                        Notification notification = null;
                        if (C2439q.m37254e()) {
                            notification = m37283a(context, c2433k, iArr);
                        }
                        NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
                        if (notificationManager != null && notification != null) {
                            if (Build.VERSION.SDK_INT >= 26) {
                                notificationManager.createNotificationChannel(new NotificationChannel("HwPushChannelID", context.getString(ResourceLoaderUtil.getStringId("hms_push_channel")), 3));
                            }
                            notificationManager.notify(i3, notification);
                            m37274d(context, c2433k, iArr);
                            C2427e.m37350a(context, c2433k.m37306p(), c2433k.m37330b(), "100");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public static void m37284a(Context context, C2433k c2433k, Notification.Builder builder) {
        Bitmap m37293a = C2434l.m37293a(context, c2433k);
        if (m37293a != null) {
            builder.setLargeIcon(m37293a);
        }
    }

    /* renamed from: a */
    public static void m37280a(C2433k c2433k, Notification.Builder builder) {
        boolean z = true;
        if (c2433k.m37324e() != 1) {
            z = false;
        }
        builder.setAutoCancel(z);
        builder.setOngoing(false);
    }

    /* renamed from: a */
    public static boolean m37289a() {
        return Build.VERSION.SDK_INT >= 30;
    }

    /* renamed from: a */
    public static boolean m37281a(C2433k c2433k) {
        return c2433k == null || (TextUtils.isEmpty(c2433k.m37301u()) && TextUtils.isEmpty(c2433k.m37314j()));
    }

    /* renamed from: b */
    public static PendingIntent m37278b(Context context, C2433k c2433k, int[] iArr) {
        Intent m37282a = m37282a(context, c2433k, iArr, "2", 268435456);
        if (m37289a()) {
            m37282a.setClass(context, TransActivity.class);
            m37282a.setFlags(268468224);
            return PendingIntent.getActivity(context, iArr[2], m37282a, C2439q.m37260b());
        }
        return PendingIntent.getBroadcast(context, iArr[2], m37282a, C2439q.m37260b());
    }

    /* renamed from: b */
    public static void m37279b(Context context, Notification.Builder builder, C2433k c2433k) {
        if ("com.huawei.android.pushagent".equals(context.getPackageName())) {
            Bundle bundle = new Bundle();
            String m37312k = c2433k.m37312k();
            if (TextUtils.isEmpty(m37312k)) {
                return;
            }
            bundle.putString("hw_origin_sender_package_name", m37312k);
            builder.setExtras(bundle);
        }
    }

    /* renamed from: b */
    public static void m37277b(C2433k c2433k, Notification.Builder builder) {
        String m37302t = c2433k.m37302t();
        if (!TextUtils.isEmpty(m37302t)) {
            builder.setSubText(m37302t);
        }
    }

    /* renamed from: c */
    public static PendingIntent m37276c(Context context, C2433k c2433k, int[] iArr) {
        Intent m37282a = m37282a(context, c2433k, iArr, "1", 268435456);
        if (m37289a()) {
            m37282a.setClass(context, TransActivity.class);
            m37282a.setFlags(268468224);
            return PendingIntent.getActivity(context, iArr[1], m37282a, C2439q.m37260b());
        }
        return PendingIntent.getBroadcast(context, iArr[1], m37282a, C2439q.m37260b());
    }

    /* renamed from: c */
    public static void m37275c(C2433k c2433k, Notification.Builder builder) {
        builder.setTicker(c2433k.m37298x());
    }

    /* renamed from: d */
    public static void m37274d(Context context, C2433k c2433k, int[] iArr) {
        StringBuilder m8728C = C22128a.m8728C("setAutoClear time is: ");
        m8728C.append(c2433k.m37322f());
        HMSLog.m37193i("PushSelfShowLog", m8728C.toString());
        if (c2433k.m37322f() <= 0) {
            return;
        }
        m37286a(context, m37282a(context, c2433k, iArr, "-1", 32), c2433k.m37322f(), iArr[3]);
    }

    /* renamed from: d */
    public static void m37273d(C2433k c2433k, Notification.Builder builder) {
        String m37301u = c2433k.m37301u();
        String m37314j = c2433k.m37314j();
        if (TextUtils.isEmpty(m37314j)) {
            builder.setContentText(m37301u);
            return;
        }
        builder.setContentText(m37314j);
        if (TextUtils.isEmpty(m37301u)) {
            return;
        }
        builder.setContentTitle(m37301u);
    }
}
