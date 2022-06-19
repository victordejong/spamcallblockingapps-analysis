package com.appnext.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Pair;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import com.appnext.base.moments.p014b.C0490b;
import com.appnext.nativeads.NativeAdObject;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.PushbackInputStream;
import java.io.StringWriter;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.core.g */
/* loaded from: classes-dex2jar.jar:com/appnext/core/g.class */
public final class C0551g {

    /* renamed from: dA */
    private static double f1812dA = -1.0d;

    /* renamed from: dB */
    private static String f1813dB = "";

    /* renamed from: dC */
    private static String f1814dC = "";

    /* renamed from: dD */
    private static String f1815dD = "";

    static {
        CookieHandler.setDefault(new CookieManager());
    }

    /* renamed from: a */
    public static int m42395a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * f);
    }

    /* renamed from: a */
    public static InputStream m42386a(InputStream inputStream) throws IOException {
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 2);
        byte[] bArr = new byte[2];
        try {
            pushbackInputStream.unread(bArr, 0, pushbackInputStream.read(bArr));
            return (bArr[0] == 31 && bArr[1] == -117) ? new GZIPInputStream(pushbackInputStream) : pushbackInputStream;
        } catch (Throwable th) {
            return inputStream;
        }
    }

    /* renamed from: a */
    public static String m42392a(Context context, String str, ArrayList<Pair<String, String>> arrayList, int i) throws IOException {
        return new String(m42394a(context, str, arrayList, true, 16000, C0490b.EnumC0491a.ArrayList), StringConstant.UTF8);
    }

    /* renamed from: a */
    public static String m42391a(Context context, String str, HashMap<String, String> hashMap) throws IOException {
        return m42389a(context, str, hashMap, true, 16000);
    }

    /* renamed from: a */
    public static String m42390a(Context context, String str, HashMap<String, String> hashMap, int i) throws IOException {
        return m42389a(context, str, hashMap, true, i);
    }

    /* renamed from: a */
    public static String m42389a(Context context, String str, HashMap<String, String> hashMap, boolean z, int i) throws IOException {
        return new String(m42394a(context, str, hashMap, z, i, C0490b.EnumC0491a.HashMap), StringConstant.UTF8);
    }

    /* renamed from: a */
    public static String m42385a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String obj = stringWriter.toString();
        String str = obj;
        if (obj.length() > 512) {
            str = obj.substring(0, 512);
        }
        return str;
    }

    /* renamed from: a */
    private static String m42384a(List<Pair<String, String>> list, boolean z) {
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (Pair<String, String> pair : list) {
            boolean z3 = z2;
            try {
                if (pair.first != null) {
                    boolean z4 = z2;
                    if (pair.second != null) {
                        boolean z5 = z2;
                        StringBuilder sb2 = new StringBuilder();
                        if (z2) {
                            z2 = false;
                        } else {
                            sb2.append(ContainerUtils.FIELD_DELIMITER);
                        }
                        if (z) {
                            sb2.append(URLEncoder.encode(URLDecoder.decode((String) pair.first, StringConstant.UTF8), StringConstant.UTF8));
                            boolean z6 = z2;
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            boolean z7 = z2;
                            sb2.append(URLEncoder.encode(URLDecoder.decode((String) pair.second, StringConstant.UTF8), StringConstant.UTF8));
                        } else {
                            sb2.append(URLEncoder.encode((String) pair.first, StringConstant.UTF8));
                            boolean z8 = z2;
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            boolean z9 = z2;
                            sb2.append(URLEncoder.encode((String) pair.second, StringConstant.UTF8));
                        }
                        boolean z10 = z2;
                        boolean z11 = z2;
                        StringBuilder sb3 = new StringBuilder("params: key: ");
                        boolean z12 = z2;
                        sb3.append((String) pair.first);
                        boolean z13 = z2;
                        sb3.append(" value: ");
                        boolean z14 = z2;
                        sb3.append((String) pair.second);
                        boolean z15 = z2;
                        sb.append((CharSequence) sb2);
                    }
                }
            } catch (Throwable th) {
                C0472a.m42577a("AppnextHelperClass$getPostDataString", th);
                z2 = z3;
            }
        }
        new StringBuilder("raw params: ").append(sb.toString());
        return sb.toString();
    }

    /* renamed from: a */
    public static void m42393a(final Context context, final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final String str8, final String str9) {
        try {
            if (TextUtils.isEmpty(str6)) {
                return;
            }
            if (!str6.equals("video_started") && !str6.equals("video_ended")) {
                return;
            }
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    String str10;
                    String str11 = "";
                    try {
                        str10 = URLEncoder.encode(str5.replace(StringConstant.SPACE, AnalyticsConstants.DELIMITER_MAIN), StringConstant.UTF8);
                    } catch (Throwable th) {
                        str10 = "";
                    }
                    try {
                        str11 = URLEncoder.encode(str6.replace(StringConstant.SPACE, AnalyticsConstants.DELIMITER_MAIN), StringConstant.UTF8);
                    } catch (Throwable th2) {
                    }
                    String str12 = str;
                    String str13 = str2;
                    String str14 = str3;
                    String str15 = str4;
                    String str16 = str7;
                    boolean isEmpty = TextUtils.isEmpty(str8);
                    String str17 = DtbConstants.NETWORK_TYPE_UNKNOWN;
                    String str18 = isEmpty ? DtbConstants.NETWORK_TYPE_UNKNOWN : str8;
                    if (!TextUtils.isEmpty(str9)) {
                        str17 = str9;
                    }
                    String format = String.format("https://admin.appnext.com/tp12.aspx?tid=%s&vid=%s&osid=%s&auid=%s&session_id=%s&pid=%s&ref=%s&ads_type=%s&bid=%s&cid=%s", str12, str13, "100", str14, str10, str15, str11, str16, str18, str17);
                    try {
                        new StringBuilder("report: ").append(format);
                        C0551g.m42391a(context, format, null);
                    } catch (Throwable th3) {
                        new StringBuilder("report error: ").append(th3.getMessage());
                    }
                }
            });
        } catch (Throwable th) {
            C0472a.m42577a("AppnextHelperClass$report", th);
        }
    }

    /* renamed from: a */
    public static void m42388a(final AbstractC0501Ad abstractC0501Ad, final AppnextAd appnextAd, final String str, final String str2, final SettingsManager settingsManager) {
        C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.g.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (!Boolean.parseBoolean(settingsManager.m42476y("stp_flag"))) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis());
                    arrayList.add(new Pair("client_date", sb.toString()));
                    arrayList.add(new Pair("did", C0551g.m42380b(abstractC0501Ad.getContext(), true)));
                    arrayList.add(new Pair("session_id", appnextAd.getSession()));
                    arrayList.add(new Pair("tid", abstractC0501Ad.getTID()));
                    arrayList.add(new Pair("vid", abstractC0501Ad.getVID()));
                    arrayList.add(new Pair("auid", abstractC0501Ad.getAUID()));
                    arrayList.add(new Pair("osid", "100"));
                    arrayList.add(new Pair("tem_id", str2));
                    arrayList.add(new Pair("pid", abstractC0501Ad.getPlacementID()));
                    arrayList.add(new Pair("banner_id", appnextAd.getBannerID()));
                    arrayList.add(new Pair("cm_id", appnextAd.getCampaignID()));
                    arrayList.add(new Pair("event_name", str));
                    arrayList.add(new Pair("package_id", abstractC0501Ad.getContext().getPackageName()));
                    C0551g.m42392a(abstractC0501Ad.context, "https://global.appnext.com/stp.aspx", arrayList, 16000);
                } catch (Throwable th) {
                    C0472a.m42577a("AppnextHelperClass$tpReport", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m42387a(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m42387a(file2);
            }
        }
        file.delete();
    }

    /* renamed from: a */
    public static byte[] m42394a(Context context, String str, Object obj, boolean z, int i, C0490b.EnumC0491a enumC0491a) throws IOException {
        Throwable th;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        URL url = new URL(str);
        new StringBuilder("performURLCall ").append(str);
        InputStream inputStream = null;
        try {
            httpURLConnection2 = (HttpURLConnection) url.openConnection();
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
        try {
            httpURLConnection2.setReadTimeout(i);
            httpURLConnection2.setConnectTimeout(i);
            httpURLConnection2.setRequestProperty("Accept-Encoding", "gzip");
            httpURLConnection2.setRequestProperty("User-Agent", C0571r.m42328aC().m42326n(context));
            if (obj != null) {
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setRequestMethod("POST");
                C0490b.EnumC0491a enumC0491a2 = C0490b.EnumC0491a.JSONObject;
                if (enumC0491a == enumC0491a2 || enumC0491a == C0490b.EnumC0491a.JSONArray) {
                    httpURLConnection2.setRequestProperty("Content-Type", "application/json");
                    new StringBuilder("report params ").append(obj.toString());
                }
                OutputStream outputStream = httpURLConnection2.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, StringConstant.UTF8));
                if (enumC0491a == C0490b.EnumC0491a.JSONArray) {
                    bufferedWriter.write(((JSONArray) obj).toString());
                } else if (enumC0491a == enumC0491a2) {
                    bufferedWriter.write(((JSONObject) obj).toString());
                } else if (enumC0491a == C0490b.EnumC0491a.HashMap) {
                    HashMap hashMap = (HashMap) obj;
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry entry : hashMap.entrySet()) {
                        arrayList.add(new Pair(entry.getKey(), entry.getValue()));
                    }
                    bufferedWriter.write(m42384a(arrayList, z));
                } else if (enumC0491a == C0490b.EnumC0491a.ArrayList) {
                    bufferedWriter.write(m42384a((ArrayList) obj, z));
                }
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
            }
            int responseCode = httpURLConnection2.getResponseCode();
            if (responseCode == 200) {
                InputStream inputStream2 = httpURLConnection2.getInputStream();
                byte[] m42379b = m42379b(m42386a(inputStream2));
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpURLConnection2.disconnect();
                return m42379b;
            } else if (responseCode == 301 || responseCode == 302 || responseCode == 303) {
                byte[] m42394a = m42394a(context, httpURLConnection2.getHeaderField("Location"), obj, z, i, enumC0491a);
                httpURLConnection2.disconnect();
                return m42394a;
            } else {
                String str2 = "";
                InputStream errorStream = httpURLConnection2.getErrorStream();
                if (errorStream != null) {
                    str2 = new String(m42379b(errorStream), StringConstant.UTF8);
                }
                throw new HttpRetryException(str2, responseCode);
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = httpURLConnection2;
            if (inputStream != null) {
                inputStream.close();
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: au */
    public static String m42383au() {
        try {
            return URLEncoder.encode("android " + Build.VERSION.SDK_INT + StringConstant.SPACE + Build.MANUFACTURER + StringConstant.SPACE + Build.MODEL, StringConstant.UTF8);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextHelperClass$getDevice", th);
            return Constants.ANDROID_PLATFORM;
        }
    }

    /* renamed from: av */
    public static String m42382av() {
        String[] split = NativeAdObject.VID.split("\\.");
        if (split.length < 4) {
            return NativeAdObject.VID;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 3; i++) {
            sb.append(split[i]);
            if (i < 2) {
                sb.append(StringConstant.DOT);
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m42380b(Context context, boolean z) {
        String str = "";
        if (context != null) {
            if (context.getApplicationContext() == null) {
                str = "";
            } else {
                try {
                    String m42504a = AdsIDHelper.m42504a(context.getApplicationContext(), z);
                    f1814dC = m42504a;
                    str = m42504a;
                }
            }
        }
        return str;
    }

    /* renamed from: b */
    public static String m42378b(String str) {
        String str2;
        String substring = str.substring(str.lastIndexOf(StringConstant.SLASH) + 1);
        String str3 = substring;
        if (substring.contains("?")) {
            str3 = substring.substring(0, substring.indexOf("?"));
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("rnd");
            str2 = str3;
            if (queryParameter != null) {
                str2 = str3;
                if (!queryParameter.equals("")) {
                    str2 = str3.substring(0, str3.lastIndexOf(46)) + AnalyticsConstants.DELIMITER_MAIN + queryParameter + str3.substring(str3.lastIndexOf(46));
                }
            }
        } catch (Throwable th) {
            C0472a.m42577a("AppnextHelperClass$extractFileNameFromPath", th);
            str2 = str3;
        }
        return str2;
    }

    /* renamed from: b */
    public static boolean m42381b(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 128);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: b */
    private static byte[] m42379b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: c */
    private static String m42377c(int i) {
        char[] charArray = "0123456789abcdef".toCharArray();
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 32; i2++) {
            sb.append(charArray[random.nextInt(charArray.length)]);
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static boolean m42376c(Context context, String str) {
        return context != null && !TextUtils.isEmpty(str) && context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    /* renamed from: e */
    public static String m42375e(AppnextAd appnextAd) {
        String str;
        StringBuilder sb = new StringBuilder("https://www.appnext.com/privacy_policy/index.html?z=");
        sb.append(new Random().nextInt(10));
        sb.append(appnextAd.getZoneID());
        sb.append(new Random().nextInt(10));
        if (appnextAd.isGdpr()) {
            str = "&edda=1&geo=" + appnextAd.getCountry();
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: f */
    public static String m42374f(String str, String str2) {
        String[] split;
        String cookie = android.webkit.CookieManager.getInstance().getCookie(str);
        if (cookie == null) {
            return "";
        }
        String str3 = "";
        for (String str4 : cookie.split(";")) {
            if (str4.contains(str2)) {
                String[] split2 = str4.split(ContainerUtils.KEY_VALUE_DELIMITER);
                if (split2.length <= 1) {
                    return "";
                }
                str3 = split2[1];
            }
        }
        return str3;
    }

    /* renamed from: g */
    public static String m42373g(Context context) {
        if (context != null && context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return StringConstant.DASH;
            }
            if (activeNetworkInfo.getType() == 1) {
                return AnalyticsConstants.WIFI;
            }
            if (activeNetworkInfo.getType() != 0) {
                return "Unknown";
            }
            switch (activeNetworkInfo.getSubtype()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return AnalyticsConstants.NETWORK_2G;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return AnalyticsConstants.NETWORK_3G;
                case 13:
                    return AnalyticsConstants.NETWORK_4G;
                default:
                    return "Unknown";
            }
        }
        return "Unknown";
    }

    /* renamed from: g */
    public static String m42372g(String str, String str2) {
        try {
            String[] split = str.split(ContainerUtils.FIELD_DELIMITER);
            HashMap hashMap = new HashMap();
            for (String str3 : split) {
                String[] split2 = str3.split(ContainerUtils.KEY_VALUE_DELIMITER);
                String str4 = split2[0];
                String str5 = "";
                if (split2.length == 2) {
                    str5 = split2[1];
                }
                hashMap.put(str4, str5);
            }
            return (String) hashMap.get(str2);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextHelperClass$getQueryMap", th);
            return null;
        }
    }

    /* renamed from: h */
    public static String m42371h(Context context) {
        if (TextUtils.isEmpty(f1815dD)) {
            synchronized (NativeAdObject.VID) {
                try {
                    if (TextUtils.isEmpty(f1815dD)) {
                        f1815dD = m42370i(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1815dD;
    }

    /* renamed from: i */
    public static String m42370i(Context context) {
        String m42380b = m42380b(context, true);
        if (TextUtils.isEmpty(m42380b)) {
            return m42377c(32);
        }
        StringBuilder m8696K = C22128a.m8696K(m42380b, AnalyticsConstants.DELIMITER_MAIN);
        m8696K.append(System.currentTimeMillis() / 1000);
        return m42365w(m8696K.toString());
    }

    /* renamed from: j */
    public static boolean m42369j(Context context) {
        try {
            if (context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
                m42391a(context, "http://www.appnext.com/myid.html", null);
                return true;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
            throw new IOException();
        } catch (Throwable th) {
            C0472a.m42577a("AppnextHelperClass$checkConnection", th);
            return false;
        }
    }

    /* renamed from: k */
    public static boolean m42368k(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: u */
    public static Bitmap m42367u(String str) {
        Throwable th;
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str);
            new StringBuilder("performURLCall ").append(str);
            httpURLConnection = (HttpURLConnection) url.openConnection();
            try {
                r3.setDoInput(true);
                r3.connect();
                InputStream inputStream = r3.getInputStream();
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                inputStream.close();
                if (decodeStream == null) {
                    r3.disconnect();
                    return null;
                }
                r3.disconnect();
                return decodeStream;
            } catch (Throwable th2) {
                th = th2;
                try {
                    C0472a.m42577a("AppnextHelperClass$getBitmapFromURL", th);
                    if (httpURLConnection == null) {
                        return null;
                    }
                    httpURLConnection.disconnect();
                    return null;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: v */
    public static int m42366v(String str) {
        boolean z;
        String lowerCase = str.toLowerCase(Locale.US);
        lowerCase.hashCode();
        switch (lowerCase.hashCode()) {
            case 1653:
                if (lowerCase.equals("2g")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 1684:
                if (lowerCase.equals("3g")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1715:
                if (lowerCase.equals("4g")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3649301:
                if (lowerCase.equals(AnalyticsConstants.WIFI)) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                return 0;
            case true:
                return 1;
            case true:
                return 2;
            case true:
                return 3;
            default:
                return -1;
        }
    }

    /* renamed from: w */
    private static String m42365w(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            StringBuilder sb = new StringBuilder(length << 1);
            for (int i = 0; i < length; i++) {
                sb.append(Character.forDigit((digest[i] & 240) >> 4, 16));
                sb.append(Character.forDigit(digest[i] & 15, 16));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            C0472a.m42577a("AppnextHelperClass$md5", e);
            return m42377c(32);
        }
    }
}
