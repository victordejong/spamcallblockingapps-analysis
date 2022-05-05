package p459j.p460a.p582w0;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import android.view.View;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.role.RoleManagerCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.MDialogActivity;
import gogolook.callgogolook2.intro.DrawOverAppPermissionMediumActivity;
import gogolook.callgogolook2.intro.SystemAlertPermissionDialogActivity;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.service.SystemNotificationListenerService;
import gogolook.callgogolook2.setting.SettingsActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import p081h.p160h.p172b.p173a.C6292b;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p583a5.C13893c;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p596x.C14376j;
/* renamed from: j.a.w0.a3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/a3.class */
public class C13878a3 {

    /* renamed from: a */
    public static final String f31160a = "android.permission-group.SMS";

    /* renamed from: b */
    public static final String f31161b = "android.permission-group.PHONE";

    /* renamed from: c */
    public static final String f31162c = "android.permission-group.CONTACTS";

    /* renamed from: d */
    public static final String f31163d = "android.permission-group.LOCATION";

    /* renamed from: e */
    public static final String f31164e = "android.permission-group.CALL_LOG";

    /* renamed from: f */
    public static final List<C13883e> f31165f = m3214f();

    /* renamed from: g */
    public static final String[] f31166g = {"android.permission.ACCESS_COARSE_LOCATION"};

    /* renamed from: h */
    public static Hashtable<String, Integer> f31167h = new Hashtable<>();

    /* renamed from: j.a.w0.a3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a3$a.class */
    public static final class RunnableC13879a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f31168a;

