package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.browser.customtabs.C0165c;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.p073v.C1509a;
import com.google.android.gms.common.p080g.C1562c;
import com.google.android.gms.common.util.C1612h;
import com.google.android.gms.common.util.C1617n;
import com.google.android.gms.internal.ads.AbstractC1714e3;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1765h5;
import com.google.android.gms.internal.ads.C1786io;
import com.google.android.gms.internal.ads.C1828l4;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1879oo;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C2036xj;
import com.google.android.gms.internal.ads.C2073zo;
import com.google.android.gms.internal.ads.kz1;
import com.google.android.gms.internal.ads.m03;
import com.google.android.gms.internal.ads.ph2;
import com.google.android.gms.internal.ads.rz1;
import com.google.android.gms.internal.ads.tv1;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.util.l1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/l1.class */
public final class C1433l1 {

    /* renamed from: i */
    public static final tv1 f5594i = new z0(Looper.getMainLooper());
    @GuardedBy("AdUtil.class")

    /* renamed from: j */
    private static boolean f5595j = false;
    @GuardedBy("userAgentLock")

    /* renamed from: e */
    private String f5600e;

    /* renamed from: a */
    private final AtomicReference<Pattern> f5596a = new AtomicReference<>(null);

    /* renamed from: b */
    private final AtomicReference<Pattern> f5597b = new AtomicReference<>(null);

    /* renamed from: c */
    private boolean f5598c = true;

    /* renamed from: d */
    private final Object f5599d = new Object();

    /* renamed from: f */
    private boolean f5601f = false;

    /* renamed from: g */
    private boolean f5602g = false;

    /* renamed from: h */
    private final Executor f5603h = Executors.newSingleThreadExecutor();

