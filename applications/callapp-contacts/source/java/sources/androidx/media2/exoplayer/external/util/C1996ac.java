package androidx.media2.exoplayer.external.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.model.Constants;
import com.explorestack.protobuf.openrtb.LossReason;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
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
/* renamed from: androidx.media2.exoplayer.external.util.ac */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ac.class */
public final class C1996ac {

    /* renamed from: a */
    public static final int f8062a;

    /* renamed from: b */
    public static final String f8063b;

    /* renamed from: c */
    public static final String f8064c;

    /* renamed from: d */
    public static final String f8065d;

    /* renamed from: e */
    public static final String f8066e;

    /* renamed from: j */
    private static HashMap<String, String> f8071j;

    /* renamed from: f */
    public static final byte[] f8067f = new byte[0];

    /* renamed from: g */
    private static final Pattern f8068g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");

    /* renamed from: h */
    private static final Pattern f8069h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");

    /* renamed from: i */
    private static final Pattern f8070i = Pattern.compile("%([A-Fa-f0-9]{2})");

    /* renamed from: k */
    private static final String[] f8072k = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "slo", "sk", "wel", "cy"};

    /* renamed from: l */
    private static final int[] f8073l = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    static {
        int i = Build.VERSION.SDK_INT;
        f8062a = i;
        String str = Build.DEVICE;
        f8063b = str;
        String str2 = Build.MANUFACTURER;
        f8064c = str2;
        String str3 = Build.MODEL;
        f8065d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i);
        f8066e = sb.toString();
    }

    private C1996ac() {
    }

    /* renamed from: a */
    public static float m41677a(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: a */
    public static int m41675a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: a */
    public static int m41674a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: a */
    public static int m41669a(Context context) {
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
                    switch (activeNetworkInfo.getSubtype()) {
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
                        default:
                            return 6;
                        case 18:
                            return 2;
                    }
                }
                i = 1;
            }
        } catch (SecurityException e) {
        }
        return i;
    }

    /* renamed from: a */
    public static <T extends Comparable<? super T>> int m41650a(List<? extends Comparable<? super T>> list, T t, boolean z) {
        int i;
        int i2;
        int binarySearch = Collections.binarySearch(list, t);
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
            } while (list.get(i2).compareTo(t) == 0);
            i = i2 + 1;
        }
        int i4 = i;
        if (z) {
            i4 = Math.max(0, i);
        }
        return i4;
    }

    /* renamed from: a */
    public static int m41647a(int[] iArr, int i) {
        int i2;
        int i3;
        int binarySearch = Arrays.binarySearch(iArr, i);
        int i4 = binarySearch;
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            do {
                i3 = i4 - 1;
                if (i3 < 0) {
                    break;
                }
                i4 = i3;
            } while (iArr[i3] == i);
            i2 = i3;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m41645a(long[] jArr, long j, boolean z) {
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
        if (z) {
            i4 = Math.max(0, i);
        }
        return i4;
    }

    /* renamed from: a */
    public static int m41644a(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i = binarySearch ^ (-1);
        } else {
            do {
                i2 = i3 + 1;
                if (i2 >= jArr.length) {
                    break;
                }
                i3 = i2;
            } while (jArr[i2] == j);
            i = z ? i2 - 1 : i2;
        }
        return z2 ? Math.min(jArr.length - 1, i) : i;
    }

    /* renamed from: a */
    public static long m41673a(long j, float f) {
        return f == 1.0f ? j : Math.round(j * f);
    }

    /* renamed from: a */
    public static long m41672a(long j, long j2) {
        long j3 = j + j2;
        if (((j ^ j3) & (j2 ^ j3)) < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    /* renamed from: a */
    public static long m41671a(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    public static long m41670a(long j, C1378aj c1378aj, long j2, long j3) {
        if (C1378aj.f5153a.equals(c1378aj)) {
            return j;
        }
        long j4 = c1378aj.f5158f;
        ?? r0 = j - j4;
        char c = r0;
        if (((j4 ^ j) & (j ^ r0)) < 0) {
            c = 0;
        }
        long m41672a = m41672a(j, c1378aj.f5159g);
        boolean z = true;
        boolean z2 = c <= j2 && j2 <= m41672a;
        if (c > j3 || j3 > m41672a) {
            z = false;
        }
        return (!z2 || !z) ? z2 ? j2 : z ? j3 : c : Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
    }

    /* renamed from: a */
    private static Point m41668a(Context context, Display display) {
        int i = f8062a;
        if (i <= 28 && display.getDisplayId() == 0 && m41624c(context)) {
            if ("Sony".equals(f8064c) && f8065d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
            String m41613i = i < 28 ? m41613i("sys.display-size") : m41613i("vendor.display-size");
            if (!TextUtils.isEmpty(m41613i)) {
                try {
                    String[] split = m41613i.trim().split("x", -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException e) {
                }
                String valueOf = String.valueOf(m41613i);
                C2009j.m41580b("Util", valueOf.length() != 0 ? "Invalid display size: ".concat(valueOf) : new String("Invalid display size: "));
            }
        }
        Point point = new Point();
        int i2 = f8062a;
        if (i2 >= 23) {
            Display.Mode mode = display.getMode();
            point.x = mode.getPhysicalWidth();
            point.y = mode.getPhysicalHeight();
        } else if (i2 >= 17) {
            display.getRealSize(point);
        } else {
            display.getSize(point);
        }
        return point;
    }

    /* renamed from: a */
    public static Handler m41665a(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    /* renamed from: a */
    public static Looper m41678a() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m41659a(T t) {
        return t;
    }

    /* renamed from: a */
    public static String m41667a(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str2 = "?";
        }
        String str3 = Build.VERSION.RELEASE;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        sb.append(" (Linux;Android ");
        sb.append(str3);
        sb.append(") ExoPlayerLib/2.10.4");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m41656a(String str, int i) {
        String[] m41614h = m41614h(str);
        if (m41614h.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : m41614h) {
            if (i == C2012m.m41566i(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() <= 0) {
            return null;
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m41653a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: a */
    public static String m41649a(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    /* renamed from: a */
    public static String m41648a(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName("UTF-8"));
    }

    /* renamed from: a */
    public static final /* synthetic */ Thread m41655a(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* renamed from: a */
    public static ExecutorService m41657a(String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory(str) { // from class: androidx.media2.exoplayer.external.util.ad

            /* renamed from: a */
            private final String f8074a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8074a = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return C1996ac.m41655a(this.f8074a, runnable);
            }
        });
    }

    /* renamed from: a */
    public static void m41663a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m41662a(AbstractC1968f abstractC1968f) {
        if (abstractC1968f != null) {
            try {
                abstractC1968f.mo41196c();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m41660a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
        }
    }

    /* renamed from: a */
    public static <T> void m41651a(List<T> list, int i, int i2) {
        if (i < 0 || i2 > list.size() || i > i2) {
            throw new IllegalArgumentException();
        }
        if (i == i2) {
            return;
        }
        list.subList(i, i2).clear();
    }

    /* renamed from: a */
    public static void m41646a(long[] jArr, long j) {
        int i = (j > 1000000L ? 1 : (j == 1000000L ? 0 : -1));
        if (i >= 0 && j % 1000000 == 0) {
            long j2 = j / 1000000;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] / j2;
            }
        } else if (i >= 0 || 1000000 % j != 0) {
            double d = 1000000.0d / j;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = (long) (jArr[i3] * d);
            }
        } else {
            long j3 = 1000000 / j;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = jArr[i4] * j3;
            }
        }
    }

    /* renamed from: a */
    public static boolean m41676a(int i) {
        return i == 10 || i == 13;
    }

    /* renamed from: a */
    public static boolean m41666a(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    /* renamed from: a */
    public static boolean m41664a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
        r10.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
        return false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m41661a(androidx.media2.exoplayer.external.util.C2018p r7, androidx.media2.exoplayer.external.util.C2018p r8, java.util.zip.Inflater r9) {
        /*
            r0 = r7
            int r0 = r0.m41536b()
            if (r0 > 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r8
            byte[] r0 = r0.f8131a
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            int r0 = r0.length
            r1 = r7
            int r1 = r1.m41536b()
            if (r0 >= r1) goto L24
            r0 = r7
            int r0 = r0.m41536b()
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
            byte[] r1 = r1.f8131a
            r2 = r7
            int r2 = r2.f8132b
            r3 = r7
            int r3 = r3.m41536b()
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
            r0.m41538a(r1, r2)     // Catch: java.lang.Throwable -> La3 java.util.zip.DataFormatException -> Laa
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.C1996ac.m41661a(androidx.media2.exoplayer.external.util.p, androidx.media2.exoplayer.external.util.p, java.util.zip.Inflater):boolean");
    }

    /* renamed from: a */
    public static boolean m41658a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: a */
    public static boolean m41641a(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (m41658a(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static int[] m41652a(List<Integer> list) {
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

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T[] m41643a(T[] tArr) {
        return tArr;
    }

    /* renamed from: a */
    public static <T> T[] m41642a(T[] tArr, int i) {
        C1993a.m41688a(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: a */
    public static <T> T[] m41640a(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: a */
    public static String[] m41654a(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: b */
    public static int m41638b(int i) {
        if (i != 8) {
            if (i == 16) {
                return 2;
            }
            return i != 24 ? i != 32 ? 0 : 1073741824 : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        return 3;
    }

    /* renamed from: b */
    public static int m41637b(int i, int i2) {
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

    /* renamed from: b */
    public static int m41635b(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        return i == 0 ? 0 : 1;
    }

    /* renamed from: b */
    public static int m41632b(Uri uri) {
        String path = uri.getPath();
        if (path != null) {
            String m41620d = m41620d(path);
            if (m41620d.endsWith(".mpd")) {
                return 0;
            }
            if (m41620d.endsWith(".m3u8")) {
                return 2;
            }
            return m41620d.matches(".*\\.ism(l)?(/manifest(\\(.+\\))?)?") ? 1 : 3;
        }
        return 3;
    }

    /* renamed from: b */
    public static int m41629b(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            i2 = f8073l[((i2 >>> 24) ^ (bArr[i3] & 255)) & 255] ^ (i2 << 8);
        }
        return i2;
    }

    /* renamed from: b */
    public static long m41636b(long j, float f) {
        return f == 1.0f ? j : Math.round(j / f);
    }

    /* renamed from: b */
    public static long m41634b(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i < 0 || j3 % j2 != 0) {
            if (i < 0 && j2 % j3 == 0) {
                return j * (j2 / j3);
            }
            return (long) (j * (j2 / j3));
        }
        return j / (j3 / j2);
    }

    /* renamed from: b */
    public static String m41633b(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER)) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return m41618e(networkCountryIso);
            }
        }
        return m41618e(Locale.getDefault().getCountry());
    }

    /* renamed from: b */
    public static String m41631b(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        String str2 = replace;
        if (f8062a >= 21) {
            str2 = Locale.forLanguageTag(replace).toLanguageTag();
        }
        String str3 = str;
        if (!str2.isEmpty()) {
            str3 = "und".equals(str2) ? str : str2;
        }
        String m41620d = m41620d(str3);
        String str4 = m41620d.split(VerificationLanguage.REGION_PREFIX, 2)[0];
        String str5 = m41620d;
        if (str4.length() == 3) {
            if (f8071j == null) {
                f8071j = m41626c();
            }
            String str6 = f8071j.get(str4);
            str5 = m41620d;
            if (str6 != null) {
                String valueOf = String.valueOf(str6);
                String valueOf2 = String.valueOf(m41620d.substring(3));
                str5 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            }
        }
        return str5;
    }

    /* renamed from: b */
    public static String m41628b(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].getClass().getSimpleName());
            if (i < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static <T> T[] m41627b(T[] tArr, int i) {
        C1993a.m41688a(true);
        C1993a.m41688a(i <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, 1, i);
    }

    /* renamed from: b */
    public static String[] m41639b() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        int i = f8062a;
        String[] split = i >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : i >= 21 ? new String[]{configuration.locale.toLanguageTag()} : new String[]{configuration.locale.toString()};
        for (int i2 = 0; i2 < split.length; i2++) {
            split[i2] = m41631b(split[i2]);
        }
        return split;
    }

    /* renamed from: b */
    public static String[] m41630b(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: c */
    private static HashMap<String, String> m41626c() {
        int i;
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f8072k.length);
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
            String[] strArr = f8072k;
            if (i < strArr.length) {
                hashMap.put(strArr[i], strArr[i + 1]);
                i += 2;
            } else {
                return hashMap;
            }
        }
    }

    /* renamed from: c */
    public static boolean m41625c(int i) {
        return i == 3 || i == 2 || i == Integer.MIN_VALUE || i == 1073741824 || i == 4;
    }

    /* renamed from: c */
    public static boolean m41624c(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: c */
    public static byte[] m41623c(String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    /* renamed from: d */
    public static Point m41621d(Context context) {
        return m41668a(context, ((WindowManager) context.getSystemService("window")).getDefaultDisplay());
    }

    /* renamed from: d */
    public static String m41620d(String str) {
        return str == null ? str : str.toLowerCase(Locale.US);
    }

    /* renamed from: d */
    public static boolean m41622d(int i) {
        return i == Integer.MIN_VALUE || i == 1073741824;
    }

    /* renamed from: e */
    public static int m41619e(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                int i2 = f8062a;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    /* renamed from: e */
    public static String m41618e(String str) {
        return str == null ? str : str.toUpperCase(Locale.US);
    }

    /* renamed from: f */
    public static int m41617f(int i) {
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

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: f */
    public static long m41616f(String str) throws ParserException {
        Matcher matcher = f8068g.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            throw new ParserException(valueOf.length() != 0 ? "Invalid date/time format: ".concat(valueOf) : new String("Invalid date/time format: "));
        }
        int i = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            int parseInt = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            i = parseInt;
            if (VerificationLanguage.REGION_PREFIX.equals(matcher.group(11))) {
                i = parseInt * (-1);
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            String valueOf2 = String.valueOf(matcher.group(8));
            gregorianCalendar.set(14, new BigDecimal(valueOf2.length() != 0 ? "0.".concat(valueOf2) : new String("0.")).movePointRight(3).intValue());
        }
        ?? timeInMillis = gregorianCalendar.getTimeInMillis();
        char c = timeInMillis;
        if (i != 0) {
            c = timeInMillis - (i * 60000);
        }
        return c;
    }

    /* renamed from: g */
    public static byte[] m41615g(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }

    /* renamed from: h */
    public static String[] m41614h(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
    }

    /* renamed from: i */
    private static String m41613i(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            String valueOf = String.valueOf(str);
            C2009j.m41579b("Util", valueOf.length() != 0 ? "Failed to read system property ".concat(valueOf) : new String("Failed to read system property "), e);
            return null;
        }
    }
}
