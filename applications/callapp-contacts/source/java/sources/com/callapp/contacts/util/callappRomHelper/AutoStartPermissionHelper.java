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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u001d\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018�� F2\u00020\u0001:\u0001FB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00103\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00104\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00105\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00106\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00107\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00108\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00109\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u0010:\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u0010;\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102H\u0002J\u0018\u0010<\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102J\u0018\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u0004H\u0002J\u0006\u0010A\u001a\u00020.J\u0018\u0010B\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u0010C\u001a\u00020\u0004H\u0002J*\u0010D\u001a\u00020E2\u0006\u0010/\u001a\u0002002\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u00042\b\u00101\u001a\u0004\u0018\u000102H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006G"}, m4298d2 = {"Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;", "", "()V", "BRAND_ASUS", "", "BRAND_HONOR", "BRAND_HUAWEI", "BRAND_LETV", "BRAND_NOKIA", "BRAND_ONE_PLUS", "BRAND_OPPO", "BRAND_SAMSUNG", "BRAND_VIVO", "BRAND_XIAOMI", "BRAND_XIAOMI_REDMI", "PACKAGES_TO_CHECK_FOR_PERMISSION", "", "PACKAGE_ASUS_COMPONENT", "PACKAGE_ASUS_COMPONENT_FALLBACK", "PACKAGE_ASUS_MAIN", "PACKAGE_HONOR_COMPONENT", "PACKAGE_HONOR_MAIN", "PACKAGE_HUAWEI_COMPONENT", "PACKAGE_HUAWEI_COMPONENT_FALLBACK", "PACKAGE_HUAWEI_MAIN", "PACKAGE_LETV_COMPONENT", "PACKAGE_LETV_MAIN", "PACKAGE_NOKIA_COMPONENT", "PACKAGE_NOKIA_MAIN", "PACKAGE_ONE_PLUS_COMPONENT", "PACKAGE_ONE_PLUS_MAIN", "PACKAGE_OPPO_COMPONENT", "PACKAGE_OPPO_COMPONENT_FALLBACK", "PACKAGE_OPPO_COMPONENT_FALLBACK_A", "PACKAGE_OPPO_FALLBACK", "PACKAGE_OPPO_MAIN", "PACKAGE_SAMSUNG_COMPONENT", "PACKAGE_SAMSUNG_MAIN", "PACKAGE_VIVO_COMPONENT", "PACKAGE_VIVO_COMPONENT_FALLBACK", "PACKAGE_VIVO_COMPONENT_FALLBACK_A", "PACKAGE_VIVO_FALLBACK", "PACKAGE_VIVO_MAIN", "PACKAGE_XIAOMI_COMPONENT", "PACKAGE_XIAOMI_MAIN", "autoStartAsus", "", "context", "Landroid/content/Context;", "activityResult", "Lcom/callapp/contacts/manager/popup/ActivityResult;", "autoStartHonor", "autoStartHuawei", "autoStartLetv", "autoStartNokia", "autoStartOnePlus", "autoStartOppo", "autoStartSamsung", "autoStartVivo", "autoStartXiaomi", "getAutoStartPermission", "getIntent", "Landroid/content/Intent;", "packageName", "componentName", "isAutoStartPermissionAvailable", "isPackageExists", "targetPackage", "startIntent", "", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper.class */
public final class AutoStartPermissionHelper {

    /* renamed from: a */
    public static final Companion f28152a = new Companion(null);

    /* renamed from: A */
    private final String f28153A;

    /* renamed from: B */
    private final String f28154B;

    /* renamed from: C */
    private final String f28155C;

    /* renamed from: D */
    private final String f28156D;

    /* renamed from: E */
    private final String f28157E;

    /* renamed from: F */
    private final String f28158F;

    /* renamed from: G */
    private final String f28159G;

    /* renamed from: H */
    private final String f28160H;

    /* renamed from: I */
    private final String f28161I;

    /* renamed from: J */
    private final String f28162J;

    /* renamed from: K */
    private final String f28163K;

    /* renamed from: L */
    private final String f28164L;

    /* renamed from: M */
    private final String f28165M;

    /* renamed from: N */
    private final String f28166N;

    /* renamed from: O */
    private final List<String> f28167O;

    /* renamed from: b */
    private final String f28168b;

    /* renamed from: c */
    private final String f28169c;

    /* renamed from: d */
    private final String f28170d;

    /* renamed from: e */
    private final String f28171e;

    /* renamed from: f */
    private final String f28172f;

    /* renamed from: g */
    private final String f28173g;

    /* renamed from: h */
    private final String f28174h;

    /* renamed from: i */
    private final String f28175i;

    /* renamed from: j */
    private final String f28176j;

    /* renamed from: k */
    private final String f28177k;

    /* renamed from: l */
    private final String f28178l;

    /* renamed from: m */
    private final String f28179m;

    /* renamed from: n */
    private final String f28180n;

