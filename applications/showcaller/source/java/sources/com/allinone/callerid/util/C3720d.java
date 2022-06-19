package com.allinone.callerid.util;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.C0565h;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$mipmap;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.BlockCall;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.EZDialerActivity;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity;
import com.allinone.callerid.p157f.C2621b;
import com.allinone.callerid.service.MultiJobService;
/* renamed from: com.allinone.callerid.util.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/d.class */
public class C3720d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/d$a.class */
    public class RunnableC3721a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f11915d;

        /* renamed from: e */
        final /* synthetic */ long f11916e;

        RunnableC3721a(String str, long j) {
            this.f11915d = str;
            this.f11916e = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C3711a1.m24632H2(Boolean.TRUE);
                BlockCall blockCall = new BlockCall();
                blockCall.setNumber(this.f11915d);
                blockCall.setTime(this.f11916e);
                C2621b.m27023a().m27021c(blockCall);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/d$b.class */
    public class RunnableC3722b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f11917d;

        RunnableC3722b(Context context) {
            this.f11917d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 21) {
                String m24662A0 = C3711a1.m24662A0();
                long m24570Y = C3711a1.m24570Y();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wakeapp", "date:" + m24662A0 + " time:" + C3771i.m24206d(m24570Y));
                }
                m24662A0.hashCode();
                if (m24662A0.equals("3")) {
                    if (System.currentTimeMillis() - m24570Y <= 259200000) {
                        return;
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wakeapp", "date:" + m24662A0 + " show");
                    }
                    this.f11917d.startService(new Intent(this.f11917d, MultiJobService.class));
                    C3711a1.m24649D1(System.currentTimeMillis());
                    C3711a1.m24529i2("7");
                } else if (!m24662A0.equals("7") || System.currentTimeMillis() - m24570Y <= 604800000) {
                } else {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wakeapp", "date:" + m24662A0 + " show");
                    }
                    this.f11917d.startService(new Intent(this.f11917d, MultiJobService.class));
                    C3711a1.m24649D1(System.currentTimeMillis());
                    C3711a1.m24529i2("3");
                }
            }
        }
    }

    /* renamed from: a */
    public static void m24429a(Context context) {
        try {
            if (C3767h1.m24228q0()) {
                return;
            }
            C3810q.m24071b().m24070c("wakeapp_noti");
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent(context, MainActivity.class);
            intent.putExtra("launchapp", true);
            PendingIntent activity = PendingIntent.getActivity(context, 1, intent, 201326592);
            C0565h.C0574e c0574e = new C0565h.C0574e(context, "Showcaller");
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                    c0574e.m33423g("com.allinone.callerid_notfication_N");
                }
            }
            c0574e.m33419k(context.getResources().getString(R$string.notifi_launch_title)).m33420j(context.getResources().getString(R$string.notifi_launch_content)).m33421i(activity).m33405y("Showcaller").m33430B(System.currentTimeMillis()).m33410t(0).m33411s(false).m33424f(true);
            try {
                if (i >= 21) {
                    try {
                        context.getDrawable(R$drawable.msg_icon);
                        c0574e.m33408v(R$drawable.msg_icon);
                        c0574e.m33422h(context.getResources().getColor(2131099706));
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                } else {
                    c0574e.m33408v(R$drawable.ic_launcher24);
                    c0574e.m33415o(BitmapFactory.decodeResource(context.getResources(), R$mipmap.ic_launcher));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (notificationManager == null) {
                return;
            }
            notificationManager.notify(66, c0574e.m33428b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @TargetApi(23)
    /* renamed from: b */
    public static void m24428b(Context context) {
        try {
            if (C3767h1.m24228q0()) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
            intent.setFlags(268435456);
            Intent intent2 = new Intent(context, OverlayGuideActivity.class);
            intent2.putExtra("open_notifi", true);
            intent2.addFlags(268435456);
            PendingIntent activities = PendingIntent.getActivities(context, 1, new Intent[]{intent, intent2}, 201326592);
            C0565h.C0574e c0574e = new C0565h.C0574e(context, "Showcaller");
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                    c0574e.m33423g("com.allinone.callerid_notfication_N");
                }
            }
            c0574e.m33419k(context.getResources().getString(R$string.notifi_per_title)).m33420j(context.getResources().getString(R$string.notifi_per_content)).m33421i(activities).m33405y("Showcaller").m33430B(System.currentTimeMillis()).m33410t(0).m33411s(false).m33424f(true);
            try {
                if (i >= 21) {
                    try {
                        context.getDrawable(R$drawable.msg_icon);
                        c0574e.m33408v(R$drawable.msg_icon);
                        c0574e.m33422h(context.getResources().getColor(2131099706));
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                } else {
                    c0574e.m33408v(R$drawable.ic_launcher24);
                    c0574e.m33415o(BitmapFactory.decodeResource(context.getResources(), R$mipmap.ic_launcher));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (notificationManager == null) {
                return;
            }
            notificationManager.notify(77, c0574e.m33428b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m24427c(Context context) {
        try {
            C3772i0.m24190a().f12015b.execute(new RunnableC3722b(context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m24426d(Context context) {
        try {
            String string = context.getResources().getString(R$string.shortcut_dialer);
            Intent intent = new Intent(context, EZDialerActivity.class);
            intent.putExtra("shortcutdial", true);
            Intent intent2 = new Intent();
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent2.putExtra("android.intent.extra.shortcut.NAME", string);
            intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, R$drawable.ic_short_cut_call));
            intent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
            context.sendBroadcast(intent2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static String m24425e() {
        return EZCallApplication.m26146c().getResources().getString(R$string.myreportlist);
    }

    /* renamed from: f */
    public static String m24424f() {
        return EZCallApplication.m26146c().getResources().getString(R$string.reportlist);
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x0348 A[Catch: Exception -> 0x035d, TRY_ENTER, TryCatch #0 {Exception -> 0x035d, blocks: (B:20:0x0096, B:22:0x009c, B:23:0x00f0, B:23:0x00f0, B:24:0x00f3, B:25:0x00f8, B:27:0x012f, B:31:0x013e, B:35:0x014d, B:39:0x015c, B:43:0x016b, B:57:0x0195, B:62:0x01a9, B:63:0x01b2, B:68:0x01c6, B:69:0x01cf, B:74:0x01e3, B:75:0x01ec, B:80:0x0200, B:81:0x0209, B:86:0x021d, B:87:0x0226, B:92:0x023a, B:93:0x0243, B:98:0x0257, B:99:0x0260, B:104:0x0274, B:105:0x027d, B:110:0x0291, B:111:0x029a, B:116:0x02ae, B:119:0x02bf, B:121:0x02cb, B:122:0x02d4, B:124:0x02e0, B:127:0x02f1, B:130:0x0302, B:132:0x030e, B:133:0x0317, B:135:0x0323, B:138:0x0334, B:139:0x033d, B:140:0x0348, B:142:0x0354), top: B:147:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009c A[Catch: Exception -> 0x035d, TryCatch #0 {Exception -> 0x035d, blocks: (B:20:0x0096, B:22:0x009c, B:23:0x00f0, B:23:0x00f0, B:24:0x00f3, B:25:0x00f8, B:27:0x012f, B:31:0x013e, B:35:0x014d, B:39:0x015c, B:43:0x016b, B:57:0x0195, B:62:0x01a9, B:63:0x01b2, B:68:0x01c6, B:69:0x01cf, B:74:0x01e3, B:75:0x01ec, B:80:0x0200, B:81:0x0209, B:86:0x021d, B:87:0x0226, B:92:0x023a, B:93:0x0243, B:98:0x0257, B:99:0x0260, B:104:0x0274, B:105:0x027d, B:110:0x0291, B:111:0x029a, B:116:0x02ae, B:119:0x02bf, B:121:0x02cb, B:122:0x02d4, B:124:0x02e0, B:127:0x02f1, B:130:0x0302, B:132:0x030e, B:133:0x0317, B:135:0x0323, B:138:0x0334, B:139:0x033d, B:140:0x0348, B:142:0x0354), top: B:147:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x012f A[Catch: Exception -> 0x035d, TRY_ENTER, TryCatch #0 {Exception -> 0x035d, blocks: (B:20:0x0096, B:22:0x009c, B:23:0x00f0, B:23:0x00f0, B:24:0x00f3, B:25:0x00f8, B:27:0x012f, B:31:0x013e, B:35:0x014d, B:39:0x015c, B:43:0x016b, B:57:0x0195, B:62:0x01a9, B:63:0x01b2, B:68:0x01c6, B:69:0x01cf, B:74:0x01e3, B:75:0x01ec, B:80:0x0200, B:81:0x0209, B:86:0x021d, B:87:0x0226, B:92:0x023a, B:93:0x0243, B:98:0x0257, B:99:0x0260, B:104:0x0274, B:105:0x027d, B:110:0x0291, B:111:0x029a, B:116:0x02ae, B:119:0x02bf, B:121:0x02cb, B:122:0x02d4, B:124:0x02e0, B:127:0x02f1, B:130:0x0302, B:132:0x030e, B:133:0x0317, B:135:0x0323, B:138:0x0334, B:139:0x033d, B:140:0x0348, B:142:0x0354), top: B:147:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013e A[Catch: Exception -> 0x035d, TRY_ENTER, TryCatch #0 {Exception -> 0x035d, blocks: (B:20:0x0096, B:22:0x009c, B:23:0x00f0, B:23:0x00f0, B:24:0x00f3, B:25:0x00f8, B:27:0x012f, B:31:0x013e, B:35:0x014d, B:39:0x015c, B:43:0x016b, B:57:0x0195, B:62:0x01a9, B:63:0x01b2, B:68:0x01c6, B:69:0x01cf, B:74:0x01e3, B:75:0x01ec, B:80:0x0200, B:81:0x0209, B:86:0x021d, B:87:0x0226, B:92:0x023a, B:93:0x0243, B:98:0x0257, B:99:0x0260, B:104:0x0274, B:105:0x027d, B:110:0x0291, B:111:0x029a, B:116:0x02ae, B:119:0x02bf, B:121:0x02cb, B:122:0x02d4, B:124:0x02e0, B:127:0x02f1, B:130:0x0302, B:132:0x030e, B:133:0x0317, B:135:0x0323, B:138:0x0334, B:139:0x033d, B:140:0x0348, B:142:0x0354), top: B:147:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014d A[Catch: Exception -> 0x035d, TRY_ENTER, TryCatch #0 {Exception -> 0x035d, blocks: (B:20:0x0096, B:22:0x009c, B:23:0x00f0, B:23:0x00f0, B:24:0x00f3, B:25:0x00f8, B:27:0x012f, B:31:0x013e, B:35:0x014d, B:39:0x015c, B:43:0x016b, B:57:0x0195, B:62:0x01a9, B:63:0x01b2, B:68:0x01c6, B:69:0x01cf, B:74:0x01e3, B:75:0x01ec, B:80:0x0200, B:81:0x0209, B:86:0x021d, B:87:0x0226, B:92:0x023a, B:93:0x0243, B:98:0x0257, B:99:0x0260, B:104:0x0274, B:105:0x027d, B:110:0x0291, B:111:0x029a, B:116:0x02ae, B:119:0x02bf, B:121:0x02cb, B:122:0x02d4, B:124:0x02e0, B:127:0x02f1, B:130:0x0302, B:132:0x030e, B:133:0x0317, B:135:0x0323, B:138:0x0334, B:139:0x033d, B:140:0x0348, B:142:0x0354), top: B:147:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015c A[Catch: Exception -> 0x035d, TRY_ENTER, TryCatch #0 {Exception -> 0x035d, blocks: (B:20:0x0096, B:22:0x009c, B:23:0x00f0, B:23:0x00f0, B:24:0x00f3, B:25:0x00f8, B:27:0x012f, B:31:0x013e, B:35:0x014d, B:39:0x015c, B:43:0x016b, B:57:0x0195, B:62:0x01a9, B:63:0x01b2, B:68:0x01c6, B:69:0x01cf, B:74:0x01e3, B:75:0x01ec, B:80:0x0200, B:81:0x0209, B:86:0x021d, B:87:0x0226, B:92:0x023a, B:93:0x0243, B:98:0x0257, B:99:0x0260, B:104:0x0274, B:105:0x027d, B:110:0x0291, B:111:0x029a, B:116:0x02ae, B:119:0x02bf, B:121:0x02cb, B:122:0x02d4, B:124:0x02e0, B:127:0x02f1, B:130:0x0302, B:132:0x030e, B:133:0x0317, B:135:0x0323, B:138:0x0334, B:139:0x033d, B:140:0x0348, B:142:0x0354), top: B:147:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016b A[Catch: Exception -> 0x035d, TRY_ENTER, TryCatch #0 {Exception -> 0x035d, blocks: (B:20:0x0096, B:22:0x009c, B:23:0x00f0, B:23:0x00f0, B:24:0x00f3, B:25:0x00f8, B:27:0x012f, B:31:0x013e, B:35:0x014d, B:39:0x015c, B:43:0x016b, B:57:0x0195, B:62:0x01a9, B:63:0x01b2, B:68:0x01c6, B:69:0x01cf, B:74:0x01e3, B:75:0x01ec, B:80:0x0200, B:81:0x0209, B:86:0x021d, B:87:0x0226, B:92:0x023a, B:93:0x0243, B:98:0x0257, B:99:0x0260, B:104:0x0274, B:105:0x027d, B:110:0x0291, B:111:0x029a, B:116:0x02ae, B:119:0x02bf, B:121:0x02cb, B:122:0x02d4, B:124:0x02e0, B:127:0x02f1, B:130:0x0302, B:132:0x030e, B:133:0x0317, B:135:0x0323, B:138:0x0334, B:139:0x033d, B:140:0x0348, B:142:0x0354), top: B:147:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x017e  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m24423g(android.content.Context r3) {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.util.C3720d.m24423g(android.content.Context):void");
    }

    /* renamed from: h */
    public static void m24422h(String str, long j) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3721a(str, j));
    }
}