        public RunnableC13879a(Context context) {
            this.f31168a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f31168a, SystemAlertPermissionDialogActivity.class);
            intent.putExtra("key.image", R$drawable.anim_sys_alert_permission);
            intent.putExtra("key.placeholder", R$drawable.sys_alert_permission);
            intent.putExtra("key.message", C14206w4.m2225a((int) R$string.datasaver_tutorial));
            intent.putExtra("key.positive.btn.text", C14206w4.m2225a((int) R$string.intro_cover_permission_confirm));
            intent.setFlags(1350598656);
            C14300r.m1653a("SystemAlertPermissionDialog", intent);
            this.f31168a.startActivity(intent);
        }
    }

    /* renamed from: j.a.w0.a3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a3$b.class */
    public static final class RunnableC13880b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f31169a;

        /* renamed from: b */
        public final /* synthetic */ Bundle f31170b;

        /* renamed from: c */
        public final /* synthetic */ String f31171c;

        public RunnableC13880b(Context context, Bundle bundle, String str) {
            this.f31169a = context;
            this.f31170b = bundle;
            this.f31171c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f31169a, SystemAlertPermissionDialogActivity.class);
            intent.putExtras(this.f31170b);
            intent.setFlags(1350598656);
            C14300r.m1653a("SystemAlertPermissionDialog", intent);
            this.f31169a.startActivity(intent);
            C14261f.m1979a(C14261f.EnumC14265d.a_Cover_Permission_View, "page", this.f31171c);
        }
    }

    /* renamed from: j.a.w0.a3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a3$c.class */
    public static final class RunnableC13881c implements Runnable {

        /* renamed from: a */
        public long f31172a = System.currentTimeMillis();

        /* renamed from: b */
        public final /* synthetic */ int f31173b;

        /* renamed from: c */
        public final /* synthetic */ String f31174c;

        /* renamed from: d */
        public final /* synthetic */ Context f31175d;

        /* renamed from: e */
        public final /* synthetic */ Context f31176e;

        /* renamed from: f */
        public final /* synthetic */ Handler f31177f;

        public RunnableC13881c(int i, String str, Context context, Context context2, Handler handler) {
            this.f31173b = i;
            this.f31174c = str;
            this.f31175d = context;
            this.f31176e = context2;
            this.f31177f = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C13878a3.m3230b(this.f31173b)) {
                Intent intent = null;
                int i = this.f31173b;
                if (i == 1) {
                    C14261f.m1979a(C14261f.EnumC14265d.a_Cover_Permission_Activate, "page", this.f31174c);
                    if (C14217x3.m2107z()) {
                        Intent d = C13878a3.m3218d(this.f31176e);
                        intent = d;
                        if (this.f31176e instanceof SettingsActivity) {
                            d.putExtra("intent_show_successful_activated", true);
                            intent = d;
                        }
                    } else if (!C13915b3.m3062a("has_started_iap_promo_activity", false)) {
                        intent = C14376j.m1460a(this.f31175d, false, false);
                        intent.setFlags(268484608);
                    }
                } else if (i == 2) {
                    intent = C13878a3.m3218d(this.f31176e);
                }
                if (intent != null) {
                    C14217x3.m2156c(this.f31175d, intent);
                }
            } else if (System.currentTimeMillis() - this.f31172a < 30000) {
                this.f31177f.postDelayed(this, 100L);
            }
        }
    }

    /* renamed from: j.a.w0.a3$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a3$d.class */
    public static final class RunnableC13882d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f31178a;

        /* renamed from: b */
        public final /* synthetic */ int f31179b;

        /* renamed from: c */
        public final /* synthetic */ int f31180c;

        public RunnableC13882d(Context context, int i, int i2) {
            this.f31178a = context;
            this.f31179b = i;
            this.f31180c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent flags = new Intent(this.f31178a, MDialogActivity.class).putExtra("message", this.f31178a.getString(this.f31179b)).putExtra("positive", this.f31178a.getString(this.f31180c)).setFlags(1350598656);
            C14300r.m1653a("MDialogActivity", flags);
            C14217x3.m2156c(this.f31178a, flags);
        }
    }

    /* renamed from: j.a.w0.a3$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a3$e.class */
    public static class C13883e {

        /* renamed from: a */
        public String f31181a;

        /* renamed from: b */
        public String[] f31182b;

        public C13883e(@NonNull String str, @NonNull List<String> list) {
            this(str, (String[]) list.toArray(new String[list.size()]));
        }

        public C13883e(@NonNull String str, @NonNull String[] strArr) {
            this.f31181a = str;
            this.f31182b = strArr;
        }
    }

    static {
        C14017g4.m2803u();
        C14017g4.m2803u();
        C14017g4.m2803u();
        C14017g4.m2803u();
        C14017g4.m2800x();
    }

    @TargetApi(23)
    /* renamed from: A */
    public static boolean m3261A() {
        PowerManager powerManager;
        if (!C14017g4.m2803u() || (powerManager = (PowerManager) MyApplication.m29013o().getSystemService("power")) == null) {
            return true;
        }
        return powerManager.isIgnoringBatteryOptimizations(MyApplication.m29013o().getPackageName());
    }

    /* renamed from: B */
    public static boolean m3260B() {
        long a = C13915b3.m3065a("suggested_setting_location_permission_start_countdown_date", 0L);
        if (a <= 0) {
            return false;
        }
        long b = C13640c.m3745d().m3748b("calllog_setting_location_period") * 1000;
        boolean z = false;
        if (b > 0) {
            z = false;
            if (System.currentTimeMillis() > a + b) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: C */
    public static boolean m3259C() {
        PowerManager powerManager;
        if (!C14017g4.m2805s() || (powerManager = (PowerManager) MyApplication.m29013o().getSystemService("power")) == null) {
            return false;
        }
        return powerManager.isPowerSaveMode();
    }

    /* renamed from: D */
    public static boolean m3258D() {
        boolean z = false;
        if (C14017g4.m2803u()) {
            z = false;
            if (C14320y3.m1584l()) {
                z = false;
                if (!C13915b3.m3062a("battery_optimization_checked", false)) {
                    z = false;
                    if (!m3261A()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: E */
    public static boolean m3257E() {
        return C13963d3.m2961j() || !m3197u() || m3258D() || m3255G() || m3256F();
    }

    /* renamed from: F */
    public static boolean m3256F() {
        if ((C14217x3.m2207A() || !C14217x3.m2107z()) && !C13978e.f31386a.m9462a("onboarding_default_caller_id_checked", (Boolean) false) && CallUtils.m26531m()) {
            return true;
        }
        C13978e.f31386a.m9459a("onboarding_default_caller_id_checked", (String) true);
        return false;
    }

    /* renamed from: G */
    public static boolean m3255G() {
        if ((C14217x3.m2207A() || !C14217x3.m2107z()) && !C13978e.f31386a.m9462a("onboarding_default_phone_checked", (Boolean) false) && CallUtils.m26530n()) {
            return true;
        }
        C13978e.f31386a.m9459a("onboarding_default_phone_checked", (String) true);
        return false;
    }

    /* renamed from: H */
    public static boolean m3254H() {
        return C6298e.m23357a() && C13893c.m3125c();
    }

    /* renamed from: I */
    public static boolean m3253I() {
        return C13891a.m3145q() && !m3206l();
    }

    /* renamed from: J */
    public static boolean m3252J() {
        boolean z = false;
        boolean a = C13915b3.m3062a("has_granted_location_permission_before", false);
        boolean z2 = C13640c.m3745d().m3748b("calllog_setting_location_show") == 0;
        if (!m3261A() || m3193y() || ((!m3203o() && !m3260B() && (!a || z2)) || CallUtils.m26530n() || CallUtils.m26531m() || C12810o.m5231n())) {
            z = true;
        }
        return z;
    }

    /* renamed from: K */
    public static boolean m3251K() {
        return C13640c.m3745d().m3753a("skip_google_policy");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @StringRes
    /* renamed from: a */
    public static int m3234a(@NonNull String str, String str2) {
        char c;
        char c2;
        switch (str.hashCode()) {
            case -1666346033:
                if (str.equals("android.settings.SETTINGS")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1032304111:
                if (str.equals("android.settings.MANAGE_APPLICATIONS_SETTINGS")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -317451912:
                if (str.equals("android.settings.WIRELESS_SETTINGS")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1286407172:
                if (str.equals("android.settings.MANAGE_DEFAULT_APPS_SETTINGS")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            int hashCode = str2.hashCode();
            if (hashCode == -1309649439) {
                c2 = 65535;
                if (str2.equals(RoleManagerCompat.ROLE_CALL_SCREENING)) {
                    c2 = 2;
                }
            } else if (hashCode == 443215373) {
                c2 = 65535;
                if (str2.equals(RoleManagerCompat.ROLE_SMS)) {
                    c2 = 1;
                }
            } else if (hashCode != 666116809) {
                c2 = 65535;
            } else {
                c2 = 65535;
                if (str2.equals(RoleManagerCompat.ROLE_DIALER)) {
                    c2 = 0;
                }
            }
            if (c2 == 0) {
                return R$string.setting_phone_default_app_revert_dialog_settings_2;
            }
            if (c2 == 1) {
                return R$string.setting_SMS_default_app_revert_dialog_settings_2;
            }
            if (c2 != 2) {
                return 0;
            }
            return R$string.setting_default_caller_id_app_revert_dialog_settings;
        } else if (c != 1) {
            if (c == 2) {
                return RoleManagerCompat.ROLE_DIALER.equals(str2) ? R$string.setting_phone_default_app_revert_dialog_settings_generalsetting : R$string.setting_SMS_default_app_revert_dialog_settings_generalsetting;
            } else if (c != 3) {
                return 0;
            } else {
                return R$string.setting_SMS_default_app_revert_dialog_settings_2_api_19_22;
            }
        } else if (C13892b.m3136b()) {
            return RoleManagerCompat.ROLE_DIALER.equals(str2) ? R$string.setting_phone_default_app_revert_dialog_settings_implicit : R$string.setting_SMS_default_app_revert_dialog_settings_implicit;
        } else {
            return RoleManagerCompat.ROLE_DIALER.equals(str2) ? R$string.setting_phone_default_app_revert_dialog_settings_1b : R$string.setting_SMS_default_app_revert_dialog_settings_1b;
        }
    }

    @RequiresApi(api = 23)
    /* renamed from: a */
    public static Intent m3237a(Context context, boolean z) {
        Intent intent;
        boolean H = m3254H();
        if (C14017g4.m2798z()) {
            intent = new Intent("android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS");
            intent.putExtra("android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME", new ComponentName(context, SystemNotificationListenerService.class).flattenToString());
        } else {
            intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
        }
        if (context instanceof Activity) {
            intent.setFlags(1073741824);
        } else {
            intent.setFlags(268468224);
        }
        Bundle bundle = new Bundle();
        int i = R$drawable.image_notification_permission;
        bundle.putInt("key.image", H ? R$drawable.image_notification_permission : R$drawable.image_no_disturb_mode_01);
        if (!H) {
            i = R$drawable.image_no_disturb_mode_01;
        }
        bundle.putInt("key.placeholder", i);
        bundle.putString("key.title", C14206w4.m2225a(H ? R$string.allow_notification_listener_service_title : R$string.setting_navigation_on_no_ced));
        bundle.putString("key.message", C14206w4.m2225a(H ? R$string.allow_notification_listener_service_content : R$string.notification_access_permission_dialog_content));
        bundle.putString("key.positive.btn.text", C14206w4.m2225a((int) R$string.notification_access_permission_dialog_confirm));
        if (z) {
            m3239a(context, bundle, 2);
        }
        return intent;
    }

    /* renamed from: a */
    public static Intent m3235a(String str) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + str));
        return intent;
    }

    /* renamed from: a */
    public static List<C13883e> m3233a(boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add("android.permission.READ_CALL_LOG");
        arrayList3.add("android.permission.PROCESS_OUTGOING_CALLS");
        if (z2) {
            arrayList.add(new C13883e(f31164e, arrayList3));
        }
        arrayList2.add("android.permission.READ_PHONE_STATE");
        if (z) {
            arrayList2.add("android.permission.CALL_PHONE");
            if (!z2) {
                arrayList2.addAll(arrayList3);
            }
        }
        arrayList.add(new C13883e(f31161b, arrayList2));
        return arrayList;
    }

    /* renamed from: a */
    public static void m3248a(Activity activity) {
        Intent a = m3235a(activity.getPackageName());
        a.addCategory("android.intent.category.DEFAULT");
        a.addFlags(1073741824);
        a.addFlags(8388608);
        activity.startActivity(a);
    }

    /* renamed from: a */
    public static void m3247a(Activity activity, int i) {
        if (C14217x3.m2196a(activity)) {
            m3245a(activity, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, i);
        }
    }

    @TargetApi(23)
    /* renamed from: a */
    public static void m3245a(Activity activity, String[] strArr, int i) {
        if (strArr.length != 0) {
            ActivityCompat.requestPermissions(activity, strArr, i);
        }
    }

    /* renamed from: a */
    public static void m3242a(Context context, int i) {
        if (C14017g4.m2803u()) {
            try {
                Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS", Uri.parse("package:" + context.getPackageName()));
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, intent, i, null);
                } else {
                    intent.setFlags(268435456);
                    context.startActivity(intent);
                }
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m3241a(Context context, @StringRes int i, @StringRes int i2) {
        new Handler().postDelayed(new RunnableC13882d(context, i, i2), 1000L);
    }

    /* renamed from: a */
    public static void m3240a(Context context, Intent intent) {
        PendingIntent a = C14217x3.m2188a(context, intent, 1985);
        String a2 = C14206w4.m2225a((int) R$string.notification_permission_dialog_title);
        String a3 = C14206w4.m2225a((int) R$string.notification_permission_dialog_content);
        ((NotificationManager) context.getSystemService("notification")).notify(1985, C14173t4.m2305a(C14173t4.m2307a(context).setContentTitle(a2).setContentText(a3).setContentIntent(a).setTicker(a2).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(a3)).setDefaults(2).setAutoCancel(true).setPriority(1)));
    }

    /* renamed from: a */
    public static void m3239a(@NonNull Context context, @NonNull Bundle bundle, int i) {
        String str = context instanceof SettingsActivity ? "Setting " : context instanceof MainActivity ? "Notification" : "Intro";
        Handler handler = new Handler();
        Context o = MyApplication.m29013o();
        handler.postDelayed(new RunnableC13880b(o, bundle, str), 1000L);
        handler.postDelayed(new RunnableC13881c(i, str, o, context, handler), 100L);
    }

    /* renamed from: a */
    public static void m3238a(Context context, String str, int i) {
        Intent b = C6292b.m23379b(context, str);
        if (b != null && b.getAction() != null) {
            if (context instanceof Activity) {
                C14191v.m2261a((Activity) context, b, i, null);
            } else {
                C14217x3.m2156c(context, b);
            }
            int a = m3234a(b.getAction(), str);
            if (a != 0) {
                m3241a(MyApplication.m29013o(), a, (int) R$string.got_it);
            }
        }
    }

    /* renamed from: a */
    public static boolean m3250a() {
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.canDrawOverlays(MyApplication.m29013o());
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m3246a(Activity activity, String[] strArr) {
        if (strArr.length == 0) {
            return false;
        }
        boolean z = true;
        for (String str : strArr) {
            z &= ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
        }
        return !z;
    }

    /* renamed from: a */
    public static boolean m3244a(Dialog dialog) {
        if (!m3250a()) {
            return false;
        }
        try {
            dialog.show();
            return true;
        } catch (SecurityException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m3236a(WindowManager windowManager, View view, WindowManager.LayoutParams layoutParams) {
        if (!m3250a()) {
            return false;
        }
        try {
            windowManager.addView(view, layoutParams);
            return true;
        } catch (WindowManager.BadTokenException e) {
            C14080m2.m2613a("addSystemAlertView", e, true);
            return false;
        } catch (SecurityException e2) {
            C14080m2.m2613a("addSystemAlertView", e2, true);
            return false;
        }
    }

    /* renamed from: a */
    public static String[] m3232a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (!m3217d(str)) {
                arrayList.add(str);
            }
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        return strArr2;
    }

    @RequiresApi(api = 23)
    /* renamed from: b */
    public static Intent m3227b(Context context) {
        int i;
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + MyApplication.m29013o().getPackageName()));
        intent.setFlags(32768);
        Bundle bundle = new Bundle();
        if (C14017g4.m2798z()) {
            i = R$string.intro_cover_permission_content_11;
            bundle.putInt("key.dialog.type", 1);
            bundle.putString("key.lottie.file.name", "anim_draw_over.json");
        } else {
            i = R$string.intro_cover_permission_content;
            bundle.putInt("key.image", R$drawable.anim_sys_alert_permission);
            bundle.putInt("key.placeholder", R$drawable.sys_alert_permission);
        }
        bundle.putString("key.message", C14206w4.m2225a(i));
        bundle.putString("key.positive.btn.text", C14206w4.m2225a((int) R$string.intro_cover_permission_confirm));
        m3239a(context, bundle, 1);
        return intent;
    }

    /* renamed from: b */
    public static String m3226b(String str) {
        return f31160a.equals(str) ? C14206w4.m2225a((int) R$string.permission_guide_read_sms) : f31161b.equals(str) ? C14206w4.m2225a((int) R$string.permission_guide_read_phone_state) : f31162c.equals(str) ? C14206w4.m2225a((int) R$string.permission_guide_read_contact) : f31163d.equals(str) ? C14206w4.m2225a((int) R$string.setting_location_content) : f31164e.equals(str) ? C14206w4.m2225a((int) R$string.permission_allow_call_logs) : "";
    }

    /* renamed from: b */
    public static boolean m3231b() {
        return !AdStatusController.m28827c().m28831a() || Boolean.parseBoolean(C13640c.m3745d().m3744d("suggest_settings_on_calllog"));
    }

    /* renamed from: b */
    public static boolean m3230b(int i) {
        if (i == 1) {
            return m3250a();
        }
        if (i != 2) {
            return false;
        }
        return m3215e(MyApplication.m29013o());
    }

    /* renamed from: b */
    public static boolean m3229b(Activity activity) {
        return m3246a(activity, new String[]{"android.permission.ACCESS_FINE_LOCATION"});
    }

    /* renamed from: b */
    public static boolean m3228b(Activity activity, String[] strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(activity, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m3225b(String[] strArr) {
        for (String str : strArr) {
            if (!m3217d(str)) {
                return false;
            }
        }
        return true;
    }

    @TargetApi(23)
    /* renamed from: c */
    public static Intent m3222c(Context context) {
        Intent intent = new Intent(context, DrawOverAppPermissionMediumActivity.class);
        intent.setFlags(1409286144);
        return intent;
    }

    /* renamed from: c */
    public static String m3221c(String str) {
        return f31160a.equals(str) ? C14206w4.m2225a((int) R$string.permission_deny_sms) : f31161b.equals(str) ? C14206w4.m2225a((int) R$string.permission_deny_phone) : f31162c.equals(str) ? C14206w4.m2225a((int) R$string.permission_deny_contact) : f31163d.equals(str) ? C14206w4.m2225a((int) R$string.permission_deny_location) : f31164e.equals(str) ? C14206w4.m2225a((int) R$string.permission_deny_call_logs_description) : C14206w4.m2225a((int) R$string.permission_intro_desc);
    }

    /* renamed from: c */
    public static boolean m3223c(Activity activity) {
        return m3246a(activity, new String[]{"android.permission.ACCESS_COARSE_LOCATION"});
    }

    /* renamed from: c */
    public static String[] m3224c() {
        ArrayList arrayList = new ArrayList();
        for (C13883e eVar : m3216e()) {
            String[] strArr = eVar.f31182b;
            if (strArr.length > 0) {
                arrayList.addAll(Arrays.asList(m3232a(strArr)));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: d */
    public static Intent m3220d() {
        Intent intent;
        if (!C14217x3.m2107z()) {
            intent = new Intent(MyApplication.m29013o(), MainActivity.class);
        } else if (!C13915b3.m3059b("isNumberTransmissionAccepted")) {
            intent = new Intent(MyApplication.m29013o(), MainActivity.class);
            intent.putExtra("forceShowNumberTransmissionAccepted", true);
        } else if (!m3250a()) {
            intent = new Intent(MyApplication.m29013o(), DrawOverAppPermissionMediumActivity.class);
            intent.setFlags(1073741824);
        } else {
            intent = null;
        }
        if (intent != null) {
            intent.addFlags(335544320);
        }
        return intent;
    }

    /* renamed from: d */
    public static Intent m3218d(Context context) {
        Intent intent;
        if (context instanceof SettingsActivity) {
            intent = new Intent(MyApplication.m29013o(), SettingsActivity.class);
            intent.setFlags(872431616);
        } else if (context instanceof SettingResultActivity) {
            intent = new Intent(MyApplication.m29013o(), SettingResultActivity.class);
            intent.setFlags(872415232);
            C14300r.m1653a("SettingResultActivity", intent);
        } else {
            intent = new Intent(MyApplication.m29013o(), MainActivity.class);
            intent.setFlags(335560704);
        }
        return intent;
    }

    /* renamed from: d */
    public static boolean m3219d(Activity activity) {
        return m3246a(activity, new String[]{"android.permission.READ_EXTERNAL_STORAGE"});
    }

    @TargetApi(23)
    /* renamed from: d */
    public static boolean m3217d(String str) {
        boolean z = true;
        if (C14017g4.m2803u()) {
            if (!f31167h.containsKey(str) || f31167h.get(str).intValue() == -1) {
                f31167h.put(str, Integer.valueOf(MyApplication.m29013o().checkSelfPermission(str)));
            }
            z = f31167h.get(str).intValue() == 0;
        }
        return z;
    }

    /* renamed from: e */
    public static List<C13883e> m3216e() {
        ArrayList arrayList = new ArrayList();
        for (C13883e eVar : f31165f) {
            String[] a = m3232a(eVar.f31182b);
            if (a != null && a.length > 0) {
                arrayList.add(new C13883e(eVar.f31181a, a));
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public static boolean m3215e(Context context) {
        String packageName = context.getPackageName();
        for (String str : new ArrayList(NotificationManagerCompat.getEnabledListenerPackages(context))) {
            if (packageName.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public static List<C13883e> m3214f() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean a = C6298e.m23357a();
        boolean x = C14017g4.m2800x();
        arrayList.add(m3210h());
        arrayList.addAll(m3233a(a, x));
        arrayList2.add("android.permission.READ_CONTACTS");
        if (a) {
            arrayList2.add("android.permission.WRITE_CONTACTS");
            arrayList2.add("android.permission.GET_ACCOUNTS");
        }
        arrayList.add(new C13883e(f31162c, arrayList2));
        return arrayList;
    }

    @TargetApi(23)
    /* renamed from: f */
    public static void m3213f(Context context) {
        C14217x3.m2156c(context, m3227b(context));
    }

    @RequiresApi(24)
    /* renamed from: g */
    public static int m3212g() {
        ConnectivityManager connectivityManager = (ConnectivityManager) MyApplication.m29013o().getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager.getRestrictBackgroundStatus();
        }
        return 1;
    }

    /* renamed from: g */
    public static void m3211g(Context context) {
        if (C14017g4.m2802v()) {
            Intent intent = new Intent("android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS", Uri.parse("package:" + context.getPackageName()));
            intent.setFlags(32768);
            new Handler().postDelayed(new RunnableC13879a(context), 1000L);
            C14217x3.m2156c(context, intent);
        }
    }

    /* renamed from: h */
    public static C13883e m3210h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.READ_SMS");
        if (C6298e.m23357a()) {
            arrayList.add("android.permission.RECEIVE_SMS");
            arrayList.add("android.permission.RECEIVE_MMS");
            if (C12810o.m5230o()) {
                arrayList.add("android.permission.SEND_SMS");
            }
        }
        return new C13883e(f31160a, arrayList);
    }

    /* renamed from: i */
    public static boolean m3209i() {
        return C14217x3.m2107z() && C13915b3.m3059b("isNumberTransmissionAccepted") && m3250a();
    }

    /* renamed from: j */
    public static boolean m3208j() {
        return m3225b(m3210h().f31182b);
    }

    /* renamed from: k */
    public static boolean m3207k() {
        return m3217d("android.permission.READ_CALL_LOG");
    }

    /* renamed from: l */
    public static boolean m3206l() {
        return m3217d("android.permission.ACCESS_COARSE_LOCATION");
    }

    /* renamed from: m */
    public static boolean m3205m() {
        return m3217d("android.permission.READ_CONTACTS");
    }

    /* renamed from: n */
    public static boolean m3204n() {
        return m3217d("android.permission.ACCESS_FINE_LOCATION");
    }

    /* renamed from: o */
    public static boolean m3203o() {
        return m3217d("android.permission.ACCESS_COARSE_LOCATION") || m3217d("android.permission.ACCESS_FINE_LOCATION");
    }

    /* renamed from: p */
    public static boolean m3202p() {
        return m3217d("android.permission.READ_SMS");
    }

    /* renamed from: q */
    public static boolean m3201q() {
        return m3217d("android.permission.PROCESS_OUTGOING_CALLS");
    }

    /* renamed from: r */
    public static boolean m3200r() {
        return m3217d("android.permission.READ_PHONE_STATE");
    }

    /* renamed from: s */
    public static boolean m3199s() {
        return m3217d("android.permission.RECORD_AUDIO");
    }

    /* renamed from: t */
    public static boolean m3198t() {
        for (C13883e eVar : m3233a(C6298e.m23357a(), C14017g4.m2800x())) {
            if (!m3225b(eVar.f31182b)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: u */
    public static boolean m3197u() {
        for (C13883e eVar : f31165f) {
            String[] strArr = eVar.f31182b;
            if (strArr.length > 0 && !m3217d(strArr[0])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: v */
    public static boolean m3196v() {
        for (C13883e eVar : f31165f) {
            if (!m3225b(eVar.f31182b)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: w */
    public static boolean m3195w() {
        return m3217d("android.permission.READ_EXTERNAL_STORAGE");
    }

    /* renamed from: x */
    public static boolean m3194x() {
        return m3225b(new String[]{"android.permission.RECORD_AUDIO", "android.permission.CAMERA"});
    }

    /* renamed from: y */
    public static boolean m3193y() {
        return C14017g4.m2802v() && m3212g() == 3;
    }

    /* renamed from: z */
    public static boolean m3192z() {
        boolean z = true;
        if (!C14017g4.m2802v() || m3212g() == 1) {
            z = false;
        }
        return z;
    }
}
