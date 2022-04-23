package com.google.android.gms.internal.ads;

import android.os.Build;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ede.class */
public final class ede {

    /* renamed from: a  reason: collision with root package name */
    public static final int f27664a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f27665b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f27666c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f27667d;
    public static final String e;
    private static final Pattern f;
    private static final Pattern g;
    private static final Pattern h;
    private static final int[] i;

    static {
        int i2 = (Build.VERSION.SDK_INT == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') ? 26 : Build.VERSION.SDK_INT;
        f27664a = i2;
        String str = Build.DEVICE;
        f27665b = str;
        String str2 = Build.MANUFACTURER;
        f27666c = str2;
        String str3 = Build.MODEL;
        f27667d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i2);
        e = sb.toString();
        f = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        g = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        h = Pattern.compile("%([A-Fa-f0-9]{2})");
        i = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
    }

    public static float a(float f2) {
        return Math.max(0.1f, Math.min(f2, 8.0f));
    }

    public static int a(int i2) {
        if (i2 == 8) {
            return 3;
        }
        if (i2 != 16) {
            return i2 != 24 ? i2 != 32 ? 0 : 1073741824 : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        return 2;
    }

    public static int a(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static int a(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    public static int a(long[] jArr, long j, boolean z) {
        int i2;
        int i3;
        int binarySearch = Arrays.binarySearch(jArr, j);
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
            } while (jArr[i3] == j);
            i2 = i3 + 1;
        }
        int i5 = i2;
        if (z) {
            i5 = Math.max(0, i2);
        }
        return i5;
    }

    public static int a(long[] jArr, long j, boolean z, boolean z2) {
        int i2;
        int i3;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i4 = binarySearch;
        if (binarySearch < 0) {
            i2 = binarySearch ^ (-1);
        } else {
            do {
                i3 = i4 + 1;
                if (i3 >= jArr.length) {
                    break;
                }
                i4 = i3;
            } while (jArr[i3] == j);
            i2 = z ? i3 - 1 : i3;
        }
        return z2 ? Math.min(jArr.length - 1, i2) : i2;
    }

    public static long a(long j, long j2, long j3) {
        int i2 = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i2 >= 0 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (i2 < 0 && j2 % j3 == 0) {
            return j * (j2 / j3);
        }
        return (long) (j * (j2 / j3));
    }

    public static String a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < objArr.length; i2++) {
            sb.append(objArr[i2].getClass().getSimpleName());
            if (i2 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static ExecutorService a(String str) {
        return Executors.newSingleThreadExecutor(new edh(str));
    }

    public static void a(ecb ecbVar) {
        if (ecbVar != null) {
            try {
                ecbVar.c();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(long[] jArr, long j) {
        int i2 = (j > 1000000L ? 1 : (j == 1000000L ? 0 : -1));
        if (i2 >= 0 && j % 1000000 == 0) {
            long j2 = j / 1000000;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = jArr[i3] / j2;
            }
        } else if (i2 >= 0 || 1000000 % j != 0) {
            double d2 = 1000000.0d / j;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = (long) (jArr[i4] * d2);
            }
        } else {
            long j3 = 1000000 / j;
            for (int i5 = 0; i5 < jArr.length; i5++) {
                jArr[i5] = jArr[i5] * j3;
            }
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int b(int i2) {
        if (i2 == 0) {
            return Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        if (i2 == 1) {
            return 3538944;
        }
        if (i2 == 2) {
            return 13107200;
        }
        if (i2 == 3 || i2 == 4) {
            return 131072;
        }
        throw new IllegalStateException();
    }

    public static int b(int i2, int i3) {
        if (i2 == Integer.MIN_VALUE) {
            return i3 * 3;
        }
        if (i2 == 1073741824) {
            return i3 << 2;
        }
        if (i2 == 2) {
            return i3 << 1;
        }
        if (i2 == 3) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    public static byte[] b(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    public static int c(String str) {
        int length = str.length();
        ecr.a(length <= 4);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = (i2 << 8) | str.charAt(i3);
        }
        return i2;
    }

    public static byte[] d(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 << 1;
            bArr[i2] = (byte) ((Character.digit(str.charAt(i3), 16) << 4) + Character.digit(str.charAt(i3 + 1), 16));
        }
        return bArr;
    }
}
