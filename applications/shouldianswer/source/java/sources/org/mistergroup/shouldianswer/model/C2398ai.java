package org.mistergroup.shouldianswer.model;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Observable;
import kotlin.TypeCastException;
import kotlin.p073a.C1600g;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import org.json.JSONObject;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
/* renamed from: org.mistergroup.shouldianswer.model.ai */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ai.class */
public final class C2398ai {

    /* renamed from: b */
    private static SharedPreferences f6931b;

    /* renamed from: a */
    public static final C2398ai f6930a = new C2398ai();

    /* renamed from: c */
    private static final C2402c f6932c = new C2402c();

    /* renamed from: org.mistergroup.shouldianswer.model.ai$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ai$a.class */
    public enum EnumC2399a {
        DEFAULT(0),
        LIGHT(1),
        DARK(2);
        

        /* renamed from: d */
        public static final C2400a f6936d = new C2400a(null);

        /* renamed from: f */
        private final int f6938f;

        /* renamed from: org.mistergroup.shouldianswer.model.ai$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ai$a$a.class */
        public static final class C2400a {
            private C2400a() {
            }

            public /* synthetic */ C2400a(C1691e c1691e) {
                this();
            }

            /* renamed from: a */
            public final EnumC2399a m1230a(int i) {
                EnumC2399a[] values;
                for (EnumC2399a enumC2399a : EnumC2399a.values()) {
                    if (enumC2399a.m1231a() == i) {
                        return enumC2399a;
                    }
                }
                throw new NoSuchElementException("Array contains no element matching the predicate.");
            }
        }

        EnumC2399a(int i) {
            this.f6938f = i;
        }

