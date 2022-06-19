package org.mistergroup.shouldianswer.model;

import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.AbstractC1660e;
import kotlin.C1707f;
import kotlin.TypeCastException;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1698l;
import kotlin.p081e.p083b.C1703n;
import kotlin.p085g.AbstractC1722e;
import kotlin.p087i.C1747g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2454t;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.services.incall.MyInCallService;
import org.mistergroup.shouldianswer.utils.C3077ab;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.model.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/c.class */
public final class C2405c {

    /* renamed from: l */
    private static final long f6956l;

    /* renamed from: m */
    private static final long f6957m;

    /* renamed from: n */
    private static SharedPreferences f6958n;

    /* renamed from: a */
    static final /* synthetic */ AbstractC1722e[] f6945a = {C1703n.m3104a(new C1698l(C1703n.m3107a(C2405c.class), "country", "getCountry()Lorg/mistergroup/shouldianswer/model/Countries$Country;"))};

    /* renamed from: b */
    public static final C2405c f6946b = new C2405c();

    /* renamed from: c */
    private static final String f6947c = f6947c;

    /* renamed from: c */
    private static final String f6947c = f6947c;

    /* renamed from: d */
    private static final int f6948d = 3600000;

    /* renamed from: e */
    private static final int f6949e = 3600000;

    /* renamed from: f */
    private static final int f6950f = f6950f;

    /* renamed from: f */
    private static final int f6950f = f6950f;

    /* renamed from: g */
    private static final int f6951g = f6951g;

    /* renamed from: g */
    private static final int f6951g = f6951g;

    /* renamed from: h */
    private static final int f6952h = f6952h;

    /* renamed from: h */
    private static final int f6952h = f6952h;

    /* renamed from: i */
    private static final int f6953i = f6953i;

    /* renamed from: i */
    private static final int f6953i = f6953i;

    /* renamed from: j */
    private static final long f6954j = 259200000;

    /* renamed from: k */
    private static final long f6955k = 1209600000;

    /* renamed from: o */
    private static final AbstractC1660e f6959o = C1707f.m3074a(C2406a.f6960a);

    /* renamed from: org.mistergroup.shouldianswer.model.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/c$a.class */
    static final class C2406a extends AbstractC1695i implements AbstractC1662a<C2454t.C2455a> {

        /* renamed from: a */
        public static final C2406a f6960a = new C2406a();

        C2406a() {
            super(0);
        }

        /* renamed from: b */
        public final C2454t.C2455a mo3a() {
            return C2454t.f7186a.m984a();
        }
    }

