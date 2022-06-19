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
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.common.base.C15374d;
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
import okhttp3.internal.p578ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.exoplayer2.util.af */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/af.class */
public final class C11599af {

    /* renamed from: a */
    public static final int f38648a;

    /* renamed from: b */
    public static final String f38649b;

    /* renamed from: c */
    public static final String f38650c;

    /* renamed from: d */
    public static final String f38651d;

    /* renamed from: e */
    public static final String f38652e;

    /* renamed from: f */
    public static final byte[] f38653f;

    /* renamed from: g */
    private static final Pattern f38654g;

    /* renamed from: h */
    private static final Pattern f38655h;

    /* renamed from: i */
    private static final Pattern f38656i;

    /* renamed from: j */
    private static final Pattern f38657j;

    /* renamed from: k */
    private static HashMap<String, String> f38658k;

    /* renamed from: l */
    private static final String[] f38659l;

    /* renamed from: m */
    private static final String[] f38660m;

    /* renamed from: n */
    private static final int[] f38661n;

    /* renamed from: o */
    private static final int[] f38662o;

    static {
        int i = "S".equals(Build.VERSION.CODENAME) ? 31 : "R".equals(Build.VERSION.CODENAME) ? 30 : Build.VERSION.SDK_INT;
        f38648a = i;
        String str = Build.DEVICE;
        f38649b = str;
        String str2 = Build.MANUFACTURER;
        f38650c = str2;
        String str3 = Build.MODEL;
        f38651d = str3;
        f38652e = str + ", " + str3 + ", " + str2 + ", " + i;
        f38653f = new byte[0];
        f38654g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f38655h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f38656i = Pattern.compile("%([A-Fa-f0-9]{2})");
        f38657j = Pattern.compile(".*\\.isml?(?:/(manifest(.*))?)?");
        f38659l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f38660m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f38661n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f38662o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, WebSocketProtocol.PAYLOAD_SHORT, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, LossReason.f33015xd24c0733, 196, 195, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, 144, 151, 158, 153, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, 219, 220, 213, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, JsonReaderKt.END_OBJ, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 200, 221, 218, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, DrawableConstants.CtaButton.WIDTH_DIPS, 145, 152, 159, 138, 141, 132, 131, 222, 217, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 215, 194, 197, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    private C11599af() {
    }

    /* renamed from: a */
    public static float m20000a(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: a */
    public static int m19998a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: a */
    public static int m19997a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: a */
    public static int m19992a(Context context) {
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
                case 19:
                default:
                    return 6;
                case 18:
                    return 2;
                case 20:
                    return f38648a >= 29 ? 9 : 0;
            }
        } catch (SecurityException e) {
            return 0;
        }
    }

    /* renamed from: a */
    public static int m19986a(Uri uri, String str) {
        if (str == null) {
            String path = uri.getPath();
            if (path == null) {
                return 3;
            }
            String m19927d = m19927d(path);
            if (m19927d.endsWith(".mpd")) {
                return 0;
            }
            if (m19927d.endsWith(".m3u8")) {
                return 2;
            }
            Matcher matcher = f38657j.matcher(m19927d);
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
        boolean z = true;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals("application/x-mpegURL")) {
                    z = false;
                    break;
                }
                break;
            case -156749520:
                if (str.equals("application/vnd.ms-sstr+xml")) {
                    z = true;
                    break;
                }
                break;
            case 64194685:
                if (str.equals("application/dash+xml")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return 2;
            case true:
                return 1;
            case true:
                return 0;
            default:
                return 3;
        }
    }

