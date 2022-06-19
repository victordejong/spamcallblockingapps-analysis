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
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.ads.formats.zzg;
import com.google.android.gms.ads.impl.C1666R;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblb;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzbmh;
import com.google.android.gms.internal.ads.zzbne;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcis;
import com.google.android.gms.internal.ads.zzciy;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzcog;
import com.google.android.gms.internal.ads.zzcpm;
import com.google.android.gms.internal.ads.zzdwm;
import com.google.android.gms.internal.ads.zzfdn;
import com.google.android.gms.internal.ads.zzfdq;
import com.google.android.gms.internal.ads.zzfpj;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfxa;
import com.google.android.gms.internal.ads.zzgqf;
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
import p066d0.C2134a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzt.class */
public final class zzt {
    public static final zzfpj zza = new zzf(Looper.getMainLooper());
    @GuardedBy("AdUtil.class")
    private static boolean zzb = false;
    @GuardedBy("userAgentLock")
    private String zzg;
    private final AtomicReference<Pattern> zzc = new AtomicReference<>(null);
    private final AtomicReference<Pattern> zzd = new AtomicReference<>(null);
    private boolean zze = true;
    private final Object zzf = new Object();
    private boolean zzh = false;
    private boolean zzi = false;
    private final Executor zzj = Executors.newSingleThreadExecutor();

    public static final long zzA(View view) {
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
        if (f < 0.0f) {
            f = 0.0f;
        }
        return Math.round(f * 100.0f);
    }

    public static final WebResourceResponse zzB(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzt.zzp().zzd(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new zzbs(context).zzb(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 == null) {
                return null;
            }
            return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzciz.zzk("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static final int zzC(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (PlatformVersion.isAtLeastR()) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgl)).booleanValue()) {
                return 0;
            }
        }
        return telephonyManager.getNetworkType();
    }

    public static final String zzD() {
        Resources zzd = com.google.android.gms.ads.internal.zzt.zzo().zzd();
        return zzd != null ? zzd.getString(C1666R.string.f6223s7) : "Test Ad";
    }

