package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
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
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.PowerManager;
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
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.p121d.C2284a;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2710g;
import com.google.android.gms.common.util.C2714k;
import com.google.android.gms.common.util.C2716m;
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
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ve */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ve.class */
public final class C3567ve {

    /* renamed from: a */
    public static final cnz f17498a = new HandlerC3559ux(Looper.getMainLooper());
    @GuardedBy("userAgentLock")

    /* renamed from: f */
    private String f17503f;

    /* renamed from: b */
    private AtomicReference<Pattern> f17499b = new AtomicReference<>(null);

    /* renamed from: c */
    private AtomicReference<Pattern> f17500c = new AtomicReference<>(null);

    /* renamed from: d */
    private boolean f17501d = true;

    /* renamed from: e */
    private final Object f17502e = new Object();

    /* renamed from: g */
    private boolean f17504g = false;

    /* renamed from: h */
    private boolean f17505h = false;

    /* renamed from: a */
    private static int m7010a(char c) {
        int i;
        if (c >= '0' && c <= '9') {
            i = c - '0';
        } else if (c >= 'A' && c <= 'F') {
            i = (c - 'A') + 10;
        } else if (c < 'a' || c > 'f') {
            throw new IllegalArgumentException("Invalid Hex.");
        } else {
            i = (c - 'a') + 10;
        }
        return i;
    }

