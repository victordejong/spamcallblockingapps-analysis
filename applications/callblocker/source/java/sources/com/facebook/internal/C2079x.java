package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.EnumC2195o;
import com.facebook.FacebookException;
import com.facebook.p094a.C1932p;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* renamed from: com.facebook.internal.x */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/x.class */
public final class C2079x {

    /* renamed from: a */
    private static int f6118a = 0;

    /* renamed from: b */
    private static long f6119b = -1;

    /* renamed from: c */
    private static long f6120c = -1;

    /* renamed from: d */
    private static long f6121d = -1;

    /* renamed from: e */
    private static String f6122e = "";

    /* renamed from: f */
    private static String f6123f = "";

    /* renamed from: g */
    private static String f6124g = "NoCarrier";

    /* renamed from: com.facebook.internal.x$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/x$a.class */
    public interface AbstractC2082a {
        /* renamed from: a */
        void mo14965a(FacebookException facebookException);

        /* renamed from: a */
        void mo14964a(JSONObject jSONObject);
    }

    /* renamed from: com.facebook.internal.x$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/x$b.class */
    public static class C2083b {

        /* renamed from: a */
        List<String> f6127a;

        /* renamed from: b */
        List<String> f6128b;

        /* renamed from: c */
        List<String> f6129c;

        public C2083b(List<String> list, List<String> list2, List<String> list3) {
            this.f6127a = list;
            this.f6128b = list2;
            this.f6129c = list3;
        }

        /* renamed from: a */
        public List<String> m15423a() {
            return this.f6127a;
        }

        /* renamed from: b */
        public List<String> m15422b() {
            return this.f6128b;
        }

        /* renamed from: c */
        public List<String> m15421c() {
            return this.f6129c;
        }
    }

    /* renamed from: a */
    public static int m15477a(InputStream inputStream, OutputStream outputStream) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        int i = 0;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                i += read;
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return i;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    private static long m15491a(double d) {
        return Math.round(d / 1.073741824E9d);
    }