    public static final zzbv zzE(Context context) {
        zzbt zzbtVar;
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzciz.zzg("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                zzbtVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
                zzbtVar = queryLocalInterface instanceof zzbv ? (zzbv) queryLocalInterface : new zzbt(iBinder);
            }
            return zzbtVar;
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzs(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static final boolean zzF(Context context, String str) {
        Context zza2 = zzcee.zza(context);
        return Wrappers.packageManager(zza2).checkPermission(str, zza2.getPackageName()) == 0;
    }

    public static final boolean zzG(String str) {
        if (!zzciy.zzl()) {
            return false;
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdx)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzbgq.zzc().zzb(zzblj.zzdz);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzbgq.zzc().zzb(zzblj.zzdy);
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

    @TargetApi(16)
    public static final boolean zzH(Context context) {
        KeyguardManager zzab;
        return context != null && PlatformVersion.isAtLeastJellyBean() && (zzab = zzab(context)) != null && zzab.isKeyguardLocked();
    }

    public static final boolean zzI(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            zzciz.zzh("Error loading class.", th);
            com.google.android.gms.ads.internal.zzt.zzo().zzs(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static final boolean zzJ(Context context) {
        boolean z;
        if (PlatformVersion.isAtLeastO()) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgj)).booleanValue()) {
                synchronized (zzt.class) {
                    try {
                        z = zzb;
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

    public static final boolean zzK(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager.RunningAppProcessInfo next;
        PowerManager powerManager;
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
            if (next.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode() || (powerManager = (PowerManager) context.getSystemService("power")) == null) {
                return true;
            }
            return !powerManager.isScreenOn();
        } catch (Throwable th) {
            return false;
        }
    }

    public static final boolean zzL(Context context) {
        Bundle zzac = zzac(context);
        return TextUtils.isEmpty(zzad(zzac)) && !TextUtils.isEmpty(zzac.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    public static final boolean zzM(Context context) {
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

    public static final void zzN(View view, int i, MotionEvent motionEvent) {
        int i2;
        String str;
        int i3;
        int i4;
        String str2;
        zzfdq zzR;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            View view2 = view;
            if (view instanceof zzdwm) {
                view2 = ((zzdwm) view).getChildAt(0);
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
            com.google.android.gms.ads.internal.zzt.zzp();
            long zzA = zzA(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            if (!(view2 instanceof zzcpm) || (zzR = ((zzcpm) view2).zzR()) == null) {
                str2 = "none";
            } else {
                str2 = zzR.zzb;
                int hashCode = view2.hashCode();
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 12);
                sb.append(str2);
                sb.append(":");
                sb.append(hashCode);
                view2.setContentDescription(sb.toString());
            }
            String str3 = str;
            int i7 = i2;
            String str4 = "none";
            if (view2 instanceof zzcog) {
                zzfdn zzF = ((zzcog) view2).zzF();
                str3 = str;
                i7 = i2;
                str4 = "none";
                if (zzF != null) {
                    str3 = zzfdn.zza(zzF.zzb);
                    i7 = zzF.zzf;
                    str4 = zzF.zzF;
                }
            }
            zzciz.zzi(String.format(Locale.US, "<Ad hashCode=%d, package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>", Integer.valueOf(view2.hashCode()), packageName, str4, str2, str3, Integer.valueOf(i7), view2.getClass().getName(), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(view2.getWidth()), Integer.valueOf(view2.getHeight()), Integer.valueOf(i4), Integer.valueOf(i3), Long.valueOf(zzA), Integer.toString(i, 2)));
        } catch (Exception e) {
            zzciz.zzh("Failure getting view location.", e);
        }
    }

    public static final void zzO(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            new zzcc(context, str, (String) it2.next()).zzb();
        }
    }

    public static final void zzP(Context context, Throwable th) {
        if (context != null) {
            try {
                if (!zzbne.zzb.zze().booleanValue()) {
                    return;
                }
                CrashUtils.addDynamiteErrorToDropBox(context, th);
            } catch (IllegalStateException e) {
            }
        }
    }

    public static final void zzQ(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static final int zzR(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            zzciz.zzj("Could not parse value:".concat(e.toString()));
            return 0;
        }
    }

    public static final Map<String, String> zzS(Uri uri) {
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

    public static final WebResourceResponse zzT(HttpURLConnection httpURLConnection) throws IOException {
        String str;
        com.google.android.gms.ads.internal.zzt.zzp();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        com.google.android.gms.ads.internal.zzt.zzp();
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
        return com.google.android.gms.ads.internal.zzt.zzq().zzm(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    public static final int[] zzU(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzz() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    @VisibleForTesting
    public static final String zzV(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return zzw();
        }
    }

    public static final int[] zzW(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] zzz = (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzz() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{zzbgo.zzb().zzb(activity, zzz[0]), zzbgo.zzb().zzb(activity, zzz[1])};
    }

    public static final boolean zzX(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = true;
        boolean z2 = com.google.android.gms.ads.internal.zzt.zzp().zze || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || zzt(view);
        long zzA = zzA(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z2)) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzaW)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhc)).booleanValue()) {
                    if (zzA >= ((Integer) zzbgq.zzc().zzb(zzblj.zzhe)).intValue()) {
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
    public static final void zzY(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzu(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            zzciz.zze(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzciz.zzh("No browser is found.", e);
        }
    }

    public static final int[] zzZ(Activity activity) {
        int[] zzU = zzU(activity);
        return new int[]{zzbgo.zzb().zzb(activity, zzU[0]), zzbgo.zzb().zzb(activity, zzU[1])};
    }

    public static int zza(int i) {
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
        zzciz.zzj(sb.toString());
        return 60000;
    }

    public static final boolean zzaa(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zzX(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, zzab(context));
    }

    private static KeyguardManager zzab(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    private static Bundle zzac(Context context) {
        try {
            return Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb("Error getting metadata", e);
            return null;
        }
    }

    private static String zzad(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    private final JSONArray zzae(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            zzaf(jSONArray, it2.next());
        }
        return jSONArray;
    }

    private final void zzaf(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(zze((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(zzf((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(zzae((Collection) obj));
        } else if (!(obj instanceof Object[])) {
            jSONArray.put(obj);
        } else {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                zzaf(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        }
    }

    private final void zzag(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, zze((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, zzf((Map) obj));
        } else if (obj instanceof Collection) {
            String str2 = str;
            if (str == null) {
                str2 = "null";
            }
            jSONObject.put(str2, zzae((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, zzae(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r5.equals(r0.pattern()) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzah(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzt.zzah(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    public static void zzm(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzcjm.zza.execute(runnable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzt(android.view.View r3) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzt.zzt(android.view.View):boolean");
    }

    @TargetApi(18)
    public static final void zzu(Context context, Intent intent) {
        if (intent != null && PlatformVersion.isAtLeastJellyBeanMR2()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static final String zzv(Context context) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        return zzad(zzac(context2));
    }

    public static final String zzw() {
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

    public static final String zzx() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : C0608b.m7625j(new StringBuilder(String.valueOf(str).length() + 1 + str2.length()), str, " ", str2);
    }

    public static final DisplayMetrics zzy(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static final int[] zzz() {
        return new int[]{0, 0};
    }

    public final zzfxa<Map<String, String>> zzb(final Uri uri) {
        return zzfwq.zzk(new Callable() { // from class: com.google.android.gms.ads.internal.util.zzk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = uri;
                zzfpj zzfpjVar = zzt.zza;
                zzt.zzp();
                return zzt.zzS(uri2);
            }
        }, this.zzj);
    }

    public final String zzd(Context context, String str) {
        synchronized (this.zzf) {
            String str2 = this.zzg;
            if (str2 != null) {
                return str2;
            }
            if (str == null) {
                return zzw();
            }
            try {
                this.zzg = com.google.android.gms.ads.internal.zzt.zzq().zzd(context);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(this.zzg)) {
                zzbgo.zzb();
                if (!zzcis.zzp()) {
                    this.zzg = null;
                    zza.post(new zzm(this, context));
                    while (this.zzg == null) {
                        try {
                            this.zzf.wait();
                        } catch (InterruptedException e2) {
                            String zzw = zzw();
                            this.zzg = zzw;
                            String valueOf = String.valueOf(zzw);
                            zzciz.zzj(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                } else {
                    this.zzg = zzV(context);
                }
            }
            String valueOf2 = String.valueOf(this.zzg);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 10 + str.length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.zzg = sb.toString();
            try {
                if (Wrappers.packageManager(context).isCallerInstantApp()) {
                    this.zzg = String.valueOf(this.zzg).concat(";aia");
                }
            } catch (Exception e3) {
                com.google.android.gms.ads.internal.zzt.zzo().zzs(e3, "AdUtil.getUserAgent");
            }
            String concat = String.valueOf(this.zzg).concat(")");
            this.zzg = concat;
            return concat;
        }
    }

    public final JSONObject zze(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zzag(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final JSONObject zzf(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zzag(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final JSONObject zzg(Bundle bundle, JSONObject jSONObject) {
        JSONObject jSONObject2 = null;
        if (bundle != null) {
            try {
                jSONObject2 = zze(bundle);
            } catch (JSONException e) {
                zzciz.zzh("Error converting Bundle to JSON", e);
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    public final void zzk(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zza2 = zza(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(zza2);
        sb.append(" milliseconds.");
        zzciz.zzi(sb.toString());
        httpURLConnection.setConnectTimeout(zza2);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zza2);
        httpURLConnection.setRequestProperty("User-Agent", zzd(context, str));
        httpURLConnection.setUseCaches(false);
    }

    @TargetApi(26)
    public final void zzl(Context context) {
        if (!PlatformVersion.isAtLeastO()) {
            return;
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgj)).booleanValue()) {
            return;
        }
        ((ConnectivityManager) context.getSystemService("connectivity")).registerDefaultNetworkCallback(new zzo(this));
    }

    public final void zzn(Context context, String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzt.zzp();
        bundle.putString("device", zzx());
        bundle.putString("eids", TextUtils.join(",", zzblj.zza()));
        zzbgo.zzb();
        zzcis.zzr(context, str, "gmob-apps", bundle, true, new zzn(this, context, str));
    }

    public final boolean zzo(String str) {
        return zzah(str, this.zzc, (String) zzbgq.zzc().zzb(zzblj.zzW));
    }

    public final boolean zzp(String str) {
        return zzah(str, this.zzd, (String) zzbgq.zzc().zzb(zzblj.zzX));
    }

    public final boolean zzq(Context context) {
        if (this.zzi) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new zzq(this, null), intentFilter);
        this.zzi = true;
        return true;
    }

    public final boolean zzr(Context context) {
        if (this.zzh) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzs(this, null), intentFilter);
        this.zzh = true;
        return true;
    }

    @TargetApi(18)
    public final int zzs(Context context, Uri uri) {
        int i;
        if (context == null) {
            zze.zza("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (!PlatformVersion.isAtLeastJellyBeanMR2()) {
            zze.zza("Chrome Custom Tabs can only work with version Jellybean onwards.");
            i = 1;
        } else if (!(context instanceof Activity)) {
            zze.zza("Chrome Custom Tabs can only work with Activity context.");
            i = 2;
        } else {
            i = 0;
        }
        zzblb<Boolean> zzblbVar = zzblj.zzdd;
        Boolean bool = (Boolean) zzbgq.zzc().zzb(zzblbVar);
        zzblb<Boolean> zzblbVar2 = zzblj.zzde;
        if (true == bool.equals(zzbgq.zzc().zzb(zzblbVar2))) {
            i = 9;
        }
        if (i != 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
            zzbmh zzbmhVar = new zzbmh();
            zzbmhVar.zze(new zzl(this, zzbmhVar, context, uri));
            zzbmhVar.zzb((Activity) context);
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblbVar2)).booleanValue()) {
            return 5;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        Bundle bundle = new Bundle();
        bundle.putBinder("android.support.customtabs.extra.SESSION", null);
        intent2.putExtras(bundle);
        intent2.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent2.setPackage(zzgqf.zza(context));
        intent2.setData(uri);
        Object obj = C2134a.f7832a;
        C2134a.C2135a.m3843b(context, intent2, null);
        return 5;
    }
}
