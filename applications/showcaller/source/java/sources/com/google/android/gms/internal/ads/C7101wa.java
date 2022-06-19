package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.internal.ads.wa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wa.class */
public final class C7101wa {

    /* renamed from: a */
    public static final int f31475a;

    /* renamed from: b */
    public static final String f31476b;

    /* renamed from: c */
    public static final String f31477c;

    /* renamed from: d */
    public static final String f31478d;

    /* renamed from: e */
    public static final String f31479e;

    /* renamed from: k */
    private static HashMap<String, String> f31485k;

    /* renamed from: f */
    public static final byte[] f31480f = new byte[0];

    /* renamed from: g */
    private static final Pattern f31481g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");

    /* renamed from: h */
    private static final Pattern f31482h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");

    /* renamed from: i */
    private static final Pattern f31483i = Pattern.compile("%([A-Fa-f0-9]{2})");

    /* renamed from: j */
    private static final Pattern f31484j = Pattern.compile(".*\\.isml?(?:/(manifest(.*))?)?");

    /* renamed from: l */
    private static final String[] f31486l = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};

    /* renamed from: m */
    private static final String[] f31487m = {"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};

    /* renamed from: n */
    private static final int[] f31488n = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    /* renamed from: o */
    private static final int[] f31489o = {0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};

    static {
        int i = Build.VERSION.SDK_INT;
        f31475a = i;
        String str = Build.DEVICE;
        f31476b = str;
        String str2 = Build.MANUFACTURER;
        f31477c = str2;
        String str3 = Build.MODEL;
        f31478d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i);
        f31479e = sb.toString();
    }

    /* renamed from: A */
    public static byte[] m9727A(InputStream inputStream) {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    /* renamed from: B */
    public static Point m9726B(Context context) {
        Point point;
        String[] split;
        int i = f31475a;
        Display display = null;
        if (i >= 17) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            display = null;
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            }
        }
        Display display2 = display;
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            Objects.requireNonNull(windowManager);
            display2 = windowManager.getDefaultDisplay();
        }
        if (display2.getDisplayId() == 0 && m9671z(context)) {
            String m9723E = i < 28 ? m9723E("sys.display-size") : m9723E("vendor.display-size");
            if (!TextUtils.isEmpty(m9723E)) {
                try {
                    split = m9723E.trim().split("x", -1);
                } catch (NumberFormatException e) {
                }
                if (split.length == 2) {
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    if (parseInt > 0 && parseInt2 > 0) {
                        point = new Point(parseInt, parseInt2);
                        return point;
                    }
                }
                String valueOf = String.valueOf(m9723E);
                Log.e("Util", valueOf.length() != 0 ? "Invalid display size: ".concat(valueOf) : new String("Invalid display size: "));
            }
            if ("Sony".equals(f31477c) && f31478d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                point = new Point(3840, 2160);
                return point;
            }
        }
        point = new Point();
        int i2 = f31475a;
        if (i2 >= 23) {
            Display.Mode mode = display2.getMode();
            point.x = mode.getPhysicalWidth();
            point.y = mode.getPhysicalHeight();
        } else if (i2 >= 17) {
            display2.getRealSize(point);
        } else {
            display2.getSize(point);
        }
        return point;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: C */
    public static long m9725C(long j) {
        return j == -9223372036854775807L ? System.currentTimeMillis() : j + SystemClock.elapsedRealtime();
    }

    /* renamed from: D */
    public static String m9724D(int i) {
        if (i != 0) {
            if (i == 1) {
                return "NO_UNSUPPORTED_TYPE";
            }
            if (i == 2) {
                return "NO_UNSUPPORTED_DRM";
            }
            if (i == 3) {
                return "NO_EXCEEDS_CAPABILITIES";
            }
            if (i != 4) {
                throw new IllegalStateException();
            }
            return "YES";
        }
        return "NO";
    }

    /* renamed from: E */
    private static String m9723E(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            C6952s9.m11098b("Util", str.length() != 0 ? "Failed to read system property ".concat(str) : new String("Failed to read system property "), e);
            return null;
        }
    }

    /* renamed from: F */
    private static HashMap<String, String> m9722F() {
        int i;
        String[] iSOLanguages = Locale.getISOLanguages();
        int length = iSOLanguages.length;
        int length2 = f31486l.length;
        HashMap<String, String> hashMap = new HashMap<>(length + 86);
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
            String[] strArr = f31486l;
            int length3 = strArr.length;
            if (i < 86) {
                hashMap.put(strArr[i], strArr[i + 1]);
                i += 2;
            } else {
                return hashMap;
            }
        }
    }

    /* renamed from: G */
    public static boolean m9721G(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    /* renamed from: H */
    public static boolean m9720H(Object obj, Object obj2) {
        boolean z;
        if (obj != null) {
            z = obj.equals(obj2);
        } else if (obj2 == null) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: I */
    public static <T> T m9719I(T t) {
        return t;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: J */
    public static <T> T[] m9718J(T[] tArr) {
        return tArr;
    }

    /* renamed from: K */
    public static <T> T[] m9717K(T[] tArr, int i) {
        C7173y8.m8898a(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: L */
    public static <T> T[] m9716L(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, length + length2);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }

    /* renamed from: M */
    public static Handler m9715M(Handler.Callback callback) {
        Looper myLooper = Looper.myLooper();
        C7173y8.m8894e(myLooper);
        return new Handler(myLooper, null);
    }

    /* renamed from: N */
    public static Handler m9714N(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    /* renamed from: O */
    public static boolean m9713O(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    /* renamed from: P */
    public static Looper m9712P() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    /* renamed from: Q */
    public static ExecutorService m9711Q(String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory("ExoPlayer:Loader:ProgressiveMediaPeriod") { // from class: com.google.android.gms.internal.ads.va

            /* renamed from: a */
            private final String f31114a = "ExoPlayer:Loader:ProgressiveMediaPeriod";

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, this.f31114a);
            }
        });
    }

    /* renamed from: R */
    public static void m9710R(AbstractC7098w7 abstractC7098w7) {
        try {
            abstractC7098w7.mo8333g();
        } catch (IOException e) {
        }
    }

    /* renamed from: S */
    public static boolean m9709S(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: T */
    public static void m9708T(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: U */
    public static String m9707U(Locale locale) {
        return f31475a >= 21 ? locale.toLanguageTag() : locale.toString();
    }

    /* renamed from: V */
    public static String m9706V(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        String str3 = str;
        if (!replace.isEmpty()) {
            str3 = str;
            if (!replace.equals("und")) {
                str3 = replace;
            }
        }
        String m15053a = fu2.m15053a(str3);
        String str4 = m15053a.split("-", 2)[0];
        if (f31485k == null) {
            f31485k = m9722F();
        }
        String str5 = f31485k.get(str4);
        String str6 = str4;
        String str7 = m15053a;
        if (str5 != null) {
            String valueOf = String.valueOf(m15053a.substring(str4.length()));
            str7 = valueOf.length() != 0 ? str5.concat(valueOf) : new String(str5);
            str6 = str5;
        }
        int i = 0;
        if (!"no".equals(str6)) {
            i = 0;
            if (!"i".equals(str6)) {
                if (!"zh".equals(str6)) {
                    return str7;
                }
                i = 0;
            }
        }
        while (true) {
            String[] strArr = f31487m;
            int length = strArr.length;
            str2 = str7;
            if (i >= 18) {
                break;
            } else if (str7.startsWith(strArr[i])) {
                String valueOf2 = String.valueOf(strArr[i + 1]);
                String valueOf3 = String.valueOf(str7.substring(strArr[i].length()));
                str2 = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
            } else {
                i += 2;
            }
        }
        return str2;
    }

    /* renamed from: W */
    public static String m9705W(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, lu2.f26280c);
    }

    /* renamed from: X */
    public static byte[] m9704X(String str) {
        return str.getBytes(lu2.f26280c);
    }

    /* renamed from: Y */
    public static String[] m9703Y(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: Z */
    public static String[] m9702Z(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: a */
    public static long m9701a(long j, long j2, long j3) {
        long j4 = j + j2;
        if (((j ^ j4) & (j2 ^ j4)) < 0) {
            return Long.MAX_VALUE;
        }
        return j4;
    }

    /* renamed from: a0 */
    public static String m9700a0(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: b */
    public static long m9699b(long j, long j2, long j3) {
        long j4 = j - j2;
        if (((j ^ j4) & (j2 ^ j)) < 0) {
            return Long.MIN_VALUE;
        }
        return j4;
    }

    /* renamed from: b0 */
    public static int m9698b0(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: c */
    public static int m9697c(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int binarySearch = Arrays.binarySearch(iArr, i);
        int i3 = binarySearch;
        if (binarySearch >= 0) {
            do {
                i2 = i3 - 1;
                if (i2 < 0) {
                    break;
                }
                i3 = i2;
            } while (iArr[i2] == i);
        } else {
            i2 = -(binarySearch + 2);
        }
        return i2;
    }

    /* renamed from: c0 */
    public static int m9696c0(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: d */
    public static int m9695d(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i2 = i3 - 1;
                if (i2 < 0) {
                    break;
                }
                i3 = i2;
            } while (jArr[i2] == j);
            i = i2 + 1;
        }
        int i4 = i;
        if (z2) {
            i4 = Math.max(0, i);
        }
        return i4;
    }

    /* renamed from: d0 */
    public static long m9694d0(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: e */
    public static int m9693e(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i = binarySearch ^ (-1);
        } else {
            do {
                i = i2 + 1;
                if (i >= jArr.length) {
                    break;
                }
                i2 = i;
            } while (jArr[i] == j);
            if (z) {
                return i - 1;
            }
        }
        return i;
    }

    /* renamed from: e0 */
    public static float m9692e0(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: f */
    public static long m9691f(long j) {
        char c = j;
        if (j != -9223372036854775807L) {
            c = j == Long.MIN_VALUE ? j : j / 1000;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: g */
    public static long m9690g(long j) {
        char c = j;
        if (j != -9223372036854775807L) {
            c = j == Long.MIN_VALUE ? j : j * 1000;
        }
        return c;
    }

    /* renamed from: h */
    public static long m9689h(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        return (i < 0 || j3 % j2 != 0) ? (i >= 0 || j2 % j3 != 0) ? (long) (j * (j2 / j3)) : j * (j2 / j3) : j / (j3 / j2);
    }

    /* renamed from: i */
    public static void m9688i(long[] jArr, long j, long j2) {
        int i = (j2 > 1000000L ? 1 : (j2 == 1000000L ? 0 : -1));
        if (i >= 0 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] / j3;
            }
        } else if (i >= 0 || 1000000 % j2 != 0) {
            double d = 1000000.0d / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = (long) (jArr[i3] * d);
            }
        } else {
            long j4 = 1000000 / j2;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = jArr[i4] * j4;
            }
        }
    }

    /* renamed from: j */
    public static long m9687j(long j, float f) {
        return f == 1.0f ? j : Math.round(j * f);
    }

    /* renamed from: k */
    public static long m9686k(long j, float f) {
        return f == 1.0f ? j : Math.round(j / f);
    }

    /* renamed from: l */
    public static long m9685l(int i, int i2) {
        return (i2 & 4294967295L) | ((i & 4294967295L) << 32);
    }

    /* renamed from: m */
    public static String m9684m(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int length = objArr.length;
            if (i < length) {
                sb.append(objArr[i].getClass().getSimpleName());
                if (i < length - 1) {
                    sb.append(", ");
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: n */
    public static C7021u4 m9683n(int i, int i2, int i3) {
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n("audio/raw");
        c6947s4.m11175B(i2);
        c6947s4.m11174C(i3);
        c6947s4.m11173D(i);
        return c6947s4.m11168I();
    }

    /* renamed from: o */
    public static int m9682o(int i) {
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

    /* renamed from: p */
    public static boolean m9681p(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: q */
    public static boolean m9680q(int i) {
        return i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: r */
    public static int m9679r(int i) {
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
                int i2 = f31475a;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    /* renamed from: s */
    public static int m9678s(int i, int i2) {
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
        return i2 + i2;
    }

    /* renamed from: t */
    public static int m9677t(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    /* renamed from: u */
    public static int m9676u(int i) {
        if (i == 2 || i == 4) {
            return 6005;
        }
        if (i == 10) {
            return 6004;
        }
        if (i == 7) {
            return 6005;
        }
        if (i == 8) {
            return 6003;
        }
        switch (i) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    /* renamed from: v */
    public static int m9675v(byte[] bArr, int i, int i2, int i3) {
        int i4 = -1;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = f31488n[(i4 >>> 24) ^ (bArr[i5] & 255)] ^ (i4 << 8);
        }
        return i4;
    }

    /* renamed from: w */
    public static int m9674w(byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        while (i < i2) {
            i4 = f31489o[i4 ^ (bArr[i] & 255)];
            i++;
        }
        return i4;
    }

    /* renamed from: x */
    public static String m9673x(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return fu2.m15052b(networkCountryIso);
            }
        }
        return fu2.m15052b(Locale.getDefault().getCountry());
    }

    /* renamed from: y */
    public static String[] m9672y() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] split = f31475a >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{m9707U(configuration.locale)};
        for (int i = 0; i < split.length; i++) {
            split[i] = m9706V(split[i]);
        }
        return split;
    }

    /* renamed from: z */
    public static boolean m9671z(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }
}
