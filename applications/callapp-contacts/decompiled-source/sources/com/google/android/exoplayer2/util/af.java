package com.google.android.exoplayer2.util;

import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.callapp.contacts.model.Constants;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.h;
import com.google.common.base.d;
import com.mopub.mobileads.resource.DrawableConstants;
import com.sinch.verification.core.verification.VerificationLanguage;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
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
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    public static final int f22275a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f22276b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f22277c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f22278d;
    public static final String e;
    public static final byte[] f;
    private static final Pattern g;
    private static final Pattern h;
    private static final Pattern i;
    private static final Pattern j;
    private static HashMap<String, String> k;
    private static final String[] l;
    private static final String[] m;
    private static final int[] n;
    private static final int[] o;

    static {
        int i2 = "S".equals(Build.VERSION.CODENAME) ? 31 : "R".equals(Build.VERSION.CODENAME) ? 30 : Build.VERSION.SDK_INT;
        f22275a = i2;
        String str = Build.DEVICE;
        f22276b = str;
        String str2 = Build.MANUFACTURER;
        f22277c = str2;
        String str3 = Build.MODEL;
        f22278d = str3;
        e = str + ", " + str3 + ", " + str2 + ", " + i2;
        f = new byte[0];
        g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        i = Pattern.compile("%([A-Fa-f0-9]{2})");
        j = Pattern.compile(".*\\.isml?(?:/(manifest(.*))?)?");
        l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, WebSocketProtocol.PAYLOAD_SHORT, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, 196, 195, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, 144, 151, 158, 153, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, 219, 220, 213, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, JsonReaderKt.END_OBJ, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 200, 221, 218, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, DrawableConstants.CtaButton.WIDTH_DIPS, 145, 152, 159, 138, 141, 132, 131, 222, 217, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 215, 194, 197, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    private af() {
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
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return 1;
            }
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
                case 19:
                default:
                    return 6;
                case 18:
                    return 2;
                case 20:
                    return f22275a >= 29 ? 9 : 0;
            }
        } catch (SecurityException e2) {
            return 0;
        }
    }

    public static int a(Uri uri, String str) {
        if (str == null) {
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
            Matcher matcher = j.matcher(d2);
            if (!matcher.matches()) {
                return 3;
            }
            String group = matcher.group(2);
            if (group == null) {
                return 1;
            }
            if (group.contains("format=mpd-time-csf")) {
                return 0;
            }
            return group.contains("format=m3u8-aapl") ? 2 : 1;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals("application/x-mpegURL")) {
                    c2 = 0;
                    break;
                }
                break;
            case -156749520:
                if (str.equals("application/vnd.ms-sstr+xml")) {
                    c2 = 1;
                    break;
                }
                break;
            case 64194685:
                if (str.equals("application/dash+xml")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 2;
            case 1:
                return 1;
            case 2:
                return 0;
            default:
                return 3;
        }
    }

    public static int a(o oVar, long j2) {
        int i2 = oVar.f22310a - 1;
        i2 = 0;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            if (oVar.a(i4) < j2) {
                i3 = i4 + 1;
            } else {
                i2 = i4 - 1;
            }
        }
        int i5 = i2 + 1;
        if (i5 < oVar.f22310a && oVar.a(i5) == j2) {
            i2 = i5;
        } else if (i2 == -1) {
        }
        return i2;
    }

    public static int a(ByteBuffer byteBuffer, int i2) {
        int i3 = byteBuffer.getInt(i2);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i3 : Integer.reverseBytes(i3);
    }

    public static <T extends Comparable<? super T>> int a(List<? extends Comparable<? super T>> list, T t) {
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
        return i2;
    }

    public static int a(byte[] bArr, int i2, int i3, int i4) {
        while (i2 < i3) {
            i4 = o[i4 ^ (bArr[i2] & 255)];
            i2++;
        }
        return i4;
    }

    public static int a(int[] iArr, int i2) {
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (iArr[i3] == i2) {
                return i3;
            }
        }
        return -1;
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

    public static long a(long j2) {
        return j2 == -9223372036854775807L ? System.currentTimeMillis() : SystemClock.elapsedRealtime() + j2;
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

    public static ComponentName a(Context context, Intent intent) {
        return f22275a >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    private static Point a(Context context, Display display) {
        int i2 = f22275a;
        if (i2 <= 29 && display.getDisplayId() == 0 && c(context)) {
            if ("Sony".equals(f22277c) && f22278d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
            String h2 = i2 < 28 ? h("sys.display-size") : h("vendor.display-size");
            if (!TextUtils.isEmpty(h2)) {
                try {
                    String[] split = h2.trim().split("x", -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException e2) {
                }
                n.b("Util", "Invalid display size: ".concat(String.valueOf(h2)));
            }
        }
        Point point = new Point();
        int i3 = f22275a;
        if (i3 >= 23) {
            Display.Mode mode = display.getMode();
            point.x = mode.getPhysicalWidth();
            point.y = mode.getPhysicalHeight();
        } else if (i3 >= 17) {
            display.getRealSize(point);
        } else {
            display.getSize(point);
        }
        return point;
    }

    public static Handler a() {
        return a((Handler.Callback) null);
    }

    public static Handler a(Handler.Callback callback) {
        return a((Looper) a.a(Looper.myLooper()), callback);
    }

    public static Handler a(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static CharSequence a(CharSequence charSequence, int i2) {
        return charSequence.length() <= i2 ? charSequence : charSequence.subSequence(0, i2);
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
        return str + "/" + str2 + " (Linux;Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/2.13.3";
    }

    public static String a(String str, int i2) {
        String[] e2 = e(str);
        if (e2.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : e2) {
            if (i2 == q.h(str2)) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v3 */
    public static String a(StringBuilder sb, Formatter formatter, long j2) {
        long j3 = j2;
        if (j2 == -9223372036854775807L) {
            j3 = 0;
        }
        String str = j3 < 0 ? VerificationLanguage.REGION_PREFIX : "";
        long abs = (Math.abs(j3) + 500) / 1000;
        long j4 = abs % 60;
        long j5 = (abs / 60) % 60;
        long j6 = abs / 3600;
        sb.setLength(0);
        return j6 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j4)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j5), Long.valueOf(j4)).toString();
    }

    public static String a(Locale locale) {
        return f22275a >= 21 ? locale.toLanguageTag() : locale.toString();
    }

    public static String a(byte[] bArr) {
        return new String(bArr, d.f31920c);
    }

    public static String a(byte[] bArr, int i2, int i3) {
        return new String(bArr, i2, i3, d.f31920c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static ExecutorService a(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer2.util._$$Lambda$af$5ErS5t8ISh3Dgao5nWK13sRRcpM
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread a2;
                a2 = af.a(str, runnable);
                return a2;
            }
        });
    }

    public static void a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static void a(h hVar) {
        if (hVar != null) {
            try {
                hVar.c();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(Throwable th) {
        throw th;
    }

    public static <T> void a(List<T> list, int i2, int i3, int i4) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i5 = (i3 - i2) - 1; i5 >= 0; i5--) {
            arrayDeque.addFirst(list.remove(i2 + i5));
        }
        list.addAll(Math.min(i4, list.size()), arrayDeque);
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

    public static boolean a(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    public static boolean a(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    public static boolean a(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    public static boolean a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        r10.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.google.android.exoplayer2.util.u r7, com.google.android.exoplayer2.util.u r8, java.util.zip.Inflater r9) {
        /*
            r0 = r7
            int r0 = r0.a()
            if (r0 > 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r8
            byte[] r0 = r0.f22335a
            int r0 = r0.length
            r1 = r7
            int r1 = r1.a()
            if (r0 >= r1) goto L_0x001f
            r0 = r8
            r1 = r7
            int r1 = r1.a()
            r2 = 2
            int r1 = r1 * r2
            r0.b(r1)
        L_0x001f:
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x002d
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r1 = r0
            r1.<init>()
            r10 = r0
        L_0x002d:
            r0 = r10
            r1 = r7
            byte[] r1 = r1.f22335a
            r2 = r7
            int r2 = r2.f22336b
            r3 = r7
            int r3 = r3.a()
            r0.setInput(r1, r2, r3)
            r0 = 0
            r11 = r0
        L_0x0040:
            r0 = r8
            byte[] r0 = r0.f22335a     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            r7 = r0
            r0 = r11
            r1 = r10
            r2 = r7
            r3 = r11
            r4 = r7
            int r4 = r4.length     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            r5 = r11
            int r4 = r4 - r5
            int r1 = r1.inflate(r2, r3, r4)     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            int r0 = r0 + r1
            r12 = r0
            r0 = r10
            boolean r0 = r0.finished()     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            if (r0 == 0) goto L_0x0069
            r0 = r8
            r1 = r12
            r0.c(r1)     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            r0 = r10
            r0.reset()
            r0 = 1
            return r0
        L_0x0069:
            r0 = r10
            boolean r0 = r0.needsDictionary()     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            if (r0 != 0) goto L_0x009a
            r0 = r10
            boolean r0 = r0.needsInput()     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            if (r0 == 0) goto L_0x007a
            goto L_0x009a
        L_0x007a:
            r0 = r12
            r11 = r0
            r0 = r12
            r1 = r8
            byte[] r1 = r1.f22335a     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            int r1 = r1.length     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            if (r0 != r1) goto L_0x0040
            r0 = r8
            r1 = r8
            byte[] r1 = r1.f22335a     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            int r1 = r1.length     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            r2 = 2
            int r1 = r1 * r2
            r0.b(r1)     // Catch: all -> 0x00a0, DataFormatException -> 0x00a7
            r0 = r12
            r11 = r0
            goto L_0x0040
        L_0x009a:
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        L_0x00a0:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = r7
            throw r0
        L_0x00a7:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.af.a(com.google.android.exoplayer2.util.u, com.google.android.exoplayer2.util.u, java.util.zip.Inflater):boolean");
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static byte[] a(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
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
        if (i2 == 16) {
            return 2;
        }
        if (i2 != 24) {
            return i2 != 32 ? 0 : 805306368;
        }
        return 536870912;
    }

    public static <T extends Comparable<? super T>> int b(List<? extends Comparable<? super T>> list, T t) {
        int i2;
        int binarySearch = Collections.binarySearch(list, t);
        if (binarySearch >= 0) {
            int size = list.size();
            do {
                i2 = binarySearch + 1;
                if (i2 >= size) {
                    break;
                }
                binarySearch = i2;
            } while (((Comparable) list.get(i2)).compareTo(t) == 0);
        } else {
            i2 = binarySearch ^ (-1);
        }
        return i2;
    }

    public static int b(byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = n[((i3 >>> 24) ^ (bArr[i4] & 255)) & 255] ^ (i3 << 8);
        }
        return i3;
    }

    public static int b(int[] iArr, int i2) {
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

    public static int b(long[] jArr, long j2, boolean z) {
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
        return i2;
    }

    public static long b(int i2, int i3) {
        return (i3 & 4294967295L) | ((i2 & 4294967295L) << 32);
    }

    public static long b(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(j2 / f2);
    }

    public static long b(long j2, long j3) {
        long j4 = j2 - j3;
        if (((j2 ^ j4) & (j3 ^ j2)) < 0) {
            return Long.MIN_VALUE;
        }
        return j4;
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

    public static Handler b() {
        return a(c(), (Handler.Callback) null);
    }

    public static Format b(int i2, int i3, int i4) {
        Format.a aVar = new Format.a();
        aVar.k = "audio/raw";
        aVar.x = i3;
        aVar.y = i4;
        aVar.z = i2;
        return aVar.a();
    }

    public static String b(Context context) {
        TelephonyManager telephonyManager;
        if (!(context == null || (telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER)) == null)) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return g(networkCountryIso);
            }
        }
        return g(Locale.getDefault().getCountry());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
        if ("zh".equals(r6) != false) goto L_0x009d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(java.lang.String r4) {
        /*
            r0 = r4
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r4
            r1 = 95
            r2 = 45
            java.lang.String r0 = r0.replace(r1, r2)
            r5 = r0
            r0 = r4
            r6 = r0
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0029
            java.lang.String r0 = "und"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0027
            r0 = r4
            r6 = r0
            goto L_0x0029
        L_0x0027:
            r0 = r5
            r6 = r0
        L_0x0029:
            r0 = r6
            java.lang.String r0 = d(r0)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "-"
            r2 = 2
            java.lang.String[] r0 = r0.split(r1, r2)
            r1 = 0
            r0 = r0[r1]
            r8 = r0
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.exoplayer2.util.af.k
            if (r0 != 0) goto L_0x0046
            java.util.HashMap r0 = e()
            com.google.android.exoplayer2.util.af.k = r0
        L_0x0046:
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.exoplayer2.util.af.k
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r8
            r6 = r0
            r0 = r7
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L_0x007e
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
        L_0x007e:
            java.lang.String r0 = "no"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x009d
            java.lang.String r0 = "i"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x009d
            r0 = r4
            r5 = r0
            java.lang.String r0 = "zh"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00a2
        L_0x009d:
            r0 = r4
            java.lang.String r0 = i(r0)
            r5 = r0
        L_0x00a2:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.af.b(java.lang.String):java.lang.String");
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

    public static String[] b(String str, String str2) {
        return str.split(str2, 2);
    }

    public static int c(int i2, int i3) {
        if (i2 != 2) {
            int i4 = i3;
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 268435456) {
                        if (i2 == 536870912) {
                            return i3 * 3;
                        }
                        if (i2 != 805306368) {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                i4 = i3 * 4;
            }
            return i4;
        }
        return i3 * 2;
    }

    public static int c(long j2, long j3) {
        int i2 = (j2 > j3 ? 1 : (j2 == j3 ? 0 : -1));
        if (i2 < 0) {
            return -1;
        }
        return i2 == 0 ? 0 : 1;
    }

    public static Looper c() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    public static boolean c(int i2) {
        return i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 536870912 || i2 == 805306368 || i2 == 4;
    }

    public static boolean c(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static byte[] c(String str) {
        return str.getBytes(d.f31920c);
    }

    public static Point d(Context context) {
        return a(context, ((WindowManager) a.b((WindowManager) context.getSystemService("window"))).getDefaultDisplay());
    }

    public static String d(String str) {
        return str == null ? str : str.toLowerCase(Locale.US);
    }

    public static boolean d(int i2) {
        return i2 == 536870912 || i2 == 805306368 || i2 == 4;
    }

    public static String[] d() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] split = f22275a >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{a(configuration.locale)};
        for (int i2 = 0; i2 < split.length; i2++) {
            split[i2] = b(split[i2]);
        }
        return split;
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
                int i3 = f22275a;
                return (i3 < 23 && i3 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    private static HashMap<String, String> e() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + l.length);
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
            String[] strArr = l;
            if (i2 >= strArr.length) {
                return hashMap;
            }
            hashMap.put(strArr[i2], strArr[i2 + 1]);
            i2 += 2;
        }
    }

    public static String[] e(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
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

    public static String f(String str) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            i3 = i3;
            if (str.charAt(i4) == '%') {
                i3++;
            }
        }
        if (i3 == 0) {
            return str;
        }
        int i5 = length - (i3 * 2);
        StringBuilder sb = new StringBuilder(i5);
        Matcher matcher = i.matcher(str);
        while (i3 > 0 && matcher.find()) {
            sb.append((CharSequence) str, i2, matcher.start());
            sb.append((char) Integer.parseInt((String) a.b(matcher.group(1)), 16));
            i2 = matcher.end();
            i3--;
        }
        if (i2 < length) {
            sb.append((CharSequence) str, i2, length);
        }
        if (sb.length() != i5) {
            return null;
        }
        return sb.toString();
    }

    private static String g(String str) {
        return str == null ? str : str.toUpperCase(Locale.US);
    }

    private static String h(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            n.b("Util", "Failed to read system property ".concat(String.valueOf(str)), e2);
            return null;
        }
    }

    private static String i(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = m;
            if (i2 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i2])) {
                return strArr[i2 + 1] + str.substring(strArr[i2].length());
            }
            i2 += 2;
        }
    }
}
