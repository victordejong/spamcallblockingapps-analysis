package com.google.android.gms.ads.internal.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
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
import com.google.android.exoplayer2.C0515C;
import com.google.android.gms.ads.impl.C0598R;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzaaw;
import com.google.android.gms.internal.ads.zzaba;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzacp;
import com.google.android.gms.internal.ads.zzacr;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzaul;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzdvl;
import com.google.android.gms.internal.ads.zzdzk;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzeqn;
import com.google.android.gms.internal.ads.zzwr;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
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
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000.C1392f3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzj.class */
public final class zzj {
    public static final zzdvl zzeen = new zzg(Looper.getMainLooper());
    @GuardedBy("userAgentLock")
    private String zzbit;
    private AtomicReference<Pattern> zzeel = new AtomicReference<>(null);
    private AtomicReference<Pattern> zzeem = new AtomicReference<>(null);
    private boolean zzyv = true;
    private final Object zzeeo = new Object();
    private boolean zzeep = false;
    private boolean zzeeq = false;
    private final Executor zzeer = Executors.newSingleThreadExecutor();

    private static Bundle getMetadata(Context context) {
        try {
            return Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
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

    public static String zza(InputStreamReader inputStreamReader) {
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

    private final JSONArray zza(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            zza(jSONArray, it.next());
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
        if (context == null) {
            return;
        }
        boolean z = false;
        try {
            z = zzadr.zzder.get().booleanValue();
        } catch (IllegalStateException e) {
        }
        if (!z) {
            return;
        }
        CrashUtils.addDynamiteErrorToDropBox(context, th);
    }

    private final void zza(JSONArray jSONArray, Object obj) {
        JSONObject zza;
        if (obj instanceof Bundle) {
            zza = zzc((Bundle) obj);
        } else if (obj instanceof Map) {
            zza = zzj((Map) obj);
        } else if (!(obj instanceof Collection)) {
            if (!(obj instanceof Object[])) {
                jSONArray.put(obj);
                return;
            }
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                zza(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
            return;
        } else {
            zza = zza((Collection) obj);
        }
        jSONArray.put(zza);
    }

    private final void zza(JSONObject jSONObject, String str, Object obj) {
        List asList;
        JSONObject zza;
        if (obj instanceof Bundle) {
            zza = zzc((Bundle) obj);
        } else if (obj instanceof Map) {
            zza = zzj((Map) obj);
        } else {
            if (obj instanceof Collection) {
                if (str == null) {
                    str = "null";
                }
                asList = (Collection) obj;
            } else if (!(obj instanceof Object[])) {
                jSONObject.put(str, obj);
                return;
            } else {
                asList = Arrays.asList((Object[]) obj);
            }
            zza = zza(asList);
        }
        jSONObject.put(str, zza);
    }

    public static boolean zza(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (!zzr.zzkr().zzyv) {
            if ((keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode()) && !zzq(view)) {
                z = false;
                if (view.getVisibility() != 0 && view.isShown()) {
                    if (!(powerManager == null || powerManager.isScreenOn()) || !z) {
                        return false;
                    }
                    return !((Boolean) zzwr.zzqr().zzd(zzabp.zzcqq)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect());
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
        if (r5.equals(r0.pattern()) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zza(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zza(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    @VisibleForTesting
    public static String zzam(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return zzyx();
        }
    }

    public static AlertDialog.Builder zzan(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static zzaaw zzao(Context context) {
        return new zzaaw(context);
    }

    @SuppressLint({"NewApi"})
    public static String zzap(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && (componentName = runningTaskInfo.topActivity) != null) {
                return componentName.getClassName();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean zzaq(Context context) {
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

    public static int zzar(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    private static KeyguardManager zzas(Context context) {
        Object systemService = context.getSystemService("keyguard");
        return (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
    }

    @TargetApi(16)
    public static boolean zzat(Context context) {
        KeyguardManager zzas;
        return context != null && PlatformVersion.isAtLeastJellyBean() && (zzas = zzas(context)) != null && zzas.isKeyguardLocked();
    }

    public static boolean zzau(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            zzazk.zzc("Error loading class.", th);
            zzr.zzkv().zza(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static String zzav(Context context) {
        return !((Boolean) zzwr.zzqr().zzd(zzabp.zzcxr)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    public static Bundle zzaw(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcxs)).booleanValue()) {
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

    public static boolean zzax(Context context) {
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

    public static String zzay(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return zzd(getMetadata(context));
    }

    public static boolean zzaz(Context context) {
        Bundle metadata = getMetadata(context);
        return TextUtils.isEmpty(zzd(metadata)) && !TextUtils.isEmpty(metadata.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    @TargetApi(18)
    public static void zzb(Context context, Intent intent) {
        if (intent != null && PlatformVersion.isAtLeastJellyBeanMR2()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    @TargetApi(18)
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
            zzazk.zzdy(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzazk.zzc("No browser is found.", e);
        }
    }

    public static void zzb(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            i++;
            new zzbq(context, str, (String) arrayList.get(i)).zzye();
        }
    }

    public static boolean zzba(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @TargetApi(26)
    public static void zzbb(Context context) {
        if (!PlatformVersion.isAtLeastO()) {
            return;
        }
        NotificationChannel notificationChannel = new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", 2);
        notificationChannel.setShowBadge(false);
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
    }

    public static boolean zzbc(Context context) {
        return C0290c8.m5434d(context).m5437a();
    }

    public static zzbg zzbd(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzazk.zzev("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return queryLocalInterface instanceof zzbg ? (zzbg) queryLocalInterface : new zzbi(iBinder);
        } catch (Exception e) {
            zzr.zzkv().zza(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static AlertDialog.Builder zzc(Context context, int i) {
        return new AlertDialog.Builder(context, i);
    }

    public static void zzc(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes(C0515C.UTF8_NAME));
            openFileOutput.close();
        } catch (Exception e) {
            zzazk.zzc("Error writing to file in internal storage.", e);
        }
    }

    public static void zzc(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzazp.zzeic.execute(runnable);
        }
    }

    public static WebResourceResponse zzd(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", zzr.zzkr().zzq(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = (String) new zzay(context).zzb(str2, hashMap).get(60L, TimeUnit.SECONDS);
            if (str3 == null) {
                return null;
            }
            return new WebResourceResponse("application/javascript", C0515C.UTF8_NAME, new ByteArrayInputStream(str3.getBytes(C0515C.UTF8_NAME)));
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzazk.zzd("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static WebResourceResponse zzd(HttpURLConnection httpURLConnection) {
        zzr.zzkr();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        zzr.zzkr();
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
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return zzr.zzkt().zza(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    private static String zzd(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    public static int zzdf(int i) {
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
        zzazk.zzex(sb.toString());
        return 60000;
    }

    public static int zzeg(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(valueOf);
            zzazk.zzex(sb.toString());
            return 0;
        }
    }

    public static boolean zzeh(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static boolean zzek(String str) {
        if (!zzaze.isEnabled()) {
            return false;
        }
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvi)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcvk);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzwr.zzqr().zzd(zzabp.zzcvj);
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
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzza() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
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
        return new int[]{zzwr.zzqn().zzd(activity, zzf[0]), zzwr.zzqn().zzd(activity, zzf[1])};
    }

    public static int[] zzh(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] zzza = (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzza() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{zzwr.zzqn().zzd(activity, zzza[0]), zzwr.zzqn().zzd(activity, zzza[1])};
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
                zzazk.zzex("Width or height of view is zero");
                return null;
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            view.layout(0, 0, width, height);
            view.draw(canvas);
            return createBitmap;
        } catch (RuntimeException e) {
            zzazk.zzc("Fail to capture the webview", e);
            return null;
        }
    }

    private static Bitmap zzp(View view) {
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
            zzazk.zzc("Fail to capture the web view", e);
            bitmap = bitmap2;
        }
        return bitmap;
    }

    public static boolean zzp(Context context, String str) {
        Context zzx = zzaul.zzx(context);
        return Wrappers.packageManager(zzx).checkPermission(str, zzx.getPackageName()) == 0;
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
            if (r0 == 0) goto L1f
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r3 = r0
            r0 = r3
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L1f
            r0 = r3
            android.app.Activity r0 = (android.app.Activity) r0
            r3 = r0
            goto L21
        L1f:
            r0 = 0
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzq(android.view.View):boolean");
    }

    public static int zzr(View view) {
        ViewParent viewParent;
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (true) {
            viewParent = parent;
            if (viewParent == null || (viewParent instanceof AdapterView)) {
                break;
            }
            parent = viewParent.getParent();
        }
        if (viewParent != null) {
            return ((AdapterView) viewParent).getPositionForView(view);
        }
        return -1;
    }

    public static String zzr(Context context, String str) {
        try {
            return new String(IOUtils.readInputStreamFully(context.openFileInput(str), true), C0515C.UTF8_NAME);
        } catch (IOException e) {
            zzazk.zzdy("Error reading from internal storage.");
            return "";
        }
    }

    public static boolean zzs(View view) {
        ViewParent viewParent;
        if (view == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (true) {
            viewParent = parent;
            if (viewParent == null || (viewParent instanceof ScrollView)) {
                break;
            }
            parent = viewParent.getParent();
        }
        return viewParent != null;
    }

    private static String zzyx() {
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

    public static String zzyy() {
        return UUID.randomUUID().toString();
    }

    public static String zzyz() {
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

    private static int[] zzza() {
        return new int[]{0, 0};
    }

    public static String zzzb() {
        Resources resources = zzr.zzkv().getResources();
        return resources != null ? resources.getString(C0598R.string.f3621s7) : "Test Ad";
    }

    @TargetApi(18)
    public final zzacr zza(Context context, Uri uri) {
        zzacr zzacrVar;
        if (!PlatformVersion.isAtLeastJellyBeanMR2()) {
            zzd.zzeb("Chrome Custom Tabs can only work with version Jellybean onwards.");
            zzacrVar = zzacr.PLATFORM_VERSION_TOO_LOW;
        } else if (context == null) {
            zzd.zzeb("Trying to open chrome custom tab on a null context");
            zzacrVar = zzacr.CONTEXT_NULL;
        } else if (!(context instanceof Activity)) {
            zzd.zzeb("Chrome Custom Tabs can only work with Activity context.");
            zzacrVar = zzacr.CONTEXT_NOT_AN_ACTIVITY;
        } else if (zzeqn.zzcl(context) == null) {
            zzd.zzeb("Default browser does not support custom tabs.");
            zzacrVar = zzacr.CCT_NOT_SUPPORTED;
        } else {
            zzacrVar = null;
        }
        zzaba<Boolean> zzabaVar = zzabp.zzcus;
        Boolean bool = (Boolean) zzwr.zzqr().zzd(zzabaVar);
        zzaba<Boolean> zzabaVar2 = zzabp.zzcut;
        if (bool.equals(zzwr.zzqr().zzd(zzabaVar2))) {
            zzacrVar = zzacr.WRONG_EXP_SETUP;
        }
        if (zzacrVar != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return zzacrVar;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabaVar)).booleanValue()) {
            zzacp zzacpVar = new zzacp();
            zzacpVar.zza(new zzo(this, zzacpVar, context, uri));
            zzacpVar.zzd((Activity) context);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabaVar2)).booleanValue()) {
            new C1392f3.C1393a().m1999a().m2000a(context, uri);
        }
        return zzacr.CCT_READY_TO_OPEN;
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return zzc(bundle);
            } catch (JSONException e) {
                zzazk.zzc("Error converting Bundle to JSON", e);
                return null;
            }
        }
        return null;
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        zzr.zzkr();
        bundle.putString("device", zzyz());
        bundle.putString("eids", TextUtils.join(",", zzabp.zzsc()));
        zzwr.zzqn();
        zzaza.zza(context, str, str2, bundle, true, new zzq(this, context, str));
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zzdf = zzdf(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(zzdf);
        sb.append(" milliseconds.");
        zzazk.zzew(sb.toString());
        httpURLConnection.setConnectTimeout(zzdf);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zzdf);
        httpURLConnection.setRequestProperty("User-Agent", zzq(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zza(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, zzas(context));
    }

    public final boolean zzak(Context context) {
        if (this.zzeep) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzs(this, null), intentFilter);
        this.zzeep = true;
        return true;
    }

    public final boolean zzal(Context context) {
        if (this.zzeeq) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new zzp(this, null), intentFilter);
        this.zzeeq = true;
        return true;
    }

    public final JSONObject zzc(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zza(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final boolean zzei(String str) {
        return zza(str, this.zzeel, (String) zzwr.zzqr().zzd(zzabp.zzcoe));
    }

    public final boolean zzej(String str) {
        return zza(str, this.zzeem, (String) zzwr.zzqr().zzd(zzabp.zzcof));
    }

    public final zzdzw<Map<String, String>> zzh(Uri uri) {
        return zzdzk.zza(new Callable(uri) { // from class: com.google.android.gms.ads.internal.util.zzm
            private final Uri zzees;

            {
                this.zzees = uri;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = this.zzees;
                return zzr.zzkr();
            }
        }, this.zzeer);
    }

    public final JSONObject zzj(Map<String, ?> map) {
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
        synchronized (this.zzeeo) {
            String str2 = this.zzbit;
            if (str2 != null) {
                return str2;
            }
            if (str == null) {
                return zzyx();
            }
            try {
                this.zzbit = zzr.zzkt().getDefaultUserAgent(context);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(this.zzbit)) {
                zzwr.zzqn();
                if (!zzaza.zzzx()) {
                    this.zzbit = null;
                    zzeen.post(new zzn(this, context));
                    while (this.zzbit == null) {
                        try {
                            this.zzeeo.wait();
                        } catch (InterruptedException e2) {
                            String zzyx = zzyx();
                            this.zzbit = zzyx;
                            String valueOf = String.valueOf(zzyx);
                            zzazk.zzex(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                } else {
                    this.zzbit = zzam(context);
                }
            }
            String valueOf2 = String.valueOf(this.zzbit);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 10 + String.valueOf(str).length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.zzbit = sb.toString();
            try {
                if (Wrappers.packageManager(context).isCallerInstantApp()) {
                    this.zzbit = String.valueOf(this.zzbit).concat(";aia");
                }
            } catch (Exception e3) {
                zzr.zzkv().zza(e3, "AdUtil.getUserAgent");
            }
            String concat = String.valueOf(this.zzbit).concat(")");
            this.zzbit = concat;
            return concat;
        }
    }
}
