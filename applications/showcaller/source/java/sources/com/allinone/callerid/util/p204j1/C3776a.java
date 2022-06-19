package com.allinone.callerid.util.p204j1;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.C0586a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity;
import com.allinone.callerid.util.C3718c0;
import com.hjq.permissions.AbstractC9334a;
import com.hjq.permissions.C9337d;
import java.util.List;
/* renamed from: com.allinone.callerid.util.j1.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a.class */
public class C3776a {

    /* renamed from: a */
    private static final String[] f12018a = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.PROCESS_OUTGOING_CALLS"};

    /* renamed from: b */
    private static final String[] f12019b = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.ANSWER_PHONE_CALLS", "android.permission.PROCESS_OUTGOING_CALLS"};

    /* renamed from: c */
    private static final String[] f12020c = {"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS"};

    /* renamed from: d */
    public static final String[] f12021d = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: e */
    private static String[] f12022e = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS"};

    /* renamed from: f */
    private static String[] f12023f = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.ANSWER_PHONE_CALLS", "android.permission.READ_CALL_LOG", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS"};

    /* renamed from: g */
    private static String[] f12024g = {"android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a$a.class */
    public class C3777a implements AbstractC9334a {

        /* renamed from: a */
        final /* synthetic */ AbstractC3783g f12025a;

        /* renamed from: b */
        final /* synthetic */ Activity f12026b;

        C3777a(AbstractC3783g abstractC3783g, Activity activity) {
            this.f12025a = abstractC3783g;
            this.f12026b = activity;
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: a */
        public void mo1067a(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "quick:" + z + " denied:" + list.toString());
            }
            if (z) {
                if (!list.contains("android.permission.READ_PHONE_STATE") && !list.contains("android.permission.CALL_PHONE") && !list.contains("android.permission.READ_CALL_LOG") && !list.contains("android.permission.PROCESS_OUTGOING_CALLS") && !list.contains("android.permission.READ_CONTACTS") && !list.contains("android.permission.WRITE_CONTACTS") && !list.contains("android.permission.GET_ACCOUNTS")) {
                    return;
                }
                C9337d.m1044a(this.f12026b);
            }
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: b */
        public void mo1066b(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "granted:" + list.toString());
            }
            if (z) {
                this.f12025a.mo23968a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a$b.class */
    public class C3778b implements AbstractC9334a {

        /* renamed from: a */
        final /* synthetic */ AbstractC3783g f12027a;

        /* renamed from: b */
        final /* synthetic */ Activity f12028b;

        C3778b(AbstractC3783g abstractC3783g, Activity activity) {
            this.f12027a = abstractC3783g;
            this.f12028b = activity;
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: a */
        public void mo1067a(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "quick:" + z + " denied:" + list.toString());
            }
            if (z) {
                C9337d.m1044a(this.f12028b);
            }
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: b */
        public void mo1066b(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "granted:" + list.toString());
            }
            if (z) {
                this.f12027a.mo23968a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a$c.class */
    public class C3779c implements AbstractC9334a {

        /* renamed from: a */
        final /* synthetic */ AbstractC3783g f12029a;

        /* renamed from: b */
        final /* synthetic */ Activity f12030b;

        C3779c(AbstractC3783g abstractC3783g, Activity activity) {
            this.f12029a = abstractC3783g;
            this.f12030b = activity;
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: a */
        public void mo1067a(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "quick:" + z + " denied:" + list.toString());
            }
            if (z) {
                C9337d.m1044a(this.f12030b);
            }
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: b */
        public void mo1066b(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "granted:" + list.toString());
            }
            if (z) {
                this.f12029a.mo23968a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a$d.class */
    public class C3780d implements AbstractC9334a {

        /* renamed from: a */
        final /* synthetic */ AbstractC3783g f12031a;

        /* renamed from: b */
        final /* synthetic */ Activity f12032b;

        C3780d(AbstractC3783g abstractC3783g, Activity activity) {
            this.f12031a = abstractC3783g;
            this.f12032b = activity;
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: a */
        public void mo1067a(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "quick:" + z + " denied:" + list.toString());
            }
            if (z) {
                if (!list.contains("android.permission.RECORD_AUDIO") && !list.contains("android.permission.READ_EXTERNAL_STORAGE") && !list.contains("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    return;
                }
                C9337d.m1044a(this.f12032b);
            }
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: b */
        public void mo1066b(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "granted:" + list.toString());
            }
            if (z) {
                this.f12031a.mo23968a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.a$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a$e.class */
    public class C3781e implements AbstractC9334a {

        /* renamed from: a */
        final /* synthetic */ AbstractC3783g f12033a;

        /* renamed from: b */
        final /* synthetic */ Activity f12034b;

        C3781e(AbstractC3783g abstractC3783g, Activity activity) {
            this.f12033a = abstractC3783g;
            this.f12034b = activity;
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: a */
        public void mo1067a(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "quick:" + z + " denied:" + list.toString());
            }
            if (z) {
                if (!list.contains("android.permission.READ_EXTERNAL_STORAGE") && !list.contains("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    return;
                }
                C9337d.m1044a(this.f12034b);
            }
        }

        @Override // com.hjq.permissions.AbstractC9334a
        /* renamed from: b */
        public void mo1066b(List<String> list, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "granted:" + list.toString());
            }
            if (z) {
                this.f12033a.mo23968a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.j1.a$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a$f.class */
    public class RunnableC3782f implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12035d;

        RunnableC3782f(Context context) {
            this.f12035d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f12035d, OverlayGuideActivity.class);
            intent.addFlags(268435456);
            this.f12035d.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.util.j1.a$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j1/a$g.class */
    public interface AbstractC3783g {
        /* renamed from: a */
        void mo23968a();
    }

    /* renamed from: a */
    public static boolean m24164a(Context context) {
        return m24157h() && m24159f(context) && m24155j() && m24154k(context);
    }

    /* renamed from: b */
    public static boolean m24163b(Context context) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 23) {
            z = m24162c(context, "android.permission.RECORD_AUDIO") && m24162c(context, "android.permission.READ_EXTERNAL_STORAGE") && m24162c(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m24162c(Context context, String str) {
        return C0586a.m33353a(context, str) == 0;
    }

    /* renamed from: d */
    public static boolean m24161d(Context context) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 23) {
            z = m24162c(context, "android.permission.READ_CONTACTS") && m24162c(context, "android.permission.WRITE_CONTACTS") && m24162c(context, "android.permission.GET_ACCOUNTS");
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m24160e(Context context) {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i >= 23) {
            if (i >= 28) {
                return m24162c(context, "android.permission.CALL_PHONE") && m24162c(context, "android.permission.READ_PHONE_STATE") && m24162c(context, "android.permission.READ_CALL_LOG") && m24162c(context, "android.permission.ANSWER_PHONE_CALLS") && m24162c(context, "android.permission.PROCESS_OUTGOING_CALLS");
            }
            z = m24162c(context, "android.permission.CALL_PHONE") && m24162c(context, "android.permission.READ_PHONE_STATE") && m24162c(context, "android.permission.READ_CALL_LOG") && m24162c(context, "android.permission.PROCESS_OUTGOING_CALLS");
        }
        return z;
    }

    /* renamed from: f */
    public static boolean m24159f(Context context) {
        return m24162c(context, "android.permission.READ_EXTERNAL_STORAGE") && m24162c(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* renamed from: g */
    public static boolean m24158g(Context context) {
        for (AccessibilityServiceInfo accessibilityServiceInfo : ((AccessibilityManager) context.getSystemService("accessibility")).getEnabledAccessibilityServiceList(-1)) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "info:" + accessibilityServiceInfo.getId());
            }
            if (accessibilityServiceInfo.getId().contains("com.allinone.callerid/.service.MyAccessibilityService")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public static boolean m24157h() {
        return Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(EZCallApplication.m26146c());
    }

    /* renamed from: i */
    public static boolean m24156i(Context context) {
        TelecomManager telecomManager;
        try {
            if (Build.VERSION.SDK_INT < 23 || (telecomManager = (TelecomManager) context.getSystemService("telecom")) == null) {
                return false;
            }
            String defaultDialerPackage = telecomManager.getDefaultDialerPackage();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("default_dialer", "name:" + defaultDialerPackage);
            }
            return defaultDialerPackage.equals(context.getPackageName());
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: j */
    public static boolean m24155j() {
        return Build.VERSION.SDK_INT < 21 || m24153l();
    }

    /* renamed from: k */
    public static boolean m24154k(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.System.canWrite(context);
        }
        return true;
    }

    /* renamed from: l */
    public static boolean m24153l() {
        String packageName = EZCallApplication.m26146c().getPackageName();
        String string = Settings.Secure.getString(EZCallApplication.m26146c().getContentResolver(), "enabled_notification_listeners");
        return string != null ? string.contains(packageName) : false;
    }

    /* renamed from: m */
    public static void m24152m(Activity activity, AbstractC3783g abstractC3783g) {
        if (activity != null) {
            try {
                C9337d.m1041d(activity).m1043b(f12020c).m1042c(new C3779c(abstractC3783g, activity));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: n */
    public static void m24151n(Activity activity, AbstractC3783g abstractC3783g) {
        if (activity != null) {
            try {
                C9337d.m1041d(activity).m1043b(f12024g).m1042c(new C3780d(abstractC3783g, activity));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: o */
    public static void m24150o(Activity activity, AbstractC3783g abstractC3783g) {
        if (activity != null) {
            try {
                C9337d.m1041d(activity).m1043b(Build.VERSION.SDK_INT >= 28 ? f12023f : f12022e).m1042c(new C3777a(abstractC3783g, activity));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: p */
    public static void m24149p(Context context) {
        try {
            if (Build.VERSION.SDK_INT < 23) {
                return;
            }
            new Handler().postDelayed(new RunnableC3782f(context), 500L);
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: q */
    public static void m24148q(Activity activity, AbstractC3783g abstractC3783g) {
        if (activity != null) {
            try {
                C9337d.m1041d(activity).m1043b(Build.VERSION.SDK_INT >= 28 ? f12019b : f12018a).m1042c(new C3778b(abstractC3783g, activity));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: r */
    public static void m24147r(Activity activity, AbstractC3783g abstractC3783g) {
        if (activity != null) {
            try {
                C9337d.m1041d(activity).m1043b(f12021d).m1042c(new C3781e(abstractC3783g, activity));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: s */
    public static void m24146s(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent.setData(Uri.parse("package:" + context.getPackageName()));
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }
}