        /* renamed from: a */
        public final int m1231a() {
            return this.f6938f;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.ai$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ai$b.class */
    public enum EnumC2401b {
        DISALLOW(0),
        REJECT(1),
        PICK_AND_HANG(2);
        

        /* renamed from: e */
        private final int f6943e;

        EnumC2401b(int i) {
            this.f6943e = i;
        }

        /* renamed from: a */
        public final int m1229a() {
            return this.f6943e;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.ai$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ai$c.class */
    public static final class C2402c extends Observable {
        @Override // java.util.Observable
        public void setChanged() {
            super.setChanged();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.ai$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ai$d.class */
    public static final class C2403d<T> implements Comparator<String> {

        /* renamed from: a */
        public static final C2403d f6944a = new C2403d();

        C2403d() {
        }

        /* renamed from: a */
        public final int compare(String str, String str2) {
            C1694h.m3122a((Object) str2, "s");
            return str.compareTo(str2);
        }
    }

    static {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C3115o.f9175a.m119d());
        C1694h.m3122a((Object) defaultSharedPreferences, "PreferenceManager.getDef…haredPreferences(context)");
        f6931b = defaultSharedPreferences;
    }

    private C2398ai() {
    }

    /* renamed from: N */
    private final void m1297N() {
        C2384ab.f6871a.m1370a(new Date().getTime());
        f6932c.setChanged();
        f6932c.notifyObservers();
    }

    /* renamed from: A */
    public final EnumC2399a m1310A() {
        return EnumC2399a.f6936d.m1230a(f6931b.getInt("activeTheme", (m1309B() ? EnumC2399a.DARK : EnumC2399a.DEFAULT).m1231a()));
    }

    /* renamed from: B */
    public final boolean m1309B() {
        return f6931b.getBoolean("themeDark", false);
    }

    /* renamed from: C */
    public final boolean m1308C() {
        return f6931b.getBoolean("ttsAlerts", false);
    }

    /* renamed from: D */
    public final boolean m1307D() {
        return f6931b.getBoolean("ttsIncomingCalls", false);
    }

    /* renamed from: E */
    public final boolean m1306E() {
        return f6931b.getBoolean("showSimSelection", false);
    }

    /* renamed from: F */
    public final boolean m1305F() {
        return f6931b.getBoolean("ignoreContactInvisibleFlag2", true);
    }

    /* renamed from: G */
    public final String m1304G() {
        String string = f6931b.getString("#emailForTickets", "");
        if (string == null) {
            C1694h.m3124a();
        }
        return string;
    }

    /* renamed from: H */
    public final String m1303H() {
        String string = f6931b.getString("#userId", "");
        if (string == null) {
            C1694h.m3124a();
        }
        return string;
    }

    /* renamed from: I */
    public final boolean m1302I() {
        return f6931b.getBoolean("sortContactsBySurname", false);
    }

    /* renamed from: J */
    public final boolean m1301J() {
        return f6931b.getBoolean("showRecentContactsInFavorites", true);
    }

    /* renamed from: K */
    public final EnumC2401b m1300K() {
        int i = f6931b.getInt("blockStyle", 0);
        EnumC2401b[] values = EnumC2401b.values();
        int length = values.length;
        for (int i2 = 0; i2 < length; i2++) {
            EnumC2401b enumC2401b = values[i2];
            if (enumC2401b.m1229a() == i) {
                return (enumC2401b != EnumC2401b.PICK_AND_HANG || m1275e() == EnumC2378a.IN_CALL_SCREEN) ? enumC2401b : EnumC2401b.DISALLOW;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    /* renamed from: L */
    public final String m1299L() {
        Map<String, ?> all = f6931b.getAll();
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList(all.keySet());
        C1600g.m3198a(arrayList, C2403d.f6944a);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!C1694h.m3123a((Object) str, (Object) "userDisplayName") && !C1694h.m3123a((Object) str, (Object) "userPhotoUrl") && !C1694h.m3123a((Object) str, (Object) "termsAccepted")) {
                C1694h.m3122a((Object) str, AppMeasurementSdk.ConditionalUserProperty.NAME);
                if (!C1747g.m3033b(str, "#", false, 2, (Object) null)) {
                    String valueOf = String.valueOf(all.get(str));
                    if (C1694h.m3123a((Object) str, (Object) "protectionLevel")) {
                        valueOf = m1283c().name();
                    }
                    if (C1694h.m3123a((Object) str, (Object) "blockStyle")) {
                        valueOf = m1300K().name();
                    }
                    if (C1694h.m3123a((Object) str, (Object) "alertsType")) {
                        valueOf = m1275e().name();
                    }
                    sb.append(str);
                    sb.append("=");
                    sb.append(valueOf);
                    sb.append("\n");
                    C3104j.f9124a.m160a(str, valueOf);
                }
            }
        }
        String sb2 = sb.toString();
        C1694h.m3122a((Object) sb2, "stringBuilder.toString()");
        return sb2;
    }

    /* renamed from: M */
    public final JSONObject m1298M() {
        C3104j.m157a(C3104j.f9124a, "UserSettings.exportToJSON", (String) null, 2, (Object) null);
        JSONObject jSONObject = new JSONObject();
        Map<String, ?> all = f6931b.getAll();
        Iterator it = new ArrayList(all.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            C1694h.m3122a((Object) str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            if (!C1747g.m3033b(str, "#", false, 2, (Object) null)) {
                Object obj = all.get(str);
                if (obj instanceof Boolean) {
                    jSONObject.put(str, "b:" + obj);
                } else if (obj instanceof Integer) {
                    jSONObject.put(str, "i:" + obj);
                } else if (obj instanceof Long) {
                    jSONObject.put(str, "l:" + obj);
                } else if (obj instanceof String) {
                    jSONObject.put(str, "s:" + obj);
                }
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public final void m1295a(int i) {
        f6931b.edit().putInt("mainPage", i).apply();
    }

    /* renamed from: a */
    public final void m1294a(String str) {
        C1694h.m3117b(str, "v");
        if (!C1694h.m3123a((Object) str, (Object) m1246s())) {
            f6931b.edit().putString("blockExceptionsContacts", str).apply();
            m1297N();
        }
    }

    /* renamed from: a */
    public final void m1293a(JSONObject jSONObject) {
        C1694h.m3117b(jSONObject, "json");
        C3104j.m157a(C3104j.f9124a, "UserSettings.importFromJSON", (String) null, 2, (Object) null);
        try {
            SharedPreferences.Editor edit = f6931b.edit();
            Iterator<String> keys = jSONObject.keys();
            C1694h.m3122a((Object) keys, "json.keys()");
            while (keys.hasNext()) {
                String next = keys.next();
                String string = jSONObject.getString(next);
                C1694h.m3122a((Object) string, "value");
                if (string == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                String substring = string.substring(2);
                C1694h.m3122a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                String substring2 = string.substring(0, 2);
                C1694h.m3122a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                int hashCode = substring2.hashCode();
                if (hashCode != 3096) {
                    if (hashCode != 3313) {
                        if (hashCode != 3406) {
                            if (hashCode == 3623 && substring2.equals("s:")) {
                                edit.putString(next, substring);
                            }
                        } else if (substring2.equals("l:")) {
                            edit.putLong(next, Long.parseLong(substring));
                        }
                    } else if (substring2.equals("i:")) {
                        edit.putInt(next, Integer.parseInt(substring));
                    }
                } else if (substring2.equals("b:")) {
                    edit.putBoolean(next, Boolean.parseBoolean(substring));
                }
            }
            edit.apply();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m1292a(EnumC2378a enumC2378a) {
        C1694h.m3117b(enumC2378a, "v");
        f6931b.edit().putInt("alertsType", enumC2378a.ordinal()).apply();
    }

    /* renamed from: a */
    public final void m1291a(EnumC2393af enumC2393af) {
        C1694h.m3117b(enumC2393af, "v");
        f6931b.edit().putInt("protectionLevel", enumC2393af.m1317a()).apply();
    }

    /* renamed from: a */
    public final void m1290a(EnumC2399a enumC2399a) {
        C1694h.m3117b(enumC2399a, "appTheme");
        f6931b.edit().putInt("activeTheme", enumC2399a.m1231a()).apply();
    }

    /* renamed from: a */
    public final void m1289a(EnumC2401b enumC2401b) {
        C1694h.m3117b(enumC2401b, "style");
        f6931b.edit().putInt("blockStyle", enumC2401b.m1229a()).apply();
    }

    /* renamed from: a */
    public final void m1288a(boolean z) {
        f6931b.edit().putBoolean("termsAccepted", z).apply();
    }

    /* renamed from: a */
    public final boolean m1296a() {
        return f6931b.getBoolean("termsAccepted", false);
    }

    /* renamed from: b */
    public final int m1287b() {
        return f6931b.getInt("mainPage", 1);
    }

    /* renamed from: b */
    public final void m1286b(int i) {
        f6931b.edit().putInt("communityDatabaseSensitivity", i).apply();
    }

    /* renamed from: b */
    public final void m1285b(String str) {
        C1694h.m3117b(str, "v");
        if (!C1694h.m3123a((Object) str, (Object) m1244t())) {
            f6931b.edit().putString("blockExceptionsContactGroups", str).apply();
            m1297N();
        }
    }

    /* renamed from: b */
    public final void m1284b(boolean z) {
        f6931b.edit().putBoolean("appPromotionEnabled", z).apply();
    }

    /* renamed from: c */
    public final EnumC2393af m1283c() {
        return EnumC2393af.f6917e.m1316a(f6931b.getInt("protectionLevel", EnumC2393af.UNKNOWN.m1317a()));
    }

    /* renamed from: c */
    public final void m1282c(int i) {
        f6931b.edit().putInt("inCallScreenTheme", i).apply();
    }

    /* renamed from: c */
    public final void m1281c(String str) {
        C1694h.m3117b(str, "v");
        f6931b.edit().putString("countryOperatorCache", str).apply();
    }

    /* renamed from: c */
    public final void m1280c(boolean z) {
        f6931b.edit().putBoolean("blockSkipCallLog", z).apply();
    }

    /* renamed from: d */
    public final void m1278d(int i) {
        f6931b.edit().putInt("alertTopMargin", i).apply();
    }

    /* renamed from: d */
    public final void m1277d(String str) {
        C1694h.m3117b(str, "v");
        f6931b.edit().putString("#emailForTickets", str).apply();
    }

    /* renamed from: d */
    public final void m1276d(boolean z) {
        if (z != m1268h()) {
            f6931b.edit().putBoolean("blockIncomingLocalNegative", z).apply();
            m1297N();
        }
    }

    /* renamed from: d */
    public final boolean m1279d() {
        return f6931b.getBoolean("appPromotionEnabled", true);
    }

    /* renamed from: e */
    public final EnumC2378a m1275e() {
        return EnumC2378a.f6846e.m1386a(f6931b.getInt("alertsType", EnumC2378a.UNKNOWN.ordinal()));
    }

    /* renamed from: e */
    public final void m1274e(String str) {
        C1694h.m3117b(str, "v");
        f6931b.edit().putString("#userId", str).apply();
    }

    /* renamed from: e */
    public final void m1273e(boolean z) {
        if (z != m1266i()) {
            f6931b.edit().putBoolean("blockIncomingCommunityNegative", z).apply();
            m1297N();
        }
    }

    /* renamed from: f */
    public final int m1272f() {
        return f6931b.getInt("communityDatabaseSensitivity", 3);
    }

    /* renamed from: f */
    public final void m1271f(boolean z) {
        if (z != m1264j()) {
            f6931b.edit().putBoolean("blockIncomingNotInContacts", z).apply();
            m1297N();
        }
    }

    /* renamed from: g */
    public final void m1269g(boolean z) {
        if (z != m1262k()) {
            f6931b.edit().putBoolean("blockIncomingHidden", z).apply();
            m1297N();
        }
    }

    /* renamed from: g */
    public final boolean m1270g() {
        return f6931b.getBoolean("blockSkipCallLog", false);
    }

    /* renamed from: h */
    public final void m1267h(boolean z) {
        if (z != m1260l()) {
            f6931b.edit().putBoolean("blockIncomingForeign", z).apply();
            m1297N();
        }
    }

    /* renamed from: h */
    public final boolean m1268h() {
        return f6931b.getBoolean("blockIncomingLocalNegative", false);
    }

    /* renamed from: i */
    public final void m1265i(boolean z) {
        if (z != m1258m()) {
            f6931b.edit().putBoolean("blockOutgoingLocalNegative", z).apply();
            m1297N();
        }
    }

    /* renamed from: i */
    public final boolean m1266i() {
        return f6931b.getBoolean("blockIncomingCommunityNegative", false);
    }

    /* renamed from: j */
    public final void m1263j(boolean z) {
        if (z != m1256n()) {
            f6931b.edit().putBoolean("blockOutgoingCommunityNegative", z).apply();
            m1297N();
        }
    }

    /* renamed from: j */
    public final boolean m1264j() {
        return f6931b.getBoolean("blockIncomingNotInContacts", false);
    }

    /* renamed from: k */
    public final void m1261k(boolean z) {
        if (z != m1254o()) {
            f6931b.edit().putBoolean("blockOutgoingNotInContacts", z).apply();
            m1297N();
        }
    }

    /* renamed from: k */
    public final boolean m1262k() {
        return f6931b.getBoolean("blockIncomingHidden", false);
    }

    /* renamed from: l */
    public final void m1259l(boolean z) {
        if (z != m1252p()) {
            f6931b.edit().putBoolean("blockOutgoingForeign", z).apply();
            m1297N();
        }
    }

    /* renamed from: l */
    public final boolean m1260l() {
        return f6931b.getBoolean("blockIncomingForeign", false);
    }

    /* renamed from: m */
    public final void m1257m(boolean z) {
        if (z != m1250q()) {
            f6931b.edit().putBoolean("blockOutgoingPremium", z).apply();
            m1297N();
        }
    }

    /* renamed from: m */
    public final boolean m1258m() {
        return f6931b.getBoolean("blockOutgoingLocalNegative", false);
    }

    /* renamed from: n */
    public final void m1255n(boolean z) {
        f6931b.edit().putBoolean("blockShowSystemNotification", z).apply();
    }

    /* renamed from: n */
    public final boolean m1256n() {
        return f6931b.getBoolean("blockOutgoingCommunityNegative", false);
    }

    /* renamed from: o */
    public final void m1253o(boolean z) {
        f6931b.edit().putBoolean("dontUseIncallPopup", z).apply();
    }

    /* renamed from: o */
    public final boolean m1254o() {
        return f6931b.getBoolean("blockOutgoingNotInContacts", false);
    }

    /* renamed from: p */
    public final void m1251p(boolean z) {
        f6931b.edit().putBoolean("alertsWantShowForUnknownRating", z).apply();
    }

    /* renamed from: p */
    public final boolean m1252p() {
        return f6931b.getBoolean("blockOutgoingForeign", false);
    }

    /* renamed from: q */
    public final void m1249q(boolean z) {
        f6931b.edit().putBoolean("showAfterCallNumberInfo", z).apply();
    }

    /* renamed from: q */
    public final boolean m1250q() {
        return f6931b.getBoolean("blockOutgoingPremium", false);
    }

    /* renamed from: r */
    public final void m1247r(boolean z) {
        f6931b.edit().putBoolean("issueNeedAppUpdate", z).apply();
    }

    /* renamed from: r */
    public final boolean m1248r() {
        return f6931b.getBoolean("blockShowSystemNotification", true);
    }

    /* renamed from: s */
    public final String m1246s() {
        String string = f6931b.getString("blockExceptionsContacts", "");
        if (string == null) {
            C1694h.m3124a();
        }
        return string;
    }

    /* renamed from: s */
    public final void m1245s(boolean z) {
        f6931b.edit().putBoolean("themeDark", z).apply();
    }

    /* renamed from: t */
    public final String m1244t() {
        String string = f6931b.getString("blockExceptionsContactGroups", "");
        if (string == null) {
            C1694h.m3124a();
        }
        return string;
    }

    /* renamed from: t */
    public final void m1243t(boolean z) {
        f6931b.edit().putBoolean("ttsAlerts", z).apply();
    }

    /* renamed from: u */
    public final int m1242u() {
        return f6931b.getInt("inCallScreenTheme", 0);
    }

    /* renamed from: u */
    public final void m1241u(boolean z) {
        f6931b.edit().putBoolean("ttsIncomingCalls", z).apply();
    }

    /* renamed from: v */
    public final void m1239v(boolean z) {
        f6931b.edit().putBoolean("showSimSelection", z).apply();
    }

    /* renamed from: v */
    public final boolean m1240v() {
        return f6931b.getBoolean("dontUseIncallPopup", false);
    }

    /* renamed from: w */
    public final int m1238w() {
        return f6931b.getInt("alertTopMargin", 0);
    }

    /* renamed from: w */
    public final void m1237w(boolean z) {
        f6931b.edit().putBoolean("ignoreContactInvisibleFlag2", z).apply();
    }

    /* renamed from: x */
    public final void m1235x(boolean z) {
        f6931b.edit().putBoolean("sortContactsBySurname", z).apply();
    }

    /* renamed from: x */
    public final boolean m1236x() {
        return f6931b.getBoolean("alertsWantShowForUnknownRating", false);
    }

    /* renamed from: y */
    public final void m1233y(boolean z) {
        f6931b.edit().putBoolean("showRecentContactsInFavorites", z).apply();
    }

    /* renamed from: y */
    public final boolean m1234y() {
        return f6931b.getBoolean("showAfterCallNumberInfo", true);
    }

    /* renamed from: z */
    public final String m1232z() {
        String string = f6931b.getString("countryOperatorCache", "");
        if (string == null) {
            C1694h.m3124a();
        }
        return string;
    }
}
