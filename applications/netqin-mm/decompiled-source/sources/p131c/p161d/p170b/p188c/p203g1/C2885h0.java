package p131c.p161d.p170b.p188c.p203g1;

import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.volley.Request;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p131c.p161d.p170b.p188c.C2963q0;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
/* renamed from: c.d.b.c.g1.h0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/h0.class */
public final class C2885h0 {

    /* renamed from: i */
    public static HashMap<String, String> f10485i;

    /* renamed from: a */
    public static final int f10477a = Build.VERSION.SDK_INT;

    /* renamed from: b */
    public static final String f10478b = Build.DEVICE;

    /* renamed from: c */
    public static final String f10479c = Build.MANUFACTURER;

    /* renamed from: d */
    public static final String f10480d = Build.MODEL;

    /* renamed from: e */
    public static final String f10481e = f10478b + ", " + f10480d + ", " + f10479c + ", " + f10477a;

    /* renamed from: f */
    public static final byte[] f10482f = new byte[0];

    /* renamed from: g */
    public static final Pattern f10483g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");

    /* renamed from: h */
    public static final Pattern f10484h = Pattern.compile("%([A-Fa-f0-9]{2})");

    /* renamed from: j */
    public static final String[] f10486j = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "slo", "sk", "wel", "cy"};

    /* renamed from: k */
    public static final int[] f10487k = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    static {
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
    }

    /* renamed from: a */
    public static float m28688a(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: a */
    public static int m28687a(int i) {
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
                int i2 = f10477a;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    /* renamed from: a */
    public static int m28686a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: a */
    public static int m28685a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: a */
    public static int m28683a(long j, long j2) {
        return j < j2 ? -1 : j == j2 ? 0 : 1;
    }

    /* renamed from: a */
    public static int m28677a(NetworkInfo networkInfo) {
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
            default:
                return 6;
            case 18:
                return 2;
        }
    }

    /* renamed from: a */
    public static int m28659a(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = f10487k[((i3 >>> 24) ^ (bArr[i] & 255)) & 255] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m28657a(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: a */
    public static long m28684a(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        double d = j;
        double d2 = f;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.round(d * d2);
    }

    /* renamed from: a */
    public static long m28682a(long j, long j2, long j3) {
        long j4 = j + j2;
        return ((j ^ j4) & (j2 ^ j4)) < 0 ? j3 : j4;
    }

    /* renamed from: a */
    public static long m28681a(long j, C2963q0 q0Var, long j2, long j3) {
        if (C2963q0.f10670c.equals(q0Var)) {
            return j;
        }
        long d = m28634d(j, q0Var.f10672a, Long.MIN_VALUE);
        long a = m28682a(j, q0Var.f10673b, Long.MAX_VALUE);
        boolean z = true;
        boolean z2 = d <= j2 && j2 <= a;
        if (d > j3 || j3 > a) {
            z = false;
        }
        return (!z2 || !z) ? z2 ? j2 : z ? j3 : d : Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
    }

    /* renamed from: a */
    public static ComponentName m28679a(Context context, Intent intent) {
        return f10477a >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    /* renamed from: a */
    public static Handler m28676a(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m28670a(T t) {
        return t;
    }

    /* renamed from: a */
    public static String m28680a(Context context) {
        TelephonyManager telephonyManager;
        if (!(context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null)) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return m28628g(networkCountryIso);
            }
        }
        return m28628g(Locale.getDefault().getCountry());
    }

    /* renamed from: a */
    public static String m28665a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* renamed from: a */
    public static String m28664a(StringBuilder sb, Formatter formatter, long j) {
        long j2 = j;
        if (j == -9223372036854775807L) {
            j2 = 0;
        }
        long j3 = (j2 + 500) / 1000;
        long j4 = j3 % 60;
        long j5 = (j3 / 60) % 60;
        long j6 = j3 / 3600;
        sb.setLength(0);
        return j6 > 0 ? formatter.format("%d:%02d:%02d", Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j4)).toString() : formatter.format("%02d:%02d", Long.valueOf(j5), Long.valueOf(j4)).toString();
    }

    /* renamed from: a */
    public static String m28661a(Locale locale) {
        return f10477a >= 21 ? m28644b(locale) : locale.toString();
    }

    /* renamed from: a */
    public static String m28660a(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
    }

    /* renamed from: a */
    public static /* synthetic */ Thread m28667a(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* renamed from: a */
    public static HashMap<String, String> m28689a() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f10486j.length);
        int i = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException e) {
            }
        }
        while (true) {
            String[] strArr = f10486j;
            if (i >= strArr.length) {
                return hashMap;
            }
            hashMap.put(strArr[i], strArr[i + 1]);
            i += 2;
        }
    }

    /* renamed from: a */
    public static void m28674a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m28673a(AbstractC2827j jVar) {
        if (jVar != null) {
            try {
                jVar.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m28671a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m28663a(Throwable th) {
        m28645b(th);
        throw null;
    }

    /* renamed from: a */
    public static void m28658a(long[] jArr, long j, long j2) {
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = jArr[i] / j3;
            }
        } else if (j2 >= j || j % j2 != 0) {
            double d = j;
            double d2 = j2;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d / d2;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                double d4 = jArr[i2];
                Double.isNaN(d4);
                jArr[i2] = (long) (d4 * d3);
            }
        } else {
            long j4 = j / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = jArr[i3] * j4;
            }
        }
    }

    /* renamed from: a */
    public static boolean m28675a(Parcel parcel) {
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
    public static boolean m28672a(p131c.p161d.p170b.p188c.p203g1.C2904v r7, p131c.p161d.p170b.p188c.p203g1.C2904v r8, java.util.zip.Inflater r9) {
        /*
            r0 = r7
            int r0 = r0.m28552a()
            if (r0 > 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r8
            byte[] r0 = r0.f10530a
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            int r0 = r0.length
            r1 = r7
            int r1 = r1.m28552a()
            if (r0 >= r1) goto L_0x0024
            r0 = r7
            int r0 = r0.m28552a()
            r1 = 2
            int r0 = r0 * r1
            byte[] r0 = new byte[r0]
            r11 = r0
        L_0x0024:
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0032
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r1 = r0
            r1.<init>()
            r10 = r0
        L_0x0032:
            r0 = r10
            r1 = r7
            byte[] r1 = r1.f10530a
            r2 = r7
            int r2 = r2.m28543c()
            r3 = r7
            int r3 = r3.m28552a()
            r0.setInput(r1, r2, r3)
            r0 = 0
            r12 = r0
        L_0x0045:
            r0 = r12
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r11
            int r4 = r4.length     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r5 = r12
            int r4 = r4 - r5
            int r1 = r1.inflate(r2, r3, r4)     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            int r0 = r0 + r1
            r13 = r0
            r0 = r10
            boolean r0 = r0.finished()     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 == 0) goto L_0x006d
            r0 = r8
            r1 = r11
            r2 = r13
            r0.m28547a(r1, r2)     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r0 = r10
            r0.reset()
            r0 = 1
            return r0
        L_0x006d:
            r0 = r10
            boolean r0 = r0.needsDictionary()     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 != 0) goto L_0x009d
            r0 = r10
            boolean r0 = r0.needsInput()     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 == 0) goto L_0x007e
            goto L_0x009d
        L_0x007e:
            r0 = r13
            r12 = r0
            r0 = r13
            r1 = r11
            int r1 = r1.length     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 != r1) goto L_0x0045
            r0 = r11
            r1 = r11
            int r1 = r1.length     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r2 = 2
            int r1 = r1 * r2
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r11 = r0
            r0 = r13
            r12 = r0
            goto L_0x0045
        L_0x009d:
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        L_0x00a3:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = r7
            throw r0
        L_0x00aa:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2885h0.m28672a(c.d.b.c.g1.v, c.d.b.c.g1.v, java.util.zip.Inflater):boolean");
    }

    /* renamed from: a */
    public static boolean m28669a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: a */
    public static byte[] m28668a(String str) {
        return str.getBytes(Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
    }

    /* renamed from: a */
    public static int[] m28662a(List<Integer> list) {
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
    public static <T> T[] m28656a(T[] tArr) {
        return tArr;
    }

    /* renamed from: a */
    public static <T> T[] m28655a(T[] tArr, int i) {
        C2877e.m28734a(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: a */
    public static <T> T[] m28654a(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: a */
    public static String[] m28678a(Configuration configuration) {
        return m28666a(configuration.getLocales().toLanguageTags(), ",");
    }

    /* renamed from: a */
    public static String[] m28666a(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: b */
    public static int m28652b(int i) {
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 2;
        }
        if (i != 24) {
            return i != 32 ? 0 : 1073741824;
        }
        return Integer.MIN_VALUE;
    }

    /* renamed from: b */
    public static int m28651b(int i, int i2) {
        if (i == Integer.MIN_VALUE) {
            return i2 * 3;
        }
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

    /* renamed from: b */
    public static int m28648b(Context context) {
        ConnectivityManager connectivityManager;
        int i = 0;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
            if (activeNetworkInfo != null) {
                if (!activeNetworkInfo.isConnected()) {
                    i = 1;
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type == 1) {
                            return 2;
                        }
                        if (!(type == 4 || type == 5)) {
                            if (type != 6) {
                                return type != 9 ? 8 : 7;
                            }
                            return 5;
                        }
                    }
                    return m28677a(activeNetworkInfo);
                }
            }
        } catch (SecurityException e) {
        }
        return i;
    }

    /* renamed from: b */
    public static int m28643b(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: b */
    public static long m28650b(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        double d = j;
        double d2 = f;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.round(d / d2);
    }

    /* renamed from: b */
    public static long m28649b(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: b */
    public static Looper m28653b() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return myLooper;
    }

    /* renamed from: b */
    public static String m28644b(Locale locale) {
        return locale.toLanguageTag();
    }

    /* renamed from: b */
    public static String m28642b(Object[] objArr) {
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
    public static ExecutorService m28647b(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: c.d.b.c.g1.d
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return C2885h0.m28667a(str, runnable);
            }
        });
    }

    /* renamed from: b */
    public static <T extends Throwable> void m28645b(Throwable th) throws Throwable {
        throw th;
    }

    /* renamed from: b */
    public static String[] m28646b(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: c */
    public static int m28640c(int i) {
        if (i == 13) {
            return 1;
        }
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

    /* renamed from: c */
    public static long m28639c(long j, long j2, long j3) {
        if (j3 >= j2 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return j * (j2 / j3);
        }
        double d = j2;
        double d2 = j3;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double d4 = j;
        Double.isNaN(d4);
        return (long) (d4 * d3);
    }

    /* renamed from: c */
    public static String m28637c(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        String str2 = replace;
        if (f10477a >= 21) {
            str2 = m28633d(replace);
        }
        String str3 = str;
        if (!str2.isEmpty()) {
            str3 = "und".equals(str2) ? str : str2;
        }
        String f = m28629f(str3);
        String str4 = m28646b(f, "-")[0];
        String str5 = f;
        if (str4.length() == 3) {
            if (f10485i == null) {
                f10485i = m28689a();
            }
            String str6 = f10485i.get(str4);
            str5 = f;
            if (str6 != null) {
                str5 = str6 + f.substring(3);
            }
        }
        return str5;
    }

    /* renamed from: c */
    public static boolean m28638c(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: c */
    public static String[] m28641c() {
        String[] d = m28636d();
        for (int i = 0; i < d.length; i++) {
            d[i] = m28637c(d[i]);
        }
        return d;
    }

    /* renamed from: d */
    public static long m28634d(long j, long j2, long j3) {
        long j4 = j - j2;
        return ((j ^ j4) & (j2 ^ j)) < 0 ? j3 : j4;
    }

    /* renamed from: d */
    public static String m28635d(int i) {
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

    /* renamed from: d */
    public static String m28633d(String str) {
        return Locale.forLanguageTag(str).toLanguageTag();
    }

    /* renamed from: d */
    public static String[] m28636d() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return f10477a >= 24 ? m28678a(configuration) : new String[]{m28661a(configuration.locale)};
    }

    /* renamed from: e */
    public static boolean m28632e(int i) {
        return i == Integer.MIN_VALUE || i == 1073741824;
    }

    /* renamed from: e */
    public static String[] m28631e(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : m28666a(str.trim(), "(\\s*,\\s*)");
    }

    /* renamed from: f */
    public static String m28629f(String str) {
        if (str != null) {
            str = str.toLowerCase(Locale.US);
        }
        return str;
    }

    /* renamed from: f */
    public static boolean m28630f(int i) {
        return i == 3 || i == 2 || i == Integer.MIN_VALUE || i == 1073741824 || i == 4;
    }

    /* renamed from: g */
    public static String m28628g(String str) {
        if (str != null) {
            str = str.toUpperCase(Locale.US);
        }
        return str;
    }

    /* renamed from: h */
    public static String m28627h(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = i2;
            if (str.charAt(i3) == '%') {
                i2++;
            }
        }
        if (i2 == 0) {
            return str;
        }
        int i4 = length - (i2 * 2);
        StringBuilder sb = new StringBuilder(i4);
        Matcher matcher = f10484h.matcher(str);
        while (i2 > 0 && matcher.find()) {
            sb.append((CharSequence) str, i, matcher.start());
            sb.append((char) Integer.parseInt(matcher.group(1), 16));
            i = matcher.end();
            i2--;
        }
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        if (sb.length() != i4) {
            return null;
        }
        return sb.toString();
    }
}
