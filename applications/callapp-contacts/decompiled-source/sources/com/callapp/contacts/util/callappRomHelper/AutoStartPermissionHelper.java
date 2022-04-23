package com.callapp.contacts.util.callappRomHelper;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.util.Activities;
import com.mopub.exceptions.IntentNotResolvableException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u001d\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018�� F2\u00020\u0001:\u0001FB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00103\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00104\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00105\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00106\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00107\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00108\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00109\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u0010:\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u0010;\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u0018\u0010<\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102J\u0018\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u0004H\u0002J\u0006\u0010A\u001a\u00020.J\u0018\u0010B\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u0010C\u001a\u00020\u0004H\u0002J*\u0010D\u001a\u00020E2\u0006\u0010/\u001a\u0002002\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u00042\b\u00101\u001a\u0004\u0018\u000102H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006G"}, d2 = {"Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;", "", "()V", "BRAND_ASUS", "", "BRAND_HONOR", "BRAND_HUAWEI", "BRAND_LETV", "BRAND_NOKIA", "BRAND_ONE_PLUS", "BRAND_OPPO", "BRAND_SAMSUNG", "BRAND_VIVO", "BRAND_XIAOMI", "BRAND_XIAOMI_REDMI", "PACKAGES_TO_CHECK_FOR_PERMISSION", "", "PACKAGE_ASUS_COMPONENT", "PACKAGE_ASUS_COMPONENT_FALLBACK", "PACKAGE_ASUS_MAIN", "PACKAGE_HONOR_COMPONENT", "PACKAGE_HONOR_MAIN", "PACKAGE_HUAWEI_COMPONENT", "PACKAGE_HUAWEI_COMPONENT_FALLBACK", "PACKAGE_HUAWEI_MAIN", "PACKAGE_LETV_COMPONENT", "PACKAGE_LETV_MAIN", "PACKAGE_NOKIA_COMPONENT", "PACKAGE_NOKIA_MAIN", "PACKAGE_ONE_PLUS_COMPONENT", "PACKAGE_ONE_PLUS_MAIN", "PACKAGE_OPPO_COMPONENT", "PACKAGE_OPPO_COMPONENT_FALLBACK", "PACKAGE_OPPO_COMPONENT_FALLBACK_A", "PACKAGE_OPPO_FALLBACK", "PACKAGE_OPPO_MAIN", "PACKAGE_SAMSUNG_COMPONENT", "PACKAGE_SAMSUNG_MAIN", "PACKAGE_VIVO_COMPONENT", "PACKAGE_VIVO_COMPONENT_FALLBACK", "PACKAGE_VIVO_COMPONENT_FALLBACK_A", "PACKAGE_VIVO_FALLBACK", "PACKAGE_VIVO_MAIN", "PACKAGE_XIAOMI_COMPONENT", "PACKAGE_XIAOMI_MAIN", "autoStartAsus", "", "context", "Landroid/content/Context;", "activityResult", "Lcom/callapp/contacts/manager/popup/ActivityResult;", "autoStartHonor", "autoStartHuawei", "autoStartLetv", "autoStartNokia", "autoStartOnePlus", "autoStartOppo", "autoStartSamsung", "autoStartVivo", "autoStartXiaomi", "getAutoStartPermission", "getIntent", "Landroid/content/Intent;", "packageName", "componentName", "isAutoStartPermissionAvailable", "isPackageExists", "targetPackage", "startIntent", "", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper.class */
public final class AutoStartPermissionHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f16172a = new Companion(null);
    private final String A;
    private final String B;
    private final String C;
    private final String D;
    private final String E;
    private final String F;
    private final String G;
    private final String H;
    private final String I;
    private final String J;
    private final String K;
    private final String L;
    private final String M;
    private final String N;
    private final List<String> O;

    /* renamed from: b  reason: collision with root package name */
    private final String f16173b;

    /* renamed from: c  reason: collision with root package name */
    private final String f16174c;

    /* renamed from: d  reason: collision with root package name */
    private final String f16175d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final String o;
    private final String p;
    private final String q;
    private final String r;
    private final String s;
    private final String t;
    private final String u;
    private final String v;
    private final String w;
    private final String x;
    private final String y;
    private final String z;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;", "", "()V", "getInstance", "Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AutoStartPermissionHelper getInstance() {
            return new AutoStartPermissionHelper(null);
        }
    }

    private AutoStartPermissionHelper() {
        this.f16173b = "xiaomi";
        this.f16174c = "redmi";
        this.f16175d = "com.miui.securitycenter";
        this.e = "com.miui.permcenter.autostart.AutoStartManagementActivity";
        this.f = "letv";
        this.g = "com.letv.android.letvsafe";
        this.h = "com.letv.android.letvsafe.AutobootManageActivity";
        this.i = "asus";
        this.j = "com.asus.mobilemanager";
        this.k = "com.asus.mobilemanager.powersaver.PowerSaverSettings";
        this.l = "com.asus.mobilemanager.autostart.AutoStartActivity";
        this.m = "honor";
        this.n = "com.huawei.systemmanager";
        this.o = "com.huawei.systemmanager.optimize.process.ProtectActivity";
        this.p = Payload.SOURCE_HUAWEI;
        this.q = "com.huawei.systemmanager";
        this.r = "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity";
        this.s = "com.huawei.systemmanager.optimize.process.ProtectActivity";
        this.t = "oppo";
        this.u = "com.coloros.safecenter";
        this.v = "com.oppo.safe";
        this.w = "com.coloros.safecenter.permission.startup.StartupAppListActivity";
        this.x = "com.oppo.safe.permission.startup.StartupAppListActivity";
        this.y = "com.coloros.safecenter.startupapp.StartupAppListActivity";
        this.z = "vivo";
        this.A = "com.iqoo.secure";
        this.B = "com.vivo.permissionmanager";
        this.C = "com.iqoo.secure.ui.phoneoptimize.AddWhiteListActivity";
        this.D = "com.vivo.permissionmanager.activity.BgStartUpManagerActivity";
        this.E = "com.iqoo.secure.ui.phoneoptimize.BgStartUpManager";
        this.F = "nokia";
        this.G = "com.evenwell.powersaving.g3";
        this.H = "com.evenwell.powersaving.g3.exception.PowerSaverExceptionActivity";
        this.I = "samsung";
        this.J = "com.samsung.android.lool";
        this.K = "com.samsung.android.sm.ui.battery.BatteryActivity";
        this.L = "oneplus";
        this.M = "com.oneplus.security";
        this.N = "com.oneplus.security.chainlaunch.view.ChainLaunchAppListActivity";
        this.O = n.b((Object[]) new String[]{"com.asus.mobilemanager", "com.miui.securitycenter", "com.letv.android.letvsafe", "com.huawei.systemmanager", "com.coloros.safecenter", "com.oppo.safe", "com.iqoo.secure", "com.vivo.permissionmanager", "com.evenwell.powersaving.g3", "com.huawei.systemmanager", "com.samsung.android.lool", "com.oneplus.security"});
    }

    public /* synthetic */ AutoStartPermissionHelper(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private static Intent a(String str, String str2) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, str2));
        return intent;
    }

    private static void a(Context context, String str, String str2, ActivityResult activityResult) throws Exception {
        try {
            Intent a2 = a(str, str2);
            if (Activities.a(a2)) {
                Activities.a(context, a2, activityResult);
                return;
            }
            throw new IntentNotResolvableException(a2.toString());
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    private static boolean a(Context context, String str) {
        List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(0);
        p.b(installedApplications, "pm.getInstalledApplications(0)");
        for (ApplicationInfo applicationInfo : installedApplications) {
            if (p.a((Object) applicationInfo.packageName, (Object) str)) {
                return true;
            }
        }
        return false;
    }

    private final boolean b(Context context, ActivityResult activityResult) {
        if (!a(context, this.f16175d)) {
            return false;
        }
        try {
            a(context, this.f16175d, this.e, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private final boolean c(Context context, ActivityResult activityResult) {
        if (!a(context, this.j)) {
            return false;
        }
        try {
            a(context, this.j, this.k, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            try {
                a(context, this.j, this.l, activityResult);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    private final boolean d(Context context, ActivityResult activityResult) {
        if (!a(context, this.g)) {
            return false;
        }
        try {
            a(context, this.g, this.h, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private final boolean e(Context context, ActivityResult activityResult) {
        if (!a(context, this.n)) {
            return false;
        }
        try {
            a(context, this.n, this.o, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private final boolean f(Context context, ActivityResult activityResult) {
        if (!a(context, this.q)) {
            return false;
        }
        try {
            a(context, this.q, this.r, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            try {
                a(context, this.q, this.s, activityResult);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    private final boolean g(Context context, ActivityResult activityResult) {
        if (!a(context, this.u) && !a(context, this.v)) {
            return false;
        }
        try {
            a(context, this.u, this.w, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            try {
                a(context, this.v, this.x, activityResult);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                try {
                    a(context, this.u, this.y, activityResult);
                    return true;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return false;
                }
            }
        }
    }

    public static final AutoStartPermissionHelper getInstance() {
        return f16172a.getInstance();
    }

    private final boolean h(Context context, ActivityResult activityResult) {
        if (!a(context, this.A) && !a(context, this.B)) {
            return false;
        }
        try {
            a(context, this.A, this.C, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            try {
                a(context, this.B, this.D, activityResult);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                try {
                    a(context, this.A, this.E, activityResult);
                    return true;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return false;
                }
            }
        }
    }

    private final boolean i(Context context, ActivityResult activityResult) {
        if (!a(context, this.G)) {
            return false;
        }
        try {
            a(context, this.G, this.H, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private final boolean j(Context context, ActivityResult activityResult) {
        if (!a(context, this.J)) {
            return false;
        }
        try {
            a(context, this.J, this.K, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private final boolean k(Context context, ActivityResult activityResult) {
        if (!a(context, this.M)) {
            return false;
        }
        try {
            a(context, this.M, this.N, activityResult);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean a(Context context, ActivityResult activityResult) {
        p.d(context, "context");
        String str = Build.BRAND;
        p.b(str, "Build.BRAND");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        p.b(lowerCase, "(this as java.lang.String).toLowerCase()");
        if (p.a((Object) lowerCase, (Object) this.i)) {
            return c(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.f16173b) || p.a((Object) lowerCase, (Object) this.f16174c)) {
            return b(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.f)) {
            return d(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.m)) {
            return e(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.p)) {
            return f(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.t)) {
            return g(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.z)) {
            return h(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.F)) {
            return i(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.I)) {
            return j(context, activityResult);
        }
        if (p.a((Object) lowerCase, (Object) this.L)) {
            return k(context, activityResult);
        }
        return false;
    }

    public final boolean isAutoStartPermissionAvailable() {
        String str = Build.BRAND;
        p.b(str, "Build.BRAND");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        p.b(lowerCase, "(this as java.lang.String).toLowerCase()");
        String str2 = null;
        ArrayList<Intent> arrayList = new ArrayList();
        if (p.a((Object) lowerCase, (Object) this.i)) {
            str2 = this.j;
            arrayList.add(a(str2, this.k));
            arrayList.add(a(this.j, this.l));
        } else if (p.a((Object) lowerCase, (Object) this.f16173b) || p.a((Object) lowerCase, (Object) this.f16174c)) {
            str2 = this.f16175d;
            arrayList.add(a(str2, this.e));
        } else if (p.a((Object) lowerCase, (Object) this.f)) {
            str2 = this.g;
            arrayList.add(a(str2, this.h));
        } else if (p.a((Object) lowerCase, (Object) this.m)) {
            str2 = this.n;
            arrayList.add(a(str2, this.o));
        } else if (p.a((Object) lowerCase, (Object) this.p)) {
            str2 = this.q;
            arrayList.add(a(str2, this.r));
            arrayList.add(a(this.q, this.s));
        } else if (p.a((Object) lowerCase, (Object) this.t)) {
            str2 = this.u;
            arrayList.add(a(str2, this.w));
            arrayList.add(a(this.v, this.x));
            arrayList.add(a(this.u, this.y));
        } else if (p.a((Object) lowerCase, (Object) this.z)) {
            str2 = this.A;
            arrayList.add(a(str2, this.C));
            arrayList.add(a(this.B, this.D));
            arrayList.add(a(this.A, this.E));
        } else if (p.a((Object) lowerCase, (Object) this.F)) {
            str2 = this.G;
            arrayList.add(a(str2, this.H));
        } else if (p.a((Object) lowerCase, (Object) this.I)) {
            str2 = this.J;
            arrayList.add(a(str2, this.K));
        } else if (p.a((Object) lowerCase, (Object) this.L)) {
            str2 = this.M;
            arrayList.add(a(str2, this.N));
        }
        if (!Activities.b(str2)) {
            return false;
        }
        for (Intent intent : arrayList) {
            if (Activities.a(intent)) {
                return true;
            }
        }
        return false;
    }
}