    /* renamed from: a */
    public static int m19979a(C11618o c11618o, long j) {
        int i = c11618o.f38699a - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            if (c11618o.m19856a(i3) < j) {
                i2 = i3 + 1;
            } else {
                i = i3 - 1;
            }
        }
        int i4 = i + 1;
        if (i4 < c11618o.f38699a && c11618o.m19856a(i4) == j) {
            i = i4;
        } else if (i == -1) {
            i = 0;
        }
        return i;
    }

    /* renamed from: a */
    public static int m19965a(ByteBuffer byteBuffer, int i) {
        int i2 = byteBuffer.getInt(i);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i2 : Integer.reverseBytes(i2);
    }

    /* renamed from: a */
    public static <T extends Comparable<? super T>> int m19963a(List<? extends Comparable<? super T>> list, T t) {
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
        return i;
    }

    /* renamed from: a */
    public static int m19959a(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = f38662o[i3 ^ (bArr[i] & 255)];
            i++;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m19958a(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static int m19956a(long[] jArr, long j, boolean z) {
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
    public static long m19996a(long j) {
        return j == -9223372036854775807L ? System.currentTimeMillis() : SystemClock.elapsedRealtime() + j;
    }

    /* renamed from: a */
    public static long m19995a(long j, float f) {
        return f == 1.0f ? j : Math.round(j * f);
    }

    /* renamed from: a */
    public static long m19994a(long j, long j2) {
        long j3 = j + j2;
        if (((j ^ j3) & (j2 ^ j3)) < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    /* renamed from: a */
    public static long m19993a(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: a */
    public static ComponentName m19991a(Context context, Intent intent) {
        return f38648a >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    /* renamed from: a */
    private static Point m19990a(Context context, Display display) {
        int i = f38648a;
        if (i <= 29 && display.getDisplayId() == 0 && m19932c(context)) {
            if ("Sony".equals(f38650c) && f38651d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
            String m19920h = i < 28 ? m19920h("sys.display-size") : m19920h("vendor.display-size");
            if (!TextUtils.isEmpty(m19920h)) {
                try {
                    String[] split = m19920h.trim().split("x", -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException e) {
                }
                C11617n.m19858b("Util", "Invalid display size: ".concat(String.valueOf(m19920h)));
            }
        }
        Point point = new Point();
        int i2 = f38648a;
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
    public static Handler m20001a() {
        return m19985a((Handler.Callback) null);
    }

    /* renamed from: a */
    public static Handler m19985a(Handler.Callback callback) {
        return m19983a((Looper) C11593a.m20024a(Looper.myLooper()), callback);
    }

    /* renamed from: a */
    public static Handler m19983a(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    /* renamed from: a */
    public static CharSequence m19975a(CharSequence charSequence, int i) {
        return charSequence.length() <= i ? charSequence : charSequence.subSequence(0, i);
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m19974a(T t) {
        return t;
    }

    /* renamed from: a */
    public static String m19989a(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str2 = "?";
        }
        return str + "/" + str2 + " (Linux;Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/2.13.3";
    }

    /* renamed from: a */
    public static String m19971a(String str, int i) {
        String[] m19924e = m19924e(str);
        if (m19924e.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : m19924e) {
            if (i == C11620q.m19844h(str2)) {
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
    public static String m19968a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static String m19967a(StringBuilder sb, Formatter formatter, long j) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = 0;
        }
        String str = c < 0 ? VerificationLanguage.REGION_PREFIX : "";
        long abs = (Math.abs((long) c) + 500) / 1000;
        long j2 = abs % 60;
        long j3 = (abs / 60) % 60;
        long j4 = abs / 3600;
        sb.setLength(0);
        return j4 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j3), Long.valueOf(j2)).toString();
    }

    /* renamed from: a */
    public static String m19962a(Locale locale) {
        return f38648a >= 21 ? locale.toLanguageTag() : locale.toString();
    }

    /* renamed from: a */
    public static String m19961a(byte[] bArr) {
        return new String(bArr, C15374d.f55620c);
    }

    /* renamed from: a */
    public static String m19960a(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, C15374d.f55620c);
    }

    /* renamed from: a */
    public static /* synthetic */ Thread m19970a(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* renamed from: a */
    public static ExecutorService m19972a(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer2.util._$$Lambda$af$5ErS5t8ISh3Dgao5nWK13sRRcpM
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m19970a;
                m19970a = C11599af.m19970a(str, runnable);
                return m19970a;
            }
        });
    }

    /* renamed from: a */
    public static void m19981a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m19980a(AbstractC11567h abstractC11567h) {
        if (abstractC11567h != null) {
            try {
                abstractC11567h.mo20031c();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m19977a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m19966a(Throwable th) {
        throw th;
    }

    /* renamed from: a */
    public static <T> void m19964a(List<T> list, int i, int i2, int i3) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i4 = (i2 - i) - 1; i4 >= 0; i4--) {
            arrayDeque.addFirst(list.remove(i + i4));
        }
        list.addAll(Math.min(i3, list.size()), arrayDeque);
    }

    /* renamed from: a */
    public static void m19957a(long[] jArr, long j) {
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
    public static boolean m19999a(int i) {
        return i == 10 || i == 13;
    }

    /* renamed from: a */
    public static boolean m19988a(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    /* renamed from: a */
    public static boolean m19987a(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    /* renamed from: a */
    public static boolean m19984a(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    /* renamed from: a */
    public static boolean m19982a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        r10.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        return false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m19978a(com.google.android.exoplayer2.util.C11628u r7, com.google.android.exoplayer2.util.C11628u r8, java.util.zip.Inflater r9) {
        /*
            r0 = r7
            int r0 = r0.m19812a()
            if (r0 > 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r8
            byte[] r0 = r0.f38733a
            int r0 = r0.length
            r1 = r7
            int r1 = r1.m19812a()
            if (r0 >= r1) goto L1f
            r0 = r8
            r1 = r7
            int r1 = r1.m19812a()
            r2 = 2
            int r1 = r1 * r2
            r0.m19805b(r1)
        L1f:
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L2d
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r1 = r0
            r1.<init>()
            r10 = r0
        L2d:
            r0 = r10
            r1 = r7
            byte[] r1 = r1.f38733a
            r2 = r7
            int r2 = r2.f38734b
            r3 = r7
            int r3 = r3.m19812a()
            r0.setInput(r1, r2, r3)
            r0 = 0
            r11 = r0
        L40:
            r0 = r8
            byte[] r0 = r0.f38733a     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            r7 = r0
            r0 = r11
            r1 = r10
            r2 = r7
            r3 = r11
            r4 = r7
            int r4 = r4.length     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            r5 = r11
            int r4 = r4 - r5
            int r1 = r1.inflate(r2, r3, r4)     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            int r0 = r0 + r1
            r12 = r0
            r0 = r10
            boolean r0 = r0.finished()     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            if (r0 == 0) goto L69
            r0 = r8
            r1 = r12
            r0.m19803c(r1)     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            r0 = r10
            r0.reset()
            r0 = 1
            return r0
        L69:
            r0 = r10
            boolean r0 = r0.needsDictionary()     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            if (r0 != 0) goto L9a
            r0 = r10
            boolean r0 = r0.needsInput()     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            if (r0 == 0) goto L7a
            goto L9a
        L7a:
            r0 = r12
            r11 = r0
            r0 = r12
            r1 = r8
            byte[] r1 = r1.f38733a     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            int r1 = r1.length     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            if (r0 != r1) goto L40
            r0 = r8
            r1 = r8
            byte[] r1 = r1.f38733a     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            int r1 = r1.length     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            r2 = 2
            int r1 = r1 * r2
            r0.m19805b(r1)     // Catch: java.lang.Throwable -> La0 java.util.zip.DataFormatException -> La7
            r0 = r12
            r11 = r0
            goto L40
        L9a:
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        La0:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = r7
            throw r0
        La7:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C11599af.m19978a(com.google.android.exoplayer2.util.u, com.google.android.exoplayer2.util.u, java.util.zip.Inflater):boolean");
    }

    /* renamed from: a */
    public static boolean m19973a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: a */
    public static byte[] m19976a(InputStream inputStream) throws IOException {
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

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T[] m19955a(T[] tArr) {
        return tArr;
    }

    /* renamed from: a */
    public static <T> T[] m19954a(T[] tArr, int i) {
        C11593a.m20022a(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: a */
    public static <T> T[] m19953a(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: a */
    public static String[] m19969a(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: b */
    public static int m19951b(int i) {
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

    /* renamed from: b */
    public static <T extends Comparable<? super T>> int m19942b(List<? extends Comparable<? super T>> list, T t) {
        int i;
        int binarySearch = Collections.binarySearch(list, t);
        if (binarySearch >= 0) {
            int size = list.size();
            do {
                i = binarySearch + 1;
                if (i >= size) {
                    break;
                }
                binarySearch = i;
            } while (list.get(i).compareTo(t) == 0);
        } else {
            i = binarySearch ^ (-1);
        }
        return i;
    }

    /* renamed from: b */
    public static int m19941b(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            i2 = f38661n[((i2 >>> 24) ^ (bArr[i3] & 255)) & 255] ^ (i2 << 8);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m19940b(int[] iArr, int i) {
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

    /* renamed from: b */
    public static int m19939b(long[] jArr, long j, boolean z) {
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
        return i;
    }

    /* renamed from: b */
    public static long m19950b(int i, int i2) {
        return (i2 & 4294967295L) | ((i & 4294967295L) << 32);
    }

    /* renamed from: b */
    public static long m19948b(long j, float f) {
        return f == 1.0f ? j : Math.round(j / f);
    }

    /* renamed from: b */
    public static long m19947b(long j, long j2) {
        long j3 = j - j2;
        if (((j ^ j3) & (j2 ^ j)) < 0) {
            return Long.MIN_VALUE;
        }
        return j3;
    }

    /* renamed from: b */
    public static long m19946b(long j, long j2, long j3) {
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
    public static Handler m19952b() {
        return m19983a(m19936c(), (Handler.Callback) null);
    }

    /* renamed from: b */
    public static Format m19949b(int i, int i2, int i3) {
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = "audio/raw";
        c10828a.f34805x = i2;
        c10828a.f34806y = i3;
        c10828a.f34807z = i;
        return c10828a.m22321a();
    }

    /* renamed from: b */
    public static String m19945b(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER)) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return m19921g(networkCountryIso);
            }
        }
        return m19921g(Locale.getDefault().getCountry());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
        if ("zh".equals(r6) != false) goto L23;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m19944b(java.lang.String r4) {
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
            java.lang.String r0 = m19927d(r0)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "-"
            r2 = 2
            java.lang.String[] r0 = r0.split(r1, r2)
            r1 = 0
            r0 = r0[r1]
            r8 = r0
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.exoplayer2.util.C11599af.f38658k
            if (r0 != 0) goto L46
            java.util.HashMap r0 = m19926e()
            com.google.android.exoplayer2.util.C11599af.f38658k = r0
        L46:
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.exoplayer2.util.C11599af.f38658k
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r8
            r6 = r0
            r0 = r7
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L7e
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
        L7e:
            java.lang.String r0 = "no"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9d
            java.lang.String r0 = "i"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9d
            r0 = r4
            r5 = r0
            java.lang.String r0 = "zh"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto La2
        L9d:
            r0 = r4
            java.lang.String r0 = m19919i(r0)
            r5 = r0
        La2:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C11599af.m19944b(java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    public static String m19938b(Object[] objArr) {
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
    public static <T> T[] m19937b(T[] tArr, int i) {
        C11593a.m20022a(true);
        C11593a.m20022a(i <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, 1, i);
    }

    /* renamed from: b */
    public static String[] m19943b(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: c */
    public static int m19934c(int i, int i2) {
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

    /* renamed from: c */
    public static int m19933c(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        return i == 0 ? 0 : 1;
    }

    /* renamed from: c */
    public static Looper m19936c() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    /* renamed from: c */
    public static boolean m19935c(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: c */
    public static boolean m19932c(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: c */
    public static byte[] m19931c(String str) {
        return str.getBytes(C15374d.f55620c);
    }

    /* renamed from: d */
    public static Point m19928d(Context context) {
        return m19990a(context, ((WindowManager) C11593a.m20020b((WindowManager) context.getSystemService("window"))).getDefaultDisplay());
    }

    /* renamed from: d */
    public static String m19927d(String str) {
        return str == null ? str : str.toLowerCase(Locale.US);
    }

    /* renamed from: d */
    public static boolean m19929d(int i) {
        return i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: d */
    public static String[] m19930d() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] split = f38648a >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{m19962a(configuration.locale)};
        for (int i = 0; i < split.length; i++) {
            split[i] = m19944b(split[i]);
        }
        return split;
    }

    /* renamed from: e */
    public static int m19925e(int i) {
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
                int i2 = f38648a;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    /* renamed from: e */
    private static HashMap<String, String> m19926e() {
        int i;
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f38659l.length);
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
            String[] strArr = f38659l;
            if (i < strArr.length) {
                hashMap.put(strArr[i], strArr[i + 1]);
                i += 2;
            } else {
                return hashMap;
            }
        }
    }

    /* renamed from: e */
    public static String[] m19924e(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
    }

    /* renamed from: f */
    public static int m19923f(int i) {
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

    /* renamed from: f */
    public static String m19922f(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = i;
            if (str.charAt(i2) == '%') {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i == 0) {
            return str;
        }
        int i5 = length - (i * 2);
        StringBuilder sb = new StringBuilder(i5);
        Matcher matcher = f38656i.matcher(str);
        int i6 = 0;
        while (i > 0 && matcher.find()) {
            sb.append((CharSequence) str, i6, matcher.start());
            sb.append((char) Integer.parseInt((String) C11593a.m20020b(matcher.group(1)), 16));
            i6 = matcher.end();
            i--;
        }
        if (i6 < length) {
            sb.append((CharSequence) str, i6, length);
        }
        if (sb.length() == i5) {
            return sb.toString();
        }
        return null;
    }

    /* renamed from: g */
    private static String m19921g(String str) {
        return str == null ? str : str.toUpperCase(Locale.US);
    }

    /* renamed from: h */
    private static String m19920h(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            C11617n.m19857b("Util", "Failed to read system property ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    /* renamed from: i */
    private static String m19919i(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f38660m;
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
}
