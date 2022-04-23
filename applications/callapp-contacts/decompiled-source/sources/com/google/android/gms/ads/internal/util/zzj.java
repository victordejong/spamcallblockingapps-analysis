package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
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
import android.os.IBinder;
import android.os.IInterface;
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
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import androidx.browser.customtabs.d;
import androidx.core.app.j;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.util.h;
import com.google.android.gms.common.util.l;
import com.google.android.gms.common.util.n;
import com.google.android.gms.internal.ads.ab;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.br;
import com.google.android.gms.internal.ads.bt;
import com.google.android.gms.internal.ads.cu;
import com.google.android.gms.internal.ads.cxg;
import com.google.android.gms.internal.ads.dbt;
import com.google.android.gms.internal.ads.dcf;
import com.google.android.gms.internal.ads.dsu;
import com.google.android.gms.internal.ads.dsx;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.tm;
import com.google.android.gms.internal.ads.yq;
import com.google.android.gms.internal.ads.yu;
import com.google.android.gms.internal.ads.zd;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
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
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzj.class */
public final class zzj {
    public static final cxg zzegq = new zzg(Looper.getMainLooper());
    private String zzbjd;
    private AtomicReference<Pattern> zzego = new AtomicReference<>(null);
    private AtomicReference<Pattern> zzegp = new AtomicReference<>(null);
    private boolean zzza = true;
    private final Object zzegr = new Object();
    private boolean zzegs = false;
    private boolean zzegt = false;
    private final Executor zzegu = Executors.newSingleThreadExecutor();

