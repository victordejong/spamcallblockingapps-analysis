package p095f8;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Build;
import android.preference.PreferenceManager;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import p106g8.C2914d;
/* renamed from: f8.h */
/* loaded from: classes2-dex2jar.jar:f8/h.class */
public class C2780h {
    /* renamed from: A */
    public static String m3088A(Context context, int i) {
        StringBuilder m8752j = C0082b.m8752j(ImagesContract.URL);
        m8752j.append(String.valueOf(i));
        return C2779g.m3111d("gH#Yu87&kHna%Oe3", m3055d0(context, m8752j.toString(), ""));
    }

    /* renamed from: B */
    public static String m3087B(Context context) {
        return m3088A(context, m3028r(context, "pinumber", 0).intValue());
    }

    /* renamed from: C */
    public static int m3086C(Context context) {
        return m3028r(context, "pinumber", Integer.valueOf(new Random().nextInt(C2914d.f9817a.length))).intValue();
    }

    /* renamed from: D */
    public static Integer m3085D(Context context) {
        return m3028r(context, "picount", Integer.valueOf(C2914d.f9817a.length));
    }

    /* renamed from: E */
    public static boolean m3084E(Context context) {
        return m3052f(context, "psetapponoff", true);
    }

    /* renamed from: F */
    public static int m3083F(Context context) {
        return m3028r(context, "psetblockmethod", 0).intValue();
    }

    /* renamed from: G */
    public static boolean m3082G(Context context) {
        return m3052f(context, "psetblock2call", false);
    }

    /* renamed from: H */
    public static boolean m3081H(Context context) {
        return m3052f(context, "psetdarktheme", (context.getResources().getConfiguration().uiMode & 48) == 32);
    }

    /* renamed from: I */
    public static boolean m3080I(Context context) {
        return m3052f(context, "psetdebug", false);
    }

    /* renamed from: J */
    public static boolean m3079J(Context context) {
        return m3052f(context, "psetdev", false);
    }

    /* renamed from: K */
    public static boolean m3078K(Context context) {
        return m3052f(context, "psetfservice", true);
    }

    /* renamed from: L */
    public static boolean m3077L(Context context) {
        return m3052f(context, "psetfserviceicon", false);
    }

    /* renamed from: M */
    public static boolean m3076M(Context context) {
        return m3052f(context, "psethideclearbutton", false);
    }

    /* renamed from: N */
    public static String m3075N(Context context) {
        Locale.getDefault().getLanguage();
        m3055d0(context, "psetlanguage", Locale.getDefault().getLanguage());
        return m3055d0(context, "psetlanguage", Locale.getDefault().getLanguage());
    }

    /* renamed from: O */
    public static boolean m3074O(Context context) {
        return m3052f(context, "psetaslfn", false);
    }

    /* renamed from: P */
    public static int m3073P(Context context) {
        return m3028r(context, "psetnotifcustomtextcolor", Integer.valueOf(Color.parseColor("#20998B"))).intValue();
    }

    /* renamed from: Q */
    public static boolean m3072Q(Context context) {
        return m3052f(context, "psetnotifusecustomtextcolor", false);
    }

    /* renamed from: R */
    public static boolean m3071R(Context context) {
        return m3052f(context, "psetaspe", false);
    }

    /* renamed from: S */
    public static boolean m3070S(Context context) {
        return m3052f(context, "psetpresets", false);
    }

    /* renamed from: T */
    public static boolean m3069T(Context context) {
        return m3052f(context, "psetss", true);
    }

    /* renamed from: U */
    public static int m3068U(Context context, int i) {
        return m3028r(context, i == 1 ? "setsimcolor1" : "setsimcolor2", Integer.valueOf(Color.parseColor(i == 1 ? "#00B22D" : "#E3024C"))).intValue();
    }

