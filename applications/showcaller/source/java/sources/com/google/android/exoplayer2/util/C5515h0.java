package com.google.android.exoplayer2.util;

import android.annotation.TargetApi;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.android.exoplayer2.C5579w0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.exoplayer2.util.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/h0.class */
public final class C5515h0 {

    /* renamed from: a */
    public static final int f17876a;

    /* renamed from: b */
    public static final String f17877b;

    /* renamed from: c */
    public static final String f17878c;

    /* renamed from: d */
    public static final String f17879d;

    /* renamed from: e */
    public static final String f17880e;

    /* renamed from: j */
    private static HashMap<String, String> f17885j;

    /* renamed from: f */
    public static final byte[] f17881f = new byte[0];

    /* renamed from: g */
    private static final Pattern f17882g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");

    /* renamed from: h */
    private static final Pattern f17883h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");

    /* renamed from: i */
    private static final Pattern f17884i = Pattern.compile("%([A-Fa-f0-9]{2})");

    /* renamed from: k */
    private static final String[] f17886k = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};

    /* renamed from: l */
    private static final String[] f17887l = {"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};

    /* renamed from: m */
    private static final int[] f17888m = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    /* renamed from: n */
    private static final int[] f17889n = {0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};

    static {
        int i = Build.VERSION.SDK_INT;
        f17876a = i;
        String str = Build.DEVICE;
        f17877b = str;
        String str2 = Build.MANUFACTURER;
        f17878c = str2;
        String str3 = Build.MODEL;
        f17879d = str3;
        f17880e = str + ", " + str3 + ", " + str2 + ", " + i;
    }

    /* renamed from: A */
    public static String m18871A(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return m18800w0(networkCountryIso);
            }
        }
        return m18800w0(Locale.getDefault().getCountry());
    }

    /* renamed from: B */
    public static String m18870B(Locale locale) {
        return f17876a >= 21 ? m18869C(locale) : locale.toString();
    }

    @TargetApi(21)
    /* renamed from: C */
    private static String m18869C(Locale locale) {
        return locale.toLanguageTag();
    }

    /* renamed from: D */
    public static Looper m18868D() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return myLooper;
    }

    /* renamed from: E */
    public static long m18867E(long j, float f) {
        return f == 1.0f ? j : Math.round(j * f);
    }

    /* renamed from: F */
    private static int m18866F(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
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
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return 9;
        }
    }

    /* renamed from: G */
    public static int m18865G(Context context) {
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
                    return m18866F(activeNetworkInfo);
                }
                i = 1;
            }
        } catch (SecurityException e) {
        }
        return i;
    }

    /* renamed from: H */
    public static int m18864H(int i) {
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

    /* renamed from: I */
    public static int m18863I(int i, int i2) {
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

    /* renamed from: J */
    public static long m18862J(long j, float f) {
        return f == 1.0f ? j : Math.round(j / f);
    }

    /* renamed from: K */
    public static int m18861K(int i) {
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
    /* renamed from: L */
    public static String m18860L(StringBuilder sb, Formatter formatter, long j) {
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

    /* renamed from: M */
    public static String[] m18859M() {
        String[] m18858N = m18858N();
        for (int i = 0; i < m18858N.length; i++) {
            m18858N[i] = m18840c0(m18858N[i]);
        }
        return m18858N;
    }

    /* renamed from: N */
    private static String[] m18858N() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return f17876a >= 24 ? m18857O(configuration) : new String[]{m18870B(configuration.locale)};
    }

    @TargetApi(24)
    /* renamed from: O */
    private static String[] m18857O(Configuration configuration) {
        return m18818n0(configuration.getLocales().toLanguageTags(), ",");
    }

    /* renamed from: P */
    public static String m18856P(int i) {
        String str;
        switch (i) {
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "metadata";
            case 5:
                return "camera motion";
            case 6:
                return "none";
            default:
                if (i >= 10000) {
                    str = "custom (" + i + ")";
                } else {
                    str = "?";
                }
                return str;
        }
    }

    /* renamed from: Q */
    public static String m18855Q(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str2 = "?";
        }
        return str + "/" + str2 + " (Linux;Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/2.11.3";
    }

    /* renamed from: R */
    public static byte[] m18854R(String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
        r10.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
        return false;
     */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m18853S(com.google.android.exoplayer2.util.C5536v r7, com.google.android.exoplayer2.util.C5536v r8, java.util.zip.Inflater r9) {
        /*
            r0 = r7
            int r0 = r0.m18678a()
            if (r0 > 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r8
            byte[] r0 = r0.f17941a
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            int r0 = r0.length
            r1 = r7
            int r1 = r1.m18678a()
            if (r0 >= r1) goto L24
            r0 = r7
            int r0 = r0.m18678a()
            r1 = 2
            int r0 = r0 * r1
            byte[] r0 = new byte[r0]
            r11 = r0
        L24:
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L32
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r1 = r0
            r1.<init>()
            r10 = r0
        L32:
            r0 = r10
            r1 = r7
            byte[] r1 = r1.f17941a
            r2 = r7
            int r2 = r2.m18676c()
            r3 = r7
            int r3 = r3.m18678a()
            r0.setInput(r1, r2, r3)
            r0 = 0
            r12 = r0
        L45:
            r0 = r12
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r11
            int r4 = r4.length     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            r5 = r12
            int r4 = r4 - r5
            int r1 = r1.inflate(r2, r3, r4)     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            int r0 = r0 + r1
            r13 = r0
            r0 = r10
            boolean r0 = r0.finished()     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            if (r0 == 0) goto L6d
            r0 = r8
            r1 = r11
            r2 = r13
            r0.m18682K(r1, r2)     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            r0 = r10
            r0.reset()
            r0 = 1
            return r0
        L6d:
            r0 = r10
            boolean r0 = r0.needsDictionary()     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            if (r0 != 0) goto L9d
            r0 = r10
            boolean r0 = r0.needsInput()     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            if (r0 == 0) goto L7e
            goto L9d
        L7e:
            r0 = r13
            r12 = r0
            r0 = r13
            r1 = r11
            int r1 = r1.length     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            if (r0 != r1) goto L45
            r0 = r11
            r1 = r11
            int r1 = r1.length     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            r2 = 2
            int r1 = r1 * r2
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
            r11 = r0
            r0 = r13
            r12 = r0
            goto L45
        L9d:
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        La3:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = r7
            throw r0
        Laa:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5515h0.m18853S(com.google.android.exoplayer2.util.v, com.google.android.exoplayer2.util.v, java.util.zip.Inflater):boolean");
    }

    /* renamed from: T */
    public static boolean m18852T(int i) {
        return i == 536870912 || i == 805306368;
    }

    /* renamed from: U */
    public static boolean m18851U(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: V */
    public static boolean m18850V(int i) {
        return i == 10 || i == 13;
    }

    /* renamed from: W */
    public static boolean m18849W(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    /* renamed from: X */
    public static boolean m18848X(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: Y */
    public static /* synthetic */ Thread m18847Y(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* renamed from: Z */
    public static int m18846Z(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static long m18845a(long j, long j2, long j3) {
        long j4 = j + j2;
        return ((j ^ j4) & (j2 ^ j4)) < 0 ? j3 : j4;
    }

    /* renamed from: a0 */
    private static String m18844a0(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f17887l;
            if (i < strArr.length) {
                if (str.startsWith(strArr[i])) {
                    return strArr[i + 1] + str.substring(strArr[i].length());
                }
                i += 2;
            } else {
                return str;
            }
        }
    }

    /* renamed from: b */
    public static boolean m18843b(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b0 */
    public static ExecutorService m18842b0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer2.util.d
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return C5515h0.m18847Y(str, runnable);
            }
        });
    }

    /* renamed from: c */
    public static <T extends Comparable<? super T>> int m18841c(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int binarySearch = Collections.binarySearch(list, t);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        } else {
            int size = list.size();
            do {
                binarySearch++;
                if (binarySearch >= size) {
                    break;
                }
            } while (list.get(binarySearch).compareTo(t) == 0);
            if (z) {
                binarySearch--;
            }
        }
        int i = binarySearch;
        if (z2) {
            i = Math.min(list.size() - 1, binarySearch);
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0099, code lost:
        if ("zh".equals(r6) != false) goto L23;
     */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m18840c0(java.lang.String r4) {
        /*
            r0 = r4
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = r4
            r1 = 95
            r2 = 45
            java.lang.String r0 = r0.replace(r1, r2)
            r5 = r0
            r0 = r4
            r6 = r0
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L29
            java.lang.String r0 = "und"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L27
            r0 = r4
            r6 = r0
            goto L29
        L27:
            r0 = r5
            r6 = r0
        L29:
            r0 = r6
            java.lang.String r0 = m18804u0(r0)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "-"
            java.lang.String[] r0 = m18816o0(r0, r1)
            r1 = 0
            r0 = r0[r1]
            r8 = r0
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.exoplayer2.util.C5515h0.f17885j
            if (r0 != 0) goto L45
            java.util.HashMap r0 = m18807t()
            com.google.android.exoplayer2.util.C5515h0.f17885j = r0
        L45:
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.exoplayer2.util.C5515h0.f17885j
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r8
            r6 = r0
            r0 = r7
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L7d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r7
            r2 = r8
            int r2 = r2.length()
            java.lang.String r1 = r1.substring(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.String r0 = r0.toString()
            r4 = r0
            r0 = r5
            r6 = r0
        L7d:
            java.lang.String r0 = "no"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9c
            java.lang.String r0 = "i"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9c
            r0 = r4
            r5 = r0
            java.lang.String r0 = "zh"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto La1
        L9c:
            r0 = r4
            java.lang.String r0 = m18844a0(r0)
            r5 = r0
        La1:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5515h0.m18840c0(java.lang.String):java.lang.String");
    }

    /* renamed from: d */
    public static int m18839d(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: d0 */
    public static <T> T[] m18838d0(T[] tArr, T t) {
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length + 1);
        copyOf[tArr.length] = t;
        return (T[]) m18831h(copyOf);
    }

    /* renamed from: e */
    public static <T extends Comparable<? super T>> int m18837e(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int binarySearch = Collections.binarySearch(list, t);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i--;
                if (i < 0) {
                    break;
                }
            } while (list.get(i).compareTo(t) == 0);
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

    /* renamed from: e0 */
    public static <T> T[] m18836e0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: f */
    public static int m18835f(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: f0 */
    public static <T> T[] m18834f0(T[] tArr, int i) {
        C5508e.m18915a(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: g */
    public static <T> T m18833g(T t) {
        return t;
    }

    /* renamed from: g0 */
    public static <T> T[] m18832g0(T[] tArr, int i, int i2) {
        C5508e.m18915a(i >= 0);
        C5508e.m18915a(i2 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i, i2);
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: h */
    public static <T> T[] m18831h(T[] tArr) {
        return tArr;
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: h0 */
    public static long m18830h0(String str) {
        Matcher matcher = f17882g.matcher(str);
        if (!matcher.matches()) {
            throw new ParserException("Invalid date/time format: " + str);
        }
        int i = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            int parseInt = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            i = parseInt;
            if ("-".equals(matcher.group(11))) {
                i = parseInt * (-1);
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        ?? timeInMillis = gregorianCalendar.getTimeInMillis();
        char c = timeInMillis;
        if (i != 0) {
            c = timeInMillis - (i * 60000);
        }
        return c;
    }

    /* renamed from: i */
    public static int m18829i(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: i0 */
    public static boolean m18828i0(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: j */
    public static void m18827j(AbstractC5478j abstractC5478j) {
        if (abstractC5478j != null) {
            try {
                abstractC5478j.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: j0 */
    public static <T> void m18826j0(List<T> list, int i, int i2) {
        if (i < 0 || i2 > list.size() || i > i2) {
            throw new IllegalArgumentException();
        }
        if (i == i2) {
            return;
        }
        list.subList(i, i2).clear();
    }

    /* renamed from: k */
    public static void m18825k(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: k0 */
    public static long m18824k0(long j, C5579w0 c5579w0, long j2, long j3) {
        if (C5579w0.f18114a.equals(c5579w0)) {
            return j;
        }
        long m18810r0 = m18810r0(j, c5579w0.f18119f, Long.MIN_VALUE);
        long m18845a = m18845a(j, c5579w0.f18120g, Long.MAX_VALUE);
        boolean z = true;
        boolean z2 = m18810r0 <= j2 && j2 <= m18845a;
        if (m18810r0 > j3 || j3 > m18845a) {
            z = false;
        }
        return (!z2 || !z) ? z2 ? j2 : z ? j3 : m18810r0 : Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
    }

    /* renamed from: l */
    public static int m18823l(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        return i < 0 ? -1 : i == 0 ? 0 : 1;
    }

    /* renamed from: l0 */
    public static long m18822l0(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i < 0 || j3 % j2 != 0) {
            if (i < 0 && j2 % j3 == 0) {
                return j * (j2 / j3);
            }
            return (long) (j * (j2 / j3));
        }
        return j / (j3 / j2);
    }

    /* renamed from: m */
    public static float m18821m(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: m0 */
    public static void m18820m0(long[] jArr, long j, long j2) {
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

    /* renamed from: n */
    public static int m18819n(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: n0 */
    public static String[] m18818n0(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: o */
    public static long m18817o(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: o0 */
    public static String[] m18816o0(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: p */
    public static boolean m18815p(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (m18843b(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p0 */
    public static String[] m18814p0(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : m18818n0(str.trim(), "(\\s*,\\s*)");
    }

    /* renamed from: q */
    public static int m18813q(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = f17888m[((i3 >>> 24) ^ (bArr[i] & 255)) & 255] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    /* renamed from: q0 */
    public static ComponentName m18812q0(Context context, Intent intent) {
        return f17876a >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    /* renamed from: r */
    public static int m18811r(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = f17889n[i3 ^ (bArr[i] & 255)];
            i++;
        }
        return i3;
    }

    /* renamed from: r0 */
    public static long m18810r0(long j, long j2, long j3) {
        long j4 = j - j2;
        return ((j ^ j4) & (j2 ^ j)) < 0 ? j3 : j4;
    }

    /* renamed from: s */
    public static Handler m18809s(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    /* renamed from: s0 */
    public static int[] m18808s0(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }

    /* renamed from: t */
    private static HashMap<String, String> m18807t() {
        int i;
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f17886k.length);
        int length = iSOLanguages.length;
        int i2 = 0;
        while (true) {
            i = 0;
            if (i2 < length) {
                String str = iSOLanguages[i2];
                try {
                    String iSO3Language = new Locale(str).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        hashMap.put(iSO3Language, str);
                    }
                } catch (MissingResourceException e) {
                }
                i2++;
            }
        }
        while (true) {
            String[] strArr = f17886k;
            if (i < strArr.length) {
                hashMap.put(strArr[i], strArr[i + 1]);
                i += 2;
            } else {
                return hashMap;
            }
        }
    }

    /* renamed from: t0 */
    public static long m18806t0(int i, int i2) {
        return m18802v0(i2) | (m18802v0(i) << 32);
    }

    /* renamed from: u */
    public static String m18805u(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: u0 */
    public static String m18804u0(String str) {
        if (str != null) {
            str = str.toLowerCase(Locale.US);
        }
        return str;
    }

    /* renamed from: v */
    public static String m18803v(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    /* renamed from: v0 */
    public static long m18802v0(int i) {
        return i & 4294967295L;
    }

    /* renamed from: w */
    public static String m18801w(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName("UTF-8"));
    }

    /* renamed from: w0 */
    public static String m18800w0(String str) {
        if (str != null) {
            str = str.toUpperCase(Locale.US);
        }
        return str;
    }

    /* renamed from: x */
    public static int m18799x(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                int i2 = f17876a;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    /* renamed from: x0 */
    public static void m18798x0(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: y */
    public static String m18797y(String str, int i) {
        String[] m18814p0 = m18814p0(str);
        String str2 = null;
        if (m18814p0.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : m18814p0) {
            if (i == C5529r.m18727j(str3)) {
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

    /* renamed from: z */
    public static String m18796z(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].getClass().getSimpleName());
            if (i < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }
}
