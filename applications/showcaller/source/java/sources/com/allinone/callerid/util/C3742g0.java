package com.allinone.callerid.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.permission.AutoStartGuideActivity;
import com.allinone.callerid.util.p204j1.C3776a;
/* renamed from: com.allinone.callerid.util.g0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/g0.class */
public class C3742g0 {

    /* renamed from: a */
    C3775j0 f11924a;

    /* renamed from: com.allinone.callerid.util.g0$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/g0$a.class */
    public class RunnableC3743a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f11925d;

        RunnableC3743a(Context context) {
            C3742g0.this = r4;
            this.f11925d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f11925d, AutoStartGuideActivity.class);
            intent.addFlags(268435456);
            this.f11925d.startActivity(intent);
        }
    }

    /* renamed from: a */
    public static String m24356a() {
        return Build.MANUFACTURER;
    }

    /* renamed from: c */
    private void m24354c(Context context) {
        try {
            new Handler().postDelayed(new RunnableC3743a(context), 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public void m24355b(Context context) {
        Intent intent = new Intent();
        try {
            intent.addFlags(268435456);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("selfstarting", "******************当前手机型号为：" + m24356a());
            }
            ComponentName componentName = null;
            if (m24356a().equalsIgnoreCase("Xiaomi")) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("selfstarting", Build.VERSION.SDK_INT + "");
                }
                componentName = new ComponentName("com.miui.securitycenter", "com.miui.permcenter.autostart.AutoStartManagementActivity");
            } else if (m24356a().equalsIgnoreCase("samsung")) {
                componentName = ComponentName.unflattenFromString("com.samsung.android.sm/.app.dashboard.SmartManagerDashBoardActivity");
            } else if (m24356a().equalsIgnoreCase("HUAWEI")) {
                componentName = ComponentName.unflattenFromString("com.huawei.systemmanager/.startupmgr.ui.StartupNormalAppListActivity");
            } else {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("selfstarting", "APPLICATION_DETAILS_SETTINGS");
                }
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", context.getPackageName(), null));
            }
            intent.setComponent(componentName);
            context.startActivity(intent);
            if (m24356a().equalsIgnoreCase("Xiaomi") || m24356a().equalsIgnoreCase("HUAWEI")) {
                m24354c(context);
                C3810q.m24071b().m24070c("selfactivity_xiaomi_show");
            }
            if (!m24356a().equalsIgnoreCase("samsung")) {
                return;
            }
            C3810q.m24071b().m24070c("selfactivity_samsung_show");
            if (!C3776a.m24157h()) {
                return;
            }
            C3775j0 m24166b = C3775j0.m24166b();
            this.f11924a = m24166b;
            m24166b.m24167a(EZCallApplication.m26146c());
        } catch (Exception e) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("selfstarting", "出错啦" + e.getLocalizedMessage());
            }
            context.startActivity(new Intent("android.settings.SETTINGS"));
        }
    }
}