    static {
        long j = 10800000;
        f6956l = j;
        f6957m = j;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C3115o.f9175a.m119d());
        C1694h.m3122a((Object) defaultSharedPreferences, "PreferenceManager.getDef…haredPreferences(context)");
        f6958n = defaultSharedPreferences;
    }

    private C2405c() {
    }

    /* renamed from: A */
    public final void m1217A() {
        f6958n.edit().putInt("#statsCheckedTotal", m1162w() + 1).apply();
        f6958n.edit().putInt("#statsCheckedCounter", m1163v() + 1).apply();
    }

    /* renamed from: B */
    public final boolean m1216B() {
        return C3135y.f9272b.m22b().getComponentEnabledSetting(new ComponentName(MyApp.f5480c.m1802a(), MyInCallService.class)) != 2;
    }

    /* renamed from: C */
    public final boolean m1215C() {
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                Object systemService = MyApp.f5480c.m1802a().getSystemService("role");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.app.role.RoleManager");
                }
                return ((RoleManager) systemService).isRoleHeld("android.app.role.DIALER");
            }
            String defaultDialerPackage = C3135y.f9272b.m16h().getDefaultDialerPackage();
            boolean z = false;
            if (defaultDialerPackage != null) {
                z = false;
                if (C1694h.m3123a((Object) defaultDialerPackage, (Object) "org.mistergroup.shouldianswer")) {
                    z = true;
                }
            }
            return z;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }

    /* renamed from: D */
    public final boolean m1214D() {
        try {
            if (Build.VERSION.SDK_INT < 29) {
                return false;
            }
            Object systemService = MyApp.f5480c.m1802a().getSystemService("role");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.role.RoleManager");
            }
            return ((RoleManager) systemService).isRoleHeld("android.app.role.CALL_SCREENING");
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }

    /* renamed from: E */
    public final boolean m1213E() {
        return !C3135y.f9272b.m20d().isNetworkRoaming();
    }

    /* renamed from: F */
    public final long m1212F() {
        return f6958n.getLong("#communityDatabaseLastUpdateTime", 0L);
    }

    /* renamed from: G */
    public final long m1211G() {
        return f6958n.getLong("#communityDatabaseOutdatedNotification", 0L);
    }

    /* renamed from: H */
    public final long m1210H() {
        return f6958n.getLong("#communityDatabaseLastCheckTime", 0L);
    }

    /* renamed from: I */
    public final long m1209I() {
        return f6958n.getLong("#communityDatabaseLastUpdatedTime", 0L);
    }

    /* renamed from: J */
    public final long m1208J() {
        return f6958n.getLong("#communityDatabaseLastSuccessCheckTime", 0L);
    }

    /* renamed from: K */
    public final long m1207K() {
        return f6958n.getLong("#dataUploadLastCheckTime", 0L);
    }

    /* renamed from: L */
    public final long m1206L() {
        return f6958n.getLong("#dataUploadedStatsOnlyTime", 0L);
    }

    /* renamed from: M */
    public final String m1205M() {
        String string = f6958n.getString("#debugForcedNumber", "");
        if (string == null) {
            C1694h.m3124a();
        }
        return string;
    }

    /* renamed from: N */
    public final ArrayList<Long> m1204N() {
        ArrayList<Long> arrayList = new ArrayList<>();
        String string = f6958n.getString("#favoritesOrders", "");
        if (string != null) {
            String str = string;
            if (str.length() > 0) {
                for (String str2 : C1747g.m3000b((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null)) {
                    Long b = C1747g.m3043b(str2);
                    if (b != null) {
                        arrayList.add(Long.valueOf(b.longValue()));
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: O */
    public final String m1203O() {
        try {
            return C3135y.f9272b.m20d().getVoiceMailNumber();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: a */
    public final long m1197a(MainFragment.EnumC2575a enumC2575a) {
        C1694h.m3117b(enumC2575a, "bannerType");
        SharedPreferences sharedPreferences = f6958n;
        return sharedPreferences.getLong("#bannerSnoozeTime" + String.valueOf(enumC2575a.m754a()), 0L);
    }

    /* renamed from: a */
    public final String m1202a() {
        return f6947c;
    }

    /* renamed from: a */
    public final void m1201a(int i) {
        f6958n.edit().putInt("#communityDatabaseMainVersion", i).apply();
    }

    /* renamed from: a */
    public final void m1200a(long j) {
        f6958n.edit().putLong("#last_promo_time", j).apply();
    }

    /* renamed from: a */
    public final void m1199a(String str) {
        C1694h.m3117b(str, "appId");
        f6958n.edit().putString("appId", str).apply();
    }

    /* renamed from: a */
    public final void m1198a(ArrayList<Long> arrayList) {
        C1694h.m3117b(arrayList, "value");
        Iterator<T> it = arrayList.iterator();
        String str = "";
        String str2 = "";
        while (true) {
            String str3 = str2;
            if (!it.hasNext()) {
                f6958n.edit().putString("#favoritesOrders", str).apply();
                return;
            }
            long longValue = ((Number) it.next()).longValue();
            str = str + str3 + String.valueOf(longValue);
            str2 = ",";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* renamed from: a */
    public final void m1196a(MainFragment.EnumC2575a enumC2575a, int i) {
        C1694h.m3117b(enumC2575a, "bannerType");
        ?? time = i != -1 ? new Date().getTime() + (i * 60000) : true;
        SharedPreferences.Editor edit = f6958n.edit();
        edit.putLong("#bannerSnoozeTime" + String.valueOf(enumC2575a.m754a()), time == true ? 1L : 0L).apply();
    }

    /* renamed from: a */
    public final void m1195a(boolean z) {
        if (z == m1216B()) {
            return;
        }
        int i = 2;
        C3104j.m157a(C3104j.f9124a, "AppSettings.inCallServiceEnabled=" + String.valueOf(z), (String) null, 2, (Object) null);
        ComponentName componentName = new ComponentName(MyApp.f5480c.m1802a(), MyInCallService.class);
        if (z) {
            i = 1;
        }
        C3135y.f9272b.m22b().setComponentEnabledSetting(componentName, i, 1);
    }

    /* renamed from: b */
    public final int m1194b() {
        return f6948d;
    }

    /* renamed from: b */
    public final void m1193b(int i) {
        f6958n.edit().putInt("#communityDatabaseSecondaryVersion", i).apply();
    }

    /* renamed from: b */
    public final void m1192b(long j) {
        f6958n.edit().putLong("#invalidPermissionsLastDisplay", j).apply();
    }

    /* renamed from: b */
    public final void m1191b(String str) {
        C1694h.m3117b(str, "value");
        f6958n.edit().putString("appInstallUtmCampaign", str).apply();
    }

    /* renamed from: c */
    public final int m1190c() {
        return f6949e;
    }

    /* renamed from: c */
    public final void m1189c(int i) {
        f6958n.edit().putInt("#checkedCallsLastUploadedId", i).apply();
    }

    /* renamed from: c */
    public final void m1188c(long j) {
        f6958n.edit().putLong("#communityDatabaseOutdatedNotification", j).apply();
    }

    /* renamed from: c */
    public final void m1187c(String str) {
        C1694h.m3117b(str, "value");
        f6958n.edit().putString("#debugForcedNumber", str).apply();
    }

    /* renamed from: d */
    public final int m1186d() {
        return f6950f;
    }

    /* renamed from: d */
    public final void m1185d(long j) {
        f6958n.edit().putLong("#communityDatabaseLastCheckTime", j).apply();
    }

    /* renamed from: e */
    public final int m1184e() {
        return f6951g;
    }

    /* renamed from: e */
    public final void m1183e(long j) {
        f6958n.edit().putLong("#communityDatabaseLastUpdatedTime", j).apply();
    }

    /* renamed from: f */
    public final int m1182f() {
        return f6952h;
    }

    /* renamed from: f */
    public final void m1181f(long j) {
        f6958n.edit().putLong("#communityDatabaseLastSuccessCheckTime", j).apply();
    }

    /* renamed from: g */
    public final int m1180g() {
        return f6953i;
    }

    /* renamed from: g */
    public final void m1179g(long j) {
        f6958n.edit().putLong("#dataUploadLastCheckTime", j).apply();
    }

    /* renamed from: h */
    public final long m1178h() {
        return f6954j;
    }

    /* renamed from: h */
    public final void m1177h(long j) {
        f6958n.edit().putLong("#dataUploadedStatsOnlyTime", j).apply();
    }

    /* renamed from: i */
    public final long m1176i() {
        return f6955k;
    }

    /* renamed from: j */
    public final long m1175j() {
        return f6956l;
    }

    /* renamed from: k */
    public final long m1174k() {
        return f6957m;
    }

    /* renamed from: l */
    public final String m1173l() {
        String string = f6958n.getString("appId", "");
        String str = string;
        if (str == null || str.length() == 0) {
            string = C3077ab.f8980a.m221a();
            m1199a(string);
        }
        m1170o();
        return string;
    }

    /* renamed from: m */
    public final String m1172m() {
        String string = f6958n.getString("appId", "");
        if (string != null) {
            if (!(string.length() == 0)) {
                return string;
            }
        }
        return m1173l();
    }

    /* renamed from: n */
    public final C2454t.C2455a m1171n() {
        AbstractC1660e abstractC1660e = f6959o;
        AbstractC1722e abstractC1722e = f6945a[0];
        return (C2454t.C2455a) abstractC1660e.mo2977a();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: o */
    public final long m1170o() {
        ?? r0 = f6958n.getLong("#appInstallTime", 0L);
        char c = r0;
        if (r0 == 0) {
            c = new Date().getTime();
            f6958n.edit().putLong("#appInstallTime", c).apply();
        }
        return c;
    }

    /* renamed from: p */
    public final int m1169p() {
        return Math.round((float) (TimeUnit.MILLISECONDS.toSeconds(new Date().getTime() - m1170o()) / 86400));
    }

    /* renamed from: q */
    public final String m1168q() {
        String string = f6958n.getString("appInstallUtmCampaign", "");
        if (string == null) {
            C1694h.m3124a();
        }
        return string;
    }

    /* renamed from: r */
    public final long m1167r() {
        return f6958n.getLong("#last_promo_time", 0L);
    }

    /* renamed from: s */
    public final int m1166s() {
        return f6958n.getInt("#communityDatabaseMainVersion", 0);
    }

    /* renamed from: t */
    public final int m1165t() {
        return f6958n.getInt("#communityDatabaseSecondaryVersion", 0);
    }

    /* renamed from: u */
    public final int m1164u() {
        return f6958n.getInt("#checkedCallsLastUploadedId", 0);
    }

    /* renamed from: v */
    public final int m1163v() {
        return f6958n.getInt("#statsCheckedCounter", 0);
    }

    /* renamed from: w */
    public final int m1162w() {
        return f6958n.getInt("#statsCheckedTotal", 0);
    }

    /* renamed from: x */
    public final long m1161x() {
        return f6958n.getLong("#invalidPermissionsLastDisplay", 0L);
    }

    /* renamed from: y */
    public final void m1160y() {
        f6958n.edit().putInt("#statsBlockedCounter", 0).apply();
    }

    /* renamed from: z */
    public final void m1159z() {
        f6958n.edit().putInt("#statsCheckedCounter", 0).apply();
    }
}