    /* renamed from: a */
    public static int m6986a(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            C3556uu.m6745e(new StringBuilder(String.valueOf(valueOf).length() + 22).append("Could not parse value:").append(valueOf).toString());
            i = 0;
        }
        return i;
    }

    /* renamed from: a */
    public static Bitmap m6996a(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    /* renamed from: a */
    public static DisplayMetrics m6992a(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: a */
    public static WebResourceResponse m6984a(HttpURLConnection httpURLConnection) {
        String str;
        C2341q.m14744c();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        C2341q.m14744c();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] split = contentType2.split(";");
            if (split.length != 1) {
                for (int i = 1; i < split.length; i++) {
                    if (split[i].trim().startsWith("charset")) {
                        String[] split2 = split[i].trim().split("=");
                        if (split2.length > 1) {
                            str = split2[1].trim();
                            break;
                        }
                    }
                }
            }
        }
        str = "";
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap hashMap = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return C2341q.m14742e().mo6928a(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    /* renamed from: a */
    public static PopupWindow m6995a(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    /* renamed from: a */
    public static String m7011a() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: a */
    public static String m6988a(InputStreamReader inputStreamReader) {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read != -1) {
                sb.append(cArr, 0, read);
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: a */
    private final JSONArray m6983a(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            m6981a(jSONArray, it.next());
        }
        return jSONArray;
    }

    /* renamed from: a */
    public static void m7007a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    @TargetApi(18)
    /* renamed from: a */
    public static void m7006a(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            m6976b(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            C3556uu.m6751b(new StringBuilder(String.valueOf(uri2).length() + 26).append("Opening ").append(uri2).append(" in a new browser.").toString());
        } catch (ActivityNotFoundException e) {
            C3556uu.m6748c("No browser is found.", e);
        }
    }

    /* renamed from: a */
    public static void m7003a(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            new C3620xd(context, str, (String) arrayList2.get(i)).m7063b();
        }
    }

    /* renamed from: a */
    public static void m7000a(Context context, Throwable th) {
        boolean z;
        if (context == null) {
            return;
        }
        try {
            z = C2819aw.f10444b.mo13599a().booleanValue();
        } catch (IllegalStateException e) {
            z = false;
        }
        if (!z) {
            return;
        }
        C2710g.m13864a(context, th);
    }

    /* renamed from: a */
    public static void m6987a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            C3650yg.f17642a.execute(runnable);
        }
    }

    /* renamed from: a */
    private final void m6981a(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(m6998a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(m6982a((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(m6983a((Collection) obj));
        } else if (!(obj instanceof Object[])) {
            jSONArray.put(obj);
        } else {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                m6981a(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        }
    }

    /* renamed from: a */
    private final void m6980a(JSONObject jSONObject, String str, Object obj) {
        if (obj instanceof Bundle) {
            jSONObject.put(str, m6998a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, m6982a((Map) obj));
        } else if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, m6983a((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, m6983a(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: a */
    public static boolean m7005a(Context context, String str) {
        Context m7295b = C3446qs.m7295b(context);
        return C2586c.m14193a(m7295b).m14196a(str, m7295b.getPackageName()) == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        if (r5.equals(r0.pattern()) == false) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m6985a(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lb
            r0 = 0
            r6 = r0
        L9:
            r0 = r6
            return r0
        Lb:
            r0 = r4
            java.lang.Object r0 = r0.get()     // Catch: java.util.regex.PatternSyntaxException -> L42
            java.util.regex.Pattern r0 = (java.util.regex.Pattern) r0     // Catch: java.util.regex.PatternSyntaxException -> L42
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L29
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.pattern()     // Catch: java.util.regex.PatternSyntaxException -> L42
            boolean r0 = r0.equals(r1)     // Catch: java.util.regex.PatternSyntaxException -> L42
            if (r0 != 0) goto L35
        L29:
            r0 = r5
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: java.util.regex.PatternSyntaxException -> L42
            r8 = r0
            r0 = r4
            r1 = r8
            r0.set(r1)     // Catch: java.util.regex.PatternSyntaxException -> L42
        L35:
            r0 = r8
            r1 = r3
            java.util.regex.Matcher r0 = r0.matcher(r1)     // Catch: java.util.regex.PatternSyntaxException -> L42
            boolean r0 = r0.matches()     // Catch: java.util.regex.PatternSyntaxException -> L42
            r6 = r0
            goto L9
        L42:
            r3 = move-exception
            r0 = 0
            r6 = r0
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3567ve.m6985a(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    /* renamed from: a */
    public static int[] m7009a(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? m6958e() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    /* renamed from: b */
    public static Bitmap m6971b(View view) {
        Bitmap bitmap;
        if (view == null) {
            bitmap = null;
        } else {
            Bitmap m6953f = m6953f(view);
            bitmap = m6953f;
            if (m6953f == null) {
                bitmap = m6956e(view);
            }
        }
        return bitmap;
    }

    /* renamed from: b */
    public static String m6979b() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (!str2.startsWith(str)) {
            str2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(" ").append(str2).toString();
        }
        return str2;
    }

    /* renamed from: b */
    private static String m6972b(Bundle bundle) {
        String str;
        if (bundle == null) {
            str = "";
        } else {
            String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
            if (TextUtils.isEmpty(string)) {
                str = "";
            } else {
                str = string;
                if (!string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$")) {
                    str = string;
                    if (!string.matches("^/\\d+~.+$")) {
                        str = "";
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: b */
    public static Map<String, String> m6973b(Uri uri) {
        HashMap hashMap;
        StringBuilder sb;
        int i;
        int i2;
        if (!C2780am.f9977b.mo13599a().booleanValue()) {
            if (uri == null) {
                hashMap = null;
            } else {
                HashMap hashMap2 = new HashMap();
                C2341q.m14742e();
                for (String str : uri.getQueryParameterNames()) {
                    hashMap2.put(str, uri.getQueryParameter(str));
                }
                hashMap = hashMap2;
            }
        } else if (uri == null) {
            hashMap = null;
        } else {
            HashMap hashMap3 = new HashMap(20);
            String encodedQuery = uri.getEncodedQuery();
            if (encodedQuery == null) {
                hashMap = hashMap3;
            } else {
                int length = encodedQuery.length();
                StringBuilder sb2 = new StringBuilder(100);
                StringBuilder sb3 = new StringBuilder(length);
                StringBuilder sb4 = sb2;
                int i3 = 0;
                while (i3 < length) {
                    char charAt = encodedQuery.charAt(i3);
                    switch (charAt) {
                        case '%':
                            byte[] bArr = new byte[(length - i3) / 3];
                            int i4 = 0;
                            char c = charAt;
                            while (i3 < length - 2 && c == '%') {
                                try {
                                    bArr[i4] = (byte) ((m7010a(encodedQuery.charAt(i3 + 1)) << 4) + m7010a(encodedQuery.charAt(i3 + 2)));
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
                                sb4.append(new String(bArr, 0, i4, "UTF-8"));
                            } catch (UnsupportedEncodingException e2) {
                            }
                            sb = sb4;
                            i = i3;
                            if (c == '%') {
                                break;
                            } else {
                                continue;
                            }
                            break;
                        case '&':
                            if (sb2.length() > 0 && sb4 != sb2) {
                                hashMap3.put(sb2.toString(), sb3.toString());
                                sb2.setLength(0);
                                sb3.setLength(0);
                            }
                            sb = sb2;
                            i = i3;
                            break;
                        case '+':
                            sb4.append(' ');
                            sb = sb4;
                            i = i3;
                            break;
                        case '=':
                            if (sb4 != sb3) {
                                sb = sb3;
                                i = i3;
                                break;
                            } else {
                                sb4.append(charAt);
                                sb = sb4;
                                i = i3;
                                break;
                            }
                        default:
                            sb4.append(charAt);
                            i = i3;
                            sb = sb4;
                            break;
                    }
                    i3 = i + 1;
                    sb4 = sb;
                }
                if (sb2.length() > 0 && sb4 != sb2) {
                    hashMap3.put(sb2.toString(), sb3.toString());
                }
                hashMap = hashMap3;
            }
        }
        return hashMap;
    }

    @TargetApi(18)
    /* renamed from: b */
    public static void m6976b(Context context, Intent intent) {
        if (intent != null && C2716m.m13838e()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    /* renamed from: b */
    public static void m6974b(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes("UTF-8"));
            openFileOutput.close();
        } catch (Exception e) {
            C3556uu.m6748c("Error writing to file in internal storage.", e);
        }
    }

    /* renamed from: b */
    public static boolean m6970b(String str) {
        return TextUtils.isEmpty(str) ? false : str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    /* renamed from: c */
    public static WebResourceResponse m6965c(Context context, String str, String str2) {
        WebResourceResponse webResourceResponse;
        String str3;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", C2341q.m14744c().m6975b(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            str3 = new C3606wq(context).m6869a(str2, hashMap).get(60L, TimeUnit.SECONDS);
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            C3556uu.m6746d("Could not fetch MRAID JS.", e);
        }
        if (str3 != null) {
            webResourceResponse = new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            return webResourceResponse;
        }
        webResourceResponse = null;
        return webResourceResponse;
    }

    /* renamed from: c */
    public static String m6969c() {
        Resources m7089d = C2341q.m14740g().m7089d();
        return m7089d != null ? m7089d.getString(C2284a.C2285a.f6598s7) : "Test Ad";
    }

    /* renamed from: c */
    public static String m6967c(Context context) {
        String m6962d;
        try {
            m6962d = new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            m6962d = m6962d();
        }
        return m6962d;
    }

    /* renamed from: c */
    public static String m6966c(Context context, String str) {
        String str2;
        try {
            str2 = new String(C2714k.m13844a((InputStream) context.openFileInput(str), true), "UTF-8");
        } catch (IOException e) {
            C3556uu.m6751b("Error reading from internal storage.");
            str2 = "";
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m6964c(android.view.View r3) {
        /*
            r0 = r3
            android.view.View r0 = r0.getRootView()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L22
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r3 = r0
            r0 = r3
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L22
            r0 = r3
            android.app.Activity r0 = (android.app.Activity) r0
            r3 = r0
        L1a:
            r0 = r3
            if (r0 != 0) goto L27
            r0 = 0
            r4 = r0
        L20:
            r0 = r4
            return r0
        L22:
            r0 = 0
            r3 = r0
            goto L1a
        L27:
            r0 = r3
            android.view.Window r0 = r0.getWindow()
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L46
            r0 = 0
            r3 = r0
        L32:
            r0 = r3
            if (r0 == 0) goto L4e
            r0 = r3
            int r0 = r0.flags
            r1 = 524288(0x80000, float:7.34684E-40)
            r0 = r0 & r1
            if (r0 == 0) goto L4e
            r0 = 1
            r4 = r0
            goto L20
        L46:
            r0 = r3
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            r3 = r0
            goto L32
        L4e:
            r0 = 0
            r4 = r0
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3567ve.m6964c(android.view.View):boolean");
    }

    /* renamed from: d */
    public static int m6960d(View view) {
        ViewParent viewParent;
        int positionForView;
        if (view == null) {
            positionForView = -1;
        } else {
            ViewParent parent = view.getParent();
            while (true) {
                viewParent = parent;
                if (viewParent == null || (viewParent instanceof AdapterView)) {
                    break;
                }
                parent = viewParent.getParent();
            }
            positionForView = viewParent == null ? -1 : ((AdapterView) viewParent).getPositionForView(view);
        }
        return positionForView;
    }

    /* renamed from: d */
    public static AlertDialog.Builder m6961d(Context context) {
        return new AlertDialog.Builder(context);
    }

    /* renamed from: d */
    private static String m6962d() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(" ").append(Build.VERSION.RELEASE);
        }
        sb.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/").append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    /* renamed from: e */
    private static Bitmap m6956e(View view) {
        Bitmap bitmap;
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                C3556uu.m6745e("Width or height of view is zero");
                bitmap = null;
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(createBitmap);
                view.layout(0, 0, width, height);
                view.draw(canvas);
                bitmap = createBitmap;
            }
        } catch (RuntimeException e) {
            C3556uu.m6748c("Fail to capture the webview", e);
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: e */
    public static ecp m6957e(Context context) {
        return new ecp(context);
    }

    /* renamed from: e */
    public static boolean m6955e(String str) {
        boolean z;
        if (C3638xv.m6760c()) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16483cj)).booleanValue()) {
                String str2 = (String) dyx.m8158e().m7876a(edi.f16485cl);
                if (!str2.isEmpty()) {
                    for (String str3 : str2.split(";")) {
                        if (str3.equals(str)) {
                            z = false;
                            break;
                        }
                    }
                }
                String str4 = (String) dyx.m8158e().m7876a(edi.f16484ck);
                if (!str4.isEmpty()) {
                    String[] split = str4.split(";");
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = false;
                            break;
                        } else if (split[i].equals(str)) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    private static int[] m6958e() {
        return new int[]{0, 0};
    }

    /* renamed from: f */
    private static Bitmap m6953f(View view) {
        Bitmap bitmap = null;
        Bitmap bitmap2 = null;
        try {
            boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                bitmap = Bitmap.createBitmap(drawingCache);
            }
            bitmap2 = bitmap;
            view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        } catch (RuntimeException e) {
            C3556uu.m6748c("Fail to capture the web view", e);
            bitmap = bitmap2;
        }
        return bitmap;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: f */
    public static String m6954f(Context context) {
        String str;
        ActivityManager activityManager;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            activityManager = (ActivityManager) context.getSystemService("activity");
        } catch (Exception e) {
        }
        if (activityManager == null) {
            str = null;
        } else {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
            if (runningTasks != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
                str = runningTaskInfo.topActivity.getClassName();
            }
            str = null;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
        if (r0.importance != 100) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        if (r0.inKeyguardRestrictedInputMode() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0067, code lost:
        r0 = (android.os.PowerManager) r3.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
        if (r0 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0079, code lost:
        if (r6 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
        r6 = r0.isScreenOn();
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m6952g(android.content.Context r3) {
        /*
            r0 = r3
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L8e
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> L8e
            r4 = r0
            r0 = r3
            java.lang.String r1 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L8e
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0     // Catch: java.lang.Throwable -> L8e
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L1e
            r0 = r5
            if (r0 != 0) goto L22
        L1e:
            r0 = 0
            r6 = r0
        L20:
            r0 = r6
            return r0
        L22:
            r0 = r4
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L8e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L30
            r0 = 0
            r6 = r0
            goto L20
        L30:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L8e
            r4 = r0
        L37:
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L8e
            if (r0 == 0) goto L89
            r0 = r4
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L8e
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> L8e
            r7 = r0
            int r0 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L8e
            r1 = r7
            int r1 = r1.pid     // Catch: java.lang.Throwable -> L8e
            if (r0 != r1) goto L37
            r0 = r7
            int r0 = r0.importance     // Catch: java.lang.Throwable -> L8e
            r1 = 100
            if (r0 != r1) goto L89
            r0 = r5
            boolean r0 = r0.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> L8e
            if (r0 != 0) goto L89
            r0 = r3
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L8e
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: java.lang.Throwable -> L8e
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L81
            r0 = 0
            r6 = r0
        L78:
            r0 = r6
            if (r0 == 0) goto L89
            r0 = 0
            r6 = r0
            goto L20
        L81:
            r0 = r3
            boolean r0 = r0.isScreenOn()     // Catch: java.lang.Throwable -> L8e
            r6 = r0
            goto L78
        L89:
            r0 = 1
            r6 = r0
            goto L20
        L8e:
            r3 = move-exception
            r0 = 0
            r6 = r0
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3567ve.m6952g(android.content.Context):boolean");
    }

    /* renamed from: h */
    public static int m6951h(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo == null ? 0 : applicationInfo.targetSdkVersion;
    }

    @TargetApi(16)
    /* renamed from: i */
    public static boolean m6950i(Context context) {
        boolean z = false;
        if (context != null) {
            if (!C2716m.m13840c()) {
                z = false;
            } else {
                KeyguardManager m6943p = m6943p(context);
                z = false;
                if (m6943p != null) {
                    z = false;
                    if (m6943p.isKeyguardLocked()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: j */
    public static boolean m6949j(Context context) {
        boolean z = false;
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
        } catch (ClassNotFoundException e) {
            z = true;
        } catch (Throwable th) {
            C3556uu.m6748c("Error loading class.", th);
            C2341q.m14740g().m7095a(th, "AdUtil.isLiteSdk");
        }
        return z;
    }

    /* renamed from: k */
    public static String m6948k(Context context) {
        return !((Boolean) dyx.m8158e().m7876a(edi.f16467cT)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    /* renamed from: l */
    public static Bundle m6947l(Context context) {
        Bundle bundle;
        int i = 0;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16468cU)).booleanValue()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Bundle bundle2 = new Bundle();
            if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                bundle2.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
            }
            while (true) {
                bundle = bundle2;
                if (i >= 4) {
                    break;
                }
                String str = new String[]{"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"}[i];
                if (defaultSharedPreferences.contains(str)) {
                    bundle2.putString(str, defaultSharedPreferences.getString(str, null));
                }
                i++;
            }
        } else {
            bundle = null;
        }
        return bundle;
    }

    /* renamed from: m */
    public static boolean m6946m(Context context) {
        boolean z;
        if (!(context instanceof Activity)) {
            z = false;
        } else {
            Window window = ((Activity) context).getWindow();
            z = false;
            if (window != null) {
                z = false;
                if (window.getDecorView() != null) {
                    Rect rect = new Rect();
                    Rect rect2 = new Rect();
                    window.getDecorView().getGlobalVisibleRect(rect, null);
                    window.getDecorView().getWindowVisibleDisplayFrame(rect2);
                    z = false;
                    if (rect.bottom != 0) {
                        z = false;
                        if (rect2.bottom != 0) {
                            z = false;
                            if (rect.top == rect2.top) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: n */
    public static String m6945n(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return m6972b(m6942q(context));
    }

    /* renamed from: o */
    public static boolean m6944o(Context context) {
        Bundle m6942q = m6942q(context);
        return TextUtils.isEmpty(m6972b(m6942q)) && !TextUtils.isEmpty(m6942q.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    /* renamed from: p */
    private static KeyguardManager m6943p(Context context) {
        Object systemService = context.getSystemService("keyguard");
        return (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
    }

    /* renamed from: q */
    private static Bundle m6942q(Context context) {
        Bundle bundle;
        try {
            bundle = C2586c.m14193a(context).m14198a(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            C3556uu.m7051a("Error getting metadata", e);
            bundle = null;
        }
        return bundle;
    }

    /* renamed from: a */
    public final crt<Map<String, String>> m6999a(Uri uri) {
        return crg.m10782a(crg.m10778a((Object) null), new cqt(this, uri) { // from class: com.google.android.gms.internal.ads.vc

            /* renamed from: a */
            private final C3567ve f17494a;

            /* renamed from: b */
            private final Uri f17495b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17494a = this;
                this.f17495b = uri;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return crg.m10778a(C3567ve.m6973b(this.f17495b));
            }
        }, C3650yg.f17642a);
    }

    /* renamed from: a */
    public final JSONObject m6998a(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            m6980a(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    /* renamed from: a */
    public final JSONObject m6997a(Bundle bundle, JSONObject jSONObject) {
        JSONObject jSONObject2 = null;
        if (bundle != null) {
            try {
                jSONObject2 = m6998a(bundle);
            } catch (JSONException e) {
                C3556uu.m6748c("Error converting Bundle to JSON", e);
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public final JSONObject m6982a(Map<String, ?> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                m6980a(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    /* renamed from: a */
    public final void m7004a(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(m6975b(context, str));
    }

    /* renamed from: a */
    public final void m7002a(Context context, String str, String str2, Bundle bundle, boolean z) {
        C2341q.m14744c();
        bundle.putString("device", m6979b());
        bundle.putString("eids", TextUtils.join(",", edi.m7867a()));
        dyx.m8162a();
        C3634xr.m6799a(context, str, str2, bundle, true, new C3571vi(this, context, str));
    }

    /* renamed from: a */
    public final void m7001a(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", m6975b(context, str));
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: a */
    public final boolean m7008a(Context context) {
        boolean z = true;
        if (this.f17504g) {
            z = false;
        } else {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.getApplicationContext().registerReceiver(new C3573vk(this, null), intentFilter);
            this.f17504g = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m6994a(View view, Context context) {
        PowerManager powerManager = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            powerManager = (PowerManager) applicationContext.getSystemService("power");
        }
        return m6993a(view, powerManager, m6943p(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0060  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6993a(android.view.View r5, android.os.PowerManager r6, android.app.KeyguardManager r7) {
        /*
            r4 = this;
            r0 = 1
            r8 = r0
            com.google.android.gms.internal.ads.ve r0 = com.google.android.gms.ads.internal.C2341q.m14744c()
            boolean r0 = r0.f17501d
            if (r0 != 0) goto L1f
            r0 = r7
            if (r0 != 0) goto L87
            r0 = 0
            r9 = r0
        L13:
            r0 = r9
            if (r0 == 0) goto L1f
            r0 = r5
            boolean r0 = m6964c(r0)
            if (r0 == 0) goto L90
        L1f:
            r0 = 1
            r10 = r0
        L22:
            r0 = r5
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L9c
            r0 = r5
            boolean r0 = r0.isShown()
            if (r0 == 0) goto L9c
            r0 = r6
            if (r0 == 0) goto L3b
            r0 = r6
            boolean r0 = r0.isScreenOn()
            if (r0 == 0) goto L96
        L3b:
            r0 = 1
            r11 = r0
        L3e:
            r0 = r11
            if (r0 == 0) goto L9c
            r0 = r10
            if (r0 == 0) goto L9c
            com.google.android.gms.internal.ads.ect<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.edi.f16343aB
            r6 = r0
            r0 = r8
            r9 = r0
            com.google.android.gms.internal.ads.ede r0 = com.google.android.gms.internal.ads.dyx.m8158e()
            r1 = r6
            java.lang.Object r0 = r0.m7876a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L84
            r0 = r8
            r9 = r0
            r0 = r5
            android.graphics.Rect r1 = new android.graphics.Rect
            r2 = r1
            r2.<init>()
            boolean r0 = r0.getLocalVisibleRect(r1)
            if (r0 != 0) goto L84
            r0 = r5
            android.graphics.Rect r1 = new android.graphics.Rect
            r2 = r1
            r2.<init>()
            boolean r0 = r0.getGlobalVisibleRect(r1)
            if (r0 == 0) goto L9c
            r0 = r8
            r9 = r0
        L84:
            r0 = r9
            return r0
        L87:
            r0 = r7
            boolean r0 = r0.inKeyguardRestrictedInputMode()
            r9 = r0
            goto L13
        L90:
            r0 = 0
            r10 = r0
            goto L22
        L96:
            r0 = 0
            r11 = r0
            goto L3e
        L9c:
            r0 = 0
            r9 = r0
            goto L84
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3567ve.m6993a(android.view.View, android.os.PowerManager, android.app.KeyguardManager):boolean");
    }

    /* renamed from: b */
    public final String m6975b(Context context, String str) {
        String str2;
        synchronized (this.f17502e) {
            if (this.f17503f != null) {
                str2 = this.f17503f;
            } else if (str == null) {
                str2 = m6962d();
            } else {
                try {
                    this.f17503f = C2341q.m14742e().mo6934a(context);
                } catch (Exception e) {
                }
                if (TextUtils.isEmpty(this.f17503f)) {
                    dyx.m8162a();
                    if (!C3634xr.m6790b()) {
                        this.f17503f = null;
                        f17498a.post(new RunnableC3568vf(this, context));
                        while (this.f17503f == null) {
                            try {
                                this.f17502e.wait();
                            } catch (InterruptedException e2) {
                                this.f17503f = m6962d();
                                String valueOf = String.valueOf(this.f17503f);
                                C3556uu.m6745e(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                            }
                        }
                    } else {
                        this.f17503f = m6967c(context);
                    }
                }
                String valueOf2 = String.valueOf(this.f17503f);
                this.f17503f = new StringBuilder(String.valueOf(valueOf2).length() + 10 + String.valueOf(str).length()).append(valueOf2).append(" (Mobile; ").append(str).toString();
                try {
                    if (C2586c.m14193a(context).m14202a()) {
                        this.f17503f = String.valueOf(this.f17503f).concat(";aia");
                    }
                } catch (Exception e3) {
                    C2341q.m14740g().m7095a(e3, "AdUtil.getUserAgent");
                }
                this.f17503f = String.valueOf(this.f17503f).concat(")");
                str2 = this.f17503f;
            }
        }
        return str2;
    }

    /* renamed from: b */
    public final boolean m6977b(Context context) {
        boolean z = true;
        if (this.f17505h) {
            z = false;
        } else {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
            context.getApplicationContext().registerReceiver(new C3570vh(this, null), intentFilter);
            this.f17505h = true;
        }
        return z;
    }

    /* renamed from: b */
    public final int[] m6978b(Activity activity) {
        int[] m7009a = m7009a(activity);
        return new int[]{dyx.m8162a().m6788b(activity, m7009a[0]), dyx.m8162a().m6788b(activity, m7009a[1])};
    }

    /* renamed from: c */
    public final boolean m6963c(String str) {
        return m6985a(str, this.f17499b, (String) dyx.m8158e().m7876a(edi.f16332R));
    }

    /* renamed from: c */
    public final int[] m6968c(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] m6958e = (window == null || (findViewById = window.findViewById(16908290)) == null) ? m6958e() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{dyx.m8162a().m6788b(activity, m6958e[0]), dyx.m8162a().m6788b(activity, m6958e[1])};
    }

    /* renamed from: d */
    public final boolean m6959d(String str) {
        return m6985a(str, this.f17500c, (String) dyx.m8158e().m7876a(edi.f16333S));
    }
}
