package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.Constants;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Pattern;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.q1.d0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/d0.class */
public final class C24773d0 {

    /* renamed from: a */
    public static final int f69427a;

    /* renamed from: b */
    public static final String f69428b;

    /* renamed from: c */
    public static final String f69429c;

    /* renamed from: d */
    public static final String f69430d;

    /* renamed from: e */
    public static final String f69431e;

    /* renamed from: h */
    public static HashMap<String, String> f69434h;

    /* renamed from: f */
    public static final byte[] f69432f = new byte[0];

    /* renamed from: g */
    public static final Pattern f69433g = Pattern.compile("%([A-Fa-f0-9]{2})");

    /* renamed from: i */
    public static final String[] f69435i = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};

    /* renamed from: j */
    public static final String[] f69436j = {"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};

    /* renamed from: k */
    public static final int[] f69437k = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    /* renamed from: l */
    public static final int[] f69438l = {0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 158, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 140, 139, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, Constants.ERR_WATERMARK_READ, 134, 147, 148, Constants.ERR_MODULE_NOT_FOUND, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, Constants.ERR_PUBLISH_STREAM_NOT_FOUND, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, Constants.ERR_WATERMARKR_INFO, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, Constants.ERR_ALREADY_IN_RECORDING, 167, 178, 181, 188, 187, DrawableConstants.CtaButton.WIDTH_DIPS, 145, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};

    static {
        int i = Build.VERSION.SDK_INT;
        f69427a = i;
        String str = Build.DEVICE;
        f69428b = str;
        String str2 = Build.MANUFACTURER;
        f69429c = str2;
        String str3 = Build.MODEL;
        f69430d = str3;
        StringBuilder m8688M = C22128a.m8688M(str, ", ", str3, ", ", str2);
        m8688M.append(", ");
        m8688M.append(i);
        f69431e = m8688M.toString();
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
    }

    /* renamed from: A */
    public static void m4629A(long[] jArr, long j, long j2) {
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
    public static String[] m4628B(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: C */
    public static String[] m4627C(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: D */
    public static String m4626D(String str) {
        if (str != null) {
            str = str.toLowerCase(Locale.US);
        }
        return str;
    }

    /* renamed from: E */
    public static long m4625E(int i) {
        return i & 4294967295L;
    }

    /* renamed from: F */
    public static String m4624F(String str) {
        if (str != null) {
            str = str.toUpperCase(Locale.US);
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m4623a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m4622b(long[] jArr, long j, boolean z, boolean z2) {
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
    public static int m4621c(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: d */
    public static int m4620d(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: e */
    public static float m4619e(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: f */
    public static int m4618f(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: g */
    public static long m4617g(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: h */
    public static String m4616h(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: i */
    public static String m4615i(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName(StringConstant.UTF8));
    }

    /* renamed from: j */
    public static Looper m4614j() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return myLooper;
    }

    /* renamed from: k */
    public static int m4613k(Context context) {
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
                        case 19:
                        default:
                            i2 = 6;
                            break;
                        case 18:
                            break;
                        case 20:
                            i2 = 9;
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

    /* renamed from: l */
    public static int m4612l(int i) {
        if (i != 8) {
            if (i == 16) {
                return 2;
            }
            if (i == 24) {
                return 536870912;
            }
            return i != 32 ? 0 : 805306368;
        }
        return 3;
    }

    /* renamed from: m */
    public static int m4611m(int i, int i2) {
        if (i != 2) {
            int i3 = i2;
            if (i != 3) {
                if (i != 4) {
                    if (i != 268435456) {
                        if (i == 536870912) {
                            return i2 * 3;
                        }
                        if (i != 805306368) {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                i3 = i2 * 4;
            }
            return i3;
        }
        return i2 * 2;
    }

    /* renamed from: n */
    public static int m4610n(int i) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public static String m4609o(StringBuilder sb, Formatter formatter, long j) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = 0;
        }
        long j2 = (c + 500) / 1000;
        long j3 = j2 % 60;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 / 3600;
        sb.setLength(0);
        return j5 > 0 ? formatter.format("%d:%02d:%02d", Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3)).toString() : formatter.format("%02d:%02d", Long.valueOf(j4), Long.valueOf(j3)).toString();
    }

    /* renamed from: p */
    public static String m4608p(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            C24789n.m4576a("Failed to read system property " + str, e);
            return null;
        }
    }

    /* renamed from: q */
    public static String m4607q(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str2 = "?";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(StringConstant.SLASH);
        sb.append(str2);
        sb.append(" (Linux;Android ");
        return C22128a.m8610j(sb, Build.VERSION.RELEASE, ") ", "ExoPlayerLib/2.11.4");
    }

    /* renamed from: r */
    public static byte[] m4606r(String str) {
        return str.getBytes(Charset.forName(StringConstant.UTF8));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a6, code lost:
        r10.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ab, code lost:
        return false;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m4605s(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r7, p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r8, java.util.zip.Inflater r9) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.m4605s(e.m.a.c.q1.t, e.m.a.c.q1.t, java.util.zip.Inflater):boolean");
    }

    /* renamed from: t */
    public static boolean m4604t(int i) {
        return i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: u */
    public static boolean m4603u(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: v */
    public static boolean m4602v(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: w */
    public static String m4601w(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        String str3 = str;
        if (!replace.isEmpty()) {
            str3 = "und".equals(replace) ? str : replace;
        }
        String m4626D = m4626D(str3);
        String str4 = m4627C(m4626D, StringConstant.DASH)[0];
        if (f69434h == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f69435i.length);
            for (String str5 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str5).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        hashMap.put(iSO3Language, str5);
                    }
                } catch (MissingResourceException e) {
                }
            }
            int i = 0;
            while (true) {
                String[] strArr = f69435i;
                if (i >= strArr.length) {
                    break;
                }
                hashMap.put(strArr[i], strArr[i + 1]);
                i += 2;
            }
            f69434h = hashMap;
        }
        String str6 = f69434h.get(str4);
        String str7 = str4;
        String str8 = m4626D;
        if (str6 != null) {
            StringBuilder m8728C = C22128a.m8728C(str6);
            m8728C.append(m4626D.substring(str4.length()));
            str8 = m8728C.toString();
            str7 = str6;
        }
        int i2 = 0;
        if (!"no".equals(str7)) {
            i2 = 0;
            if (!"i".equals(str7)) {
                str2 = str8;
                if ("zh".equals(str7)) {
                    i2 = 0;
                }
                return str2;
            }
        }
        while (true) {
            String[] strArr2 = f69436j;
            str2 = str8;
            if (i2 >= strArr2.length) {
                break;
            } else if (str8.startsWith(strArr2[i2])) {
                str2 = strArr2[i2 + 1] + str8.substring(strArr2[i2].length());
                break;
            } else {
                i2 += 2;
            }
        }
        return str2;
    }

    /* renamed from: x */
    public static <T> T[] m4600x(T[] tArr, int i) {
        C26232y.m2310r(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: y */
    public static <T> T[] m4599y(T[] tArr, int i, int i2) {
        C26232y.m2310r(i >= 0);
        C26232y.m2310r(i2 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i, i2);
    }

    /* renamed from: z */
    public static long m4598z(long j, long j2, long j3) {
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