    /* renamed from: A */
    public static int m8797A(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i <= 0) {
            return 60000;
        }
        StringBuilder sb = new StringBuilder(97);
        sb.append("HTTP timeout too low: ");
        sb.append(i);
        sb.append(" milliseconds. Reverting to default timeout: 60000 milliseconds.");
        C1894po.m6180f(sb.toString());
        return 60000;
    }

    /* renamed from: B */
    private final void m8796B(JSONObject jSONObject, String str, Object obj) {
        List asList;
        JSONObject m8742y;
        if (obj instanceof Bundle) {
            m8742y = m8785M((Bundle) obj);
        } else if (obj instanceof Map) {
            m8742y = m8787K((Map) obj);
        } else {
            if (obj instanceof Collection) {
                String str2 = str;
                if (str == null) {
                    str2 = "null";
                }
                asList = (Collection) obj;
                str = str2;
            } else if (!(obj instanceof Object[])) {
                jSONObject.put(str, obj);
                return;
            } else {
                asList = Arrays.asList((Object[]) obj);
            }
            m8742y = m8742y(asList);
        }
        jSONObject.put(str, m8742y);
    }

    /* renamed from: C */
    private static KeyguardManager m8795C(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r5.equals(r0.pattern()) == false) goto L10;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m8794D(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r4
            java.lang.Object r0 = r0.get()     // Catch: java.util.regex.PatternSyntaxException -> L3d
            java.util.regex.Pattern r0 = (java.util.regex.Pattern) r0     // Catch: java.util.regex.PatternSyntaxException -> L3d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L23
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.pattern()     // Catch: java.util.regex.PatternSyntaxException -> L3d
            boolean r0 = r0.equals(r1)     // Catch: java.util.regex.PatternSyntaxException -> L3d
            if (r0 != 0) goto L2f
        L23:
            r0 = r5
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: java.util.regex.PatternSyntaxException -> L3d
            r7 = r0
            r0 = r4
            r1 = r7
            r0.set(r1)     // Catch: java.util.regex.PatternSyntaxException -> L3d
        L2f:
            r0 = r7
            r1 = r3
            java.util.regex.Matcher r0 = r0.matcher(r1)     // Catch: java.util.regex.PatternSyntaxException -> L3d
            boolean r0 = r0.matches()     // Catch: java.util.regex.PatternSyntaxException -> L3d
            r8 = r0
            r0 = r8
            return r0
        L3d:
            r3 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C1433l1.m8794D(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    /* renamed from: E */
    private static String m8793E(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    /* renamed from: F */
    private static Bundle m8792F(Context context) {
        try {
            return C1562c.m8427a(context).m8433c(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            y0.l("Error getting metadata", e);
            return null;
        }
    }

    /* renamed from: P */
    public static void m8782P(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            C2073zo.f9410a.execute(runnable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m8773Y(android.view.View r3) {
        /*
            r0 = r3
            android.view.View r0 = r0.getRootView()
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L10
        Lb:
            r0 = 0
            r3 = r0
            goto L21
        L10:
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r3 = r0
            r0 = r3
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto Lb
            r0 = r3
            android.app.Activity r0 = (android.app.Activity) r0
            r3 = r0
        L21:
            r0 = r3
            if (r0 != 0) goto L27
            r0 = 0
            return r0
        L27:
            r0 = r3
            android.view.Window r0 = r0.getWindow()
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L35
            r0 = r4
            r3 = r0
            goto L3a
        L35:
            r0 = r3
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            r3 = r0
        L3a:
            r0 = r3
            if (r0 == 0) goto L4b
            r0 = r3
            int r0 = r0.flags
            r1 = 524288(0x80000, float:7.34684E-40)
            r0 = r0 & r1
            if (r0 == 0) goto L4b
            r0 = 1
            return r0
        L4b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C1433l1.m8773Y(android.view.View):boolean");
    }

    @TargetApi(18)
    /* renamed from: Z */
    public static final void m8772Z(Context context, Intent intent) {
        if (intent != null && C1617n.m8213e()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    /* renamed from: a */
    public static final WebResourceResponse m8771a(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", C1407r.m8920d().m8788J(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new C1414d0(context).m8844b(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 == null) {
                return null;
            }
            return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            C1894po.m6179g("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    /* renamed from: a0 */
    public static final String m8770a0(Context context) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        return m8793E(m8792F(context2));
    }

    /* renamed from: b */
    public static final String m8769b() {
        Resources m4591f = C1407r.m8916h().m4591f();
        return m4591f != null ? m4591f.getString(C1509a.f5738s7) : "Test Ad";
    }

    /* renamed from: b0 */
    static final String m8768b0() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    /* renamed from: c */
    public static final AbstractC1419g0 m8767c(Context context) {
        AbstractC1419g0 abstractC1419g0;
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                C1894po.m6183c("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                abstractC1419g0 = null;
            } else {
                e0 queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
                abstractC1419g0 = queryLocalInterface instanceof AbstractC1419g0 ? (AbstractC1419g0) queryLocalInterface : new e0(iBinder);
            }
            return abstractC1419g0;
        } catch (Exception e) {
            C1407r.m8916h().m4590g(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    /* renamed from: c0 */
    public static final String m8766c0() {
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

    /* renamed from: d */
    public static final boolean m8765d(Context context, String str) {
        Context m4900a = C2036xj.m4900a(context);
        return C1562c.m8427a(m4900a).m8434b(str, m4900a.getPackageName()) == 0;
    }

    /* renamed from: d0 */
    public static final DisplayMetrics m8764d0(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: e */
    public static final boolean m8763e(String str) {
        if (!C1879oo.m6290j()) {
            return false;
        }
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7295N2)).booleanValue()) {
            return false;
        }
        String str2 = (String) C1674c.m7906c().m6878b(C1842m3.f7307P2);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) C1674c.m7906c().m6878b(C1842m3.f7301O2);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e0 */
    protected static final int[] m8762e0() {
        return new int[]{0, 0};
    }

    @TargetApi(16)
    /* renamed from: f */
    public static final boolean m8761f(Context context) {
        KeyguardManager m8795C;
        return context != null && C1617n.m8215c() && (m8795C = m8795C(context)) != null && m8795C.isKeyguardLocked();
    }

    /* renamed from: g */
    public static final boolean m8760g(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            C1894po.m6182d("Error loading class.", th);
            C1407r.m8916h().m4590g(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    /* renamed from: h */
    public static final boolean m8759h(Context context) {
        boolean z;
        if (C1617n.m8207k()) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7363Y4)).booleanValue()) {
                synchronized (C1433l1.class) {
                    try {
                        z = f5595j;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return z;
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: i */
    public static final boolean m8758i(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager.RunningAppProcessInfo next;
        PowerManager powerManager;
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
            if (next.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode() || (powerManager = (PowerManager) context.getSystemService("power")) == null) {
                return true;
            }
            return !powerManager.isScreenOn();
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: j */
    public static final boolean m8757j(Context context) {
        Bundle m8792F = m8792F(context);
        return TextUtils.isEmpty(m8793E(m8792F)) && !TextUtils.isEmpty(m8792F.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    /* renamed from: k */
    public static final boolean m8756k(Context context) {
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

    /* renamed from: l */
    public static final void m8755l(Context context, String str, String str2) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(str2);
        for (String str3 : arrayList) {
            new l0(context, str, str3).m8699b();
        }
    }

    /* renamed from: m */
    public static final void m8754m(Context context, Throwable th) {
        if (context != null) {
            try {
                if (!C1765h5.f6731b.m6222e().booleanValue()) {
                    return;
                }
                C1612h.m8234a(context, th);
            } catch (IllegalStateException e) {
            }
        }
    }

    /* renamed from: n */
    public static final void m8753n(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: o */
    public static final int m8752o(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(valueOf);
            C1894po.m6180f(sb.toString());
            return 0;
        }
    }

    /* renamed from: p */
    public static final Map<String, String> m8751p(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
        }
        return hashMap;
    }

    /* renamed from: q */
    public static final WebResourceResponse m8750q(HttpURLConnection httpURLConnection) {
        String str;
        C1407r.m8920d();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        C1407r.m8920d();
        String contentType2 = httpURLConnection.getContentType();
        if (TextUtils.isEmpty(contentType2)) {
            str = "";
        } else {
            String[] split = contentType2.split(";");
            if (split.length == 1) {
                str = "";
            } else {
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
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return C1407r.m8918f().m8851n(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    /* renamed from: r */
    public static final int[] m8749r(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? m8762e0() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    /* renamed from: s */
    public static final String m8748s(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return m8768b0();
        }
    }

    /* renamed from: t */
    public static final int[] m8747t(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] m8762e0 = (window == null || (findViewById = window.findViewById(16908290)) == null) ? m8762e0() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{m03.m6636a().m7143a(activity, m8762e0[0]), m03.m6636a().m7143a(activity, m8762e0[1])};
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r5.isScreenOn() != false) goto L20;
     */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m8746u(android.view.View r4, android.os.PowerManager r5, android.app.KeyguardManager r6) {
        /*
            com.google.android.gms.ads.internal.util.l1 r0 = com.google.android.gms.ads.internal.C1407r.m8920d()
            boolean r0 = r0.f5598c
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L2c
            r0 = r6
            if (r0 != 0) goto L15
            goto L2c
        L15:
            r0 = r6
            boolean r0 = r0.inKeyguardRestrictedInputMode()
            if (r0 == 0) goto L2c
            r0 = r4
            boolean r0 = m8773Y(r0)
            if (r0 == 0) goto L26
            goto L2c
        L26:
            r0 = 0
            r9 = r0
            goto L2f
        L2c:
            r0 = 1
            r9 = r0
        L2f:
            r0 = r8
            r7 = r0
            r0 = r4
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L93
            r0 = r8
            r7 = r0
            r0 = r4
            boolean r0 = r0.isShown()
            if (r0 == 0) goto L93
            r0 = r5
            if (r0 == 0) goto L51
            r0 = r8
            r7 = r0
            r0 = r5
            boolean r0 = r0.isScreenOn()
            if (r0 == 0) goto L93
        L51:
            r0 = r8
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L93
            com.google.android.gms.internal.ads.e3<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C1842m3.f7275K0
            r5 = r0
            com.google.android.gms.internal.ads.k3 r0 = com.google.android.gms.internal.ads.C1674c.m7906c()
            r1 = r5
            java.lang.Object r0 = r0.m6878b(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L91
            r0 = r4
            android.graphics.Rect r1 = new android.graphics.Rect
            r2 = r1
            r2.<init>()
            boolean r0 = r0.getLocalVisibleRect(r1)
            if (r0 != 0) goto L91
            r0 = r4
            android.graphics.Rect r1 = new android.graphics.Rect
            r2 = r1
            r2.<init>()
            boolean r0 = r0.getGlobalVisibleRect(r1)
            if (r0 != 0) goto L8f
            r0 = r8
            r7 = r0
            goto L93
        L8f:
            r0 = 1
            return r0
        L91:
            r0 = 1
            r7 = r0
        L93:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C1433l1.m8746u(android.view.View, android.os.PowerManager, android.app.KeyguardManager):boolean");
    }

    @TargetApi(18)
    /* renamed from: v */
    public static final void m8745v(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            m8772Z(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            C1894po.m6185a(sb.toString());
        } catch (ActivityNotFoundException e) {
            C1894po.m6182d("No browser is found.", e);
        }
    }

    /* renamed from: w */
    public static final int[] m8744w(Activity activity) {
        int[] m8749r = m8749r(activity);
        return new int[]{m03.m6636a().m7143a(activity, m8749r[0]), m03.m6636a().m7143a(activity, m8749r[1])};
    }

    /* renamed from: x */
    public static final boolean m8743x(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return m8746u(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, m8795C(context));
    }

    /* renamed from: y */
    private final JSONArray m8742y(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            m8741z(jSONArray, it.next());
        }
        return jSONArray;
    }

    /* renamed from: z */
    private final void m8741z(JSONArray jSONArray, Object obj) {
        JSONObject m8742y;
        if (obj instanceof Bundle) {
            m8742y = m8785M((Bundle) obj);
        } else if (obj instanceof Map) {
            m8742y = m8787K((Map) obj);
        } else if (!(obj instanceof Collection)) {
            if (!(obj instanceof Object[])) {
                jSONArray.put(obj);
                return;
            }
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                m8741z(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
            return;
        } else {
            m8742y = m8742y((Collection) obj);
        }
        jSONArray.put(m8742y);
    }

    /* renamed from: G */
    public final void m8791G(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int m8797A = m8797A(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(m8797A);
        sb.append(" milliseconds.");
        C1894po.m6181e(sb.toString());
        httpURLConnection.setConnectTimeout(m8797A);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(m8797A);
        httpURLConnection.setRequestProperty("User-Agent", m8788J(context, str));
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: H */
    public final boolean m8790H(Context context) {
        if (this.f5601f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new C1431k1(this, null), intentFilter);
        this.f5601f = true;
        return true;
    }

    /* renamed from: I */
    public final boolean m8789I(Context context) {
        if (this.f5602g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new C1428j1(this, null), intentFilter);
        this.f5602g = true;
        return true;
    }

    /* renamed from: J */
    public final String m8788J(Context context, String str) {
        synchronized (this.f5599d) {
            try {
                String str2 = this.f5600e;
                if (str2 != null) {
                    return str2;
                }
                if (str == null) {
                    return m8768b0();
                }
                try {
                    this.f5600e = C1407r.m8918f().m8863b(context);
                } catch (Exception e) {
                }
                if (TextUtils.isEmpty(this.f5600e)) {
                    m03.m6636a();
                    if (!C1786io.m7128p()) {
                        this.f5600e = null;
                        f5594i.post(new RunnableC1420g1(this, context));
                        while (this.f5600e == null) {
                            try {
                                this.f5599d.wait();
                            } catch (InterruptedException e2) {
                                String m8768b0 = m8768b0();
                                this.f5600e = m8768b0;
                                String valueOf = String.valueOf(m8768b0);
                                C1894po.m6180f(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                            }
                        }
                    } else {
                        this.f5600e = m8748s(context);
                    }
                }
                String valueOf2 = String.valueOf(this.f5600e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 10 + str.length());
                sb.append(valueOf2);
                sb.append(" (Mobile; ");
                sb.append(str);
                this.f5600e = sb.toString();
                try {
                    if (C1562c.m8427a(context).m8429g()) {
                        this.f5600e = String.valueOf(this.f5600e).concat(";aia");
                    }
                } catch (Exception e3) {
                    C1407r.m8916h().m4590g(e3, "AdUtil.getUserAgent");
                }
                String concat = String.valueOf(this.f5600e).concat(")");
                this.f5600e = concat;
                return concat;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: K */
    public final JSONObject m8787K(Map<String, ?> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                m8796B(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    /* renamed from: L */
    public final JSONObject m8786L(Bundle bundle, JSONObject jSONObject) {
        JSONObject jSONObject2 = null;
        if (bundle != null) {
            try {
                jSONObject2 = m8785M(bundle);
            } catch (JSONException e) {
                C1894po.m6182d("Error converting Bundle to JSON", e);
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    /* renamed from: M */
    public final JSONObject m8785M(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            m8796B(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    /* renamed from: N */
    public final rz1<Map<String, String>> m8784N(Uri uri) {
        return kz1.c(new Callable(uri) { // from class: com.google.android.gms.ads.internal.util.e1

            /* renamed from: a */
            private final Uri f5564a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5564a = uri;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = this.f5564a;
                tv1 tv1Var = C1433l1.f5594i;
                C1407r.m8920d();
                return C1433l1.m8751p(uri2);
            }
        }, this.f5603h);
    }

    /* renamed from: O */
    public final void m8783O(Context context, String str, String str2, Bundle bundle, boolean z) {
        C1407r.m8920d();
        bundle.putString("device", m8766c0());
        bundle.putString("eids", TextUtils.join(",", C1842m3.m6598c()));
        m03.m6636a();
        C1786io.m7126r(context, str, "gmob-apps", bundle, true, new h1(this, context, str));
    }

    /* renamed from: Q */
    public final boolean m8781Q(String str) {
        return m8794D(str, this.f5596a, (String) C1674c.m7906c().m6878b(C1842m3.f7328T));
    }

    /* renamed from: R */
    public final boolean m8780R(String str) {
        return m8794D(str, this.f5597b, (String) C1674c.m7906c().m6878b(C1842m3.f7334U));
    }

    @TargetApi(26)
    /* renamed from: S */
    public final void m8779S(Context context) {
        if (!C1617n.m8207k()) {
            return;
        }
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7363Y4)).booleanValue()) {
            return;
        }
        ((ConnectivityManager) context.getSystemService("connectivity")).registerDefaultNetworkCallback(new C1425i1(this));
    }

    @TargetApi(18)
    /* renamed from: X */
    public final int m8774X(Context context, Uri uri) {
        int i;
        if (!C1617n.m8213e()) {
            y0.k("Chrome Custom Tabs can only work with version Jellybean onwards.");
            i = 1;
        } else if (context == null) {
            y0.k("Trying to open chrome custom tab on a null context");
            i = 3;
        } else if (!(context instanceof Activity)) {
            y0.k("Chrome Custom Tabs can only work with Activity context.");
            i = 2;
        } else if (ph2.m6198a(context) == null) {
            y0.k("Default browser does not support custom tabs.");
            i = 4;
        } else {
            i = 0;
        }
        AbstractC1714e3<Boolean> abstractC1714e3 = C1842m3.f7506t2;
        Boolean bool = (Boolean) C1674c.m7906c().m6878b(abstractC1714e3);
        AbstractC1714e3<Boolean> abstractC1714e32 = C1842m3.f7513u2;
        if (true == bool.equals(C1674c.m7906c().m6878b(abstractC1714e32))) {
            i = 9;
        }
        if (i != 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i;
        }
        if (((Boolean) C1674c.m7906c().m6878b(abstractC1714e3)).booleanValue()) {
            C1828l4 c1828l4 = new C1828l4();
            c1828l4.m6717d(new f1(this, c1828l4, context, uri));
            c1828l4.m6716e((Activity) context);
        }
        if (!((Boolean) C1674c.m7906c().m6878b(abstractC1714e32)).booleanValue()) {
            return 5;
        }
        new C0165c.C0166a().m14382a().m14383a(context, uri);
        return 5;
    }
}
