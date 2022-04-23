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
import androidx.media2.exoplayer.external.upstream.f;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.model.Constants;
import com.explorestack.protobuf.openrtb.LossReason;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    public static final int f4119a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f4120b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f4121c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f4122d;
    public static final String e;
    private static HashMap<String, String> j;
    public static final byte[] f = new byte[0];
    private static final Pattern g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
    private static final Pattern h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
    private static final Pattern i = Pattern.compile("%([A-Fa-f0-9]{2})");
    private static final String[] k = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "slo", "sk", "wel", "cy"};
    private static final int[] l = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    static {
        int i2 = Build.VERSION.SDK_INT;
        f4119a = i2;
        String str = Build.DEVICE;
        f4120b = str;
        String str2 = Build.MANUFACTURER;
        f4121c = str2;
        String str3 = Build.MODEL;
        f4122d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i2);
        e = sb.toString();
    }

    private ac() {
    }

    public static float a(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f2, f4));
    }

    public static int a(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static int a(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    public static int a(Context context) {
        ConnectivityManager connectivityManager;
        int i2 = 0;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i2 = 1;
            if (activeNetworkInfo != null) {
                if (!activeNetworkInfo.isConnected()) {
                    i2 = 1;
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
            }
        } catch (SecurityException e2) {
        }
        return i2;
    }

    public static <T extends Comparable<? super T>> int a(List<? extends Comparable<? super T>> list, T t, boolean z) {
        int i2;
        int i3;
        int binarySearch = Collections.binarySearch(list, t);
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
            } while (((Comparable) list.get(i3)).compareTo(t) == 0);
            i2 = i3 + 1;
        }
        int i5 = i2;
        if (z) {
            i5 = Math.max(0, i2);
        }
        return i5;
    }

    public static int a(int[] iArr, int i2) {
        int i3;
        int i4;
        int binarySearch = Arrays.binarySearch(iArr, i2);
        int i5 = binarySearch;
        if (binarySearch < 0) {
            i3 = -(binarySearch + 2);
        } else {
            do {
                i4 = i5 - 1;
                if (i4 < 0) {
                    break;
                }
                i5 = i4;
            } while (iArr[i4] == i2);
            i3 = i4;
        }
        return i3;
    }

    public static int a(long[] jArr, long j2, boolean z) {
        int i2;
        int i3;
        int binarySearch = Arrays.binarySearch(jArr, j2);
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
            } while (jArr[i3] == j2);
            i2 = i3 + 1;
        }
        int i5 = i2;
        if (z) {
            i5 = Math.max(0, i2);
        }
        return i5;
    }

    public static int a(long[] jArr, long j2, boolean z, boolean z2) {
        int i2;
        int i3;
        int binarySearch = Arrays.binarySearch(jArr, j2);
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
            } while (jArr[i3] == j2);
            i2 = z ? i3 - 1 : i3;
        }
        return z2 ? Math.min(jArr.length - 1, i2) : i2;
    }

    public static long a(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(j2 * f2);
    }

    public static long a(long j2, long j3) {
        long j4 = j2 + j3;
        if (((j2 ^ j4) & (j3 ^ j4)) < 0) {
            return Long.MAX_VALUE;
        }
        return j4;
    }

    public static long a(long j2, long j3, long j4) {
        return Math.max(j3, Math.min(j2, j4));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(long r7, androidx.media2.exoplayer.external.aj r9, long r10, long r12) {
        /*
            androidx.media2.exoplayer.external.aj r0 = androidx.media2.exoplayer.external.aj.f2817a
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x000c
            r0 = r7
            return r0
        L_0x000c:
            r0 = r9
            long r0 = r0.f
            r14 = r0
            r0 = r7
            r1 = r14
            long r0 = r0 - r1
            r16 = r0
            r0 = r16
            r18 = r0
            r0 = r14
            r1 = r7
            long r0 = r0 ^ r1
            r1 = r7
            r2 = r16
            long r1 = r1 ^ r2
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002f
            r0 = -9223372036854775808
            r18 = r0
        L_0x002f:
            r0 = r7
            r1 = r9
            long r1 = r1.g
            long r0 = a(r0, r1)
            r16 = r0
            r0 = 1
            r20 = r0
            r0 = r18
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0050
            r0 = r10
            r1 = r16
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0050
            r0 = 1
            r21 = r0
            goto L_0x0053
        L_0x0050:
            r0 = 0
            r21 = r0
        L_0x0053:
            r0 = r18
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0066
            r0 = r12
            r1 = r16
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0066
            goto L_0x0069
        L_0x0066:
            r0 = 0
            r20 = r0
        L_0x0069:
            r0 = r21
            if (r0 == 0) goto L_0x0089
            r0 = r20
            if (r0 == 0) goto L_0x0089
            r0 = r10
            r1 = r7
            long r0 = r0 - r1
            long r0 = java.lang.Math.abs(r0)
            r1 = r12
            r2 = r7
            long r1 = r1 - r2
            long r1 = java.lang.Math.abs(r1)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0086
            r0 = r10
            return r0
        L_0x0086:
            r0 = r12
            return r0
        L_0x0089:
            r0 = r21
            if (r0 == 0) goto L_0x0090
            r0 = r10
            return r0
        L_0x0090:
            r0 = r20
            if (r0 == 0) goto L_0x0098
            r0 = r12
            return r0
        L_0x0098:
            r0 = r18
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.ac.a(long, androidx.media2.exoplayer.external.aj, long, long):long");
    }

    private static Point a(Context context, Display display) {
        int i2 = f4119a;
        if (i2 <= 28 && display.getDisplayId() == 0 && c(context)) {
            if ("Sony".equals(f4121c) && f4122d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
            String i3 = i2 < 28 ? i("sys.display-size") : i("vendor.display-size");
            if (!TextUtils.isEmpty(i3)) {
                try {
                    String[] split = i3.trim().split("x", -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException e2) {
                }
                String valueOf = String.valueOf(i3);
                j.b("Util", valueOf.length() != 0 ? "Invalid display size: ".concat(valueOf) : new String("Invalid display size: "));
            }
        }
        Point point = new Point();
        int i4 = f4119a;
        if (i4 >= 23) {
            Display.Mode mode = display.getMode();
            point.x = mode.getPhysicalWidth();
            point.y = mode.getPhysicalHeight();
        } else if (i4 >= 17) {
            display.getRealSize(point);
        } else {
            display.getSize(point);
        }
        return point;
    }

    public static Handler a(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static Looper a() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    @EnsuresNonNull({"#1"})
    public static <T> T a(T t) {
        return t;
    }

    public static String a(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
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

    public static String a(String str, int i2) {
        String[] h2 = h(str);
        if (h2.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : h2) {
            if (i2 == m.i(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String a(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    public static String a(byte[] bArr, int i2, int i3) {
        return new String(bArr, i2, i3, Charset.forName("UTF-8"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Thread a(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static ExecutorService a(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory(str) { // from class: androidx.media2.exoplayer.external.util.ad

            /* renamed from: a  reason: collision with root package name */
            private final String f4123a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4123a = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return ac.a(this.f4123a, runnable);
            }
        });
    }

    public static void a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static void a(f fVar) {
        if (fVar != null) {
            try {
                fVar.c();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
        }
    }

    public static <T> void a(List<T> list, int i2, int i3) {
        if (i2 < 0 || i3 > list.size() || i2 > i3) {
            throw new IllegalArgumentException();
        } else if (i2 != i3) {
            list.subList(i2, i3).clear();
        }
    }

    public static void a(long[] jArr, long j2) {
        int i2 = (j2 > 1000000L ? 1 : (j2 == 1000000L ? 0 : -1));
        if (i2 >= 0 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = jArr[i3] / j3;
            }
        } else if (i2 >= 0 || 1000000 % j2 != 0) {
            double d2 = 1000000.0d / j2;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = (long) (jArr[i4] * d2);
            }
        } else {
            long j4 = 1000000 / j2;
            for (int i5 = 0; i5 < jArr.length; i5++) {
                jArr[i5] = jArr[i5] * j4;
            }
        }
    }

    public static boolean a(int i2) {
        return i2 == 10 || i2 == 13;
    }

    public static boolean a(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    public static boolean a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
        r10.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(androidx.media2.exoplayer.external.util.p r7, androidx.media2.exoplayer.external.util.p r8, java.util.zip.Inflater r9) {
        /*
            r0 = r7
            int r0 = r0.b()
            if (r0 > 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r8
            byte[] r0 = r0.f4166a
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            int r0 = r0.length
            r1 = r7
            int r1 = r1.b()
            if (r0 >= r1) goto L_0x0024
            r0 = r7
            int r0 = r0.b()
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
            byte[] r1 = r1.f4166a
            r2 = r7
            int r2 = r2.f4167b
            r3 = r7
            int r3 = r3.b()
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
            r0.a(r1, r2)     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.ac.a(androidx.media2.exoplayer.external.util.p, androidx.media2.exoplayer.external.util.p, java.util.zip.Inflater):boolean");
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static boolean a(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (a(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static int[] a(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = list.get(i2).intValue();
        }
        return iArr;
    }

    @EnsuresNonNull({"#1"})
    public static <T> T[] a(T[] tArr) {
        return tArr;
    }

    public static <T> T[] a(T[] tArr, int i2) {
        a.a(i2 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i2);
    }

    public static <T> T[] a(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static String[] a(String str, String str2) {
        return str.split(str2, -1);
    }

    public static int b(int i2) {
        if (i2 == 8) {
            return 3;
        }
        if (i2 != 16) {
            return i2 != 24 ? i2 != 32 ? 0 : 1073741824 : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        return 2;
    }

    public static int b(int i2, int i3) {
        if (i2 == Integer.MIN_VALUE) {
            return i3 * 3;
        }
        if (i2 != 1073741824) {
            if (i2 == 2) {
                return i3 * 2;
            }
            if (i2 == 3) {
                return i3;
            }
            if (i2 != 4) {
                throw new IllegalArgumentException();
            }
        }
        return i3 * 4;
    }

    public static int b(long j2, long j3) {
        int i2 = (j2 > j3 ? 1 : (j2 == j3 ? 0 : -1));
        if (i2 < 0) {
            return -1;
        }
        return i2 == 0 ? 0 : 1;
    }

    public static int b(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return 3;
        }
        String d2 = d(path);
        if (d2.endsWith(".mpd")) {
            return 0;
        }
        if (d2.endsWith(".m3u8")) {
            return 2;
        }
        return d2.matches(".*\\.ism(l)?(/manifest(\\(.+\\))?)?") ? 1 : 3;
    }

    public static int b(byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = l[((i3 >>> 24) ^ (bArr[i4] & 255)) & 255] ^ (i3 << 8);
        }
        return i3;
    }

    public static long b(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(j2 / f2);
    }

    public static long b(long j2, long j3, long j4) {
        int i2 = (j4 > j3 ? 1 : (j4 == j3 ? 0 : -1));
        if (i2 >= 0 && j4 % j3 == 0) {
            return j2 / (j4 / j3);
        }
        if (i2 < 0 && j3 % j4 == 0) {
            return j2 * (j3 / j4);
        }
        return (long) (j2 * (j3 / j4));
    }

    public static String b(Context context) {
        TelephonyManager telephonyManager;
        if (!(context == null || (telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER)) == null)) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return e(networkCountryIso);
            }
        }
        return e(Locale.getDefault().getCountry());
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        String str2 = replace;
        if (f4119a >= 21) {
            str2 = Locale.forLanguageTag(replace).toLanguageTag();
        }
        String str3 = str;
        if (!str2.isEmpty()) {
            str3 = "und".equals(str2) ? str : str2;
        }
        String d2 = d(str3);
        String str4 = d2.split(VerificationLanguage.REGION_PREFIX, 2)[0];
        String str5 = d2;
        if (str4.length() == 3) {
            if (j == null) {
                j = c();
            }
            String str6 = j.get(str4);
            str5 = d2;
            if (str6 != null) {
                String valueOf = String.valueOf(str6);
                String valueOf2 = String.valueOf(d2.substring(3));
                str5 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            }
        }
        return str5;
    }

    public static String b(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < objArr.length; i2++) {
            sb.append(objArr[i2].getClass().getSimpleName());
            if (i2 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static <T> T[] b(T[] tArr, int i2) {
        a.a(true);
        a.a(i2 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, 1, i2);
    }

    public static String[] b() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        int i2 = f4119a;
        String[] split = i2 >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : i2 >= 21 ? new String[]{configuration.locale.toLanguageTag()} : new String[]{configuration.locale.toString()};
        for (int i3 = 0; i3 < split.length; i3++) {
            split[i3] = b(split[i3]);
        }
        return split;
    }

    public static String[] b(String str, String str2) {
        return str.split(str2, 2);
    }

    private static HashMap<String, String> c() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + k.length);
        int i2 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException e2) {
            }
        }
        while (true) {
            String[] strArr = k;
            if (i2 >= strArr.length) {
                return hashMap;
            }
            hashMap.put(strArr[i2], strArr[i2 + 1]);
            i2 += 2;
        }
    }

    public static boolean c(int i2) {
        return i2 == 3 || i2 == 2 || i2 == Integer.MIN_VALUE || i2 == 1073741824 || i2 == 4;
    }

    public static boolean c(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static byte[] c(String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    public static Point d(Context context) {
        return a(context, ((WindowManager) context.getSystemService("window")).getDefaultDisplay());
    }

    public static String d(String str) {
        return str == null ? str : str.toLowerCase(Locale.US);
    }

    public static boolean d(int i2) {
        return i2 == Integer.MIN_VALUE || i2 == 1073741824;
    }

    public static int e(int i2) {
        switch (i2) {
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
                int i3 = f4119a;
                return (i3 < 23 && i3 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    public static String e(String str) {
        return str == null ? str : str.toUpperCase(Locale.US);
    }

    public static int f(int i2) {
        if (i2 == 13) {
            return 1;
        }
        switch (i2) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long f(java.lang.String r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.ac.f(java.lang.String):long");
    }

    public static byte[] g(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) ((Character.digit(str.charAt(i3), 16) << 4) + Character.digit(str.charAt(i3 + 1), 16));
        }
        return bArr;
    }

    public static String[] h(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
    }

    private static String i(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            String valueOf = String.valueOf(str);
            j.b("Util", valueOf.length() != 0 ? "Failed to read system property ".concat(valueOf) : new String("Failed to read system property "), e2);
            return null;
        }
    }
}
