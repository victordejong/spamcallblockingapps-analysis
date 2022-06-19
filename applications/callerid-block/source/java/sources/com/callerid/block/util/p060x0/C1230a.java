package com.callerid.block.util.p060x0;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.telecom.TelecomManager;
import androidx.core.content.C0265a;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.mvc.controller.GuideNotifiPerActivity;
import com.callerid.block.service.NLService;
import com.callerid.block.util.C1227w;
import com.hjq.permissions.C2686d;
/* renamed from: com.callerid.block.util.x0.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/x0/a.class */
public class C1230a {

    /* renamed from: a */
    private static final String[] f5085a = {"android.permission.CAMERA"};

    /* renamed from: b */
    private static final String[] f5086b = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: c */
    public static final String[] f5087c = {"android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECEIVE_MMS"};

    /* renamed from: d */
    private static String[] f5088d = {"android.permission.READ_PHONE_STATE", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS", "android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECEIVE_MMS"};

    /* renamed from: e */
    private static String[] f5089e = {"android.permission.READ_PHONE_STATE", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.ANSWER_PHONE_CALLS", "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS", "android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECEIVE_MMS"};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.util.x0.a$e */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/x0/a$e.class */
    public static final class RunnableC1231e implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f5090b;

        RunnableC1231e(Context context) {
            this.f5090b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f5090b, GuideNotifiPerActivity.class);
            intent.addFlags(268435456);
            this.f5090b.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.util.x0.a$f */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/x0/a$f.class */
    public static final class RunnableC1232f implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f5091b;

        RunnableC1232f(Context context) {
            this.f5091b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f5091b, GuideNotifiPerActivity.class);
            intent.addFlags(268435456);
            this.f5091b.startActivity(intent);
        }
    }

    /* renamed from: com.callerid.block.util.x0.a$g */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/x0/a$g.class */
    public interface AbstractC1233g {
        /* renamed from: a */
        void m9502a();
    }

    /* renamed from: a */
    public static boolean m9515a(Context context) {
        return Build.VERSION.SDK_INT >= 26 && m9508h(context);
    }

    /* renamed from: b */
    public static boolean m9514b(Context context, String str) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 23) {
            z = C0265a.m13556a(context, str) == 0;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m9513c(Context context) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 23) {
            z = m9514b(context, "android.permission.READ_CONTACTS") && m9514b(context, "android.permission.WRITE_CONTACTS") && m9514b(context, "android.permission.GET_ACCOUNTS");
        }
        return z;
    }

    /* renamed from: d */
    public static boolean m9512d(Context context) {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i >= 23) {
            if (i >= 28) {
                return m9514b(context, "android.permission.CALL_PHONE") && m9514b(context, "android.permission.READ_PHONE_STATE") && m9514b(context, "android.permission.READ_CALL_LOG") && m9514b(context, "android.permission.ANSWER_PHONE_CALLS") && m9514b(context, "android.permission.PROCESS_OUTGOING_CALLS");
            }
            z = m9514b(context, "android.permission.CALL_PHONE") && m9514b(context, "android.permission.READ_PHONE_STATE") && m9514b(context, "android.permission.READ_CALL_LOG") && m9514b(context, "android.permission.PROCESS_OUTGOING_CALLS");
        }
        return z;
    }

    /* renamed from: e */
    public static void m9511e(Context context) {
        try {
            new Handler().postDelayed(new RunnableC1231e(context), 500L);
            Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            try {
                new Handler().postDelayed(new RunnableC1232f(context), 500L);
                Intent intent2 = new Intent();
                intent2.addFlags(268435456);
                intent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$NotificationAccessSettingsActivity"));
                intent2.putExtra(":settings:show_fragment", "NotificationAccessSettings");
                context.startActivity(intent2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: f */
    public static boolean m9510f() {
        return Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(EZCallApplication.m10163c());
    }

    /* renamed from: g */
    public static boolean m9509g(Context context) {
        TelecomManager telecomManager;
        try {
            if (Build.VERSION.SDK_INT < 23 || (telecomManager = (TelecomManager) context.getSystemService("telecom")) == null) {
                return false;
            }
            String defaultDialerPackage = telecomManager.getDefaultDialerPackage();
            if (C1227w.f5084a) {
                C1227w.m9527a("default_dialer", "name:" + defaultDialerPackage);
            }
            return defaultDialerPackage.equals(context.getPackageName());
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: h */
    public static boolean m9508h(Context context) {
        String packageName = context.getPackageName();
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        return string != null ? string.contains(packageName) : false;
    }

    /* renamed from: i */
    public static void m9507i(Activity activity, AbstractC1233g abstractC1233g) {
        if (activity != null) {
            C2686d m2149d = C2686d.m2149d(activity);
            m2149d.m2151b(f5085a);
            m2149d.m2150c(new b(abstractC1233g, activity));
        }
    }

    /* renamed from: j */
    public static void m9506j(Activity activity, AbstractC1233g abstractC1233g) {
        if (activity != null) {
            C2686d m2149d = C2686d.m2149d(activity);
            m2149d.m2151b(Build.VERSION.SDK_INT >= 28 ? f5089e : f5088d);
            m2149d.m2150c(new a(abstractC1233g, activity));
        }
    }

    /* renamed from: k */
    public static void m9505k(Activity activity, AbstractC1233g abstractC1233g) {
        if (activity != null) {
            C2686d m2149d = C2686d.m2149d(activity);
            m2149d.m2151b(f5087c);
            m2149d.m2150c(new d(abstractC1233g, activity));
        }
    }

    /* renamed from: l */
    public static void m9504l(Activity activity, AbstractC1233g abstractC1233g) {
        if (activity != null) {
            C2686d m2149d = C2686d.m2149d(activity);
            m2149d.m2151b(f5086b);
            m2149d.m2150c(new c(abstractC1233g, activity));
        }
    }

    /* renamed from: m */
    public static void m9503m(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.setComponentEnabledSetting(new ComponentName(context, NLService.class), 2, 1);
            packageManager.setComponentEnabledSetting(new ComponentName(context, NLService.class), 1, 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