    /* renamed from: V */
    public static String m3067V(Context context) {
        String m3055d0 = m3055d0(context, "psetub", "");
        return m3055d0.isEmpty() ? "http://127.0.0.1" : C2779g.m3111d("lkTY6y7#bhZA4ff4", m3055d0);
    }

    /* renamed from: W */
    public static boolean m3066W(Context context) {
        return m3052f(context, "psetusealtcontactsname", false);
    }

    /* renamed from: X */
    public static boolean m3065X(Context context) {
        return m3052f(context, "psetusednd", false);
    }

    /* renamed from: Y */
    public static boolean m3064Y(Context context) {
        return m3052f(context, "psetusedefphoneapp", false);
    }

    /* renamed from: Z */
    public static boolean m3063Z(Context context) {
        return m3052f(context, "psetusesystemvibration", false);
    }

    /* renamed from: a */
    public static int m3062a(Context context) {
        return m3028r(context, "appblc", m3054e(context)).intValue();
    }

    /* renamed from: a0 */
    public static int m3061a0(Context context) {
        return m3028r(context, "show_filter", 0).intValue();
    }

    /* renamed from: b */
    public static boolean m3060b(Context context) {
        return m3052f(context, "bwlmultiselectenabled", false);
    }

    /* renamed from: b0 */
    public static Integer m3059b0(Context context) {
        return m3028r(context, "psimfirstno", Integer.valueOf(Build.VERSION.SDK_INT >= 23 ? 0 : -1));
    }

    /* renamed from: c */
    public static Integer m3058c(Context context) {
        return m3028r(context, "psbb", 0);
    }

    /* renamed from: c0 */
    public static String m3057c0(Context context) {
        return m3055d0(context, "socurl", "http://127.0.0.1");
    }

    /* renamed from: d */
    public static Integer m3056d(Context context) {
        if (m3055d0(context, "psbtdd", "").equals(C2779g.m3103l(new Date()))) {
            return m3028r(context, "psbtd", 0);
        }
        return 0;
    }

