package com.google.android.gms.ads.internal.util;

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
import com.google.android.gms.ads.formats.zzg;
import com.google.android.gms.ads.impl.C2037R;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjd;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbkj;
import com.google.android.gms.internal.ads.zzblf;
import com.google.android.gms.internal.ads.zzcbx;
import com.google.android.gms.internal.ads.zzcgm;
import com.google.android.gms.internal.ads.zzcgs;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzchg;
import com.google.android.gms.internal.ads.zzcmc;
import com.google.android.gms.internal.ads.zzcni;
import com.google.android.gms.internal.ads.zzdsv;
import com.google.android.gms.internal.ads.zzezz;
import com.google.android.gms.internal.ads.zzfac;
import com.google.android.gms.internal.ads.zzfla;
import com.google.android.gms.internal.ads.zzfsd;
import com.google.android.gms.internal.ads.zzfsm;
import com.google.android.gms.internal.ads.zzglo;
import com.huawei.hms.framework.common.ContainerUtils;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
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
import p1727n3.p1755d.p1756a.C25691a;
import p1727n3.p1755d.p1756a.C25696f;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzs.class */
public final class zzs {
    public static final zzfla zza = new zzf(Looper.getMainLooper());
    private static boolean zzd = false;
    private String zzg;
    private final AtomicReference<Pattern> zzb = new AtomicReference<>(null);
    private final AtomicReference<Pattern> zzc = new AtomicReference<>(null);
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
        return Math.round((f < 0.0f ? 0.0f : f) * 100.0f);
    }

    public static final WebResourceResponse zzB(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", zzt.zzc().zzi(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new zzbr(context).zzb(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 == null) {
                return null;
            }
            return new WebResourceResponse("application/javascript", StringConstant.UTF8, new ByteArrayInputStream(str3.getBytes(StringConstant.UTF8)));
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzcgt.zzj("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static final String zzC() {
        Resources zzj = zzt.zzg().zzj();
        return zzj != null ? zzj.getString(C2037R.string.f5311s7) : "Test Ad";
    }

    public static final zzbu zzD(Context context) {
        zzbs zzbsVar;
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzcgt.zzf("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                zzbsVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
                zzbsVar = queryLocalInterface instanceof zzbu ? (zzbu) queryLocalInterface : new zzbs(iBinder);
            }
            return zzbsVar;
        } catch (Exception e) {
            zzt.zzg().zzk(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static final boolean zzE(Context context, String str) {
        Context zza2 = zzcbx.zza(context);
        return Wrappers.m38764a(zza2).f6151a.getPackageManager().checkPermission(str, zza2.getPackageName()) == 0;
    }

    public static final boolean zzF(String str) {
        if (!zzcgs.zzj()) {
            return false;
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdq)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzbet.zzc().zzc(zzbjl.zzds);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzbet.zzc().zzc(zzbjl.zzdr);
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

    public static final boolean zzG(Context context) {
        KeyguardManager zzad;
        return (context == null || (zzad = zzad(context)) == null || !zzad.isKeyguardLocked()) ? false : true;
    }

    public static final boolean zzH(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            zzcgt.zzg("Error loading class.", th);
            zzt.zzg().zzk(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static final boolean zzI(Context context) {
        boolean z;
        if (PlatformVersion.m38776a()) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgb)).booleanValue()) {
                synchronized (zzs.class) {
                    try {
                        z = zzd;
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

    public static final boolean zzJ(Context context) {
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

    public static final boolean zzK(Context context) {
        Bundle zzag = zzag(context);
        return TextUtils.isEmpty(zzaf(zzag)) && !TextUtils.isEmpty(zzag.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    public static final boolean zzL(Context context) {
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

    public static final void zzM(View view, int i, MotionEvent motionEvent) {
        int i2;
        String str;
        int i3;
        int i4;
        zzfac zzaB;
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
            zzt.zzc();
            long zzA = zzA(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            String str2 = (!(view2 instanceof zzcni) || (zzaB = ((zzcni) view2).zzaB()) == null) ? "none" : zzaB.zzb;
            String str3 = str;
            int i7 = i2;
            String str4 = "none";
            if (view2 instanceof zzcmc) {
                zzezz zzF = ((zzcmc) view2).zzF();
                str3 = str;
                i7 = i2;
                str4 = "none";
                if (zzF != null) {
                    str3 = zzezz.zza(zzF.zzb);
                    i7 = zzF.zzf;
                    str4 = zzF.zzE;
                }
            }
            zzcgt.zzh(String.format(Locale.US, "<Ad package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>", packageName, str4, str2, str3, Integer.valueOf(i7), view2.getClass().getName(), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(view2.getWidth()), Integer.valueOf(view2.getHeight()), Integer.valueOf(i4), Integer.valueOf(i3), Long.valueOf(zzA), Integer.toString(i, 2)));
        } catch (Exception e) {
            zzcgt.zzg("Failure getting view location.", e);
        }
    }

    public static final void zzN(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            new zzcb(context, str, (String) it.next()).zzc();
        }
    }

    public static final void zzO(Context context, Throwable th) {
        if (context != null) {
            try {
                if (!zzblf.zzb.zze().booleanValue()) {
                    return;
                }
                CrashUtils.m38790a(context, th);
            } catch (IllegalStateException e) {
            }
        }
    }

    public static final void zzP(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static final int zzQ(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            zzcgt.zzi("Could not parse value:".concat(e.toString()));
            return 0;
        }
    }

    public static final Map<String, String> zzR(Uri uri) {
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

    public static final WebResourceResponse zzS(HttpURLConnection httpURLConnection) throws IOException {
        String str;
        zzt.zzc();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        zzt.zzc();
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
                        String[] split2 = split[i].trim().split(ContainerUtils.KEY_VALUE_DELIMITER);
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
        return zzt.zze().zzn(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    public static final int[] zzT(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzz() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    @VisibleForTesting
    public static final String zzU(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return zzw();
        }
    }

    public static final int[] zzV(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] zzz = (window == null || (findViewById = window.findViewById(16908290)) == null) ? zzz() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{zzber.zza().zza(activity, zzz[0]), zzber.zza().zza(activity, zzz[1])};
    }

    public static final boolean zzW(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = true;
        boolean z2 = zzt.zzc().zze || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || zzt(view);
        long zzA = zzA(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z2)) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzaQ)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgR)).booleanValue()) {
                    if (zzA >= ((Integer) zzbet.zzc().zzc(zzbjl.zzgT)).intValue()) {
                        return true;
                    }
                }
                return z;
            }
        }
        z = false;
        return z;
    }

    public static final void zzX(Context context, Uri uri) {
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
            zzcgt.zzd(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzcgt.zzg("No browser is found.", e);
        }
    }

    public static final int[] zzY(Activity activity) {
        int[] zzT = zzT(activity);
        return new int[]{zzber.zza().zza(activity, zzT[0]), zzber.zza().zza(activity, zzT[1])};
    }

    public static final boolean zzZ(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zzW(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, zzad(context));
    }

    private final JSONArray zzaa(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            zzab(jSONArray, it.next());
        }
        return jSONArray;
    }

    private final void zzab(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(zzl((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(zzj((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(zzaa((Collection) obj));
        } else if (!(obj instanceof Object[])) {
            jSONArray.put(obj);
        } else {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                zzab(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        }
    }

    private final void zzac(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzl((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, zzj((Map) obj));
        } else if (obj instanceof Collection) {
            String str2 = str;
            if (str == null) {
                str2 = AnalyticsConstants.NULL;
            }
            jSONObject.put(str2, zzaa((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, zzaa(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private static KeyguardManager zzad(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r5.equals(r0.pattern()) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzae(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzs.zzae(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    private static String zzaf(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    private static Bundle zzag(Context context) {
        try {
            return Wrappers.m38764a(context).m38768a(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb("Error getting metadata", e);
            return null;
        }
    }

    public static int zze(int i) {
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
        zzcgt.zzi(sb.toString());
        return 60000;
    }

    public static void zzo(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzchg.zza.execute(runnable);
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzs.zzt(android.view.View):boolean");
    }

    public static final void zzu(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder("android.support.customtabs.extra.SESSION", null);
        extras.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(extras);
    }

    public static final String zzv(Context context) {
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        return zzaf(zzag(context2));
    }

    public static final String zzw() {
        StringBuilder m8554x = C22128a.m8554x(256, "Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            m8554x.append(StringConstant.SPACE);
            m8554x.append(str);
        }
        m8554x.append("; ");
        m8554x.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            m8554x.append("; ");
            m8554x.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                m8554x.append(" Build/");
                m8554x.append(str3);
            }
        }
        m8554x.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return m8554x.toString();
    }

    public static final String zzx() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : C22128a.m8610j(new StringBuilder(String.valueOf(str).length() + 1 + str2.length()), str, StringConstant.SPACE, str2);
    }

    public static final DisplayMetrics zzy(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static final int[] zzz() {
        return new int[]{0, 0};
    }

    public final void zzf(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zze = zze(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(zze);
        sb.append(" milliseconds.");
        zzcgt.zzh(sb.toString());
        httpURLConnection.setConnectTimeout(zze);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zze);
        httpURLConnection.setRequestProperty("User-Agent", zzi(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zzg(Context context) {
        if (this.zzh) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzr(this, null), intentFilter);
        this.zzh = true;
        return true;
    }

    public final boolean zzh(Context context) {
        if (this.zzi) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new zzp(this, null), intentFilter);
        this.zzi = true;
        return true;
    }

    public final String zzi(Context context, String str) {
        synchronized (this.zzf) {
            String str2 = this.zzg;
            if (str2 != null) {
                return str2;
            }
            if (str == null) {
                return zzw();
            }
            try {
                this.zzg = zzt.zze().zzb(context);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(this.zzg)) {
                zzber.zza();
                if (!zzcgm.zzp()) {
                    this.zzg = null;
                    zza.post(new zzm(this, context));
                    while (this.zzg == null) {
                        try {
                            this.zzf.wait();
                        } catch (InterruptedException e2) {
                            String zzw = zzw();
                            this.zzg = zzw;
                            String valueOf = String.valueOf(zzw);
                            zzcgt.zzi(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                } else {
                    this.zzg = zzU(context);
                }
            }
            String valueOf2 = String.valueOf(this.zzg);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 10 + str.length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.zzg = sb.toString();
            try {
                if (Wrappers.m38764a(context).m38765d()) {
                    this.zzg = String.valueOf(this.zzg).concat(";aia");
                }
            } catch (Exception e3) {
                zzt.zzg().zzk(e3, "AdUtil.getUserAgent");
            }
            String concat = String.valueOf(this.zzg).concat(")");
            this.zzg = concat;
            return concat;
        }
    }

    public final JSONObject zzj(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zzac(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final JSONObject zzk(Bundle bundle, JSONObject jSONObject) {
        JSONObject jSONObject2 = null;
        if (bundle != null) {
            try {
                jSONObject2 = zzl(bundle);
            } catch (JSONException e) {
                zzcgt.zzg("Error converting Bundle to JSON", e);
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    public final JSONObject zzl(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zzac(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final zzfsm<Map<String, String>> zzm(Uri uri) {
        return zzfsd.zzd(new Callable(uri) { // from class: com.google.android.gms.ads.internal.util.zzk
            private final Uri zza;

            {
                this.zza = uri;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = this.zza;
                zzfla zzflaVar = zzs.zza;
                zzt.zzc();
                return zzs.zzR(uri2);
            }
        }, this.zzj);
    }

    public final void zzn(Context context, String str, String str2, Bundle bundle, boolean z) {
        zzt.zzc();
        bundle.putString(AnalyticsConstants.DEVICE, zzx());
        bundle.putString("eids", TextUtils.join(",", zzbjl.zzc()));
        zzber.zza();
        zzcgm.zzr(context, str, "gmob-apps", bundle, true, new zzn(this, context, str));
    }

    public final boolean zzp(String str) {
        return zzae(str, this.zzb, (String) zzbet.zzc().zzc(zzbjl.zzW));
    }

    public final boolean zzq(String str) {
        return zzae(str, this.zzc, (String) zzbet.zzc().zzc(zzbjl.zzX));
    }

    public final void zzr(Context context) {
        if (!PlatformVersion.m38776a()) {
            return;
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgb)).booleanValue()) {
            return;
        }
        ((ConnectivityManager) context.getSystemService("connectivity")).registerDefaultNetworkCallback(new zzo(this));
    }

    public final int zzs(Context context, Uri uri) {
        int i;
        if (context == null) {
            zze.zza("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (!(context instanceof Activity)) {
            zze.zza("Chrome Custom Tabs can only work with Activity context.");
            i = 2;
        } else {
            i = 0;
        }
        zzbjd<Boolean> zzbjdVar = zzbjl.zzcW;
        Boolean bool = (Boolean) zzbet.zzc().zzc(zzbjdVar);
        zzbjd<Boolean> zzbjdVar2 = zzbjl.zzcX;
        if (true == bool.equals(zzbet.zzc().zzc(zzbjdVar2))) {
            i = 9;
        }
        if (i != 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
            zzbkj zzbkjVar = new zzbkj();
            zzbkjVar.zzd(new zzl(this, zzbkjVar, context, uri));
            zzbkjVar.zze((Activity) context);
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjdVar2)).booleanValue()) {
            return 5;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        C25691a.C25692a c25692a = new C25691a.C25692a();
        if (!intent2.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent2.putExtras(bundle);
        }
        intent2.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent2.putExtras(c25692a.m3052a().m3053a());
        intent2.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        C25696f c25696f = new C25696f(intent2, null);
        c25696f.f71983a.setPackage(zzglo.zza(context));
        c25696f.f71983a.setData(uri);
        Intent intent3 = c25696f.f71983a;
        Object obj = C26467a.f74235a;
        C26467a.C26468a.m1794b(context, intent3, null);
        return 5;
    }
}
