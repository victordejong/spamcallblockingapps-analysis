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

    /* renamed from: a */
    public static final int f48739a;

    /* renamed from: b */
    public static final String f48740b;

    /* renamed from: c */
    public static final String f48741c;

    /* renamed from: d */
    public static final String f48742d;

    /* renamed from: e */
    public static final String f48743e;

    /* renamed from: f */
    private static final Pattern f48744f;

    /* renamed from: g */
    private static final Pattern f48745g;

    /* renamed from: h */
    private static final Pattern f48746h;

    /* renamed from: i */
    private static final int[] f48747i;

    static {
        int i = (Build.VERSION.SDK_INT == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') ? 26 : Build.VERSION.SDK_INT;
        f48739a = i;
        String str = Build.DEVICE;
        f48740b = str;
        String str2 = Build.MANUFACTURER;
        f48741c = str2;
        String str3 = Build.MODEL;
        f48742d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i);
        f48743e = sb.toString();
        f48744f = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f48745g = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f48746h = Pattern.compile("%([A-Fa-f0-9]{2})");
        f48747i = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
    }

    /* renamed from: a */
    public static float m15200a(float f) {
        return Math.max(0.1f, Math.min(f, 8.0f));
    }

    /* renamed from: a */
    public static int m15199a(int i) {
        if (i != 8) {
            if (i == 16) {
                return 2;
            }
            return i != 24 ? i != 32 ? 0 : 1073741824 : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        return 3;
    }

    /* renamed from: a */
    public static int m15198a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: a */
    public static int m15197a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: a */
    public static int m15191a(long[] jArr, long j, boolean z) {
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
    public static int m15190a(long[] jArr, long j, boolean z, boolean z2) {
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
    public static long m15196a(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i < 0 || j3 % j2 != 0) {
            if (i < 0 && j2 % j3 == 0) {
                return j * (j2 / j3);
            }
            return (long) (j * (j2 / j3));
        }
        return j / (j3 / j2);
    }

    /* renamed from: a */
    public static String m15189a(Object[] objArr) {
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
    public static ExecutorService m15193a(String str) {
        return Executors.newSingleThreadExecutor(new edh(str));
    }

    /* renamed from: a */
    public static void m15195a(ecb ecbVar) {
        if (ecbVar != null) {
            try {
                ecbVar.mo15276c();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m15192a(long[] jArr, long j) {
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
    public static boolean m15194a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m15188b(int i) {
        if (i != 0) {
            if (i == 1) {
                return 3538944;
            }
            if (i == 2) {
                return 13107200;
            }
            if (i != 3 && i != 4) {
                throw new IllegalStateException();
            }
            return 131072;
        }
        return Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
    }

    /* renamed from: b */
    public static int m15187b(int i, int i2) {
        if (i != Integer.MIN_VALUE) {
            if (i == 1073741824) {
                return i2 << 2;
            }
            if (i == 2) {
                return i2 << 1;
            }
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            return i2;
        }
        return i2 * 3;
    }

    /* renamed from: b */
    public static byte[] m15186b(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    /* renamed from: c */
    public static int m15185c(String str) {
        int length = str.length();
        ecr.m15249a(length <= 4);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 8) | str.charAt(i2);
        }
        return i;
    }

    /* renamed from: d */
    public static byte[] m15184d(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i << 1;
            bArr[i] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }
}
