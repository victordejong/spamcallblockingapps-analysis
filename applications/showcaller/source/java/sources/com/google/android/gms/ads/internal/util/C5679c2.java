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
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.browser.customtabs.C0351c;
import com.google.android.gms.ads.formats.zzg;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.ads.p264w.C5858a;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6229g;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.internal.ads.AbstractC6381cw;
import com.google.android.gms.internal.ads.C6532gy;
import com.google.android.gms.internal.ads.C6643jx;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.au2;
import com.google.android.gms.internal.ads.di0;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.ej2;
import com.google.android.gms.internal.ads.jj2;
import com.google.android.gms.internal.ads.k03;
import com.google.android.gms.internal.ads.ld0;
import com.google.android.gms.internal.ads.nn0;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.qj3;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.so0;
import com.google.android.gms.internal.ads.xh0;
import com.google.android.gms.internal.ads.zzdsv;
import com.yanzhenjie.nohttp.Headers;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.util.c2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/c2.class */
public final class C5679c2 {

    /* renamed from: a */
    public static final au2 f18451a = new HandlerC5725p1(Looper.getMainLooper());

    /* renamed from: b */
    private static boolean f18452b = false;

    /* renamed from: g */
    private String f18457g;

    /* renamed from: c */
    private final AtomicReference<Pattern> f18453c = new AtomicReference<>(null);

    /* renamed from: d */
    private final AtomicReference<Pattern> f18454d = new AtomicReference<>(null);

    /* renamed from: e */
    private boolean f18455e = true;

    /* renamed from: f */
    private final Object f18456f = new Object();

    /* renamed from: h */
    private boolean f18458h = false;

    /* renamed from: i */
    private boolean f18459i = false;

    /* renamed from: j */
    private final Executor f18460j = Executors.newSingleThreadExecutor();

