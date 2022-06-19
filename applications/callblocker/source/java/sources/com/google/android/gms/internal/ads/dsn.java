package com.google.android.gms.internal.ads;

import android.os.Build;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsn.class */
public final class dsn {

    /* renamed from: a */
    public static final int f15576a;

    /* renamed from: b */
    public static final String f15577b;

    /* renamed from: c */
    public static final String f15578c;

    /* renamed from: d */
    public static final String f15579d;

    /* renamed from: e */
    public static final String f15580e;

    /* renamed from: f */
    private static final Pattern f15581f;

    /* renamed from: g */
    private static final Pattern f15582g;

    /* renamed from: h */
    private static final Pattern f15583h;

    /* renamed from: i */
    private static final int[] f15584i;

    static {
        f15576a = (Build.VERSION.SDK_INT == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') ? 26 : Build.VERSION.SDK_INT;
        f15577b = Build.DEVICE;
        f15578c = Build.MANUFACTURER;
        f15579d = Build.MODEL;
        String str = f15577b;
        String str2 = f15579d;
        String str3 = f15578c;
        f15580e = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str).append(", ").append(str2).append(", ").append(str3).append(", ").append(f15576a).toString();
        f15581f = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f15582g = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f15583h = Pattern.compile("%([A-Fa-f0-9]{2})");
        f15584i = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
    }

    /* renamed from: a */
    public static float m8710a(float f, float f2, float f3) {
        return Math.max(0.1f, Math.min(f, 8.0f));
    }

    /* renamed from: a */
    public static int m8709a(int i) {
        int i2;
        switch (i) {
            case 8:
                i2 = 3;
                break;
            case 16:
                i2 = 2;
                break;
            case 24:
                i2 = Integer.MIN_VALUE;
                break;
            case 32:
                i2 = 1073741824;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m8708a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: a */
    public static int m8707a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: a */
    public static int m8701a(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            do {
                i = i3 - 1;
                if (i < 0) {
                    break;
                }
                i3 = i;
            } while (jArr[i] == j);
            i2 = i + 1;
        }
        int i4 = i2;
        if (z2) {
            i4 = Math.max(0, i2);
        }
        return i4;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    public static long m8706a(long j, long j2, long j3) {
        return (j3 < j2 || j3 % j2 != 0) ? (j3 >= j2 || j2 % j3 != 0) ? (long) ((j2 / j3) * j) : (j2 / j3) * j : j / (j3 / j2);
    }

    /* renamed from: a */
    public static String m8700a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].getClass().getSimpleName());
            if (i < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static ExecutorService m8703a(String str) {
        return Executors.newSingleThreadExecutor(new dsq(str));
    }

    /* renamed from: a */
    public static void m8705a(drp drpVar) {
        if (drpVar != null) {
            try {
                drpVar.mo8807b();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m8702a(long[] jArr, long j, long j2) {
        if (j2 >= 1000000 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = jArr[i] / j3;
            }
        } else if (j2 >= 1000000 || 1000000 % j2 != 0) {
            double d = 1000000.0d / j2;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = (long) (jArr[i2] * d);
            }
        } else {
            long j4 = 1000000 / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = jArr[i3] * j4;
            }
        }
    }

    /* renamed from: a */
    public static boolean m8704a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m8699b(int i) {
        int i2 = 131072;
        switch (i) {
            case 0:
                i2 = 16777216;
                break;
            case 1:
                i2 = 3538944;
                break;
            case 2:
                i2 = 13107200;
                break;
            case 3:
            case 4:
                break;
            default:
                throw new IllegalStateException();
        }
        return i2;
    }

    /* renamed from: b */
    public static int m8698b(int i, int i2) {
        int i3 = i2;
        switch (i) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                i3 = i2 * 3;
                break;
            case 2:
                i3 = i2 << 1;
                break;
            case 3:
                break;
            case 1073741824:
                i3 = i2 << 2;
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i3;
    }

    /* renamed from: b */
    public static int m8696b(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i2 = binarySearch ^ (-1);
        } else {
            do {
                i = i3 + 1;
                if (i >= jArr.length) {
                    break;
                }
                i3 = i;
            } while (jArr[i] == j);
            i2 = i;
            if (z) {
                i2 = i - 1;
            }
        }
        int i4 = i2;
        if (z2) {
            i4 = Math.min(jArr.length - 1, i2);
        }
        return i4;
    }

    /* renamed from: b */
    public static String m8697b(String str) {
        return str == null ? null : new Locale(str).getLanguage();
    }

    /* renamed from: c */
    public static byte[] m8695c(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    /* renamed from: d */
    public static int m8694d(String str) {
        int length = str.length();
        drz.m8772a(length <= 4);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = str.charAt(i2) | (i << 8);
        }
        return i;
    }

    /* renamed from: e */
    public static byte[] m8693e(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i << 1;
            bArr[i] = (byte) (Character.digit(str.charAt(i2 + 1), 16) + (Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }
}