    /* renamed from: a */
    public static Uri m15468a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        return builder.build();
    }

    /* renamed from: a */
    public static Object m15474a(Object obj, Method method, Object... objArr) {
        Object obj2;
        try {
            obj2 = method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            obj2 = null;
        } catch (InvocationTargetException e2) {
            obj2 = null;
        }
        return obj2;
    }

    /* renamed from: a */
    public static Object m15456a(JSONObject jSONObject, String str, String str2) {
        JSONObject opt = jSONObject.opt(str);
        if (opt != null && (opt instanceof String)) {
            opt = new JSONTokener((String) opt).nextValue();
        }
        if (opt != null && !(opt instanceof JSONObject) && !(opt instanceof JSONArray)) {
            if (str2 == null) {
                throw new FacebookException("Got an unexpected non-JSON object.");
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(str2, opt);
            opt = jSONObject2;
        }
        return opt;
    }

    /* renamed from: a */
    public static String m15492a() {
        String str = null;
        Context m15360h = C2095j.m15360h();
        if (m15360h != null) {
            try {
                str = m15360h.getPackageManager().getPackageInfo(m15360h.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m15490a(int i) {
        return new BigInteger(i * 5, new Random()).toString(32);
    }

    /* renamed from: a */
    public static String m15489a(Context context) {
        C2084y.m15417a((Object) context, "context");
        C2095j.m15373a(context);
        return C2095j.m15356l();
    }

    /* renamed from: a */
    public static String m15478a(InputStream inputStream) {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read == -1) {
                            String sb2 = sb.toString();
                            m15479a((Closeable) bufferedInputStream);
                            m15479a(inputStreamReader);
                            return sb2;
                        }
                        sb.append(cArr, 0, read);
                    }
                } catch (Throwable th) {
                    th = th;
                    m15479a((Closeable) bufferedInputStream);
                    m15479a(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStreamReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
            bufferedInputStream = null;
        }
    }

    /* renamed from: a */
    public static String m15469a(String str, String str2) {
        if (m15472a(str)) {
            str = str2;
        }
        return str;
    }

    /* renamed from: a */
    private static String m15465a(String str, byte[] bArr) {
        String str2;
        try {
            str2 = m15463a(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException e) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: a */
    private static String m15463a(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(Integer.toHexString((b >> 4) & 15));
            sb.append(Integer.toHexString((b >> 0) & 15));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m15461a(Map<String, String> map) {
        String str;
        if (map.isEmpty()) {
            str = "";
        } else {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                str = jSONObject.toString();
            } catch (JSONException e) {
                str = "";
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m15455a(byte[] bArr) {
        return m15465a("SHA-1", bArr);
    }

    /* renamed from: a */
    public static Method m15476a(Class<?> cls, String str, Class<?>... clsArr) {
        Method method;
        try {
            method = cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    public static Method m15466a(String str, String str2, Class<?>... clsArr) {
        Method method;
        try {
            method = m15476a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    public static <T> Collection<T> m15454a(T... tArr) {
        return Collections.unmodifiableCollection(Arrays.asList(tArr));
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: a */
    public static Date m15483a(Bundle bundle, String str, Date date) {
        Date date2;
        char parseLong;
        if (bundle == null) {
            date2 = null;
        } else {
            Object obj = bundle.get(str);
            if (obj instanceof Long) {
                parseLong = ((Long) obj).longValue();
            } else if (obj instanceof String) {
                try {
                    parseLong = Long.parseLong((String) obj);
                } catch (NumberFormatException e) {
                    date2 = null;
                }
            } else {
                date2 = null;
            }
            date2 = parseLong == 0 ? new Date(Long.MAX_VALUE) : new Date((parseLong * 1000) + date.getTime());
        }
        return date2;
    }

    /* renamed from: a */
    public static List<String> m15460a(JSONArray jSONArray) {
        ArrayList arrayList;
        try {
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            while (true) {
                arrayList = arrayList2;
                if (i >= jSONArray.length()) {
                    break;
                }
                arrayList2.add(jSONArray.getString(i));
                i++;
            }
        } catch (JSONException e) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<String, String> m15482a(Parcel parcel) {
        HashMap hashMap;
        int readInt = parcel.readInt();
        if (readInt >= 0) {
            HashMap hashMap2 = new HashMap();
            int i = 0;
            while (true) {
                hashMap = hashMap2;
                if (i >= readInt) {
                    break;
                }
                hashMap2.put(parcel.readString(), parcel.readString());
                i++;
            }
        } else {
            hashMap = null;
        }
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, String> m15459a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null) {
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    private static void m15488a(Context context, String str) {
        String[] split;
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        for (String str2 : cookie.split(";")) {
            if (str2.split("=").length > 0) {
                cookieManager.setCookie(str, split[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
            }
        }
        cookieManager.removeExpiredCookie();
    }

    /* renamed from: a */
    public static void m15486a(Bundle bundle, String str, Uri uri) {
        if (uri != null) {
            m15484a(bundle, str, uri.toString());
        }
    }

    /* renamed from: a */
    public static void m15484a(Bundle bundle, String str, String str2) {
        if (!m15472a(str2)) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: a */
    public static void m15481a(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    /* renamed from: a */
    public static void m15479a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m15473a(Runnable runnable) {
        try {
            C2095j.m15362f().execute(runnable);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m15471a(final String str, final AbstractC2082a abstractC2082a) {
        JSONObject m15500a = C2076u.m15500a(str);
        if (m15500a != null) {
            abstractC2082a.mo14964a(m15500a);
            return;
        }
        C2102k.AbstractC2108b abstractC2108b = new C2102k.AbstractC2108b() { // from class: com.facebook.internal.x.1
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                if (c2194n.m14987a() != null) {
                    abstractC2082a.mo14965a(c2194n.m14987a().m15703f());
                    return;
                }
                C2076u.m15499a(str, c2194n.m14980b());
                abstractC2082a.mo14964a(c2194n.m14980b());
            }
        };
        C2102k m15428g = m15428g(str);
        m15428g.m15336a(abstractC2108b);
        m15428g.m15292j();
    }

    /* renamed from: a */
    public static void m15470a(String str, Exception exc) {
        if (!C2095j.m15364d() || str == null || exc == null) {
            return;
        }
        Log.d(str, exc.getClass().getSimpleName() + ": " + exc.getMessage());
    }

    /* renamed from: a */
    public static void m15467a(String str, String str2, Throwable th) {
        if (!C2095j.m15364d() || m15472a(str)) {
            return;
        }
        Log.d(str, str2, th);
    }

    /* renamed from: a */
    public static void m15464a(URLConnection uRLConnection) {
        if (uRLConnection == null || !(uRLConnection instanceof HttpURLConnection)) {
            return;
        }
        ((HttpURLConnection) uRLConnection).disconnect();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v65, types: [double] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* renamed from: a */
    public static void m15458a(JSONObject jSONObject, Context context) {
        Locale locale;
        int i;
        int i2;
        ?? r14;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        m15426h(context);
        String packageName = context.getPackageName();
        String str = "";
        int i3 = -1;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            int i4 = packageInfo.versionCode;
            i3 = i4;
            i3 = i4;
            str = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
        }
        jSONArray.put(packageName);
        jSONArray.put(i3);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception e2) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + "_" + locale.getCountry());
        jSONArray.put(f6122e);
        jSONArray.put(f6124g);
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                i2 = displayMetrics.widthPixels;
                try {
                    i = displayMetrics.heightPixels;
                    try {
                        r14 = displayMetrics.density;
                    } catch (Exception e3) {
                        r14 = false;
                        jSONArray.put(i2);
                        jSONArray.put(i);
                        jSONArray.put(new DecimalFormat("#.##").format(r14 == true ? 1.0d : 0.0d));
                        jSONArray.put(m15436e());
                        jSONArray.put(f6120c);
                        jSONArray.put(f6121d);
                        jSONArray.put(f6123f);
                        jSONObject.put("extinfo", jSONArray.toString());
                    }
                } catch (Exception e4) {
                    i = 0;
                }
            } else {
                r14 = false;
                i = 0;
                i2 = 0;
            }
        } catch (Exception e5) {
            i = 0;
            i2 = 0;
        }
        jSONArray.put(i2);
        jSONArray.put(i);
        jSONArray.put(new DecimalFormat("#.##").format(r14 == true ? 1.0d : 0.0d));
        jSONArray.put(m15436e());
        jSONArray.put(f6120c);
        jSONArray.put(f6121d);
        jSONArray.put(f6123f);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    /* renamed from: a */
    public static void m15457a(JSONObject jSONObject, C1994a c1994a, String str, boolean z) {
        jSONObject.put("anon_id", str);
        jSONObject.put("application_tracking_enabled", !z);
        if (c1994a != null) {
            if (c1994a.m15698a() != null) {
                jSONObject.put("attribution", c1994a.m15698a());
            }
            if (c1994a.m15695b() != null) {
                jSONObject.put("advertiser_id", c1994a.m15695b());
                jSONObject.put("advertiser_tracking_enabled", !c1994a.m15691d());
            }
            if (!c1994a.m15691d()) {
                String m15834b = C1932p.m15834b();
                if (!m15834b.isEmpty()) {
                    jSONObject.put("ud", m15834b);
                }
            }
            if (c1994a.m15693c() == null) {
                return;
            }
            jSONObject.put("installer_package", c1994a.m15693c());
        }
    }

    /* renamed from: a */
    public static boolean m15487a(Uri uri) {
        return uri != null && ("http".equalsIgnoreCase(uri.getScheme()) || "https".equalsIgnoreCase(uri.getScheme()) || "fbstaging".equalsIgnoreCase(uri.getScheme()));
    }

    /* renamed from: a */
    public static boolean m15485a(Bundle bundle, String str, Object obj) {
        boolean z;
        if (obj == null) {
            bundle.remove(str);
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, obj.toString());
        } else if (!(obj instanceof JSONObject)) {
            z = false;
            return z;
        } else {
            bundle.putString(str, obj.toString());
        }
        z = true;
        return z;
    }

    /* renamed from: a */
    public static boolean m15480a(C1803a c1803a) {
        return c1803a != null && c1803a.equals(C1803a.m16259a());
    }

    /* renamed from: a */
    public static <T> boolean m15475a(T t, T t2) {
        return t == null ? t2 == null : t.equals(t2);
    }

    /* renamed from: a */
    public static boolean m15472a(String str) {
        return str == null || str.length() == 0;
    }

    /* renamed from: a */
    public static <T> boolean m15462a(Collection<T> collection) {
        return collection == null || collection.size() == 0;
    }

    /* renamed from: b */
    public static C2083b m15447b(JSONObject jSONObject) {
        String optString;
        JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        ArrayList arrayList3 = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString2 = optJSONObject.optString("permission");
            if (optString2 != null && !optString2.equals("installed") && (optString = optJSONObject.optString("status")) != null) {
                if (optString.equals("granted")) {
                    arrayList.add(optString2);
                } else if (optString.equals("declined")) {
                    arrayList2.add(optString2);
                } else if (optString.equals("expired")) {
                    arrayList3.add(optString2);
                }
            }
        }
        return new C2083b(arrayList, arrayList2, arrayList3);
    }

    /* renamed from: b */
    public static String m15450b(String str) {
        return m15441c("MD5", str);
    }

    /* renamed from: b */
    public static List<String> m15448b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static <T> List<T> m15446b(T... tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static Locale m15453b() {
        Locale locale;
        try {
            locale = C2095j.m15360h().getResources().getConfiguration().locale;
        } catch (Exception e) {
            locale = null;
        }
        return locale;
    }

    /* renamed from: b */
    public static void m15452b(Context context) {
        m15488a(context, "facebook.com");
        m15488a(context, ".facebook.com");
        m15488a(context, "https://facebook.com");
        m15488a(context, "https://.facebook.com");
    }

    /* renamed from: b */
    public static void m15449b(String str, String str2) {
        if (!C2095j.m15364d() || str == null || str2 == null) {
            return;
        }
        Log.d(str, str2);
    }

    /* renamed from: b */
    public static boolean m15451b(Uri uri) {
        return uri != null && "content".equalsIgnoreCase(uri.getScheme());
    }

    /* renamed from: c */
    public static String m15444c(Context context) {
        return context == null ? "null" : context == context.getApplicationContext() ? "unknown" : context.getClass().getSimpleName();
    }

    /* renamed from: c */
    public static String m15442c(String str) {
        return str == null ? null : m15441c("SHA-256", str);
    }

    /* renamed from: c */
    private static String m15441c(String str, String str2) {
        return m15465a(str, str2.getBytes());
    }

    /* renamed from: c */
    public static Locale m15445c() {
        Locale m15453b = m15453b();
        if (m15453b == null) {
            m15453b = Locale.getDefault();
        }
        return m15453b;
    }

    /* renamed from: c */
    public static boolean m15443c(Uri uri) {
        return uri != null && "file".equalsIgnoreCase(uri.getScheme());
    }

    /* renamed from: d */
    public static long m15438d(Uri uri) {
        Throwable th;
        Cursor cursor;
        try {
            cursor = C2095j.m15360h().getContentResolver().query(uri, null, null, null, null);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        try {
            int columnIndex = cursor.getColumnIndex("_size");
            cursor.moveToFirst();
            long j = cursor.getLong(columnIndex);
            if (cursor != null) {
                cursor.close();
            }
            return j;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: d */
    public static Bundle m15437d(String str) {
        Bundle bundle = new Bundle();
        if (!m15472a(str)) {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                try {
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), URLDecoder.decode(split[1], "UTF-8"));
                    } else if (split.length == 1) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException e) {
                    m15470a("FacebookSDK", (Exception) e);
                }
            }
        }
        return bundle;
    }

    /* renamed from: d */
    public static boolean m15440d() {
        boolean z;
        String packageName;
        Iterator<ResolveInfo> it;
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(String.format("fb%s://applinks", C2095j.m15356l())));
            Context m15360h = C2095j.m15360h();
            PackageManager packageManager = m15360h.getPackageManager();
            packageName = m15360h.getPackageName();
            it = packageManager.queryIntentActivities(intent, 65536).iterator();
        } catch (Exception e) {
        }
        do {
            if (!it.hasNext()) {
                z = false;
                break;
            }
        } while (!packageName.equals(it.next().activityInfo.packageName));
        z = true;
        return z;
    }

    /* renamed from: d */
    public static boolean m15439d(Context context) {
        return m15435e(context);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0048 -> B:10:0x002e). Please submit an issue!!! */
    /* renamed from: e */
    private static int m15436e() {
        int i;
        if (f6118a > 0) {
            i = f6118a;
        } else {
            try {
                File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.facebook.internal.x.2
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file, String str) {
                        return Pattern.matches("cpu[0-9]+", str);
                    }
                });
                if (listFiles != null) {
                    f6118a = listFiles.length;
                }
            } catch (Exception e) {
            }
            if (f6118a <= 0) {
                f6118a = Math.max(Runtime.getRuntime().availableProcessors(), 1);
            }
            i = f6118a;
        }
        return i;
    }

    /* renamed from: e */
    public static Map<String, String> m15434e(String str) {
        HashMap hashMap;
        if (str.isEmpty()) {
            hashMap = new HashMap();
        } else {
            try {
                HashMap hashMap2 = new HashMap();
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap2.put(next, jSONObject.getString(next));
                }
                hashMap = hashMap2;
            } catch (JSONException e) {
                hashMap = new HashMap();
            }
        }
        return hashMap;
    }

    /* renamed from: e */
    public static boolean m15435e(Context context) {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 26) {
            AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
            z = autofillManager != null && autofillManager.isAutofillSupported() && autofillManager.isEnabled();
        }
        return z;
    }

    /* renamed from: f */
    public static JSONObject m15431f(String str) {
        JSONObject m14980b;
        JSONObject m15500a = C2076u.m15500a(str);
        if (m15500a != null) {
            m14980b = m15500a;
        } else {
            C2194n m15293i = m15428g(str).m15293i();
            m14980b = m15293i.m14987a() != null ? null : m15293i.m14980b();
        }
        return m14980b;
    }

    /* renamed from: f */
    private static void m15433f() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            f6122e = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            f6123f = timeZone.getID();
        } catch (AssertionError e) {
        } catch (Exception e2) {
        }
    }

    /* renamed from: f */
    public static boolean m15432f(Context context) {
        return Build.VERSION.SDK_INT >= 27 ? context.getPackageManager().hasSystemFeature("android.hardware.type.pc") : Build.DEVICE != null && Build.DEVICE.matches(".+_cheets|cheets_.+");
    }

    /* renamed from: g */
    private static C2102k m15428g(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", str);
        return new C2102k(null, "me", bundle, EnumC2195o.GET, null);
    }

    /* renamed from: g */
    public static String m15429g(Context context) {
        String str;
        try {
            String m15355m = C2095j.m15355m();
            if (m15355m != null) {
                str = m15355m;
            } else {
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                int i = applicationInfo.labelRes;
                str = i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
            }
        } catch (Exception e) {
            str = "";
        }
        return str;
    }

    /* renamed from: g */
    private static boolean m15430g() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: h */
    private static void m15427h() {
        try {
            if (m15430g()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f6121d = statFs.getBlockSize() * statFs.getAvailableBlocks();
            }
            f6121d = m15491a(f6121d);
        } catch (Exception e) {
        }
    }

    /* renamed from: h */
    private static void m15426h(Context context) {
        if (f6119b == -1 || System.currentTimeMillis() - f6119b >= 1800000) {
            f6119b = System.currentTimeMillis();
            m15433f();
            m15424i(context);
            m15425i();
            m15427h();
        }
    }

    /* renamed from: i */
    private static void m15425i() {
        try {
            if (m15430g()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f6120c = statFs.getBlockSize() * statFs.getBlockCount();
            }
            f6120c = m15491a(f6120c);
        } catch (Exception e) {
        }
    }

    /* renamed from: i */
    private static void m15424i(Context context) {
        if (f6124g.equals("NoCarrier")) {
            try {
                f6124g = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            } catch (Exception e) {
            }
        }
    }
}
