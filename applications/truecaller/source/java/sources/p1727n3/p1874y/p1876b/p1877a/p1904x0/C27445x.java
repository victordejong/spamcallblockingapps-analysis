package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.app.UiModeManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.x0.x */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/x.class */
public final class C27445x {

    /* renamed from: a */
    public static final int f77229a;

    /* renamed from: b */
    public static final String f77230b;

    /* renamed from: c */
    public static final String f77231c;

    /* renamed from: d */
    public static final String f77232d;

    /* renamed from: e */
    public static final String f77233e;

    /* renamed from: h */
    public static HashMap<String, String> f77236h;

    /* renamed from: f */
    public static final byte[] f77234f = new byte[0];

    /* renamed from: g */
    public static final Pattern f77235g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");

    /* renamed from: i */
    public static final String[] f77237i = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "slo", "sk", "wel", "cy"};

    /* renamed from: j */
    public static final int[] f77238j = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    static {
        int i = Build.VERSION.SDK_INT;
        f77229a = i;
        String str = Build.DEVICE;
        f77230b = str;
        String str2 = Build.MANUFACTURER;
        f77231c = str2;
        String str3 = Build.MODEL;
        f77232d = str3;
        f77233e = C22128a.m8614i(C22128a.m8736A(C22128a.m8623f2(str2, C22128a.m8623f2(str3, C22128a.m8623f2(str, 17))), str, ", ", str3, ", "), str2, ", ", i);
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    /* renamed from: A */
    public static void m293A(long[] jArr, long j, long j2) {
        int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
        if (i >= 0 && j2 % j == 0) {
            long j3 = j2 / j;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] / j3;
            }
        } else if (i >= 0 || j % j2 != 0) {
            double d = j / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = (long) (jArr[i3] * d);
            }
        } else {
            long j4 = j / j2;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = jArr[i4] * j4;
            }
        }
    }

    /* renamed from: B */
    public static String[] m292B(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: C */
    public static String[] m291C(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: D */
    public static String[] m290D(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : m292B(str.trim(), "(\\s*,\\s*)");
    }

    /* renamed from: E */
    public static int[] m289E(List<Integer> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }

    /* renamed from: F */
    public static String m288F(String str) {
        if (str != null) {
            str = str.toLowerCase(Locale.US);
        }
        return str;
    }

    /* renamed from: G */
    public static String m287G(String str) {
        if (str != null) {
            str = str.toUpperCase(Locale.US);
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m286a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m285b(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = binarySearch ^ (-1);
        } else {
            do {
                i++;
                if (i >= jArr.length) {
                    break;
                }
            } while (jArr[i] == j);
            if (z) {
                i--;
            }
        }
        int i2 = i;
        if (z2) {
            i2 = Math.min(jArr.length - 1, i);
        }
        return i2;
    }

    /* renamed from: c */
    public static int m284c(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int binarySearch = Arrays.binarySearch(iArr, i);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            do {
                i3--;
                if (i3 < 0) {
                    break;
                }
            } while (iArr[i3] == i);
            i2 = z ? i3 + 1 : i3;
        }
        int i4 = i2;
        if (z2) {
            i4 = Math.max(0, i2);
        }
        return i4;
    }

    /* renamed from: d */
    public static int m283d(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i--;
                if (i < 0) {
                    break;
                }
            } while (jArr[i] == j);
            if (z) {
                i++;
            }
        }
        int i2 = i;
        if (z2) {
            i2 = Math.max(0, i);
        }
        return i2;
    }

    /* renamed from: e */
    public static int m282e(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: f */
    public static float m281f(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: g */
    public static int m280g(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: h */
    public static long m279h(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: i */
    public static boolean m278i(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (m286a(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public static String m277j(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName(StringConstant.UTF8));
    }

    /* renamed from: k */
    public static String m276k(String str, int i) {
        String[] m290D = m290D(str);
        String str2 = null;
        if (m290D.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : m290D) {
            if (i == C27428j.m359e(C27428j.m362b(str3))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str3);
            }
        }
        if (sb.length() > 0) {
            str2 = sb.toString();
        }
        return str2;
    }

    /* renamed from: l */
    public static int m275l(Context context) {
        ConnectivityManager connectivityManager;
        int i = 0;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    int type = activeNetworkInfo.getType();
                    int i2 = 2;
                    if (type != 0) {
                        if (type == 1) {
                            return 2;
                        }
                        if (type != 4 && type != 5) {
                            if (type == 6) {
                                return 5;
                            }
                            return type != 9 ? 8 : 7;
                        }
                    }
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                            i2 = 3;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            i2 = 4;
                            break;
                        case 13:
                            i2 = 5;
                            break;
                        case 16:
                        default:
                            i2 = 6;
                            break;
                        case 18:
                            break;
                    }
                    return i2;
                }
                i = 1;
            }
        } catch (SecurityException e) {
        }
        return i;
    }

    /* renamed from: m */
    public static int m274m(int i) {
        if (i != 8) {
            if (i == 16) {
                return 2;
            }
            if (i == 24) {
                return Integer.MIN_VALUE;
            }
            return i != 32 ? 0 : 1073741824;
        }
        return 3;
    }

    /* renamed from: n */
    public static int m273n(int i, int i2) {
        if (i != Integer.MIN_VALUE) {
            if (i != 1073741824) {
                if (i == 2) {
                    return i2 * 2;
                }
                if (i == 3) {
                    return i2;
                }
                if (i != 4) {
                    throw new IllegalArgumentException();
                }
            }
            return i2 * 4;
        }
        return i2 * 3;
    }

    /* renamed from: o */
    public static int m272o(int i) {
        if (i != 13) {
            switch (i) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
        return 1;
    }

    /* renamed from: p */
    public static String m271p(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            if (str.length() != 0) {
                "Failed to read system property ".concat(str);
                return null;
            }
            new String("Failed to read system property ");
            return null;
        }
    }

    /* renamed from: q */
    public static byte[] m270q(String str) {
        return str.getBytes(Charset.forName(StringConstant.UTF8));
    }

    /* renamed from: r */
    public static boolean m269r(int i) {
        return i == Integer.MIN_VALUE || i == 1073741824;
    }

    /* renamed from: s */
    public static boolean m268s(int i) {
        return i == 3 || i == 2 || i == Integer.MIN_VALUE || i == 1073741824 || i == 4;
    }

    /* renamed from: t */
    public static boolean m267t(int i) {
        return i == 10 || i == 13;
    }

    /* renamed from: u */
    public static boolean m266u(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    /* renamed from: v */
    public static boolean m265v(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: w */
    public static String m264w(String str) {
        int i;
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        String str2 = replace;
        if (f77229a >= 21) {
            str2 = Locale.forLanguageTag(replace).toLanguageTag();
        }
        String str3 = str;
        if (!str2.isEmpty()) {
            str3 = "und".equals(str2) ? str : str2;
        }
        String m288F = m288F(str3);
        String str4 = m291C(m288F, StringConstant.DASH)[0];
        String str5 = m288F;
        if (str4.length() == 3) {
            if (f77236h == null) {
                String[] iSOLanguages = Locale.getISOLanguages();
                HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f77237i.length);
                int length = iSOLanguages.length;
                int i2 = 0;
                while (true) {
                    i = 0;
                    if (i2 < length) {
                        String str6 = iSOLanguages[i2];
                        try {
                            String iSO3Language = new Locale(str6).getISO3Language();
                            if (!TextUtils.isEmpty(iSO3Language)) {
                                hashMap.put(iSO3Language, str6);
                            }
                        } catch (MissingResourceException e) {
                        }
                        i2++;
                    }
                }
                while (true) {
                    String[] strArr = f77237i;
                    if (i >= strArr.length) {
                        break;
                    }
                    hashMap.put(strArr[i], strArr[i + 1]);
                    i += 2;
                }
                f77236h = hashMap;
            }
            String str7 = f77236h.get(str4);
            str5 = m288F;
            if (str7 != null) {
                String valueOf = String.valueOf(m288F.substring(3));
                str5 = valueOf.length() != 0 ? str7.concat(valueOf) : new String(str7);
            }
        }
        return str5;
    }

    /* renamed from: x */
    public static <T> T[] m263x(T[] tArr, int i) {
        MediaSessionCompat.m43211p(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: y */
    public static <T> void m262y(List<T> list, int i, int i2) {
        if (i < 0 || i2 > list.size() || i > i2) {
            throw new IllegalArgumentException();
        }
        if (i == i2) {
            return;
        }
        list.subList(i, i2).clear();
    }

    /* renamed from: z */
    public static long m261z(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i < 0 || j3 % j2 != 0) {
            if (i < 0 && j2 % j3 == 0) {
                return (j2 / j3) * j;
            }
            return (long) (j * (j2 / j3));
        }
        return j / (j3 / j2);
    }
}