    /* renamed from: B */
    private final JSONArray m18106B(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            m18105C(jSONArray, it.next());
        }
        return jSONArray;
    }

    /* renamed from: C */
    private final void m18105C(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(m18089S((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(m18091Q((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(m18106B((Collection) obj));
        } else if (!(obj instanceof Object[])) {
            jSONArray.put(obj);
        } else {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                m18105C(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        }
    }

    /* renamed from: D */
    private final void m18104D(JSONObject jSONObject, String str, Object obj) {
        if (obj instanceof Bundle) {
            jSONObject.put(str, m18089S((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, m18091Q((Map) obj));
        } else if (obj instanceof Collection) {
            String str2 = str;
            if (str == null) {
                str2 = "null";
            }
            jSONObject.put(str2, m18106B((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, m18106B(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: E */
    private static KeyguardManager m18103E(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r5.equals(r0.pattern()) == false) goto L10;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m18102F(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C5679c2.m18102F(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    /* renamed from: G */
    private static String m18101G(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    /* renamed from: H */
    private static Bundle m18100H(Context context) {
        try {
            return C6198c.m16885a(context).m16891c(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            C5722o1.m17989l("Error getting metadata", e);
            return null;
        }
    }

    /* renamed from: L */
    public static int m18096L(int i) {
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
        ei0.m15464f(sb.toString());
        return 60000;
    }

    /* renamed from: V */
    public static void m18086V(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            qi0.f28495a.execute(runnable);
        }
    }

    /* renamed from: a */
    public static final long m18081a(View view) {
        float f;
        float f2 = Float.MAX_VALUE;
        do {
            f = f2;
            if (!(view instanceof View)) {
                break;
            }
            View view2 = view;
            f = Math.min(f2, view2.getAlpha());
            view = view2.getParent();
            f2 = f;
        } while (f > 0.0f);
        return Math.round((f < 0.0f ? 0.0f : f) * 100.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m18080a0(android.view.View r3) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C5679c2.m18080a0(android.view.View):boolean");
    }

    /* renamed from: b */
    public static final WebResourceResponse m18079b(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(Headers.HEAD_KEY_USER_AGENT, C5667s.m18160d().m18092P(context, str));
            hashMap.put(Headers.HEAD_KEY_CACHE_CONTROL, "max-stale=3600");
            String str3 = new C5730r0(context).m17986b(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 == null) {
                return null;
            }
            return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            ei0.m15463g("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    @TargetApi(18)
    /* renamed from: b0 */
    public static final void m18078b0(Context context, Intent intent) {
        if (intent != null && C6237o.m16779e()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    /* renamed from: c */
    public static final String m18077c() {
        Resources m12236j = C5667s.m18156h().m12236j();
        return m12236j != null ? m12236j.getString(C5858a.f18823s7) : "Test Ad";
    }

    /* renamed from: c0 */
    public static final String m18076c0(Context context) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        return m18101G(m18100H(context2));
    }

    /* renamed from: d */
    public static final AbstractC5739u0 m18075d(Context context) {
        C5733s0 c5733s0;
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                ei0.m15467c("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                c5733s0 = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
                c5733s0 = queryLocalInterface instanceof AbstractC5739u0 ? (AbstractC5739u0) queryLocalInterface : new C5733s0(iBinder);
            }
            return c5733s0;
        } catch (Exception e) {
            C5667s.m18156h().m12235k(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    /* renamed from: d0 */
    static final String m18074d0() {
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

    /* renamed from: e */
    public static final boolean m18073e(Context context, String str) {
        Context m13583a = ld0.m13583a(context);
        return C6198c.m16885a(m13583a).m16892b(str, m13583a.getPackageName()) == 0;
    }

    /* renamed from: e0 */
    public static final String m18072e0() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + str2.length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: f */
    public static final boolean m18071f(String str) {
        if (!di0.m15804j()) {
            return false;
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25778q3)).booleanValue()) {
            return false;
        }
        String str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25794s3);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) C7192yr.m8714c().m14263c(C6679kw.f25786r3);
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

    /* renamed from: f0 */
    public static final DisplayMetrics m18070f0(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    @TargetApi(16)
    /* renamed from: g */
    public static final boolean m18069g(Context context) {
        KeyguardManager m18103E;
        return context != null && C6237o.m16781c() && (m18103E = m18103E(context)) != null && m18103E.isKeyguardLocked();
    }

    /* renamed from: g0 */
    protected static final int[] m18068g0() {
        return new int[]{0, 0};
    }

    /* renamed from: h */
    public static final boolean m18067h(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            ei0.m15466d("Error loading class.", th);
            C5667s.m18156h().m12235k(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    /* renamed from: i */
    public static final boolean m18066i(Context context) {
        boolean z;
        if (C6237o.m16773k()) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25659b6)).booleanValue()) {
                synchronized (C5679c2.class) {
                    try {
                        z = f18452b;
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

    /* renamed from: j */
    public static final boolean m18065j(Context context) {
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

    /* renamed from: k */
    public static final boolean m18064k(Context context) {
        Bundle m18100H = m18100H(context);
        return TextUtils.isEmpty(m18101G(m18100H)) && !TextUtils.isEmpty(m18100H.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    /* renamed from: l */
    public static final boolean m18063l(Context context) {
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

    /* renamed from: m */
    public static final void m18062m(View view, int i, MotionEvent motionEvent) {
        int i2;
        String str;
        int i3;
        int i4;
        jj2 mo7964B;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            View view2 = view;
            if (view instanceof zzdsv) {
                view2 = ((zzdsv) view).getChildAt(0);
            }
            if ((view2 instanceof zzg) || (view2 instanceof NativeAdView)) {
                str = "NATIVE";
                i2 = 1;
            } else {
                str = "UNKNOWN";
                i2 = 0;
            }
            if (view2.getLocalVisibleRect(rect)) {
                i4 = rect.width();
                i3 = rect.height();
            } else {
                i3 = 0;
                i4 = 0;
            }
            C5667s.m18160d();
            long m18081a = m18081a(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            String str2 = (!(view2 instanceof so0) || (mo7964B = ((so0) view2).mo7964B()) == null) ? "none" : mo7964B.f24897b;
            String str3 = str;
            int i7 = i2;
            String str4 = "none";
            if (view2 instanceof nn0) {
                ej2 mo7878z = ((nn0) view2).mo7878z();
                str3 = str;
                i7 = i2;
                str4 = "none";
                if (mo7878z != null) {
                    str3 = ej2.m15450a(mo7878z.f22221b);
                    i7 = mo7878z.f22229f;
                    str4 = mo7878z.f22197E;
                }
            }
            ei0.m15465e(String.format(Locale.US, "<Ad package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>", packageName, str4, str2, str3, Integer.valueOf(i7), view2.getClass().getName(), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(view2.getWidth()), Integer.valueOf(view2.getHeight()), Integer.valueOf(i4), Integer.valueOf(i3), Long.valueOf(m18081a), Integer.toString(i, 2)));
        } catch (Exception e) {
            ei0.m15466d("Failure getting view location.", e);
        }
    }

    /* renamed from: n */
    public static final void m18061n(Context context, String str, String str2) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(str2);
        for (String str3 : arrayList) {
            new C5678c1(context, str, str3).mo16320c();
        }
    }

    /* renamed from: o */
    public static final void m18060o(Context context, Throwable th) {
        if (context != null) {
            try {
                if (!C6532gy.f23733b.m12799e().booleanValue()) {
                    return;
                }
                C6229g.m16808a(context, th);
            } catch (IllegalStateException e) {
            }
        }
    }

    /* renamed from: p */
    public static final void m18059p(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: q */
    public static final int m18058q(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            ei0.m15464f("Could not parse value:".concat(e.toString()));
            return 0;
        }
    }

    /* renamed from: r */
    public static final Map<String, String> m18057r(Uri uri) {
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

    /* renamed from: s */
    public static final WebResourceResponse m18056s(HttpURLConnection httpURLConnection) {
        String str;
        C5667s.m18160d();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        C5667s.m18160d();
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
        return C5667s.m18158f().mo18013n(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    /* renamed from: t */
    public static final int[] m18055t(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? m18068g0() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    /* renamed from: u */
    public static final String m18054u(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return m18074d0();
        }
    }

    /* renamed from: v */
    public static final int[] m18053v(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] m18068g0 = (window == null || (findViewById = window.findViewById(16908290)) == null) ? m18068g0() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{C7118wr.m9485a().m9177a(activity, m18068g0[0]), C7118wr.m9485a().m9177a(activity, m18068g0[1])};
    }

    /* renamed from: w */
    public static final boolean m18052w(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = true;
        boolean z2 = C5667s.m18160d().f18455e || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || m18080a0(view);
        long m18081a = m18081a(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z2)) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25564Q0)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25578R6)).booleanValue()) {
                    if (m18081a >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25594T6)).intValue()) {
                        return true;
                    }
                }
                return z;
            }
        }
        z = false;
        return z;
    }

    @TargetApi(18)
    /* renamed from: x */
    public static final void m18051x(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            m18078b0(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            ei0.m15469a(sb.toString());
        } catch (ActivityNotFoundException e) {
            ei0.m15466d("No browser is found.", e);
        }
    }

    /* renamed from: y */
    public static final int[] m18050y(Activity activity) {
        int[] m18055t = m18055t(activity);
        return new int[]{C7118wr.m9485a().m9177a(activity, m18055t[0]), C7118wr.m9485a().m9177a(activity, m18055t[1])};
    }

    /* renamed from: z */
    public static final boolean m18049z(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return m18052w(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, m18103E(context));
    }

    /* renamed from: M */
    public final void m18095M(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int m18096L = m18096L(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(m18096L);
        sb.append(" milliseconds.");
        ei0.m15465e(sb.toString());
        httpURLConnection.setConnectTimeout(m18096L);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(m18096L);
        httpURLConnection.setRequestProperty(Headers.HEAD_KEY_USER_AGENT, m18092P(context, str));
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: N */
    public final boolean m18094N(Context context) {
        if (this.f18458h) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new C5675b2(this, null), intentFilter);
        this.f18458h = true;
        return true;
    }

    /* renamed from: O */
    public final boolean m18093O(Context context) {
        if (this.f18459i) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new C5755z1(this, null), intentFilter);
        this.f18459i = true;
        return true;
    }

    /* renamed from: P */
    public final String m18092P(Context context, String str) {
        synchronized (this.f18456f) {
            String str2 = this.f18457g;
            if (str2 != null) {
                return str2;
            }
            if (str == null) {
                return m18074d0();
            }
            try {
                this.f18457g = C5667s.m18158f().mo18037b(context);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(this.f18457g)) {
                C7118wr.m9485a();
                if (!xh0.m9164n()) {
                    this.f18457g = null;
                    f18451a.post(new RunnableC5746w1(this, context));
                    while (this.f18457g == null) {
                        try {
                            this.f18456f.wait();
                        } catch (InterruptedException e2) {
                            String m18074d0 = m18074d0();
                            this.f18457g = m18074d0;
                            String valueOf = String.valueOf(m18074d0);
                            ei0.m15464f(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                } else {
                    this.f18457g = m18054u(context);
                }
            }
            String valueOf2 = String.valueOf(this.f18457g);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 10 + str.length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.f18457g = sb.toString();
            try {
                if (C6198c.m16885a(context).m16887g()) {
                    this.f18457g = String.valueOf(this.f18457g).concat(";aia");
                }
            } catch (Exception e3) {
                C5667s.m18156h().m12235k(e3, "AdUtil.getUserAgent");
            }
            String concat = String.valueOf(this.f18457g).concat(")");
            this.f18457g = concat;
            return concat;
        }
    }

    /* renamed from: Q */
    public final JSONObject m18091Q(Map<String, ?> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                m18104D(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    /* renamed from: R */
    public final JSONObject m18090R(Bundle bundle, JSONObject jSONObject) {
        JSONObject jSONObject2 = null;
        if (bundle != null) {
            try {
                jSONObject2 = m18089S(bundle);
            } catch (JSONException e) {
                ei0.m15466d("Error converting Bundle to JSON", e);
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    /* renamed from: S */
    public final JSONObject m18089S(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            m18104D(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    /* renamed from: T */
    public final r03<Map<String, String>> m18088T(Uri uri) {
        return k03.m14000d(new Callable(uri) { // from class: com.google.android.gms.ads.internal.util.u1

            /* renamed from: a */
            private final Uri f18570a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18570a = uri;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = this.f18570a;
                au2 au2Var = C5679c2.f18451a;
                C5667s.m18160d();
                return C5679c2.m18057r(uri2);
            }
        }, this.f18460j);
    }

    /* renamed from: U */
    public final void m18087U(Context context, String str, String str2, Bundle bundle, boolean z) {
        C5667s.m18160d();
        bundle.putString("device", m18072e0());
        bundle.putString("eids", TextUtils.join(",", C6679kw.m13768c()));
        C7118wr.m9485a();
        xh0.m9162p(context, str, "gmob-apps", bundle, true, new C5749x1(this, context, str));
    }

    /* renamed from: W */
    public final boolean m18085W(String str) {
        return m18102F(str, this.f18453c, (String) C7192yr.m8714c().m14263c(C6679kw.f25611W));
    }

    /* renamed from: X */
    public final boolean m18084X(String str) {
        return m18102F(str, this.f18454d, (String) C7192yr.m8714c().m14263c(C6679kw.f25619X));
    }

    @TargetApi(26)
    /* renamed from: Y */
    public final void m18083Y(Context context) {
        if (!C6237o.m16773k()) {
            return;
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25659b6)).booleanValue()) {
            return;
        }
        ((ConnectivityManager) context.getSystemService("connectivity")).registerDefaultNetworkCallback(new C5752y1(this));
    }

    @TargetApi(18)
    /* renamed from: Z */
    public final int m18082Z(Context context, Uri uri) {
        int i;
        if (context == null) {
            C5722o1.m17990k("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (!C6237o.m16779e()) {
            C5722o1.m17990k("Chrome Custom Tabs can only work with version Jellybean onwards.");
            i = 1;
        } else if (!(context instanceof Activity)) {
            C5722o1.m17990k("Chrome Custom Tabs can only work with Activity context.");
            i = 2;
        } else {
            i = 0;
        }
        AbstractC6381cw<Boolean> abstractC6381cw = C6679kw.f25614W2;
        Boolean bool = (Boolean) C7192yr.m8714c().m14263c(abstractC6381cw);
        AbstractC6381cw<Boolean> abstractC6381cw2 = C6679kw.f25622X2;
        if (true == bool.equals(C7192yr.m8714c().m14263c(abstractC6381cw2))) {
            i = 9;
        }
        if (i != 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
            C6643jx c6643jx = new C6643jx();
            c6643jx.m14020d(new C5743v1(this, c6643jx, context, uri));
            c6643jx.m14019e((Activity) context);
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw2)).booleanValue()) {
            return 5;
        }
        C0351c m34653a = new C0351c.C0352a().m34653a();
        m34653a.f1470a.setPackage(qj3.m11868a(context));
        m34653a.m34654a(context, uri);
        return 5;
    }
}
