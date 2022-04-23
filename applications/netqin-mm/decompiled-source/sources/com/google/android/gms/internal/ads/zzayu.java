package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.volley.Request;
import com.facebook.ads.ExtraHints;
import com.google.android.gms.ads.impl.C7217R;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3645i5;
import p131c.p161d.p170b.p224d.p252g.p253a.C3719k5;
import p131c.p161d.p170b.p224d.p252g.p253a.C3756l5;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3682j5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayu.class */
public final class zzayu {

    /* renamed from: h */
    public static final zzdvo f24665h = new zzayo(Looper.getMainLooper());

    /* renamed from: e */
    public String f24670e;

    /* renamed from: a */
    public AtomicReference<Pattern> f24666a = new AtomicReference<>(null);

    /* renamed from: b */
    public AtomicReference<Pattern> f24667b = new AtomicReference<>(null);

    /* renamed from: c */
    public boolean f24668c = true;

    /* renamed from: d */
    public final Object f24669d = new Object();

    /* renamed from: f */
    public boolean f24671f = false;

    /* renamed from: g */
    public boolean f24672g = false;

    /* renamed from: a */
    public static int m16146a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'A';
        if (c < 'A' || c > 'F') {
            c2 = 'a';
            if (c < 'a' || c > 'f') {
                throw new IllegalArgumentException("Invalid Hex.");
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: a */
    public static Bitmap m16132a(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    /* renamed from: a */
    public static DisplayMetrics m16128a(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: a */
    public static WebResourceResponse m16120a(HttpURLConnection httpURLConnection) throws IOException {
        zzp.m17969c();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(ExtraHints.KEYWORD_SEPARATOR)[0].trim();
        zzp.m17969c();
        String contentType2 = httpURLConnection.getContentType();
        String str = "";
        if (!TextUtils.isEmpty(contentType2)) {
            String[] split = contentType2.split(ExtraHints.KEYWORD_SEPARATOR);
            str = "";
            if (split.length != 1) {
                int i = 1;
                while (true) {
                    str = "";
                    if (i >= split.length) {
                        break;
                    }
                    if (split[i].trim().startsWith("charset")) {
                        String[] split2 = split[i].trim().split("=");
                        if (split2.length > 1) {
                            str = split2[1].trim();
                            break;
                        }
                    }
                    i++;
                }
            }
        }
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap hashMap = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null || entry.getValue().size() <= 0)) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return zzp.m17967e().mo16030a(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    /* renamed from: a */
    public static PopupWindow m16131a(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    /* renamed from: a */
    public static String m16147a() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(" ");
            sb.append(Build.VERSION.RELEASE);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ");
            sb.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/");
                sb.append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m16124a(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[RecyclerView.AbstractC0495b0.FLAG_MOVED];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    /* renamed from: a */
    public static void m16143a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: a */
    public static void m16142a(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            m16112b(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            zzbbq.m15858a(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzbbq.m15855b("No browser is found.", e);
        }
    }

    /* renamed from: a */
    public static void m16139a(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            new zzbax(context, str, (String) obj).m16157b();
        }
    }

    /* renamed from: a */
    public static void m16136a(Context context, Throwable th) {
        if (context != null) {
            boolean z = false;
            try {
                z = zzadb.f24004b.mo16862a().booleanValue();
            } catch (IllegalStateException e) {
            }
            if (z) {
                CrashUtils.m17094a(context, th);
            }
        }
    }

    /* renamed from: a */
    public static void m16123a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzbbz.f24764a.execute(runnable);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r5.equals(r0.pattern()) == false) goto L_0x0023;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m16121a(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r4
            java.lang.Object r0 = r0.get()     // Catch: PatternSyntaxException -> 0x003d
            java.util.regex.Pattern r0 = (java.util.regex.Pattern) r0     // Catch: PatternSyntaxException -> 0x003d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0023
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.pattern()     // Catch: PatternSyntaxException -> 0x003d
            boolean r0 = r0.equals(r1)     // Catch: PatternSyntaxException -> 0x003d
            if (r0 != 0) goto L_0x002f
        L_0x0023:
            r0 = r5
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: PatternSyntaxException -> 0x003d
            r7 = r0
            r0 = r4
            r1 = r7
            r0.set(r1)     // Catch: PatternSyntaxException -> 0x003d
        L_0x002f:
            r0 = r7
            r1 = r3
            java.util.regex.Matcher r0 = r0.matcher(r1)     // Catch: PatternSyntaxException -> 0x003d
            boolean r0 = r0.matches()     // Catch: PatternSyntaxException -> 0x003d
            r8 = r0
            r0 = r8
            return r0
        L_0x003d:
            r3 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzayu.m16121a(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    /* renamed from: b */
    public static Bitmap m16107b(View view) {
        if (view == null) {
            return null;
        }
        Bitmap d = m16096d(view);
        Bitmap bitmap = d;
        if (d == null) {
            bitmap = m16100c(view);
        }
        return bitmap;
    }

    /* renamed from: b */
    public static String m16115b() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: b */
    public static String m16108b(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    /* renamed from: b */
    public static Map<String, String> m16109b(Uri uri) {
        int i;
        int i2;
        if (!zzacs.f23978b.mo16862a().booleanValue()) {
            if (uri == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            zzp.m17967e();
            for (String str : uri.getQueryParameterNames()) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
            return hashMap;
        } else if (uri == null) {
            return null;
        } else {
            HashMap hashMap2 = new HashMap(20);
            String encodedQuery = uri.getEncodedQuery();
            if (encodedQuery == null) {
                return hashMap2;
            }
            int length = encodedQuery.length();
            StringBuilder sb = new StringBuilder(100);
            StringBuilder sb2 = new StringBuilder(length);
            StringBuilder sb3 = sb;
            int i3 = 0;
            while (i3 < length) {
                char charAt = encodedQuery.charAt(i3);
                if (charAt == '%') {
                    byte[] bArr = new byte[(length - i3) / 3];
                    int i4 = 0;
                    char c = charAt;
                    while (i3 < length - 2 && c == '%') {
                        try {
                            bArr[i4] = (byte) ((m16146a(encodedQuery.charAt(i3 + 1)) << 4) + m16146a(encodedQuery.charAt(i3 + 2)));
                            i2 = i4 + 1;
                        } catch (IllegalArgumentException e) {
                            i2 = i4;
                        }
                        int i5 = i3 + 3;
                        i3 = i5;
                        i4 = i2;
                        if (i5 < length) {
                            c = encodedQuery.charAt(i5);
                            i3 = i5;
                            i4 = i2;
                        }
                    }
                    try {
                        sb3.append(new String(bArr, 0, i4, Request.DEFAULT_PARAMS_ENCODING));
                    } catch (UnsupportedEncodingException e2) {
                    }
                    i = i3;
                    sb3 = sb3;
                    if (c != '%') {
                    }
                } else if (charAt == '&') {
                    if (sb.length() > 0 && sb3 != sb) {
                        hashMap2.put(sb.toString(), sb2.toString());
                        sb.setLength(0);
                        sb2.setLength(0);
                    }
                    sb3 = sb;
                    i = i3;
                } else if (charAt == '+') {
                    sb3.append(' ');
                    i = i3;
                    sb3 = sb3;
                } else if (charAt != '=') {
                    sb3.append(charAt);
                    i = i3;
                    sb3 = sb3;
                } else if (sb3 != sb2) {
                    sb3 = sb2;
                    i = i3;
                } else {
                    sb3.append(charAt);
                    i = i3;
                    sb3 = sb3;
                }
                i3 = i + 1;
            }
            if (sb.length() > 0 && sb3 != sb) {
                hashMap2.put(sb.toString(), sb2.toString());
            }
            return hashMap2;
        }
    }

    /* renamed from: b */
    public static void m16112b(Context context, Intent intent) {
        if (intent != null && PlatformVersion.m17063e()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    /* renamed from: b */
    public static void m16110b(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes(Request.DEFAULT_PARAMS_ENCODING));
            openFileOutput.close();
        } catch (Exception e) {
            zzbbq.m15855b("Error writing to file in internal storage.", e);
        }
    }

    /* renamed from: b */
    public static boolean m16111b(Context context, String str) {
        Context b = zzatx.m16348b(context);
        return Wrappers.m17026b(b).m17030a(str, b.getPackageName()) == 0;
    }

    /* renamed from: c */
    public static int m16099c(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(valueOf);
            zzbbq.m15852d(sb.toString());
            return 0;
        }
    }

    /* renamed from: c */
    public static Bitmap m16100c(View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                zzbbq.m15852d("Width or height of view is zero");
                return null;
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            view.layout(0, 0, width, height);
            view.draw(canvas);
            return createBitmap;
        } catch (RuntimeException e) {
            zzbbq.m15855b("Fail to capture the webview", e);
            return null;
        }
    }

    /* renamed from: c */
    public static WebResourceResponse m16101c(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", zzp.m17969c().m16141a(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new zzbag(context).m15970a(str2, hashMap).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", Request.DEFAULT_PARAMS_ENCODING, new ByteArrayInputStream(str3.getBytes(Request.DEFAULT_PARAMS_ENCODING)));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzbbq.m15853c("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    /* renamed from: c */
    public static String m16105c() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    @VisibleForTesting
    /* renamed from: c */
    public static String m16103c(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return m16147a();
        }
    }

    /* renamed from: c */
    public static String m16102c(Context context, String str) {
        try {
            return new String(IOUtils.m17071a((InputStream) context.openFileInput(str), true), Request.DEFAULT_PARAMS_ENCODING);
        } catch (IOException e) {
            zzbbq.m15858a("Error reading from internal storage.");
            return "";
        }
    }

    /* renamed from: c */
    public static int[] m16104c(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? m16098d() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    /* renamed from: d */
    public static AlertDialog.Builder m16097d(Context context) {
        return new AlertDialog.Builder(context);
    }

    /* renamed from: d */
    public static Bitmap m16096d(View view) {
        Bitmap bitmap = null;
        bitmap = null;
        try {
            boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                bitmap = Bitmap.createBitmap(drawingCache);
            }
            bitmap = bitmap;
            view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        } catch (RuntimeException e) {
            zzbbq.m15855b("Fail to capture the web view", e);
        }
        return bitmap;
    }

    /* renamed from: d */
    public static boolean m16095d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    /* renamed from: d */
    public static int[] m16098d() {
        return new int[]{0, 0};
    }

    /* renamed from: e */
    public static zzaam m16093e(Context context) {
        return new zzaam(context);
    }

    /* renamed from: e */
    public static String m16094e() {
        Resources b = zzp.m17965g().m16187b();
        return b != null ? b.getString(C7217R.string.f22728s7) : "Test Ad";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m16092e(android.view.View r3) {
        /*
            r0 = r3
            android.view.View r0 = r0.getRootView()
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x001f
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r3 = r0
            r0 = r3
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x001f
            r0 = r3
            android.app.Activity r0 = (android.app.Activity) r0
            r3 = r0
            goto L_0x0021
        L_0x001f:
            r0 = 0
            r3 = r0
        L_0x0021:
            r0 = r3
            if (r0 != 0) goto L_0x0027
            r0 = 0
            return r0
        L_0x0027:
            r0 = r3
            android.view.Window r0 = r0.getWindow()
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0035
            r0 = r4
            r3 = r0
            goto L_0x003a
        L_0x0035:
            r0 = r3
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            r3 = r0
        L_0x003a:
            r0 = r3
            if (r0 == 0) goto L_0x004b
            r0 = r3
            int r0 = r0.flags
            r1 = 524288(0x80000, float:7.34684E-40)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004b
            r0 = 1
            return r0
        L_0x004b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzayu.m16092e(android.view.View):boolean");
    }

    /* renamed from: e */
    public static boolean m16091e(String str) {
        if (!zzbbk.m15880a()) {
            return false;
        }
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23877q2)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzwm.m11166e().m16921a(zzabb.f23887s2);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(ExtraHints.KEYWORD_SEPARATOR)) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzwm.m11166e().m16921a(zzabb.f23882r2);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(ExtraHints.KEYWORD_SEPARATOR)) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public static int m16089f(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    /* renamed from: f */
    public static String m16090f(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null || (runningTasks = activityManager.getRunningTasks(1)) == null || runningTasks.isEmpty() || (runningTaskInfo = runningTasks.get(0)) == null || runningTaskInfo.topActivity == null) {
                return null;
            }
            return runningTaskInfo.topActivity.getClassName();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: g */
    public static boolean m16088g(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager.RunningAppProcessInfo next;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            do {
                if (!it.hasNext()) {
                    return true;
                }
                next = it.next();
            } while (Process.myPid() != next.pid);
            if (next.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                return true;
            }
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return !(powerManager == null ? false : powerManager.isScreenOn());
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m16087g(View view) {
        if (view == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof ScrollView)) {
            parent = parent.getParent();
        }
        return parent != null;
    }

    /* renamed from: h */
    public static int m16086h(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    /* renamed from: i */
    public static KeyguardManager m16085i(Context context) {
        Object systemService = context.getSystemService("keyguard");
        return (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
    }

    /* renamed from: j */
    public static boolean m16084j(Context context) {
        KeyguardManager i;
        return context != null && PlatformVersion.m17065c() && (i = m16085i(context)) != null && i.isKeyguardLocked();
    }

    /* renamed from: k */
    public static boolean m16083k(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            zzbbq.m15855b("Error loading class.", th);
            zzp.m17965g().m16188a(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    /* renamed from: l */
    public static String m16082l(Context context) {
        return !((Boolean) zzwm.m11166e().m16921a(zzabb.f23788b3)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    /* renamed from: m */
    public static Bundle m16081m(Context context) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23794c3)).booleanValue()) {
            return null;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Bundle bundle = new Bundle();
        if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
            bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
        }
        for (int i = 0; i < 4; i++) {
            String str = new String[]{"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"}[i];
            if (defaultSharedPreferences.contains(str)) {
                bundle.putString(str, defaultSharedPreferences.getString(str, null));
            }
        }
        return bundle;
    }

    /* renamed from: n */
    public static boolean m16080n(Context context) {
        Window window;
        if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        return (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
    }

    /* renamed from: o */
    public static String m16079o(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return m16108b(m16076r(context));
    }

    /* renamed from: p */
    public static boolean m16078p(Context context) {
        Bundle r = m16076r(context);
        return TextUtils.isEmpty(m16108b(r)) && !TextUtils.isEmpty(r.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    /* renamed from: q */
    public static boolean m16077q(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: r */
    public static Bundle m16076r(Context context) {
        try {
            return Wrappers.m17026b(context).m17032a(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zzayp.m16154e("Error getting metadata", e);
            return null;
        }
    }

    /* renamed from: a */
    public final zzdzc<Map<String, String>> m16135a(final Uri uri) {
        return zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, uri) { // from class: c.d.b.d.g.a.h5

            /* renamed from: a */
            public final Uri f13239a;

            {
                this.f13239a = uri;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return zzdyq.m12988a(zzayu.m16109b(this.f13239a));
            }
        }, zzbbz.f24764a);
    }

    /* renamed from: a */
    public final String m16141a(Context context, String str) {
        synchronized (this.f24669d) {
            try {
                if (this.f24670e != null) {
                    return this.f24670e;
                } else if (str == null) {
                    return m16147a();
                } else {
                    try {
                        this.f24670e = zzp.m17967e().mo16042a(context);
                    } catch (Exception e) {
                    }
                    if (TextUtils.isEmpty(this.f24670e)) {
                        zzwm.m11170a();
                        if (!zzbbg.m15899b()) {
                            this.f24670e = null;
                            f24665h.post(new RunnableC3682j5(this, context));
                            while (this.f24670e == null) {
                                try {
                                    this.f24669d.wait();
                                } catch (InterruptedException e2) {
                                    String a = m16147a();
                                    this.f24670e = a;
                                    String valueOf = String.valueOf(a);
                                    zzbbq.m15852d(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                                }
                            }
                        } else {
                            this.f24670e = m16103c(context);
                        }
                    }
                    String valueOf2 = String.valueOf(this.f24670e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 10 + String.valueOf(str).length());
                    sb.append(valueOf2);
                    sb.append(" (Mobile; ");
                    sb.append(str);
                    this.f24670e = sb.toString();
                    try {
                        if (Wrappers.m17026b(context).m17036a()) {
                            this.f24670e = String.valueOf(this.f24670e).concat(";aia");
                        }
                    } catch (Exception e3) {
                        zzp.m17965g().m16188a(e3, "AdUtil.getUserAgent");
                    }
                    String concat = String.valueOf(this.f24670e).concat(")");
                    this.f24670e = concat;
                    return concat;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final JSONArray m16119a(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            m16117a(jSONArray, it.next());
        }
        return jSONArray;
    }

    /* renamed from: a */
    public final JSONObject m16134a(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            m16116a(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    /* renamed from: a */
    public final JSONObject m16133a(Bundle bundle, JSONObject jSONObject) {
        if (bundle == null) {
            return null;
        }
        try {
            return m16134a(bundle);
        } catch (JSONException e) {
            zzbbq.m15855b("Error converting Bundle to JSON", e);
            return null;
        }
    }

    /* renamed from: a */
    public final JSONObject m16118a(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                m16116a(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    /* renamed from: a */
    public final void m16140a(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(m16141a(context, str));
    }

    /* renamed from: a */
    public final void m16138a(Context context, String str, String str2, Bundle bundle, boolean z) {
        zzp.m17969c();
        bundle.putString("device", m16105c());
        bundle.putString("eids", TextUtils.join(",", zzabb.m16917a()));
        zzwm.m11170a();
        zzbbg.m15908a(context, str, str2, bundle, true, new C3645i5(this, context, str));
    }

    /* renamed from: a */
    public final void m16137a(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", m16141a(context, str));
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: a */
    public final void m16117a(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(m16134a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(m16118a((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(m16119a((Collection) obj));
        } else if (obj instanceof Object[]) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                m16117a(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        } else {
            jSONArray.put(obj);
        }
    }

    /* renamed from: a */
    public final void m16116a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, m16134a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, m16118a((Map) obj));
        } else if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, m16119a((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, m16119a(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: a */
    public final boolean m16144a(Context context) {
        if (this.f24671f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new C3719k5(this, null), intentFilter);
        this.f24671f = true;
        return true;
    }

    /* renamed from: a */
    public final boolean m16130a(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return m16129a(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, m16085i(context));
    }

    /* renamed from: a */
    public final boolean m16129a(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (!zzp.m17969c().f24668c) {
            if ((keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode()) && !m16092e(view)) {
                z = false;
                if (view.getVisibility() != 0 && view.isShown()) {
                    if (!(powerManager == null || powerManager.isScreenOn()) || !z) {
                        return false;
                    }
                    return !((Boolean) zzwm.m11166e().m16921a(zzabb.f23664D0)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect());
                }
            }
        }
        z = true;
        return view.getVisibility() != 0 ? false : false;
    }

    /* renamed from: a */
    public final boolean m16122a(String str) {
        return m16121a(str, this.f24666a, (String) zzwm.m11166e().m16921a(zzabb.f23738S));
    }

    /* renamed from: a */
    public final int[] m16145a(Activity activity) {
        int[] c = m16104c(activity);
        return new int[]{zzwm.m11170a().m15910a(activity, c[0]), zzwm.m11170a().m15910a(activity, c[1])};
    }

    /* renamed from: b */
    public final boolean m16113b(Context context) {
        if (this.f24672g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new C3756l5(this, null), intentFilter);
        this.f24672g = true;
        return true;
    }

    /* renamed from: b */
    public final boolean m16106b(String str) {
        return m16121a(str, this.f24667b, (String) zzwm.m11166e().m16921a(zzabb.f23743T));
    }

    /* renamed from: b */
    public final int[] m16114b(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] d = (window == null || (findViewById = window.findViewById(16908290)) == null) ? m16098d() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{zzwm.m11170a().m15910a(activity, d[0]), zzwm.m11170a().m15910a(activity, d[1])};
    }
}