    /* renamed from: d0 */
    public static String m3055d0(Context context, String str, String str2) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
    }

    /* renamed from: e */
    public static Integer m3054e(Context context) {
        return m3028r(context, "psbt", 0);
    }

    /* renamed from: e0 */
    public static Date m3053e0(Context context) {
        return C2779g.m3117P(m3055d0(context, "unbandate", "X"), "yyyy-MM-dd");
    }

    /* renamed from: f */
    public static boolean m3052f(Context context, String str, boolean z) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, z);
    }

    /* renamed from: f0 */
    public static void m3051f0(Context context) {
        m3043j0(context, "ierror", Integer.valueOf(m3032p(context).intValue() + 1));
    }

    /* renamed from: g */
    public static Integer m3050g(Context context) {
        if (m3055d0(context, "psctdd", "").equals(C2779g.m3103l(new Date()))) {
            return m3028r(context, "psctd", 0);
        }
        return 0;
    }

    /* renamed from: g0 */
    public static void m3049g0(Context context, String str, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    /* renamed from: h */
    public static Integer m3048h(Context context) {
        return m3028r(context, "psct", 0);
    }

    /* renamed from: h0 */
    public static void m3047h0(Context context, int i) {
        m3043j0(context, "lastdelid", Integer.valueOf(i));
    }

    /* renamed from: i */
    public static int m3046i(Context context) {
        return m3028r(context, "precommandid", -1).intValue();
    }

    /* renamed from: i0 */
    public static void m3045i0(Context context, int i) {
        m3043j0(context, "ierror", Integer.valueOf(i));
    }

    /* renamed from: j */
    public static long m3044j(Context context) {
        return m3022w(context, "contactslastsync");
    }

    /* renamed from: j0 */
    public static void m3043j0(Context context, String str, Integer num) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putInt(str, num.intValue());
        edit.apply();
    }

    /* renamed from: k */
    public static String m3042k(Context context) {
        return m3055d0(context, "CC", "");
    }

    /* renamed from: k0 */
    public static void m3041k0(Context context, String str, long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putLong(str, j);
        edit.apply();
    }

    /* renamed from: l */
    public static boolean m3040l(Context context) {
        return m3052f(context, "dsuclbl", false);
    }

    /* renamed from: l0 */
    public static void m3039l0(Context context, int i) {
        m3043j0(context, "pierror", Integer.valueOf(i));
    }

    /* renamed from: m */
    public static Integer m3038m(Context context) {
        return m3028r(context, "lastdelid", 0);
    }

    /* renamed from: m0 */
    public static void m3037m0(Context context, String[] strArr) {
        if (strArr.length > 0) {
            m3043j0(context, "picount", Integer.valueOf(strArr.length));
            for (int i = 0; i < strArr.length; i++) {
                String m3110e = C2779g.m3110e("gH#Yu87&kHna%Oe3", strArr[i]);
                StringBuilder m8752j = C0082b.m8752j(ImagesContract.URL);
                m8752j.append(String.valueOf(i));
                m3033o0(context, m8752j.toString(), m3110e);
            }
        }
    }

    /* renamed from: n */
    public static int m3036n(Context context) {
        return m3028r(context, "devshowpcode", 0).intValue();
    }

    /* renamed from: n0 */
    public static void m3035n0(Context context, String[] strArr) {
        if (strArr.length > 0) {
            m3043j0(context, "picount", Integer.valueOf(strArr.length));
            for (int i = 0; i < strArr.length; i++) {
                StringBuilder m8752j = C0082b.m8752j(ImagesContract.URL);
                m8752j.append(String.valueOf(i));
                m3033o0(context, m8752j.toString(), strArr[i]);
            }
        }
    }

    /* renamed from: o */
    public static long m3034o(Context context) {
        return m3022w(context, "gappupdatelaststart");
    }

    /* renamed from: o0 */
    public static void m3033o0(Context context, String str, String str2) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    /* renamed from: p */
    public static Integer m3032p(Context context) {
        return m3028r(context, "ierror", 0);
    }

    /* renamed from: p0 */
    public static void m3031p0(Context context) {
        m3049g0(context, "abmsuggest", true);
    }

    /* renamed from: q */
    public static String m3030q(Context context) {
        return C2779g.m3111d("gH#Yu87&kHna%Oe3", m3055d0(context, "iurl", ""));
    }

    /* renamed from: q0 */
    public static void m3029q0(Context context) {
        m3041k0(context, "gappupdatelaststart", System.currentTimeMillis());
    }

    /* renamed from: r */
    public static Integer m3028r(Context context, String str, Integer num) {
        return Integer.valueOf(PreferenceManager.getDefaultSharedPreferences(context).getInt(str, num.intValue()));
    }

    /* renamed from: r0 */
    public static void m3027r0(Context context) {
        m3049g0(context, "bwlmultiselectenabled", !m3060b(context));
    }

    /* renamed from: s */
    public static long m3026s(Context context) {
        return m3022w(context, "lastcalltime");
    }

    /* renamed from: t */
    public static long m3025t(Context context) {
        return m3022w(context, "lastdbcheck");
    }

    /* renamed from: u */
    public static Integer m3024u(Context context) {
        return m3028r(context, "lastblid", 0);
    }

    /* renamed from: v */
    public static Integer m3023v(Context context) {
        return m3028r(context, "lastlid", 0);
    }

    /* renamed from: w */
    public static long m3022w(Context context, String str) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).getLong(str, 0L);
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: x */
    public static boolean m3021x(Context context) {
        return m3052f(context, "needinitdb", true);
    }

    /* renamed from: y */
    public static Integer m3020y(Context context) {
        return m3028r(context, "pcode", 0);
    }

    /* renamed from: z */
    public static Integer m3019z(Context context) {
        return m3028r(context, "pierror", 0);
    }
}