    private static Bundle getMetadata(Context context) {
        try {
            return c.a(context).a(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zzd.zza("Error getting metadata", e);
            return null;
        }
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public static String zza(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder((int) PropertyFlags.UNSIGNED);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    private final JSONArray zza(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            zza(jSONArray, it2.next());
        }
        return jSONArray;
    }

    public static void zza(DownloadManager.Request request) {
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
    }

    public static void zza(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static void zza(Context context, Throwable th) {
        if (context != null) {
            boolean z = false;
            try {
                z = cu.f26393b.a().booleanValue();
            } catch (IllegalStateException e) {
            }
            if (z) {
                h.a(context, th);
            }
        }
    }

    private final void zza(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(zzc((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(zzj((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(zza((Collection) obj));
        } else if (obj instanceof Object[]) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                zza(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        } else {
            jSONArray.put(obj);
        }
    }

    private final void zza(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzc((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, zzj((Map) obj));
        } else if (obj instanceof Collection) {
            if (str == null) {
                str = JsonReaderKt.NULL;
            }
            jSONObject.put(str, zza((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, zza(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    public static boolean zza(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (!zzr.zzkv().zzza) {
            if ((keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode()) && !zzq(view)) {
                z = false;
                if (view.getVisibility() != 0 && view.isShown()) {
                    if (!(powerManager == null || powerManager.isScreenOn()) || !z) {
                        return false;
                    }
                    return !((Boolean) ekb.e().a(aq.aO)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect());
                }
            }
        }
        z = true;
        return view.getVisibility() != 0 ? false : false;
    }

    public static boolean zza(ClassLoader classLoader, Class<?> cls, List<String> list) {
        for (String str : list) {
            if (Class.forName(str, false, classLoader).isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r5.equals(r0.pattern()) == false) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zza(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zza(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String zzap(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return zzzq();
        }
    }

    public static AlertDialog.Builder zzaq(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static ab zzar(Context context) {
        return new ab(context);
    }

    public static String zzas(Context context) {
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

    public static boolean zzat(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager.RunningAppProcessInfo next;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses.iterator();
            do {
                if (!it2.hasNext()) {
                    return true;
                }
                next = it2.next();
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

    public static int zzau(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    private static KeyguardManager zzav(Context context) {
        Object systemService = context.getSystemService("keyguard");
        return (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
    }

    public static boolean zzaw(Context context) {
        KeyguardManager zzav;
        return context != null && n.b() && (zzav = zzav(context)) != null && zzav.isKeyguardLocked();
    }

    public static boolean zzax(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            zzd.zzc("Error loading class.", th);
            zzr.zzkz().a(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static String zzay(Context context) {
        return !((Boolean) ekb.e().a(aq.dF)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    public static Bundle zzaz(Context context) {
        if (!((Boolean) ekb.e().a(aq.dG)).booleanValue()) {
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

    public static void zzb(Context context, Intent intent) {
        if (intent != null && n.d()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static void zzb(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzb(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            zzd.zzdz(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzd.zzc("No browser is found.", e);
        }
    }

    public static void zzb(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            new zzbq(context, str, (String) obj).zzyx();
        }
    }

    public static boolean zzba(Context context) {
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

    public static String zzbb(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return zzd(getMetadata(context));
    }

    public static boolean zzbc(Context context) {
        Bundle metadata = getMetadata(context);
        return TextUtils.isEmpty(zzd(metadata)) && !TextUtils.isEmpty(metadata.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    public static boolean zzbd(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static void zzbe(Context context) {
        if (n.j()) {
            NotificationChannel notificationChannel = new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", 2);
            notificationChannel.setShowBadge(false);
            ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        }
    }

    public static boolean zzbf(Context context) {
        return j.a(context).a();
    }

    public static zzbg zzbg(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzd.zzex("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return queryLocalInterface instanceof zzbg ? (zzbg) queryLocalInterface : new zzbi(iBinder);
        } catch (Exception e) {
            zzr.zzkz().a(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static AlertDialog.Builder zzc(Context context, int i) {
        return new AlertDialog.Builder(context, i);
    }

    public static void zzc(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes("UTF-8"));
            openFileOutput.close();
        } catch (Exception e) {
            zzd.zzc("Error writing to file in internal storage.", e);
        }
    }

    public static void zzc(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zd.f28573a.execute(runnable);
        }
    }

    public static WebResourceResponse zzd(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", zzr.zzkv().zzq(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new zzay(context).zzb(str2, hashMap).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzd.zzd("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static WebResourceResponse zzd(HttpURLConnection httpURLConnection) throws IOException {
        zzr.zzkv();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        zzr.zzkv();
        String contentType2 = httpURLConnection.getContentType();
        String str = "";
        if (!TextUtils.isEmpty(contentType2)) {
            String[] split = contentType2.split(";");
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
        return zzr.zzkx().zza(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    private static String zzd(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    public static int zzdl(int i) {
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
        zzd.zzez(sb.toString());
        return 60000;
    }

    public static int zzei(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(valueOf);
            zzd.zzez(sb.toString());
            return 0;
        }
    }

    public static boolean zzej(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static boolean zzem(String str) {
        if (!yu.c()) {
            return false;
        }
        if (!((Boolean) ekb.e().a(aq.cP)).booleanValue()) {
            return false;
        }
        String str2 = (String) ekb.e().a(aq.cR);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) ekb.e().a(aq.cQ);
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

    public static int[] zzf(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzzt() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public static Map<String, String> zzg(Uri uri) {
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

    public static int[] zzg(Activity activity) {
        int[] zzf = zzf(activity);
        return new int[]{ekb.a().b(activity, zzf[0]), ekb.a().b(activity, zzf[1])};
    }

    public static int[] zzh(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] zzzt = (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzzt() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{ekb.a().b(activity, zzzt[0]), ekb.a().b(activity, zzzt[1])};
    }

    public static Bitmap zzm(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    public static Bitmap zzn(View view) {
        if (view == null) {
            return null;
        }
        Bitmap zzp = zzp(view);
        Bitmap bitmap = zzp;
        if (zzp == null) {
            bitmap = zzo(view);
        }
        return bitmap;
    }

    private static Bitmap zzo(View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                zzd.zzez("Width or height of view is zero");
                return null;
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            view.layout(0, 0, width, height);
            view.draw(canvas);
            return createBitmap;
        } catch (RuntimeException e) {
            zzd.zzc("Fail to capture the webview", e);
            return null;
        }
    }

    private static Bitmap zzp(View view) {
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
            zzd.zzc("Fail to capture the web view", e);
        }
        return bitmap;
    }

    public static boolean zzp(Context context, String str) {
        Context a2 = tm.a(context);
        return c.a(a2).a(str, a2.getPackageName()) == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzq(android.view.View r3) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzq(android.view.View):boolean");
    }

    public static int zzr(View view) {
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

    public static String zzr(Context context, String str) {
        try {
            return new String(l.a((InputStream) context.openFileInput(str)), "UTF-8");
        } catch (IOException e) {
            zzd.zzdz("Error reading from internal storage.");
            return "";
        }
    }

    public static boolean zzs(View view) {
        if (view == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof ScrollView)) {
            parent = parent.getParent();
        }
        return parent != null;
    }

    private static String zzzq() {
        StringBuilder sb = new StringBuilder((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(StringUtils.SPACE);
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

    public static String zzzr() {
        return UUID.randomUUID().toString();
    }

    public static String zzzs() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(StringUtils.SPACE);
        sb.append(str2);
        return sb.toString();
    }

    private static int[] zzzt() {
        return new int[]{0, 0};
    }

    public static String zzzu() {
        Resources c2 = zzr.zzkz().c();
        return c2 != null ? c2.getString(R.string.s7) : "Test Ad";
    }

    public final bt zza(Context context, Uri uri) {
        bt btVar;
        String a2;
        if (!n.d()) {
            zzd.zzed("Chrome Custom Tabs can only work with version Jellybean onwards.");
            btVar = bt.PLATFORM_VERSION_TOO_LOW;
        } else if (context == null) {
            zzd.zzed("Trying to open chrome custom tab on a null context");
            btVar = bt.CONTEXT_NULL;
        } else if (!(context instanceof Activity)) {
            zzd.zzed("Chrome Custom Tabs can only work with Activity context.");
            btVar = bt.CONTEXT_NOT_AN_ACTIVITY;
        } else if (dsu.a(context) == null) {
            zzd.zzed("Default browser does not support custom tabs.");
            btVar = bt.CCT_NOT_SUPPORTED;
        } else {
            btVar = null;
        }
        if (((Boolean) ekb.e().a(aq.cz)).equals(ekb.e().a(aq.cA))) {
            btVar = bt.WRONG_EXP_SETUP;
        }
        if (btVar != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return btVar;
        }
        if (((Boolean) ekb.e().a(aq.cz)).booleanValue()) {
            br brVar = new br();
            brVar.f24925d = new zzo(this, brVar, context, uri);
            Activity activity = (Activity) context;
            if (brVar.f24923b == null && (a2 = dsu.a(activity)) != null) {
                brVar.f24924c = new dsx(brVar);
                androidx.browser.customtabs.c.a(activity, a2, brVar.f24924c);
            }
        }
        if (((Boolean) ekb.e().a(aq.cA)).booleanValue()) {
            new d.a().a().a(context, uri);
        }
        return bt.CCT_READY_TO_OPEN;
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        if (bundle == null) {
            return null;
        }
        try {
            return zzc(bundle);
        } catch (JSONException e) {
            zzd.zzc("Error converting Bundle to JSON", e);
            return null;
        }
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        zzr.zzkv();
        bundle.putString("device", zzzs());
        bundle.putString("eids", TextUtils.join(",", aq.a()));
        ekb.a();
        yq.a(context, str, str2, bundle, new zzq(this, context, str));
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zzdl = zzdl(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(zzdl);
        sb.append(" milliseconds.");
        zzd.zzey(sb.toString());
        httpURLConnection.setConnectTimeout(zzdl);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zzdl);
        httpURLConnection.setRequestProperty("User-Agent", zzq(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zza(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, zzav(context));
    }

    public final boolean zzan(Context context) {
        if (this.zzegs) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzs(this, null), intentFilter);
        this.zzegs = true;
        return true;
    }

    public final boolean zzao(Context context) {
        if (this.zzegt) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new zzp(this, null), intentFilter);
        this.zzegt = true;
        return true;
    }

    public final JSONObject zzc(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zza(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final boolean zzek(String str) {
        return zza(str, this.zzego, (String) ekb.e().a(aq.U));
    }

    public final boolean zzel(String str) {
        return zza(str, this.zzegp, (String) ekb.e().a(aq.V));
    }

    public final dbt<Map<String, String>> zzh(final Uri uri) {
        Callable zzmVar = new Callable(uri) { // from class: com.google.android.gms.ads.internal.util.zzm
            private final Uri zzegv;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzegv = uri;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = this.zzegv;
                return zzr.zzkv();
            }
        };
        Executor executor = this.zzegu;
        dcf a2 = dcf.a(zzmVar);
        executor.execute(a2);
        return a2;
    }

    public final JSONObject zzj(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zza(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final String zzq(Context context, String str) {
        synchronized (this.zzegr) {
            String str2 = this.zzbjd;
            if (str2 != null) {
                return str2;
            }
            if (str == null) {
                return zzzq();
            }
            try {
                this.zzbjd = zzr.zzkx().getDefaultUserAgent(context);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(this.zzbjd)) {
                ekb.a();
                if (!yq.b()) {
                    this.zzbjd = null;
                    zzegq.post(new zzn(this, context));
                    while (this.zzbjd == null) {
                        try {
                            this.zzegr.wait();
                        } catch (InterruptedException e2) {
                            String zzzq = zzzq();
                            this.zzbjd = zzzq;
                            String valueOf = String.valueOf(zzzq);
                            zzd.zzez(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                } else {
                    this.zzbjd = zzap(context);
                }
            }
            String valueOf2 = String.valueOf(this.zzbjd);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 10 + String.valueOf(str).length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.zzbjd = sb.toString();
            try {
                if (c.a(context).a()) {
                    this.zzbjd = String.valueOf(this.zzbjd).concat(";aia");
                }
            } catch (Exception e3) {
                zzr.zzkz().a(e3, "AdUtil.getUserAgent");
            }
            String concat = String.valueOf(this.zzbjd).concat(")");
            this.zzbjd = concat;
            return concat;
        }
    }
}