    /* renamed from: o */
    private final String f28181o;

    /* renamed from: p */
    private final String f28182p;

    /* renamed from: q */
    private final String f28183q;

    /* renamed from: r */
    private final String f28184r;

    /* renamed from: s */
    private final String f28185s;

    /* renamed from: t */
    private final String f28186t;

    /* renamed from: u */
    private final String f28187u;

    /* renamed from: v */
    private final String f28188v;

    /* renamed from: w */
    private final String f28189w;

    /* renamed from: x */
    private final String f28190x;

    /* renamed from: y */
    private final String f28191y;

    /* renamed from: z */
    private final String f28192z;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;", "", "()V", "getInstance", "Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
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
        this.f28168b = "xiaomi";
        this.f28169c = "redmi";
        this.f28170d = "com.miui.securitycenter";
        this.f28171e = "com.miui.permcenter.autostart.AutoStartManagementActivity";
        this.f28172f = "letv";
        this.f28173g = "com.letv.android.letvsafe";
        this.f28174h = "com.letv.android.letvsafe.AutobootManageActivity";
        this.f28175i = "asus";
        this.f28176j = "com.asus.mobilemanager";
        this.f28177k = "com.asus.mobilemanager.powersaver.PowerSaverSettings";
        this.f28178l = "com.asus.mobilemanager.autostart.AutoStartActivity";
        this.f28179m = "honor";
        this.f28180n = "com.huawei.systemmanager";
        this.f28181o = "com.huawei.systemmanager.optimize.process.ProtectActivity";
        this.f28182p = Payload.SOURCE_HUAWEI;
        this.f28183q = "com.huawei.systemmanager";
        this.f28184r = "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity";
        this.f28185s = "com.huawei.systemmanager.optimize.process.ProtectActivity";
        this.f28186t = "oppo";
        this.f28187u = "com.coloros.safecenter";
        this.f28188v = "com.oppo.safe";
        this.f28189w = "com.coloros.safecenter.permission.startup.StartupAppListActivity";
        this.f28190x = "com.oppo.safe.permission.startup.StartupAppListActivity";
        this.f28191y = "com.coloros.safecenter.startupapp.StartupAppListActivity";
        this.f28192z = "vivo";
        this.f28153A = "com.iqoo.secure";
        this.f28154B = "com.vivo.permissionmanager";
        this.f28155C = "com.iqoo.secure.ui.phoneoptimize.AddWhiteListActivity";
        this.f28156D = "com.vivo.permissionmanager.activity.BgStartUpManagerActivity";
        this.f28157E = "com.iqoo.secure.ui.phoneoptimize.BgStartUpManager";
        this.f28158F = "nokia";
        this.f28159G = "com.evenwell.powersaving.g3";
        this.f28160H = "com.evenwell.powersaving.g3.exception.PowerSaverExceptionActivity";
        this.f28161I = "samsung";
        this.f28162J = "com.samsung.android.lool";
        this.f28163K = "com.samsung.android.sm.ui.battery.BatteryActivity";
        this.f28164L = "oneplus";
        this.f28165M = "com.oneplus.security";
        this.f28166N = "com.oneplus.security.chainlaunch.view.ChainLaunchAppListActivity";
        this.f28167O = C18282n.m4167b((Object[]) new String[]{"com.asus.mobilemanager", "com.miui.securitycenter", "com.letv.android.letvsafe", "com.huawei.systemmanager", "com.coloros.safecenter", "com.oppo.safe", "com.iqoo.secure", "com.vivo.permissionmanager", "com.evenwell.powersaving.g3", "com.huawei.systemmanager", "com.samsung.android.lool", "com.oneplus.security"});
    }

    public /* synthetic */ AutoStartPermissionHelper(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: a */
    private static Intent m27157a(String str, String str2) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, str2));
        return intent;
    }

    /* renamed from: a */
    private static void m27158a(Context context, String str, String str2, ActivityResult activityResult) throws Exception {
        try {
            Intent m27157a = m27157a(str, str2);
            if (!Activities.m27672a(m27157a)) {
                throw new IntentNotResolvableException(m27157a.toString());
            }
            Activities.m27683a(context, m27157a, activityResult);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    /* renamed from: a */
    private static boolean m27159a(Context context, String str) {
        List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(0);
        C18524p.m3843b(installedApplications, "pm.getInstalledApplications(0)");
        for (ApplicationInfo applicationInfo : installedApplications) {
            if (C18524p.m3850a((Object) applicationInfo.packageName, (Object) str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private final boolean m27156b(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28170d)) {
            try {
                m27158a(context, this.f28170d, this.f28171e, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    private final boolean m27155c(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28176j)) {
            try {
                m27158a(context, this.f28176j, this.f28177k, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                try {
                    m27158a(context, this.f28176j, this.f28178l, activityResult);
                    return true;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        }
        return false;
    }

    /* renamed from: d */
    private final boolean m27154d(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28173g)) {
            try {
                m27158a(context, this.f28173g, this.f28174h, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: e */
    private final boolean m27153e(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28180n)) {
            try {
                m27158a(context, this.f28180n, this.f28181o, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: f */
    private final boolean m27152f(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28183q)) {
            try {
                m27158a(context, this.f28183q, this.f28184r, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                try {
                    m27158a(context, this.f28183q, this.f28185s, activityResult);
                    return true;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        }
        return false;
    }

    /* renamed from: g */
    private final boolean m27151g(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28187u) || m27159a(context, this.f28188v)) {
            try {
                m27158a(context, this.f28187u, this.f28189w, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                try {
                    m27158a(context, this.f28188v, this.f28190x, activityResult);
                    return true;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    try {
                        m27158a(context, this.f28187u, this.f28191y, activityResult);
                        return true;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return false;
                    }
                }
            }
        }
        return false;
    }

    public static final AutoStartPermissionHelper getInstance() {
        return f28152a.getInstance();
    }

    /* renamed from: h */
    private final boolean m27150h(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28153A) || m27159a(context, this.f28154B)) {
            try {
                m27158a(context, this.f28153A, this.f28155C, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                try {
                    m27158a(context, this.f28154B, this.f28156D, activityResult);
                    return true;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    try {
                        m27158a(context, this.f28153A, this.f28157E, activityResult);
                        return true;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return false;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: i */
    private final boolean m27149i(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28159G)) {
            try {
                m27158a(context, this.f28159G, this.f28160H, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: j */
    private final boolean m27148j(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28162J)) {
            try {
                m27158a(context, this.f28162J, this.f28163K, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: k */
    private final boolean m27147k(Context context, ActivityResult activityResult) {
        if (m27159a(context, this.f28165M)) {
            try {
                m27158a(context, this.f28165M, this.f28166N, activityResult);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m27160a(Context context, ActivityResult activityResult) {
        C18524p.m3840d(context, "context");
        String str = Build.BRAND;
        C18524p.m3843b(str, "Build.BRAND");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase()");
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28175i)) {
            return m27155c(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28168b) || C18524p.m3850a((Object) lowerCase, (Object) this.f28169c)) {
            return m27156b(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28172f)) {
            return m27154d(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28179m)) {
            return m27153e(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28182p)) {
            return m27152f(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28186t)) {
            return m27151g(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28192z)) {
            return m27150h(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28158F)) {
            return m27149i(context, activityResult);
        }
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28161I)) {
            return m27148j(context, activityResult);
        }
        if (!C18524p.m3850a((Object) lowerCase, (Object) this.f28164L)) {
            return false;
        }
        return m27147k(context, activityResult);
    }

    public final boolean isAutoStartPermissionAvailable() {
        String str = Build.BRAND;
        C18524p.m3843b(str, "Build.BRAND");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase()");
        String str2 = null;
        ArrayList<Intent> arrayList = new ArrayList();
        if (C18524p.m3850a((Object) lowerCase, (Object) this.f28175i)) {
            str2 = this.f28176j;
            arrayList.add(m27157a(str2, this.f28177k));
            arrayList.add(m27157a(this.f28176j, this.f28178l));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28168b) || C18524p.m3850a((Object) lowerCase, (Object) this.f28169c)) {
            str2 = this.f28170d;
            arrayList.add(m27157a(str2, this.f28171e));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28172f)) {
            str2 = this.f28173g;
            arrayList.add(m27157a(str2, this.f28174h));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28179m)) {
            str2 = this.f28180n;
            arrayList.add(m27157a(str2, this.f28181o));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28182p)) {
            str2 = this.f28183q;
            arrayList.add(m27157a(str2, this.f28184r));
            arrayList.add(m27157a(this.f28183q, this.f28185s));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28186t)) {
            str2 = this.f28187u;
            arrayList.add(m27157a(str2, this.f28189w));
            arrayList.add(m27157a(this.f28188v, this.f28190x));
            arrayList.add(m27157a(this.f28187u, this.f28191y));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28192z)) {
            str2 = this.f28153A;
            arrayList.add(m27157a(str2, this.f28155C));
            arrayList.add(m27157a(this.f28154B, this.f28156D));
            arrayList.add(m27157a(this.f28153A, this.f28157E));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28158F)) {
            str2 = this.f28159G;
            arrayList.add(m27157a(str2, this.f28160H));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28161I)) {
            str2 = this.f28162J;
            arrayList.add(m27157a(str2, this.f28163K));
        } else if (C18524p.m3850a((Object) lowerCase, (Object) this.f28164L)) {
            str2 = this.f28165M;
            arrayList.add(m27157a(str2, this.f28166N));
        }
        if (Activities.m27652b(str2)) {
            for (Intent intent : arrayList) {
                if (Activities.m27672a(intent)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
