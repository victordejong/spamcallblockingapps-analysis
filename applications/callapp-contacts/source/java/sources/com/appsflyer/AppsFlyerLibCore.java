package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.WindowManager;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.appsflyer.AFFacebookDeferredDeeplink;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.Foreground;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.attribution.RequestError;
import com.appsflyer.internal.C3401aa;
import com.appsflyer.internal.C3402ab;
import com.appsflyer.internal.C3403ac;
import com.appsflyer.internal.C3404ad;
import com.appsflyer.internal.C3406ae;
import com.appsflyer.internal.C3407af;
import com.appsflyer.internal.C3408ag;
import com.appsflyer.internal.C3409ah;
import com.appsflyer.internal.C3426i;
import com.appsflyer.internal.C3429q;
import com.appsflyer.internal.C3438t;
import com.appsflyer.internal.C3441u;
import com.appsflyer.internal.C3447x;
import com.appsflyer.internal.C3449y;
import com.appsflyer.internal.C3451z;
import com.appsflyer.internal.EventDataCollector;
import com.appsflyer.internal.Exlytics;
import com.appsflyer.internal.RunnableC3446w;
import com.appsflyer.internal.attribution.RequestErrorMessage;
import com.appsflyer.internal.model.event.AdRevenue;
import com.appsflyer.internal.model.event.Attr;
import com.appsflyer.internal.model.event.BackgroundEvent;
import com.appsflyer.internal.model.event.BackgroundReferrerLaunch;
import com.appsflyer.internal.model.event.CachedEvent;
import com.appsflyer.internal.model.event.InAppEvent;
import com.appsflyer.internal.model.event.Launch;
import com.appsflyer.internal.model.event.Stats;
import com.appsflyer.internal.model.event.UninstallTokenEvent;
import com.appsflyer.internal.referrer.GoogleReferrer;
import com.appsflyer.internal.referrer.HuaweiReferrer;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.internal.referrer.Referrer;
import com.appsflyer.share.Constants;
import com.facebook.AccessToken;
import com.google.android.gms.common.C11937b;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URI;
import java.net.URL;
import java.security.KeyStoreException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore.class */
public class AppsFlyerLibCore extends AppsFlyerLib {
    public static final String AF_PRE_INSTALL_PATH = "AF_PRE_INSTALL_PATH";
    public static String FIRST_LAUNCHES_URL;
    public static final String INSTALL_REFERRER_PREF = "rfr";
    public static final String IS_STOP_TRACKING_USED = "is_stop_tracking_used";
    public static final String LOG_TAG = "AppsFlyer_5.4.6";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT = "/data/local/tmp/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT_ETC = "/etc/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_RO_PROP = "ro.appsflyer.preinstall.path";
    public static String REFERRER_TRACKING_URL;
    public static String REGISTER_URL;

    /* renamed from: Ɩ */
    private static final String f12752;

    /* renamed from: ǃ */
    static final String f12753 = "5.4";

    /* renamed from: ɪ */
    private static String f12756;

    /* renamed from: ɾ */
    private static String f12757;

    /* renamed from: Ι */
    public static final String f12758 = "74";

    /* renamed from: І */
    private static String f12759 = "https://%sstats.%s/stats";

    /* renamed from: і */
    private static final String f12760;

    /* renamed from: Ӏ */
    private static String f12761;

    /* renamed from: ł */
    private GoogleReferrer f12763;

    /* renamed from: ſ */
    private long f12764;

    /* renamed from: Ɨ */
    private long f12765;

    /* renamed from: ƚ */
    private String f12766;

    /* renamed from: ɟ */
    private Map<Long, String> f12770;

    /* renamed from: ɩ */
    public String f12771;

    /* renamed from: ɭ */
    private String[] f12772;

    /* renamed from: ɹ */
    long f12773;

    /* renamed from: ɺ */
    private boolean f12774;

    /* renamed from: ɼ */
    private boolean f12775;

    /* renamed from: ͻ */
    private Map<String, Object> f12779;

    /* renamed from: ι */
    public String f12780;

    /* renamed from: ϲ */
    private Map<String, Object> f12781;

    /* renamed from: ϳ */
    private Application f12782;

    /* renamed from: х */
    private String f12787;

    /* renamed from: ј */
    private SharedPreferences f12788;

    /* renamed from: ӏ */
    private String f12790;

    /* renamed from: ɨ */
    private static final List<String> f12755 = Arrays.asList("is_cache");

    /* renamed from: ı */
    static AppsFlyerInAppPurchaseValidatorListener f12751 = null;

    /* renamed from: ȷ */
    private static AppsFlyerConversionListener f12754 = null;
    public static AppsFlyerLibCore instance = new AppsFlyerLibCore();
    protected Intent pluginDeeplinkIntent = null;

    /* renamed from: ʟ */
    private long f12778 = -1;

    /* renamed from: ɿ */
    private long f12776 = -1;

    /* renamed from: ŀ */
    private long f12762 = TimeUnit.SECONDS.toMillis(5);

    /* renamed from: г */
    private boolean f12784 = false;

    /* renamed from: ɍ */
    private ScheduledExecutorService f12768 = null;

    /* renamed from: ʅ */
    private boolean f12777 = false;

    /* renamed from: ǀ */
    private C3409ah f12767 = new C3409ah();

    /* renamed from: ɔ */
    private boolean f12769 = false;

    /* renamed from: с */
    private boolean f12785 = false;

    /* renamed from: Ј */
    private boolean f12783 = false;

    /* renamed from: ґ */
    private boolean f12789 = false;

    /* renamed from: т */
    private final HuaweiReferrer f12786 = new HuaweiReferrer();

    /* renamed from: com.appsflyer.AppsFlyerLibCore$10 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$10.class */
    static final /* synthetic */ class C338010 {

        /* renamed from: ǃ */
        static final /* synthetic */ int[] f12795;

        /* renamed from: ɩ */
        static final /* synthetic */ int[] f12796;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[Referrer.State.values().length];
            f12796 = iArr;
            try {
                iArr[Referrer.State.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12796[Referrer.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[AppsFlyerProperties.EmailsCryptType.values().length];
            f12795 = iArr2;
            try {
                iArr2[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12795[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher.class */
    public static class InstallAttributionIdFetcher implements Runnable {

        /* renamed from: ǃ */
        private static String f12808 = "https://%sgcdsdk.%s/install_data/v4.0/";

        /* renamed from: ι */
        private static final List<String> f12809 = Arrays.asList("googleplay", "playstore", "googleplaystore");

        /* renamed from: ı */
        private final String f12810;

        /* renamed from: ɩ */
        private final Application f12811;

        /* renamed from: Ι */
        final ScheduledExecutorService f12812;

        /* renamed from: І */
        private final int f12813;

        /* renamed from: і */
        private final AtomicInteger f12814;

        /* renamed from: Ӏ */
        private AppsFlyerLibCore f12815;

        private InstallAttributionIdFetcher(InstallAttributionIdFetcher installAttributionIdFetcher) {
            this.f12812 = AFExecutor.getInstance().m38158();
            this.f12814 = new AtomicInteger(0);
            this.f12815 = installAttributionIdFetcher.f12815;
            this.f12811 = installAttributionIdFetcher.f12811;
            this.f12810 = installAttributionIdFetcher.f12810;
            this.f12813 = installAttributionIdFetcher.f12813 + 1;
        }

        private InstallAttributionIdFetcher(AppsFlyerLibCore appsFlyerLibCore, Application application, String str) {
            this.f12812 = AFExecutor.getInstance().m38158();
            this.f12814 = new AtomicInteger(0);
            this.f12815 = appsFlyerLibCore;
            this.f12811 = application;
            this.f12810 = str;
            this.f12813 = 0;
        }

        /* synthetic */ InstallAttributionIdFetcher(AppsFlyerLibCore appsFlyerLibCore, Application application, String str, byte b) {
            this(appsFlyerLibCore, application, str);
        }

        public static void setUrl(Map<String, String> map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if ("gcdsdk".equals(entry.getKey())) {
                    f12808 = entry.getValue();
                }
            }
        }

        /* renamed from: ı */
        static /* synthetic */ void m38045(String str) {
            if (AppsFlyerLibCore.f12754 != null) {
                AFLogger.afDebugLog("[GCD-A02] Calling onConversionFailure with:\n".concat(String.valueOf(str)));
                AppsFlyerLibCore.f12754.onConversionDataFail(str);
            }
        }

        /* renamed from: ι */
        static /* synthetic */ void m38044(Map map) {
            StringBuilder sb = new StringBuilder("[GCD-A02] Calling onConversionDataSuccess with:\n");
            sb.append(map.toString());
            AFLogger.afDebugLog(sb.toString());
            AppsFlyerLibCore.f12754.onConversionDataSuccess(map);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:21|(2:23|(12:25|29|30|120|31|32|(2:46|(16:48|49|(1:51)|52|(1:56)|57|58|(2:60|(1:62)(1:63))|64|65|(1:67)|68|69|(1:71)(1:72)|73|(7:118|78|(1:80)|81|82|85|86)))(2:36|(1:42)(2:43|(1:45)))|87|88|(1:90)|106|107)(1:26))|27|28|29|30|120|31|32|(1:34)|46|(0)|87|88|(0)|106|107) */
        /* JADX WARN: Code restructure failed: missing block: B:100:0x040a, code lost:
            com.appsflyer.AFLogger.afDebugLog("[GCD-A02] Calling onConversionFailure with:\n".concat(java.lang.String.valueOf(r0)));
            com.appsflyer.AppsFlyerLibCore.f12754.onConversionDataFail(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0422, code lost:
            com.appsflyer.AFLogger.afErrorLog(r11.getMessage(), r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x042a, code lost:
            r8.f12814.decrementAndGet();
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x0432, code lost:
            if (r9 != null) goto L105;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x0435, code lost:
            r9.disconnect();
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0449, code lost:
            r11 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x044a, code lost:
            r8.f12814.decrementAndGet();
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0453, code lost:
            if (r9 != null) goto L111;
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x0456, code lost:
            r9.disconnect();
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x045b, code lost:
            throw r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x03d1, code lost:
            r11 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x03d2, code lost:
            r9 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x03e0, code lost:
            if (r8.f12813 < 2) goto L97;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x03e3, code lost:
            r0 = new com.appsflyer.AppsFlyerLibCore.InstallAttributionIdFetcher(r8);
            com.appsflyer.AppsFlyerLibCore.m38079(r0.f12812, r0, 10, java.util.concurrent.TimeUnit.MILLISECONDS);
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x03fe, code lost:
            r0 = r11.getMessage();
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0407, code lost:
            if (com.appsflyer.AppsFlyerLibCore.f12754 != null) goto L100;
         */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0233 A[Catch: all -> 0x03d1, TRY_LEAVE, TryCatch #1 {all -> 0x03d1, blocks: (B:31:0x0145, B:40:0x01b1, B:42:0x01b9, B:43:0x01d0, B:45:0x01e2, B:46:0x01fa, B:48:0x0233, B:51:0x024d, B:54:0x027f, B:56:0x0286, B:58:0x0294, B:60:0x02a3, B:62:0x02af, B:63:0x02d2, B:65:0x02ec, B:67:0x02f7, B:69:0x0318, B:71:0x0336, B:72:0x0344, B:73:0x034f, B:75:0x0355, B:78:0x0364, B:80:0x037f, B:84:0x0392, B:85:0x0399, B:86:0x039c), top: B:120:0x0145, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x03c9  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1151
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.InstallAttributionIdFetcher.run():void");
        }
    }

    /* renamed from: com.appsflyer.AppsFlyerLibCore$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$c.class */
    public final class RunnableC3387c implements Runnable {

        /* renamed from: Ι */
        private final AFEvent f12816;

        private RunnableC3387c(AFEvent aFEvent) {
            AppsFlyerLibCore.this = r4;
            this.f12816 = aFEvent.weakContext();
        }

        /* synthetic */ RunnableC3387c(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b) {
            this(aFEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:143:0x0459  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:132:0x0422 -> B:159:0x0427). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:152:0x0427 -> B:159:0x0427). Please submit an issue!!! */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 1137
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.RunnableC3387c.run():void");
        }
    }

    /* renamed from: com.appsflyer.AppsFlyerLibCore$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$d.class */
    public final class RunnableC3388d implements Runnable {

        /* renamed from: ǃ */
        private WeakReference<Context> f12819;

        public RunnableC3388d(Context context) {
            AppsFlyerLibCore.this = r6;
            this.f12819 = null;
            this.f12819 = new WeakReference<>(context);
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Runnable
        public final void run() {
            if (AppsFlyerLibCore.this.f12784) {
                return;
            }
            AppsFlyerLibCore.this.f12773 = System.currentTimeMillis();
            if (this.f12819 == null) {
                return;
            }
            AppsFlyerLibCore.this.f12784 = true;
            try {
                try {
                    String m38067 = AppsFlyerLibCore.m38067(AppsFlyerProperties.AF_KEY);
                    synchronized (this.f12819) {
                        C3401aa.m38038();
                        for (C3426i c3426i : C3401aa.m38034(this.f12819.get())) {
                            StringBuilder sb = new StringBuilder("resending request: ");
                            sb.append(c3426i.f12966);
                            AFLogger.afInfoLog(sb.toString());
                            try {
                                long currentTimeMillis = System.currentTimeMillis();
                                long parseLong = Long.parseLong(c3426i.f12967, 10);
                                AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                                CachedEvent cachedEvent = new CachedEvent();
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(c3426i.f12966);
                                sb2.append("&isCachedRequest=true&timeincache=");
                                sb2.append((currentTimeMillis - parseLong) / 1000);
                                AFEvent key = cachedEvent.urlString(sb2.toString()).post(c3426i.m37966()).key(m38067);
                                key.f12688 = this.f12819;
                                key.f12690 = c3426i.f12967;
                                key.f12691 = false;
                                AppsFlyerLibCore.m38096(appsFlyerLibCore, key);
                            } catch (Exception e) {
                                AFLogger.afErrorLog("Failed to resend cached request", e);
                            }
                        }
                    }
                } catch (Exception e2) {
                    AFLogger.afErrorLog("failed to check cache. ", e2);
                }
                AppsFlyerLibCore.this.f12784 = false;
                AppsFlyerLibCore.this.f12768.shutdown();
                AppsFlyerLibCore.this.f12768 = null;
            } catch (Throwable th) {
                AppsFlyerLibCore.this.f12784 = false;
                throw th;
            }
        }
    }

    /* renamed from: com.appsflyer.AppsFlyerLibCore$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$e.class */
    public final class RunnableC3389e implements Runnable {

        /* renamed from: ǃ */
        private AFEvent f12820;

        private RunnableC3389e(AFEvent aFEvent) {
            AppsFlyerLibCore.this = r4;
            this.f12820 = aFEvent;
        }

        /* synthetic */ RunnableC3389e(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b) {
            this(aFEvent);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
            AFEvent aFEvent = this.f12820;
            aFEvent.f12694 = aFEvent.f12688.get();
            appsFlyerLibCore.m38061(aFEvent);
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(f12753);
        sb.append("/androidevent?buildnumber=5.4.6&app_id=");
        String obj = sb.toString();
        f12752 = obj;
        StringBuilder sb2 = new StringBuilder("https://%sregister.%s/api/v");
        sb2.append(obj);
        REGISTER_URL = sb2.toString();
        StringBuilder sb3 = new StringBuilder("https://%sadrevenue.%s/api/v");
        sb3.append(f12753);
        sb3.append("/android?buildnumber=5.4.6&app_id=");
        f12761 = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(f12753);
        sb4.append("/androidevent?app_id=");
        String obj2 = sb4.toString();
        f12760 = obj2;
        StringBuilder sb5 = new StringBuilder("https://%sconversions.%s/api/v");
        sb5.append(obj2);
        FIRST_LAUNCHES_URL = sb5.toString();
        StringBuilder sb6 = new StringBuilder("https://%slaunches.%s/api/v");
        sb6.append(obj2);
        f12757 = sb6.toString();
        StringBuilder sb7 = new StringBuilder("https://%sinapps.%s/api/v");
        sb7.append(obj2);
        f12756 = sb7.toString();
        StringBuilder sb8 = new StringBuilder("https://%sattr.%s/api/v");
        sb8.append(obj2);
        REFERRER_TRACKING_URL = sb8.toString();
    }

    public AppsFlyerLibCore() {
        AFVersionDeclaration.init();
    }

    public static AppsFlyerLibCore getInstance() {
        return instance;
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        if (getInstance().f12788 == null) {
            getInstance().f12788 = context.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
        }
        return getInstance().f12788;
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            boolean z = true;
            switch (key.hashCode()) {
                case -1407250527:
                    if (key.equals("launches")) {
                        z = true;
                        break;
                    }
                    break;
                case -1184318185:
                    if (key.equals("inapps")) {
                        z = true;
                        break;
                    }
                    break;
                case -1084269027:
                    if (key.equals("conversions")) {
                        z = false;
                        break;
                    }
                    break;
                case -690213213:
                    if (key.equals("register")) {
                        z = true;
                        break;
                    }
                    break;
                case 3004913:
                    if (key.equals("attr")) {
                        z = true;
                        break;
                    }
                    break;
                case 57793177:
                    if (key.equals("adrevenue")) {
                        z = true;
                        break;
                    }
                    break;
                case 109757599:
                    if (key.equals("stats")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    FIRST_LAUNCHES_URL = value;
                    break;
                case true:
                    REFERRER_TRACKING_URL = value;
                    break;
                case true:
                    f12757 = value;
                    break;
                case true:
                    f12756 = value;
                    break;
                case true:
                    REGISTER_URL = value;
                    break;
                case true:
                    f12759 = value;
                    break;
                case true:
                    f12761 = value;
                    break;
            }
        }
    }

    /* renamed from: ı */
    private static String m38112(String str) {
        String str2;
        try {
            str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            str2 = null;
        }
        return str2;
    }

    /* renamed from: ı */
    private void m38120(Context context) {
        this.f12781 = new HashMap();
        final long currentTimeMillis = System.currentTimeMillis();
        final AFFacebookDeferredDeeplink.AppLinkFetchEvents appLinkFetchEvents = new AFFacebookDeferredDeeplink.AppLinkFetchEvents() { // from class: com.appsflyer.AppsFlyerLibCore.4
            @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
            public final void onAppLinkFetchFailed(String str) {
                AppsFlyerLibCore.this.f12781.put("error", str);
            }

            @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
            public final void onAppLinkFetchFinished(String str, String str2, String str3) {
                if (str != null) {
                    AFLogger.afInfoLog("Facebook Deferred AppLink data received: ".concat(String.valueOf(str)));
                    AppsFlyerLibCore.this.f12781.put("link", str);
                    if (str2 != null) {
                        AppsFlyerLibCore.this.f12781.put("target_url", str2);
                    }
                    if (str3 != null) {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put("promo_code", str3);
                        hashMap.put("deeplink_context", hashMap2);
                        AppsFlyerLibCore.this.f12781.put("extras", hashMap);
                    }
                } else {
                    AppsFlyerLibCore.this.f12781.put("link", "");
                }
                AppsFlyerLibCore.this.f12781.put("ttr", String.valueOf(System.currentTimeMillis() - currentTimeMillis));
            }
        };
        try {
            Class.forName("com.facebook.g").getMethod("sdkInitialize", Context.class).invoke(null, context);
            final Class<?> cls = Class.forName("com.facebook.applinks.a");
            Class<?> cls2 = Class.forName("com.facebook.applinks.a$a");
            Method method = cls.getMethod("fetchDeferredAppLinkData", Context.class, String.class, cls2);
            Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.AFFacebookDeferredDeeplink.4
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                    String str;
                    String str2;
                    String str3;
                    Bundle bundle;
                    if (!method2.getName().equals("onDeferredAppLinkDataFetched")) {
                        AppLinkFetchEvents appLinkFetchEvents2 = appLinkFetchEvents;
                        if (appLinkFetchEvents2 == null) {
                            return null;
                        }
                        appLinkFetchEvents2.onAppLinkFetchFailed("onDeferredAppLinkDataFetched invocation failed");
                        return null;
                    } else if (objArr[0] == null) {
                        AppLinkFetchEvents appLinkFetchEvents3 = appLinkFetchEvents;
                        if (appLinkFetchEvents3 == null) {
                            return null;
                        }
                        appLinkFetchEvents3.onAppLinkFetchFinished(null, null, null);
                        return null;
                    } else {
                        Bundle bundle2 = (Bundle) Bundle.class.cast(cls.getMethod("getArgumentBundle", new Class[0]).invoke(cls.cast(objArr[0]), new Object[0]));
                        if (bundle2 != null) {
                            str = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                            str2 = bundle2.getString("target_url");
                            Bundle bundle3 = bundle2.getBundle("extras");
                            str3 = (bundle3 == null || (bundle = bundle3.getBundle("deeplink_context")) == null) ? null : bundle.getString("promo_code");
                        } else {
                            str2 = null;
                            str = null;
                            str3 = null;
                        }
                        AppLinkFetchEvents appLinkFetchEvents4 = appLinkFetchEvents;
                        if (appLinkFetchEvents4 == null) {
                            return null;
                        }
                        appLinkFetchEvents4.onAppLinkFetchFinished(str, str2, str3);
                        return null;
                    }
                }
            });
            String string = context.getString(context.getResources().getIdentifier("facebook_app_id", "string", context.getPackageName()));
            if (TextUtils.isEmpty(string)) {
                appLinkFetchEvents.onAppLinkFetchFailed("Facebook app id not defined in resources");
            } else {
                method.invoke(null, context, string, newProxyInstance);
            }
        } catch (ClassNotFoundException e) {
            appLinkFetchEvents.onAppLinkFetchFailed(e.toString());
        } catch (IllegalAccessException e2) {
            appLinkFetchEvents.onAppLinkFetchFailed(e2.toString());
        } catch (NoSuchMethodException e3) {
            appLinkFetchEvents.onAppLinkFetchFailed(e3.toString());
        } catch (InvocationTargetException e4) {
            appLinkFetchEvents.onAppLinkFetchFailed(e4.toString());
        }
    }

    /* renamed from: ı */
    public static void m38119(Context context, String str) {
        JSONObject jSONObject;
        JSONArray jSONArray;
        AFLogger.afDebugLog("received a new (extra) referrer: ".concat(String.valueOf(str)));
        try {
            long currentTimeMillis = System.currentTimeMillis();
            String string = getSharedPreferences(context).getString("extraReferrers", null);
            if (string == null) {
                jSONObject = new JSONObject();
                jSONArray = new JSONArray();
            } else {
                jSONObject = new JSONObject(string);
                jSONArray = jSONObject.has(str) ? new JSONArray((String) jSONObject.get(str)) : new JSONArray();
            }
            if (jSONArray.length() < 5) {
                jSONArray.put(currentTimeMillis);
            }
            if (jSONObject.length() >= 4) {
                m38109(jSONObject);
            }
            jSONObject.put(str, jSONArray.toString());
            String jSONObject2 = jSONObject.toString();
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putString("extraReferrers", jSONObject2);
            edit.apply();
        } catch (JSONException e) {
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Couldn't save referrer - ");
            sb.append(str);
            sb.append(": ");
            AFLogger.afErrorLog(sb.toString(), th);
        }
    }

    /* renamed from: ı */
    static /* synthetic */ void m38118(Context context, String str, String str2) {
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    /* renamed from: ı */
    private static void m38117(Context context, Map<String, Object> map) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            map.put("sc_o", rotation != 0 ? rotation != 1 ? rotation != 2 ? rotation != 3 ? "" : "lr" : "pr" : "l" : "p");
        }
    }

    /* renamed from: ı */
    public static void m38110(Map<String, String> map) {
        if (f12754 != null) {
            try {
                StringBuilder sb = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb.append(map.toString());
                AFLogger.afDebugLog(sb.toString());
                f12754.onAppOpenAttribution(map);
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getLocalizedMessage(), th);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x006c, code lost:
        continue;
     */
    /* renamed from: ı */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m38109(org.json.JSONObject r5) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m38109(org.json.JSONObject):void");
    }

    /* renamed from: ı */
    private boolean m38115(AFEvent aFEvent, SharedPreferences sharedPreferences) {
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        return (!sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false) && launchCounter == 1) || (launchCounter == 1 && !(aFEvent instanceof Attr));
    }

    /* renamed from: Ɩ */
    public static Map<String, Object> m38108(Context context) throws C3441u {
        String string = getSharedPreferences(context).getString("attributionId", null);
        if (string == null || string.length() <= 0) {
            throw new C3441u();
        }
        return m38082(string);
    }

    /* renamed from: ǃ */
    private static File m38095(String str) {
        if (str != null) {
            try {
                if (str.trim().length() <= 0) {
                    return null;
                }
                return new File(str.trim());
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getMessage(), th);
                return null;
            }
        }
        return null;
    }

    /* renamed from: ǃ */
    public static String m38104(Context context, String str) {
        SharedPreferences sharedPreferences = getSharedPreferences(context);
        if (sharedPreferences.contains("CACHED_CHANNEL")) {
            return sharedPreferences.getString("CACHED_CHANNEL", null);
        }
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putString("CACHED_CHANNEL", str);
        edit.apply();
        return str;
    }

    /* renamed from: ǃ */
    private static void m38105(Context context) {
        int i;
        if (AndroidUtils.m38125()) {
            i = 23;
            AFLogger.afRDLog("OPPO device found");
        } else {
            i = 18;
        }
        if (Build.VERSION.SDK_INT < i || m38094(AppsFlyerProperties.DISABLE_KEYSTORE, true)) {
            StringBuilder sb = new StringBuilder("OS SDK is=");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("; no KeyStore usage");
            AFLogger.afRDLog(sb.toString());
            return;
        }
        StringBuilder sb2 = new StringBuilder("OS SDK is=");
        sb2.append(Build.VERSION.SDK_INT);
        sb2.append("; use KeyStore");
        AFLogger.afRDLog(sb2.toString());
        AFKeystoreWrapper aFKeystoreWrapper = new AFKeystoreWrapper(context);
        if (!aFKeystoreWrapper.m38153()) {
            aFKeystoreWrapper.f12710 = C3451z.m37938(new WeakReference(context));
            aFKeystoreWrapper.f12708 = 0;
            aFKeystoreWrapper.m38152(aFKeystoreWrapper.m38156());
        } else {
            String m38156 = aFKeystoreWrapper.m38156();
            synchronized (aFKeystoreWrapper.f12712) {
                aFKeystoreWrapper.f12708++;
                AFLogger.afInfoLog("Deleting key with alias: ".concat(String.valueOf(m38156)));
                try {
                    synchronized (aFKeystoreWrapper.f12712) {
                        aFKeystoreWrapper.f12709.deleteEntry(m38156);
                    }
                } catch (KeyStoreException e) {
                    StringBuilder sb3 = new StringBuilder("Exception ");
                    sb3.append(e.getMessage());
                    sb3.append(" occurred");
                    AFLogger.afErrorLog(sb3.toString(), e);
                }
            }
            aFKeystoreWrapper.m38152(aFKeystoreWrapper.m38156());
        }
        AppsFlyerProperties.getInstance().set("KSAppsFlyerId", aFKeystoreWrapper.m38154());
        AppsFlyerProperties.getInstance().set("KSAppsFlyerRICounter", String.valueOf(aFKeystoreWrapper.m38151()));
    }

    /* renamed from: ǃ */
    private void m38102(Context context, String str, String str2, Intent intent) {
        AFEvent context2 = new Launch().context(context);
        context2.f12697 = null;
        AFEvent key = context2.key(str);
        key.f12683 = null;
        key.f12698 = str2;
        key.f12685 = intent;
        key.f12695 = null;
        m38085(key);
    }

    /* renamed from: ǃ */
    private static void m38101(Context context, Map<String, ? super String> map) {
        C3438t c3438t = C3438t.C3440d.f13006;
        C3438t.C3439c m37948 = C3438t.m37948(context);
        map.put("network", m37948.f13003);
        if (m37948.f13004 != null) {
            map.put("operator", m37948.f13004);
        }
        if (m37948.f13005 != null) {
            map.put("carrier", m37948.f13005);
        }
    }

    /* renamed from: ǃ */
    static /* synthetic */ void m38096(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent) throws IOException {
        String str;
        StringBuilder sb = new StringBuilder("url: ");
        sb.append(aFEvent.urlString());
        AFLogger.afInfoLog(sb.toString());
        if (aFEvent.f12690 != null) {
            str = Base64.encodeToString(aFEvent.m38162(), 2);
            AFLogger.afInfoLog("cached data: ".concat(String.valueOf(str)));
        } else {
            String jSONObject = new JSONObject(aFEvent.params()).toString();
            String replaceAll = jSONObject.replaceAll("\\p{C}", "*Non-printing character*");
            str = jSONObject;
            if (!replaceAll.equals(jSONObject)) {
                AFLogger.afWarnLog("Payload contains non-printing characters");
                str = replaceAll;
            }
            C3408ag.m38003("data: ".concat(String.valueOf(str)));
        }
        C3406ae.m38019().m38018("server_request", aFEvent.urlString(), str);
        try {
            appsFlyerLibCore.m38069(aFEvent);
        } catch (IOException e) {
            AFLogger.afErrorLog("Exception in sendRequestToServer. ", e);
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.USE_HTTP_FALLBACK, false)) {
                appsFlyerLibCore.m38069(aFEvent.urlString(aFEvent.urlString().replace("https:", "http:")));
                return;
            }
            StringBuilder sb2 = new StringBuilder("failed to send request to server. ");
            sb2.append(e.getLocalizedMessage());
            AFLogger.afInfoLog(sb2.toString());
            throw e;
        }
    }

    /* renamed from: ǃ */
    private static boolean m38106() {
        return m38094(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false) && AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID) == null;
    }

    /* renamed from: ǃ */
    public static boolean m38100(SharedPreferences sharedPreferences) {
        return Boolean.parseBoolean(sharedPreferences.getString("sentSuccessfully", null));
    }

    /* renamed from: ǃ */
    private static boolean m38094(String str, boolean z) {
        return AppsFlyerProperties.getInstance().getBoolean(str, z);
    }

    /* renamed from: ȷ */
    private static boolean m38091(Context context) {
        if (context != null) {
            if (Build.VERSION.SDK_INT < 23) {
                if (Build.VERSION.SDK_INT < 16) {
                    return false;
                }
                ArrayList arrayList = new ArrayList();
                try {
                    Iterator it2 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                    while (it2.hasNext()) {
                        NetworkInterface networkInterface = (NetworkInterface) it2.next();
                        if (networkInterface.isUp()) {
                            arrayList.add(networkInterface.getName());
                        }
                    }
                    return arrayList.contains("tun0");
                } catch (Exception e) {
                    AFLogger.afErrorLog("Failed collecting ivc data", e);
                    return false;
                }
            }
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                for (Network network : connectivityManager.getAllNetworks()) {
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                    if (networkCapabilities.hasTransport(4) && !networkCapabilities.hasCapability(15)) {
                        return true;
                    }
                }
                return false;
            } catch (Exception e2) {
                AFLogger.afErrorLog("Failed collecting ivc data", e2);
                return false;
            }
        }
        return false;
    }

    /* renamed from: ɩ */
    private static int m38086(SharedPreferences sharedPreferences, String str, boolean z) {
        int i = sharedPreferences.getInt(str, 0);
        int i2 = i;
        if (z) {
            i2 = i + 1;
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putInt(str, i2);
            edit.apply();
        }
        if (C3406ae.m38019().m38007()) {
            C3406ae.m38019().m38022(String.valueOf(i2));
        }
        return i2;
    }

    /* renamed from: ɩ */
    private static String m38081(String str, PackageManager packageManager, String str2) {
        Object obj;
        try {
            Bundle bundle = ((PackageItemInfo) packageManager.getApplicationInfo(str2, 128)).metaData;
            if (bundle != null && (obj = bundle.get(str)) != null) {
                return obj.toString();
            }
            return null;
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Could not find ");
            sb.append(str);
            sb.append(" value in the manifest");
            AFLogger.afErrorLog(sb.toString(), th);
            return null;
        }
    }

    /* renamed from: ɩ */
    private static String m38080(SimpleDateFormat simpleDateFormat, Context context) {
        String str;
        String string = getSharedPreferences(context).getString("appsFlyerFirstInstall", null);
        String str2 = string;
        if (string == null) {
            if (m38075(context)) {
                AFLogger.afDebugLog("AppsFlyer: first launch detected");
                str = simpleDateFormat.format(new Date());
            } else {
                str = "";
            }
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putString("appsFlyerFirstInstall", str);
            edit.apply();
            str2 = str;
        }
        AFLogger.afInfoLog("AppsFlyer: first launch date: ".concat(String.valueOf(str2)));
        return str2;
    }

    /* renamed from: ɩ */
    public static Map<String, Object> m38082(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!f12755.contains(next)) {
                    hashMap.put(next, jSONObject.isNull(next) ? null : jSONObject.get(next));
                }
            }
            return hashMap;
        } catch (JSONException e) {
            AFLogger.afErrorLog(e.getMessage(), e);
            return null;
        }
    }

    /* renamed from: ɩ */
    public static void m38087(Context context, String str, long j) {
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putLong(str, j);
        edit.apply();
    }

    /* renamed from: ɩ */
    private void m38085(AFEvent aFEvent) {
        aFEvent.m38161();
        boolean z = aFEvent.f12697 == null;
        if (m38106()) {
            AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
            return;
        }
        if (z) {
            if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, true)) {
                AFLogger.afInfoLog("Allowing multiple launches within a 5 second time window.");
            } else if (m38089()) {
                AppsFlyerRequestListener requestListener = aFEvent.getRequestListener();
                if (requestListener == null) {
                    return;
                }
                requestListener.onError(RequestError.EVENT_TIMEOUT, RequestErrorMessage.EVENT_TIMEOUT);
                return;
            }
            this.f12778 = System.currentTimeMillis();
        }
        m38079(AFExecutor.getInstance().m38158(), new RunnableC3389e(this, aFEvent.weakContext(), (byte) 0), 0L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: ɩ */
    public static void m38079(ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j, TimeUnit timeUnit) {
        if (scheduledExecutorService != null) {
            try {
                if (!scheduledExecutorService.isShutdown() && !scheduledExecutorService.isTerminated()) {
                    scheduledExecutorService.schedule(runnable, j, timeUnit);
                    return;
                }
            } catch (RejectedExecutionException e) {
                AFLogger.afErrorLog("scheduleJob failed with RejectedExecutionException Exception", e);
                return;
            } catch (Throwable th) {
                AFLogger.afErrorLog("scheduleJob failed with Exception", th);
                return;
            }
        }
        AFLogger.afWarnLog("scheduler is null, shut downed or terminated");
    }

    /* renamed from: ɩ */
    private boolean m38089() {
        if (this.f12778 <= 0) {
            if (isTrackingStopped()) {
                return false;
            }
            AFLogger.afInfoLog("Sending first launch for this session!");
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f12778;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", Locale.US);
        long j = this.f12778;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format = simpleDateFormat.format(new Date(j));
        long j2 = this.f12776;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format2 = simpleDateFormat.format(new Date(j2));
        if (currentTimeMillis < this.f12762 && !isTrackingStopped()) {
            AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", format, format2, Long.valueOf(currentTimeMillis), Long.valueOf(this.f12762)));
            return true;
        } else if (isTrackingStopped()) {
            return false;
        } else {
            AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", format, format2, Long.valueOf(currentTimeMillis)));
            return false;
        }
    }

    /* renamed from: ɩ */
    private boolean m38088(Context context) {
        try {
            Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
            final long currentTimeMillis = System.currentTimeMillis();
            this.f12779 = new ConcurrentHashMap();
            final C3429q.AbstractC3431a abstractC3431a = new C3429q.AbstractC3431a() { // from class: com.appsflyer.AppsFlyerLibCore.2
                @Override // com.appsflyer.internal.C3429q.AbstractC3431a
                /* renamed from: ǃ */
                public final void mo37957(String str, Exception exc) {
                    String message = exc.getMessage();
                    String str2 = message;
                    if (message == null) {
                        str2 = "unknown";
                    }
                    AppsFlyerLibCore.this.f12779.put("error", str2);
                    AFLogger.afErrorLog(str, exc, true);
                }

                @Override // com.appsflyer.internal.C3429q.AbstractC3431a
                /* renamed from: ɩ */
                public final void mo37956(String str, String str2) {
                    AppsFlyerLibCore.this.f12779.put("signedData", str);
                    AppsFlyerLibCore.this.f12779.put("signature", str2);
                    AppsFlyerLibCore.this.f12779.put("ttr", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    AFLogger.afInfoLog("Successfully retrieved Google LVL data.");
                }
            };
            try {
                try {
                    Class<?> cls = Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
                    Class<?> cls2 = Class.forName("com.appsflyer.lvl.AppsFlyerLVL$resultListener");
                    cls.getMethod("checkLicense", Long.TYPE, Context.class, cls2).invoke(null, Long.valueOf(currentTimeMillis), context, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.q.1
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method, Object[] objArr) {
                            if (method.getName().equals("onLvlResult")) {
                                String str = objArr[0] != null ? (String) objArr[0] : null;
                                String str2 = objArr[1] != null ? (String) objArr[1] : null;
                                AbstractC3431a abstractC3431a2 = abstractC3431a;
                                if (abstractC3431a2 == null) {
                                    AFLogger.afDebugLog("onLvlResult invocation succeeded, but listener is null");
                                    return null;
                                } else if (str != null && str2 != null) {
                                    abstractC3431a2.mo37956(str, str2);
                                    return null;
                                } else if (str2 == null) {
                                    abstractC3431a2.mo37957("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                                    return null;
                                } else {
                                    abstractC3431a2.mo37957("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                                    return null;
                                }
                            } else if (!method.getName().equals("onLvlFailure")) {
                                AbstractC3431a abstractC3431a3 = abstractC3431a;
                                if (abstractC3431a3 == null) {
                                    return null;
                                }
                                abstractC3431a3.mo37957("lvlInvocation failed", new Exception("com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"));
                                return null;
                            } else {
                                AbstractC3431a abstractC3431a4 = abstractC3431a;
                                if (abstractC3431a4 == null) {
                                    AFLogger.afDebugLog("onLvlFailure: listener is null");
                                    return null;
                                } else if (objArr[0] != null) {
                                    abstractC3431a4.mo37957("onLvlFailure with exception", (Exception) objArr[0]);
                                    return null;
                                } else {
                                    abstractC3431a4.mo37957("onLvlFailure", new Exception("unknown"));
                                    return null;
                                }
                            }
                        }
                    }));
                    return true;
                } catch (IllegalAccessException e) {
                    abstractC3431a.mo37957(e.getClass().getSimpleName(), e);
                    return true;
                } catch (InvocationTargetException e2) {
                    abstractC3431a.mo37957(e2.getClass().getSimpleName(), e2);
                    return true;
                }
            } catch (ClassNotFoundException e3) {
                abstractC3431a.mo37957(e3.getClass().getSimpleName(), e3);
                return true;
            } catch (NoSuchMethodException e4) {
                abstractC3431a.mo37957(e4.getClass().getSimpleName(), e4);
                return true;
            }
        } catch (ClassNotFoundException e5) {
            return false;
        }
    }

    /* renamed from: ɪ */
    private static float m38077(Context context) {
        float f;
        int intExtra;
        int intExtra2;
        try {
            Intent registerReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            intExtra = registerReceiver.getIntExtra("level", -1);
            intExtra2 = registerReceiver.getIntExtra("scale", -1);
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            f = 1.0f;
        }
        if (intExtra == -1 || intExtra2 == -1) {
            return 50.0f;
        }
        f = (intExtra / intExtra2) * 100.0f;
        return f;
    }

    /* renamed from: ɹ */
    private static boolean m38075(Context context) {
        return !getSharedPreferences(context).contains("appsFlyerCount");
    }

    /* renamed from: Ι */
    static /* synthetic */ String m38067(String str) {
        return AppsFlyerProperties.getInstance().getString(str);
    }

    /* renamed from: Ι */
    private static void m38072(Context context) {
        try {
            if ((context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.flags & 32768) == 0) {
                return;
            }
            if (context.getResources().getIdentifier("appsflyer_backup_rules", "xml", context.getPackageName()) != 0) {
                AFLogger.afInfoLog("appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
            } else {
                AFLogger.m38150("'allowBackup' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules");
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("checkBackupRules Exception: ");
            sb.append(e.toString());
            AFLogger.afRDLog(sb.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v175, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v91 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* renamed from: Ι */
    private void m38069(AFEvent aFEvent) throws IOException {
        ?? r20;
        HttpURLConnection httpURLConnection;
        Throwable th;
        Throwable th2;
        DataOutputStream dataOutputStream;
        URL url = new URL(aFEvent.f12684);
        byte[] m38162 = aFEvent.m38162();
        String key = aFEvent.key();
        String str = aFEvent.f12690;
        boolean m38160 = aFEvent.m38160();
        Context context = aFEvent.context();
        AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener = aFEvent.f12693;
        AppsFlyerRequestListener requestListener = aFEvent.getRequestListener();
        ?? r18 = m38160 && f12754 != null;
        ?? r19 = m38160 && aFEvent.f12699 == 1;
        if (r19 == true) {
            new EventDataCollector(context).set(ServerParameters.FIRST_LAUNCH_COLLECTION, System.currentTimeMillis() - this.f12764);
            r20 = System.currentTimeMillis();
        } else {
            r20 = false;
        }
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Length", String.valueOf(m38162.length));
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setRequestProperty("Content-Type", aFEvent.isEncrypt() ? Mimetypes.MIMETYPE_OCTET_STREAM : "application/json");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setDoOutput(true);
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection.getOutputStream());
                try {
                    dataOutputStream2.write(m38162);
                    dataOutputStream2.close();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (r19 != false) {
                        new EventDataCollector(context).set(ServerParameters.FIRST_LAUNCH_NETWORKING, System.currentTimeMillis() - (r20 == true ? 1L : 0L));
                    }
                    String m38093 = m38093(httpURLConnection);
                    C3406ae.m38019().m38018("server_response", url.toString(), String.valueOf(responseCode), m38093);
                    AFLogger.afInfoLog("response code: ".concat(String.valueOf(responseCode)));
                    SharedPreferences sharedPreferences = getSharedPreferences(context);
                    if (responseCode == 200) {
                        if (context != null && m38160) {
                            this.f12776 = System.currentTimeMillis();
                        }
                        if (appsFlyerTrackingRequestListener != null) {
                            appsFlyerTrackingRequestListener.onTrackingRequestSuccess();
                        }
                        if (requestListener != null) {
                            requestListener.onSuccess();
                        }
                        if (str != null) {
                            C3401aa.m38038();
                            C3401aa.m38035(str, context);
                        } else {
                            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
                            edit.putString("sentSuccessfully", "true");
                            edit.apply();
                            if (!this.f12784 && System.currentTimeMillis() - this.f12773 >= FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT && this.f12768 == null) {
                                this.f12768 = AFExecutor.getInstance().m38158();
                                m38079(this.f12768, new RunnableC3388d(context), 1L, TimeUnit.SECONDS);
                            }
                        }
                        String string = AppsFlyerProperties.getInstance().getString("afUninstallToken");
                        if (string != null) {
                            AFLogger.afDebugLog("Uninstall Token exists: ".concat(String.valueOf(string)));
                            if (!sharedPreferences.getBoolean("sentRegisterRequestToAF", false)) {
                                AFLogger.afDebugLog("Resending Uninstall token to AF servers: ".concat(String.valueOf(string)));
                                C3407af.m38005(context, string);
                            }
                        }
                        if (this.pluginDeeplinkIntent != null) {
                            this.pluginDeeplinkIntent = null;
                        }
                        this.f12769 = ServerConfigHandler.m38040(m38093).optBoolean("send_background", false);
                    } else {
                        if (appsFlyerTrackingRequestListener != null) {
                            appsFlyerTrackingRequestListener.onTrackingRequestFailure("Failure: ".concat(String.valueOf(responseCode)));
                        }
                        if (requestListener != null) {
                            int i = RequestError.RESPONSE_CODE_FAILURE;
                            StringBuilder sb = new StringBuilder();
                            sb.append(RequestErrorMessage.RESPONSE_CODE_FAILURE);
                            sb.append(StringUtils.SPACE);
                            sb.append(responseCode);
                            requestListener.onError(i, sb.toString());
                        }
                    }
                    StringBuilder sb2 = new StringBuilder("[GCD-A01] Loading conversion data. Counter: ");
                    sb2.append(aFEvent.f12699);
                    AFLogger.afDebugLog(sb2.toString());
                    long j = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
                    if (j != 0 && System.currentTimeMillis() - j > 5184000000L) {
                        AFLogger.afDebugLog("[GCD-E02] Cached conversion data expired");
                        SharedPreferences.Editor edit2 = getSharedPreferences(context).edit();
                        edit2.putBoolean("sixtyDayConversionData", true);
                        edit2.apply();
                        SharedPreferences.Editor edit3 = getSharedPreferences(context).edit();
                        edit3.putString("attributionId", null);
                        edit3.apply();
                        m38087(context, "appsflyerConversionDataCacheExpiration", 0L);
                    }
                    if (sharedPreferences.getString("attributionId", null) == null && key != null && r18 != false) {
                        InstallAttributionIdFetcher installAttributionIdFetcher = new InstallAttributionIdFetcher(this, (Application) context.getApplicationContext(), key, (byte) 0);
                        m38079(installAttributionIdFetcher.f12812, installAttributionIdFetcher, 10L, TimeUnit.MILLISECONDS);
                    } else if (key == null) {
                        AFLogger.afDebugLog("[GCD-E05] AppsFlyer dev key is missing");
                    } else if (r18 != false && sharedPreferences.getString("attributionId", null) != null && getLaunchCounter(sharedPreferences, false) > 1) {
                        try {
                            Map<String, Object> m38108 = m38108(context);
                            if (m38108 != null) {
                                try {
                                    if (!m38108.containsKey("is_first_launch")) {
                                        m38108.put("is_first_launch", Boolean.FALSE);
                                    }
                                    InstallAttributionIdFetcher.m38044(m38108);
                                } catch (Throwable th5) {
                                    AFLogger.afErrorLog(th5.getLocalizedMessage(), th5);
                                }
                            }
                        } catch (C3441u e) {
                            AFLogger.afErrorLog(e.getMessage(), e);
                        }
                    } else if (f12754 == null) {
                        AFLogger.afDebugLog("[GCD-E01] AppsFlyerConversionListener is null - skip gcd");
                    }
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                } catch (Throwable th6) {
                    th2 = th6;
                    dataOutputStream = dataOutputStream2;
                    if (dataOutputStream != null) {
                        dataOutputStream.close();
                    } else if (appsFlyerTrackingRequestListener != null) {
                        appsFlyerTrackingRequestListener.onTrackingRequestFailure("No Connectivity");
                    }
                    throw th2;
                }
            } catch (Throwable th7) {
                th2 = th7;
                dataOutputStream = null;
            }
        } catch (Throwable th8) {
            th = th8;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: Ι */
    static /* synthetic */ void m38068(AppsFlyerLibCore appsFlyerLibCore) {
        AFEvent context = new Attr().context(appsFlyerLibCore.f12782);
        if (!appsFlyerLibCore.m38066() || !appsFlyerLibCore.m38115(context, getSharedPreferences(appsFlyerLibCore.f12782))) {
            return;
        }
        appsFlyerLibCore.m38061(context);
    }

    /* renamed from: Ι */
    private boolean m38073() {
        Map<String, Object> map = this.f12781;
        return map != null && !map.isEmpty();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ι */
    private static String m38056(File file, String str) {
        FileReader fileReader;
        FileReader fileReader2;
        Throwable th;
        FileReader fileReader3;
        Properties properties;
        FileReader fileReader4;
        try {
            try {
                try {
                    properties = new Properties();
                    fileReader4 = new FileReader(file);
                } catch (Throwable th2) {
                    AFLogger.afErrorLog(th2.getMessage(), th2);
                    return null;
                }
            } catch (FileNotFoundException e) {
                fileReader2 = null;
            } catch (Throwable th3) {
                th = th3;
                fileReader3 = null;
            }
            try {
                properties.load(fileReader4);
                AFLogger.afInfoLog("Found PreInstall property!");
                String property = properties.getProperty(str);
                try {
                    fileReader4.close();
                } catch (Throwable th4) {
                    AFLogger.afErrorLog(th4.getMessage(), th4);
                }
                return property;
            } catch (FileNotFoundException e2) {
                fileReader2 = fileReader4;
                FileReader fileReader5 = fileReader2;
                StringBuilder sb = new StringBuilder("PreInstall file wasn't found: ");
                FileReader fileReader6 = fileReader2;
                sb.append(file.getAbsolutePath());
                fileReader = fileReader2;
                AFLogger.afDebugLog(sb.toString());
                if (fileReader2 == null) {
                    return null;
                }
                fileReader2.close();
                return null;
            } catch (Throwable th5) {
                th = th5;
                fileReader3 = fileReader4;
                fileReader = fileReader3;
                AFLogger.afErrorLog(th.getMessage(), th);
                if (fileReader3 == null) {
                    return null;
                }
                fileReader3.close();
                return null;
            }
        } catch (Throwable th6) {
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (Throwable th7) {
                    AFLogger.afErrorLog(th7.getMessage(), th7);
                }
            }
            throw th6;
        }
    }

    /* renamed from: ι */
    private void m38063(Context context, final String str, final AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener, final AppsFlyerRequestListener appsFlyerRequestListener) {
        if (Foreground.listener != null) {
            return;
        }
        if (!this.f12774) {
            AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! The API call 'startTracking()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
            if (str == null) {
                if (appsFlyerRequestListener == null) {
                    return;
                }
                appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, RequestErrorMessage.NO_DEV_KEY);
                return;
            }
        }
        this.f12782 = (Application) context.getApplicationContext();
        C3406ae.m38019().m38018("public_api_call", "startTracking", str);
        String str2 = f12758;
        AFLogger.afInfoLog(String.format("Starting AppsFlyer Tracking: (v%s.%s)", BuildConfig.VERSION_NAME, str2));
        StringBuilder sb = new StringBuilder("Build Number: ");
        sb.append(str2);
        AFLogger.afInfoLog(sb.toString());
        AppsFlyerProperties.getInstance().loadProperties(this.f12782.getApplicationContext());
        if (!TextUtils.isEmpty(str)) {
            AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
            C3408ag.m38004(str);
        } else if (TextUtils.isEmpty(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY))) {
            AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the startTracking API method (should be called on Activity's onCreate).");
            if (appsFlyerRequestListener == null) {
                return;
            }
            appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, RequestErrorMessage.NO_DEV_KEY);
            return;
        }
        m38072(this.f12782.getBaseContext());
        if (this.f12783) {
            m38120(this.f12782.getApplicationContext());
        }
        Foreground.m38042(context, new Foreground.Listener() { // from class: com.appsflyer.AppsFlyerLibCore.1
            @Override // com.appsflyer.Foreground.Listener
            public final void onBecameBackground(Context context2) {
                AFLogger.afInfoLog("onBecameBackground");
                AppsFlyerLibCore.this.f12765 = System.currentTimeMillis();
                new EventDataCollector(context2).set(ServerParameters.PREVIOUS_SESSION_DURATION, TimeUnit.MILLISECONDS.toSeconds(AppsFlyerLibCore.this.f12765 - AppsFlyerLibCore.this.f12764));
                AFLogger.afInfoLog("callStatsBackground background call");
                AppsFlyerLibCore.this.m38111(new WeakReference<>(context2));
                C3406ae m38019 = C3406ae.m38019();
                if (m38019.m38007()) {
                    m38019.m38011();
                    if (context2 != null) {
                        C3406ae.m38021(context2.getPackageName(), context2.getPackageManager());
                    }
                    m38019.m38023();
                } else {
                    AFLogger.afDebugLog("RD status is OFF");
                }
                AFExecutor aFExecutor = AFExecutor.getInstance();
                try {
                    AFExecutor.m38159(aFExecutor.f12704);
                    if (aFExecutor.f12701 instanceof ThreadPoolExecutor) {
                        AFExecutor.m38159((ThreadPoolExecutor) aFExecutor.f12701);
                    }
                } catch (Throwable th) {
                    AFLogger.afErrorLog("failed to stop Executors", th);
                }
                AFSensorManager m38136 = AFSensorManager.m38136(context2);
                m38136.f12720.post(m38136.f12724);
            }

            @Override // com.appsflyer.Foreground.Listener
            public final void onBecameForeground(Activity activity) {
                if (AppsFlyerLibCore.this.getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(activity), false) < 2) {
                    AFSensorManager m38136 = AFSensorManager.m38136(activity);
                    m38136.f12720.post(m38136.f12724);
                    m38136.f12720.post(m38136.f12726);
                }
                AFLogger.afInfoLog("onBecameForeground");
                AppsFlyerLibCore.this.f12764 = System.currentTimeMillis();
                AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                AFEvent key = new Launch().context(activity).key(str);
                key.f12693 = appsFlyerTrackingRequestListener;
                appsFlyerLibCore.m38116(key.requestListener(appsFlyerRequestListener));
            }
        });
    }

    /* renamed from: ι */
    private void m38062(Context context, String str, Map<String, Object> map, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener, AppsFlyerRequestListener appsFlyerRequestListener) {
        AFEvent context2 = new InAppEvent().context(context);
        context2.f12697 = str;
        context2.f12683 = map == null ? null : new HashMap(map);
        context2.f12693 = appsFlyerTrackingRequestListener;
        AFEvent requestListener = context2.requestListener(appsFlyerRequestListener);
        C3406ae.m38019().m38018("public_api_call", "trackEvent", str, new JSONObject(requestListener.f12683 == null ? new HashMap() : requestListener.f12683).toString());
        if (str != null) {
            AFSensorManager m38136 = AFSensorManager.m38136(context);
            long currentTimeMillis = System.currentTimeMillis();
            if (m38136.f12730 != 0) {
                m38136.f12719++;
                if (m38136.f12730 - currentTimeMillis < 500) {
                    m38136.f12720.removeCallbacks(m38136.f12718);
                    m38136.f12720.post(m38136.f12726);
                }
            } else {
                m38136.f12720.post(m38136.f12724);
                m38136.f12720.post(m38136.f12726);
            }
            m38136.f12730 = currentTimeMillis;
        }
        m38116(requestListener);
    }

    /* renamed from: ι */
    public void m38061(AFEvent aFEvent) {
        boolean z;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        Context context = aFEvent.context();
        String str = aFEvent.f12697;
        if (context == null) {
            AFLogger.afDebugLog("sendTrackingWithEvent - got null context. skipping event/launch.");
            return;
        }
        SharedPreferences sharedPreferences = getSharedPreferences(context);
        AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
        if (!isTrackingStopped()) {
            StringBuilder sb = new StringBuilder("sendTrackingWithEvent from activity: ");
            sb.append(context.getClass().getName());
            AFLogger.afInfoLog(sb.toString());
        }
        boolean z2 = str == null;
        boolean z3 = aFEvent instanceof BackgroundReferrerLaunch;
        boolean z4 = aFEvent instanceof Attr;
        aFEvent.f12691 = z2;
        Map<String, ?> m38099 = m38099(aFEvent);
        String str2 = (String) m38099.get("appsflyerKey");
        if (str2 == null || str2.length() == 0) {
            AFLogger.afDebugLog("Not sending data yet, waiting for dev key");
            AppsFlyerRequestListener requestListener = aFEvent.getRequestListener();
            if (requestListener == null) {
                return;
            }
            requestListener.onError(RequestError.NO_DEV_KEY, RequestErrorMessage.NO_DEV_KEY);
            return;
        }
        if (!isTrackingStopped()) {
            AFLogger.afInfoLog("AppsFlyerLib.sendTrackingWithEvent");
        }
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        String url = (z4 || z3) ? ServerConfigHandler.getUrl(REFERRER_TRACKING_URL) : z2 ? launchCounter < 2 ? ServerConfigHandler.getUrl(FIRST_LAUNCHES_URL) : ServerConfigHandler.getUrl(f12757) : ServerConfigHandler.getUrl(f12756);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(url);
        sb2.append(context.getPackageName());
        String obj = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(obj);
        sb3.append("&buildnumber=5.4.6");
        String obj2 = sb3.toString();
        String configuredChannel = getConfiguredChannel(context);
        String str3 = obj2;
        if (configuredChannel != null) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(obj2);
            sb4.append("&channel=");
            sb4.append(configuredChannel);
            str3 = sb4.toString();
        }
        if (!(AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) && m38099.get(ServerParameters.ADVERTISING_ID_PARAM) != null) {
            try {
                if (TextUtils.isEmpty(this.f12771) && m38099.remove("android_id") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: android_id");
                }
                if (TextUtils.isEmpty(this.f12780) && m38099.remove("imei") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: imei");
                }
            } catch (Exception e) {
                AFLogger.afErrorLog("failed to remove IMEI or AndroidID key from params; ", e);
            }
        }
        AFEvent m38161 = aFEvent.urlString(str3).params(m38099).m38161();
        m38161.f12699 = launchCounter;
        RunnableC3387c runnableC3387c = new RunnableC3387c(this, m38161, (byte) 0);
        if (z2) {
            boolean z5 = false;
            if (GoogleReferrer.allow(this, context)) {
                z5 = false;
                if (!m38066()) {
                    AFLogger.afDebugLog("Failed to get new referrer, wait ...");
                    z5 = true;
                }
            }
            boolean z6 = z5;
            if (this.f12786.getState() == Referrer.State.STARTED) {
                z6 = true;
            }
            boolean z7 = z6;
            if (this.f12783) {
                z7 = z6;
                if (!m38073()) {
                    AFLogger.afDebugLog("fetching Facebook deferred AppLink data, wait ...");
                    z7 = true;
                }
            }
            z = z7;
            if (this.f12789) {
                z = z7;
                if (!m38052()) {
                    z = true;
                }
            }
        } else {
            z = false;
        }
        if (AFDeepLinkManager.f12677) {
            AFLogger.afRDLog("ESP deeplink: execute launch on SerialExecutor");
            AFExecutor aFExecutor = AFExecutor.getInstance();
            if (aFExecutor.f12702 == null) {
                aFExecutor.f12702 = Executors.newSingleThreadScheduledExecutor(aFExecutor.f12703);
            }
            scheduledThreadPoolExecutor = aFExecutor.f12702;
        } else {
            scheduledThreadPoolExecutor = AFExecutor.getInstance().m38158();
        }
        m38079(scheduledThreadPoolExecutor, runnableC3387c, z ? true : false ? 1L : 0L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: ι */
    public boolean m38066() {
        GoogleReferrer googleReferrer = this.f12763;
        return googleReferrer != null && googleReferrer.oldMap.size() > 0;
    }

    /* renamed from: ι */
    private static boolean m38057(File file) {
        return file == null || !file.exists();
    }

    /* renamed from: І */
    private static String m38054(Context context) {
        String str = null;
        if (context instanceof Activity) {
            Intent intent = ((Activity) context).getIntent();
            str = null;
            if (intent != null) {
                str = null;
                try {
                    Bundle extras = intent.getExtras();
                    str = null;
                    if (extras != null) {
                        String string = extras.getString("af");
                        str = string;
                        if (string != null) {
                            AFLogger.afInfoLog("Push Notification received af payload = ".concat(String.valueOf(string)));
                            extras.remove("af");
                            str = string;
                            ((Activity) context).setIntent(intent.putExtras(extras));
                            str = string;
                        }
                    }
                } catch (Throwable th) {
                    AFLogger.afErrorLog(th.getMessage(), th);
                }
            }
        }
        return str;
    }

    /* renamed from: і */
    public boolean m38052() {
        Map<String, Object> map = this.f12779;
        return map != null && !map.isEmpty();
    }

    /* renamed from: і */
    private static boolean m38051(Context context) {
        return (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) || !m38049(context);
    }

    /* renamed from: Ӏ */
    private static boolean m38049(Context context) {
        try {
            if (C11937b.m19287a().mo19275a(context) == 0) {
                return true;
            }
        } catch (Throwable th) {
            AFLogger.afErrorLog("WARNING:  Google play services is unavailable. ", th);
        }
        try {
            context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.afErrorLog("WARNING:  Google Play Services is unavailable. ", e);
            return false;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void enableFacebookDeferredApplinks(boolean z) {
        this.f12783 = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib enableLocationCollection(boolean z) {
        this.f12777 = z;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAppsFlyerUID(Context context) {
        C3406ae.m38019().m38018("public_api_call", "getAppsFlyerUID", new String[0]);
        return C3451z.m37938(new WeakReference(context));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAttributionId(Context context) {
        try {
            return new C3402ab(context).m38033();
        } catch (Throwable th) {
            AFLogger.afErrorLog("Could not collect facebook attribution id. ", th);
            return null;
        }
    }

    public String getConfiguredChannel(Context context) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.CHANNEL);
        String str = string;
        if (string == null) {
            str = context == null ? null : m38081("CHANNEL", context.getPackageManager(), context.getPackageName());
        }
        if (str == null || !str.equals("")) {
            return str;
        }
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getHostName() {
        String string = AppsFlyerProperties.getInstance().getString("custom_host");
        return string != null ? string : ServerParameters.DEFAULT_HOST;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getHostPrefix() {
        String string = AppsFlyerProperties.getInstance().getString("custom_host_prefix");
        return string != null ? string : "";
    }

    public final int getLaunchCounter(SharedPreferences sharedPreferences, boolean z) {
        return m38086(sharedPreferences, "appsFlyerCount", z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getOutOfStore(Context context) {
        String string = AppsFlyerProperties.getInstance().getString("api_store_value");
        if (string != null) {
            return string;
        }
        String m38081 = context == null ? null : m38081("AF_STORE", context.getPackageManager(), context.getPackageName());
        if (m38081 != null) {
            return m38081;
        }
        AFLogger.afInfoLog("No out-of-store value set");
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getSdkVersion() {
        C3406ae.m38019().m38018("public_api_call", "getSdkVersion", new String[0]);
        StringBuilder sb = new StringBuilder("version: 5.4.6 (build ");
        sb.append(f12758);
        sb.append(")");
        return sb.toString();
    }

    public void handleDeepLinkCallback(Context context, Map<String, Object> map, Uri uri) {
        String str;
        String obj = uri.toString();
        if (obj == null) {
            str = null;
        } else {
            str = obj;
            if (obj.matches("fb\\d*?://authorize.*")) {
                str = obj;
                if (obj.contains(AccessToken.ACCESS_TOKEN_KEY)) {
                    int indexOf = obj.indexOf(63);
                    String substring = indexOf == -1 ? "" : obj.substring(indexOf);
                    str = obj;
                    if (substring.length() != 0) {
                        ArrayList arrayList = new ArrayList();
                        if (substring.contains("&")) {
                            arrayList = new ArrayList(Arrays.asList(substring.split("&")));
                        } else {
                            arrayList.add(substring);
                        }
                        StringBuilder sb = new StringBuilder();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            String str2 = (String) it2.next();
                            if (str2.contains(AccessToken.ACCESS_TOKEN_KEY)) {
                                it2.remove();
                            } else {
                                if (sb.length() != 0) {
                                    sb.append("&");
                                } else if (!str2.startsWith("?")) {
                                    sb.append("?");
                                }
                                sb.append(str2);
                            }
                        }
                        str = obj.replace(substring, sb.toString());
                    }
                }
            }
        }
        if (!map.containsKey("af_deeplink")) {
            map.put("af_deeplink", str);
        }
        final HashMap hashMap = new HashMap();
        hashMap.put("link", uri.toString());
        final WeakReference weakReference = new WeakReference(context);
        C3404ad c3404ad = new C3404ad(uri, this);
        if (c3404ad.f12853) {
            map.put("isBrandedDomain", Boolean.TRUE);
        }
        c3404ad.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        if (!c3404ad.m38026()) {
            m38110(AndroidUtils.m38124(context, hashMap, uri));
            return;
        }
        c3404ad.f12856 = new C3404ad.AbstractC3405b() { // from class: com.appsflyer.AppsFlyerLibCore.9
            /* renamed from: ı */
            private void m38046(Map<String, String> map2) {
                if (weakReference.get() != null) {
                    AppsFlyerLibCore.m38118((Context) weakReference.get(), "deeplinkAttribution", new JSONObject(map2).toString());
                }
            }

            @Override // com.appsflyer.internal.C3404ad.AbstractC3405b
            /* renamed from: ɩ */
            public final void mo38025(String str3) {
                if (AppsFlyerLibCore.f12754 != null) {
                    m38046(hashMap);
                    AFLogger.afDebugLog("Calling onAttributionFailure with:\n".concat(String.valueOf(str3)));
                    AppsFlyerLibCore.f12754.onAttributionFailure(str3);
                }
            }

            @Override // com.appsflyer.internal.C3404ad.AbstractC3405b
            /* renamed from: Ι */
            public final void mo38024(Map<String, String> map2) {
                for (String str3 : map2.keySet()) {
                    hashMap.put(str3, map2.get(str3));
                }
                m38046(hashMap);
                AppsFlyerLibCore.m38110(hashMap);
            }
        };
        AFExecutor.getInstance().getThreadPoolExecutor().execute(c3404ad);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener) {
        C3406ae.m38019().m38018("public_api_call", "init", str, appsFlyerConversionListener == null ? JsonReaderKt.NULL : "conversionDataListener");
        AFLogger.m38147(String.format("Initializing AppsFlyer SDK: (v%s.%s)", BuildConfig.VERSION_NAME, f12758));
        this.f12774 = true;
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
        C3408ag.m38004(str);
        f12754 = appsFlyerConversionListener;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, final Context context) {
        if (context != null) {
            this.f12782 = (Application) context.getApplicationContext();
            if (GoogleReferrer.allow(this, context)) {
                if (this.f12763 == null) {
                    this.f12763 = new GoogleReferrer();
                    AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                    this.f12763.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                AFLogger.afDebugLog("Install Referrer collected locally");
                                AppsFlyerLibCore.m38068(AppsFlyerLibCore.this);
                            } catch (Throwable th) {
                                AFLogger.afErrorLog(th.getMessage(), th);
                            }
                        }
                    });
                } else {
                    AFLogger.afWarnLog("GoogleReferrer instance already created");
                }
            }
            final SharedPreferences sharedPreferences = getSharedPreferences(context);
            this.f12786.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (AppsFlyerLibCore.this.getLaunchCounter(sharedPreferences, false) == 1) {
                        if (GoogleReferrer.allow(AppsFlyerLibCore.this, context) && !sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false)) {
                            return;
                        }
                        AppsFlyerLibCore.this.m38061(new Attr().context(context));
                    }
                }
            });
            this.f12789 = m38088(context);
            Exlytics.setContext(this.f12782);
        } else {
            AFLogger.afWarnLog("init :: context is null, Google Install Referrer will be not initialized!");
        }
        return init(str, appsFlyerConversionListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public boolean isPreInstalledApp(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.afErrorLog("Could not check if app is pre installed", e);
            return false;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public boolean isTrackingStopped() {
        return this.f12785;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void onPause(Context context) {
        if (Foreground.listener != null) {
            Foreground.listener.onBecameBackground(context);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void performOnAppAttribution(Context context, URI uri) {
        if (uri == null || uri.toString().isEmpty()) {
            AppsFlyerConversionListener appsFlyerConversionListener = f12754;
            if (appsFlyerConversionListener == null) {
                return;
            }
            StringBuilder sb = new StringBuilder("Link is \"");
            sb.append(uri);
            sb.append("\"");
            appsFlyerConversionListener.onAttributionFailure(sb.toString());
        } else if (context != null) {
            AFDeepLinkManager.getInstance();
            AFDeepLinkManager.m38167(context, new HashMap(), Uri.parse(uri.toString()));
        } else {
            AppsFlyerConversionListener appsFlyerConversionListener2 = f12754;
            if (appsFlyerConversionListener2 == null) {
                return;
            }
            StringBuilder sb2 = new StringBuilder("Context is \"");
            sb2.append(context);
            sb2.append("\"");
            appsFlyerConversionListener2.onAttributionFailure(sb2.toString());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        C3406ae.m38019().m38018("public_api_call", "registerConversionListener", new String[0]);
        if (appsFlyerConversionListener != null) {
            f12754 = appsFlyerConversionListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener) {
        C3406ae.m38019().m38018("public_api_call", "registerValidatorListener", new String[0]);
        AFLogger.afDebugLog("registerValidatorListener called");
        if (appsFlyerInAppPurchaseValidatorListener == null) {
            AFLogger.afDebugLog("registerValidatorListener null listener");
        } else {
            f12751 = appsFlyerInAppPurchaseValidatorListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void reportTrackSession(Context context) {
        C3406ae.m38019().m38018("public_api_call", "reportTrackSession", new String[0]);
        C3406ae.m38019().f12863 = false;
        AFEvent context2 = new InAppEvent().context(context);
        context2.f12697 = null;
        context2.f12683 = null;
        m38116(context2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void sendAdRevenue(Context context, Map<String, Object> map) {
        AFEvent context2 = new AdRevenue().context(context);
        context2.f12683 = map;
        Context context3 = context2.context();
        String url = ServerConfigHandler.getUrl(f12761);
        StringBuilder sb = new StringBuilder();
        sb.append(url);
        sb.append(context3.getPackageName());
        String obj = sb.toString();
        SharedPreferences sharedPreferences = getSharedPreferences(context3);
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        int m38086 = m38086(sharedPreferences, "appsFlyerAdRevenueCount", true);
        HashMap hashMap = new HashMap();
        hashMap.put("ad_network", context2.f12683);
        hashMap.put("adrevenue_counter", Integer.valueOf(m38086));
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        hashMap.put("af_key", string);
        hashMap.put("launch_counter", Integer.valueOf(launchCounter));
        hashMap.put("af_timestamp", Long.toString(new Date().getTime()));
        hashMap.put("uid", C3451z.m37938(new WeakReference(context3)));
        String string2 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        hashMap.put("advertiserIdEnabled", AppsFlyerProperties.getInstance().getString("advertiserIdEnabled"));
        if (string2 != null) {
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string2);
        }
        hashMap.put("device", Build.DEVICE);
        m38117(context3, hashMap);
        try {
            PackageInfo packageInfo = context3.getPackageManager().getPackageInfo(context3.getPackageName(), 0);
            hashMap.put("app_version_code", Integer.toString(packageInfo.versionCode));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            long j = packageInfo.firstInstallTime;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            hashMap.put("install_date", simpleDateFormat.format(new Date(j)));
            String string3 = sharedPreferences.getString("appsFlyerFirstInstall", null);
            String str = string3;
            if (string3 == null) {
                str = m38080(simpleDateFormat, context3);
            }
            hashMap.put("first_launch_date", str);
        } catch (Throwable th) {
            AFLogger.afErrorLog("AdRevenue - Exception while collecting app version data ", th);
        }
        AFEvent m38161 = context2.urlString(obj).params(hashMap).m38161();
        m38161.f12699 = launchCounter;
        m38079(AFExecutor.getInstance().m38158(), new RunnableC3387c(this, m38161.key(string), (byte) 0), 1L, TimeUnit.MILLISECONDS);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void sendDeepLinkData(Activity activity) {
        if (activity != null && activity.getIntent() != null) {
            C3406ae m38019 = C3406ae.m38019();
            String localClassName = activity.getLocalClassName();
            StringBuilder sb = new StringBuilder("activity_intent_");
            sb.append(activity.getIntent().toString());
            m38019.m38018("public_api_call", "sendDeepLinkData", localClassName, sb.toString());
        } else if (activity != null) {
            C3406ae.m38019().m38018("public_api_call", "sendDeepLinkData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            C3406ae.m38019().m38018("public_api_call", "sendDeepLinkData", "activity_null");
        }
        try {
            startTracking(activity);
            StringBuilder sb2 = new StringBuilder("getDeepLinkData with activity ");
            sb2.append(activity.getIntent().getDataString());
            AFLogger.afInfoLog(sb2.toString());
        } catch (Exception e) {
            AFLogger.afInfoLog("getDeepLinkData Exception: ".concat(String.valueOf(e)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x01f4  */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendPushNotificationData(android.app.Activity r9) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.sendPushNotificationData(android.app.Activity):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAdditionalData(HashMap<String, Object> hashMap) {
        if (hashMap != null) {
            C3406ae.m38019().m38018("public_api_call", "setAdditionalData", hashMap.toString());
            AppsFlyerProperties.getInstance().setCustomData(new JSONObject(hashMap).toString());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAndroidIdData(String str) {
        C3406ae.m38019().m38018("public_api_call", "setAndroidIdData", str);
        this.f12771 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppId(String str) {
        C3406ae.m38019().m38018("public_api_call", "setAppId", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppInviteOneLink(String str) {
        C3406ae.m38019().m38018("public_api_call", "setAppInviteOneLink", str);
        AFLogger.afInfoLog("setAppInviteOneLink = ".concat(String.valueOf(str)));
        if (str == null || !str.equals(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID))) {
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_DOMAIN);
            AppsFlyerProperties.getInstance().remove("onelinkVersion");
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_SCHEME);
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectAndroidID(boolean z) {
        C3406ae.m38019().m38018("public_api_call", "setCollectAndroidID", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectIMEI(boolean z) {
        C3406ae.m38019().m38018("public_api_call", "setCollectIMEI", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectOaid(boolean z) {
        C3406ae.m38019().m38018("public_api_call", "setCollectOaid", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setConsumeAFDeepLinks(boolean z) {
        AppsFlyerProperties.getInstance().set("consumeAfDeepLink", z);
        C3406ae.m38019().m38018("public_api_call", "setConsumeAFDeepLinks: ".concat(String.valueOf(z)), new String[0]);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCurrencyCode(String str) {
        C3406ae.m38019().m38018("public_api_call", "setCurrencyCode", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerIdAndTrack(String str, Context context) {
        if (context != null) {
            if (!m38106()) {
                setCustomerUserId(str);
                AFLogger.afInfoLog("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
                return;
            }
            setCustomerUserId(str);
            AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false);
            StringBuilder sb = new StringBuilder("CustomerUserId set: ");
            sb.append(str);
            sb.append(" - Initializing AppsFlyer Tacking");
            AFLogger.afInfoLog(sb.toString(), true);
            String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
            String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
            String str2 = referrer;
            if (referrer == null) {
                str2 = "";
            }
            m38102(context, string, str2, context instanceof Activity ? ((Activity) context).getIntent() : null);
            if (AppsFlyerProperties.getInstance().getString("afUninstallToken") == null) {
                return;
            }
            m38064(context, AppsFlyerProperties.getInstance().getString("afUninstallToken"));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerUserId(String str) {
        C3406ae.m38019().m38018("public_api_call", "setCustomerUserId", str);
        AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_USER_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDebugLog(boolean z) {
        setLogLevel(z ? AFLogger.LogLevel.DEBUG : AFLogger.LogLevel.NONE);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDeviceTrackingDisabled(boolean z) {
        C3406ae.m38019().m38018("public_api_call", "setDeviceTrackingDisabled", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setExtension(String str) {
        C3406ae.m38019().m38018("public_api_call", "setExtension", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EXTENSION, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setHost(String str, String str2) {
        if (str != null) {
            AppsFlyerProperties.getInstance().set("custom_host_prefix", str);
        }
        if (str2 == null || str2.isEmpty()) {
            AFLogger.afWarnLog("hostName cannot be null or empty");
        } else {
            AppsFlyerProperties.getInstance().set("custom_host", str2);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void setHostName(String str) {
        AppsFlyerProperties.getInstance().set("custom_host", str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setImeiData(String str) {
        C3406ae.m38019().m38018("public_api_call", "setImeiData", str);
        this.f12780 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setIsUpdate(boolean z) {
        C3406ae.m38019().m38018("public_api_call", "setIsUpdate", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setLogLevel(AFLogger.LogLevel logLevel) {
        boolean z = logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel();
        C3406ae.m38019().m38018("public_api_call", "log", String.valueOf(z));
        AppsFlyerProperties.getInstance().set("shouldLog", z);
        AppsFlyerProperties.getInstance().set("logLevel", logLevel.getLevel());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setMinTimeBetweenSessions(int i) {
        this.f12762 = TimeUnit.SECONDS.toMillis(i);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOaidData(String str) {
        C3406ae.m38019().m38018("public_api_call", "setOaidData", str);
        this.f12790 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOneLinkCustomDomain(String... strArr) {
        AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
        AFDeepLinkManager.f12676 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOutOfStore(String str) {
        if (str == null) {
            AFLogger.m38150("Cannot set setOutOfStore with null");
            return;
        }
        String lowerCase = str.toLowerCase();
        AppsFlyerProperties.getInstance().set("api_store_value", lowerCase);
        AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPhoneNumber(String str) {
        this.f12787 = C3403ac.m38027(str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void setPluginDeepLinkData(Intent intent) {
        if (intent != null) {
            try {
                if (!"android.intent.action.VIEW".equals(intent.getAction())) {
                    return;
                }
                this.pluginDeeplinkIntent = intent;
                StringBuilder sb = new StringBuilder("Plugin setDeepLinkData = ");
                sb.append(this.pluginDeeplinkIntent.getDataString());
                AFLogger.afDebugLog(sb.toString());
            } catch (Throwable th) {
                AFLogger.afErrorLog("Exception while setting deeplink data (unity). ", th);
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPreinstallAttribution(String str, String str2, String str3) {
        AFLogger.afDebugLog("setPreinstallAttribution API called");
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            try {
                jSONObject.put(Constants.URL_MEDIA_SOURCE, str);
            } catch (JSONException e) {
                AFLogger.afErrorLog(e.getMessage(), e);
            }
        }
        if (str2 != null) {
            jSONObject.put(Constants.URL_CAMPAIGN, str2);
        }
        if (str3 != null) {
            jSONObject.put(Constants.URL_SITE_ID, str3);
        }
        if (!jSONObject.has(Constants.URL_MEDIA_SOURCE)) {
            AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
            return;
        }
        AppsFlyerProperties.getInstance().set("preInstallName", jSONObject.toString());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setResolveDeepLinkURLs(String... strArr) {
        AFLogger.afDebugLog(String.format("setResolveDeepLinkURLs %s", Arrays.toString(strArr)));
        AFDeepLinkManager.f12678 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setSharingFilter(String... strArr) {
        if (strArr != null && !Arrays.equals(this.f12772, new String[]{"all"})) {
            Pattern compile = Pattern.compile("[\\d\\w_]{1,45}");
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                if (str == null || !compile.matcher(str).matches()) {
                    AFLogger.afWarnLog("Invalid partner name :".concat(String.valueOf(str)));
                } else {
                    arrayList.add(str);
                }
            }
            if (!arrayList.isEmpty()) {
                this.f12772 = (String[]) arrayList.toArray(new String[0]);
            } else {
                this.f12772 = null;
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setSharingFilterForAllPartners() {
        this.f12772 = new String[]{"all"};
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        String str;
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        C3406ae.m38019().m38018("public_api_call", "setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        String str2 = null;
        for (String str3 : strArr) {
            if (C338010.f12795[emailsCryptType.ordinal()] != 2) {
                arrayList2.add(C3403ac.m38027(str3));
                str = "sha256_el_arr";
            } else {
                arrayList2.add(str3);
                str = "plain_el_arr";
            }
            str2 = str;
        }
        hashMap.put(str2, arrayList2);
        AppsFlyerProperties.getInstance().setUserEmails(new JSONObject(hashMap).toString());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setUserEmails(String... strArr) {
        C3406ae.m38019().m38018("public_api_call", "setUserEmails", strArr);
        setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context) {
        startTracking(context, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, String str) {
        m38063(context, str, null, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void startTracking(Context context, String str, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        m38063(context, str, appsFlyerTrackingRequestListener, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, String str, AppsFlyerRequestListener appsFlyerRequestListener) {
        m38063(context, str, null, appsFlyerRequestListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void stopTracking(boolean z, Context context) {
        File[] listFiles;
        this.f12785 = z;
        C3401aa.m38038();
        try {
            File m38037 = C3401aa.m38037(context);
            if (!m38037.exists()) {
                m38037.mkdir();
            } else {
                for (File file : m38037.listFiles()) {
                    StringBuilder sb = new StringBuilder("Found cached request");
                    sb.append(file.getName());
                    AFLogger.afInfoLog(sb.toString());
                    C3401aa.m38035(C3401aa.m38036(file).f12967, context);
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLog("Could not cache request", e);
        }
        if (this.f12785) {
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putBoolean(IS_STOP_TRACKING_USED, true);
            edit.apply();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void trackAppLaunch(Context context, String str) {
        if (GoogleReferrer.allow(this, context)) {
            if (this.f12763 == null) {
                this.f12763 = new GoogleReferrer();
                AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                this.f12763.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            AFLogger.afDebugLog("Install Referrer collected locally");
                            AppsFlyerLibCore.m38068(AppsFlyerLibCore.this);
                        } catch (Throwable th) {
                            AFLogger.afErrorLog(th.getMessage(), th);
                        }
                    }
                });
            } else {
                AFLogger.afWarnLog("GoogleReferrer instance already created");
            }
        }
        m38102(context, str, "", null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map) {
        m38062(context, str, map, null, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        m38062(context, str, map, appsFlyerTrackingRequestListener, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener) {
        m38062(context, str, map, null, appsFlyerRequestListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackLocation(Context context, double d, double d2) {
        C3406ae.m38019().m38018("public_api_call", "trackLocation", String.valueOf(d), String.valueOf(d2));
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.LONGTITUDE, Double.toString(d2));
        hashMap.put(AFInAppEventParameterName.LATITUDE, Double.toString(d));
        AFEvent context2 = new InAppEvent().context(context);
        context2.f12697 = AFInAppEventType.LOCATION_COORDINATES;
        context2.f12683 = hashMap;
        m38116(context2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void unregisterConversionListener() {
        C3406ae.m38019().m38018("public_api_call", "unregisterConversionListener", new String[0]);
        f12754 = null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void updateServerUninstallToken(Context context, String str) {
        C3407af.m38005(context, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void validateAndTrackInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        C3406ae.m38019().m38018("public_api_call", "validateAndTrackInAppPurchase", str, str2, str3, str4, str5, map == null ? "" : map.toString());
        if (!isTrackingStopped()) {
            StringBuilder sb = new StringBuilder("Validate in app called with parameters: ");
            sb.append(str3);
            sb.append(StringUtils.SPACE);
            sb.append(str4);
            sb.append(StringUtils.SPACE);
            sb.append(str5);
            AFLogger.afInfoLog(sb.toString());
        }
        if (str != null && str4 != null && str2 != null && str5 != null && str3 != null) {
            new Thread(new AFValidateInAppPurchase(context.getApplicationContext(), AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY), str, str2, str3, str4, str5, map, context instanceof Activity ? ((Activity) context).getIntent() : null)).start();
            return;
        }
        AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = f12751;
        if (appsFlyerInAppPurchaseValidatorListener == null) {
            return;
        }
        appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void waitForCustomerUserId(boolean z) {
        AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z)), true);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* renamed from: ı */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m38116(com.appsflyer.AFEvent r5) {
        /*
            r4 = this;
            r0 = r5
            android.content.Context r0 = r0.context()
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.app.Activity
            r7 = r0
            java.lang.String r0 = ""
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L3a
            r0 = r6
            android.app.Activity r0 = (android.app.Activity) r0
            r9 = r0
            r0 = r9
            android.content.Intent r0 = r0.getIntent()
            r10 = r0
            r0 = r9
            android.net.Uri r0 = com.appsflyer.internal.ActivityCompat.getReferrer(r0)
            r11 = r0
            r0 = r10
            r9 = r0
            r0 = r11
            if (r0 == 0) goto L3d
            r0 = r11
            java.lang.String r0 = r0.toString()
            r9 = r0
            goto L4a
        L3a:
            r0 = 0
            r9 = r0
        L3d:
            java.lang.String r0 = ""
            r11 = r0
            r0 = r9
            r10 = r0
            r0 = r11
            r9 = r0
        L4a:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r1 = "AppsFlyerKey"
            java.lang.String r0 = r0.getString(r1)
            if (r0 != 0) goto L72
            java.lang.String r0 = "[TrackEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey."
            com.appsflyer.AFLogger.afWarnLog(r0)
            r0 = r5
            com.appsflyer.attribution.AppsFlyerRequestListener r0 = r0.getRequestListener()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L71
            r0 = r5
            int r1 = com.appsflyer.attribution.RequestError.NO_DEV_KEY
            java.lang.String r2 = com.appsflyer.internal.attribution.RequestErrorMessage.NO_DEV_KEY
            r0.onError(r1, r2)
        L71:
            return
        L72:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            r1 = r6
            java.lang.String r0 = r0.getReferrer(r1)
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L83
            goto L87
        L83:
            r0 = r11
            r8 = r0
        L87:
            r0 = r5
            r1 = r8
            r0.f12698 = r1
            r0 = r5
            r1 = r10
            r0.f12685 = r1
            r0 = r5
            r1 = r9
            r0.f12695 = r1
            r0 = r4
            r1 = r5
            r0.m38085(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m38116(com.appsflyer.AFEvent):void");
    }

    /* renamed from: ı */
    final void m38111(WeakReference<Context> weakReference) {
        if (weakReference.get() == null) {
            return;
        }
        AFLogger.afInfoLog("app went to background");
        SharedPreferences sharedPreferences = getSharedPreferences(weakReference.get());
        AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
        long j = this.f12765;
        long j2 = this.f12764;
        HashMap hashMap = new HashMap();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        if (string == null) {
            AFLogger.afWarnLog("[callStats] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        String string2 = AppsFlyerProperties.getInstance().getString("KSAppsFlyerId");
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            hashMap.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
        }
        C3449y m37941 = C3447x.m37941(weakReference.get().getContentResolver());
        if (m37941 != null) {
            hashMap.put("amazon_aid", m37941.f13013);
            hashMap.put("amazon_aid_limit", String.valueOf(m37941.m37940()));
        }
        String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string3 != null) {
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
        }
        hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, weakReference.get().getPackageName());
        hashMap.put("devkey", string);
        hashMap.put("uid", C3451z.m37938(weakReference));
        hashMap.put("time_in_app", String.valueOf((j - j2) / 1000));
        hashMap.put("statType", "user_closed_app");
        hashMap.put("platform", "Android");
        hashMap.put("launch_counter", Integer.toString(getLaunchCounter(sharedPreferences, false)));
        hashMap.put(AppsFlyerProperties.CHANNEL, getConfiguredChannel(weakReference.get()));
        hashMap.put("originalAppsflyerId", string2 != null ? string2 : "");
        if (!this.f12769) {
            AFLogger.afDebugLog("Stats call is disabled, ignore ...");
            return;
        }
        try {
            AFLogger.afDebugLog("Running callStats task");
            new Thread(new RunnableC3446w((BackgroundEvent) new Stats().trackingStopped(isTrackingStopped()).params(hashMap).urlString(ServerConfigHandler.getUrl(f12759)))).start();
        } catch (Throwable th) {
            AFLogger.afErrorLog("Could not send callStats request", th);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ǃ */
    public final String m38093(HttpURLConnection httpURLConnection) {
        Throwable th;
        InputStreamReader inputStreamReader;
        String obj;
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                InputStream errorStream = httpURLConnection.getErrorStream();
                InputStream inputStream = errorStream;
                if (errorStream == null) {
                    inputStream = httpURLConnection.getInputStream();
                }
                inputStreamReader = new InputStreamReader(inputStream);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                    boolean z = false;
                    while (true) {
                        try {
                            boolean z2 = z;
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(z2 ? '\n' : "");
                            sb.append(readLine);
                            z = true;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            try {
                                StringBuilder sb2 = new StringBuilder("Could not read connection response from: ");
                                sb2.append(httpURLConnection.getURL().toString());
                                AFLogger.afErrorLog(sb2.toString(), th);
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                obj = sb.toString();
                                new JSONObject(obj);
                                return obj;
                            } catch (Throwable th3) {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Throwable th4) {
                                        AFLogger.afErrorLog(th4);
                                        throw th3;
                                    }
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                throw th3;
                            }
                        }
                    }
                    bufferedReader2.close();
                    inputStreamReader.close();
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                AFLogger.afErrorLog(th6);
            }
        } catch (Throwable th7) {
            th = th7;
            inputStreamReader = null;
        }
        obj = sb.toString();
        try {
            new JSONObject(obj);
            return obj;
        } catch (JSONException e) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("string_response", obj);
                return jSONObject.toString();
            } catch (JSONException e2) {
                return new JSONObject().toString();
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(150:2|(1:4)(1:5)|6|(1:8)|574|9|(3:11|(1:13)(1:14)|15)(1:16)|17|18|546|19|(1:21)|24|(9:592|25|(1:27)|28|29|(1:31)|32|33|(1:35))|38|39|(32:41|(10:43|(1:45)|46|47|(1:49)(1:50)|51|(1:55)|56|57|(1:59))|60|61|62|(1:64)(1:65)|66|(1:68)|69|(1:71)|72|73|74|(4:76|(1:78)(1:79)|80|81)|82|83|(1:85)|86|87|(1:89)|90|91|(1:93)|94|95|(1:99)|100|101|102|(1:104)|105|106)(10:107|108|556|109|(8:554|111|558|112|113|114|570|115)|568|119|120|572|121)|126|127|128|(1:134)|135|136|(1:138)|139|562|140|(1:142)|145|146|(1:150)|151|152|(1:160)|161|162|(1:164)(4:165|(3:167|(2:169|(1:171))|173)|172|173)|174|(1:176)|177|178|179|(4:181|(1:183)(5:184|185|(20:187|188|189|(1:191)|192|193|194|(1:196)|197|198|199|(1:201)|202|203|(1:205)|207|208|(2:210|(1:212)(1:213))|214|215)|216|(2:218|219))|220|(2:222|223))|224|(1:226)|227|228|(2:230|(1:232)(1:233))|234|(1:236)|237|(2:242|(2:533|534)(1:246))(1:241)|247|248|(1:250)|251|252|(1:254)(2:255|(1:257))|258|(2:260|(1:262))|263|264|(1:266)|267|268|(4:270|(1:272)|273|274)|275|276|(1:278)|279|280|(4:594|282|289|(1:291))|292|293|(1:295)(6:296|(1:327)(9:300|(11:596|302|303|598|304|(1:306)(2:307|(4:309|310|600|311))|330|(1:332)(1:333)|334|335|(1:355)(12:339|(3:579|341|(10:343|358|(1:360)(1:361)|362|363|(1:365)(1:366)|367|(3:369|(3:584|371|(6:373|374|590|375|376|(2:378|379)))|383)|384|(1:386))(12:344|(1:346)(1:347)|354|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|357|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|329|330|(0)(0)|334|335|(1:337)|355)|535|536|537|538)|548|387|388|(2:552|390)|394|544|395|398|566|399|402|560|403|406|407|408|564|409|412|542|413|414|588|415|416|(2:550|418)|420|421|582|422|423|581|424|577|425|426|427|575|428|436|437|438|(1:440)|441|(4:443|(1:445)|446|447)|448|(5:586|450|(1:452)(1:453)|454|455)|458|459|(2:461|(1:463)(1:464))|465|466|(1:468)|469|470|(1:472)(1:473)|474|(2:476|(2:478|(5:480|(1:482)(1:483)|484|485|486))(2:487|(1:489)))|490|491|(1:493)(1:494)|495|(8:497|(5:499|(1:501)|502|503|(1:505))|506|507|(1:509)|510|511|(4:513|(1:515)(2:516|(1:518))|519|520))|521|522|(1:524)|525|526|(1:528)|529|530|(1:532)|537|538|(2:(0)|(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(81:2|(1:4)(1:5)|6|(1:8)|(70:574|9|(3:11|(1:13)(1:14)|15)(1:16)|17|18|546|19|(1:21)|24|(9:592|25|(1:27)|28|29|(1:31)|32|33|(1:35))|38|39|(32:41|(10:43|(1:45)|46|47|(1:49)(1:50)|51|(1:55)|56|57|(1:59))|60|61|62|(1:64)(1:65)|66|(1:68)|69|(1:71)|72|73|74|(4:76|(1:78)(1:79)|80|81)|82|83|(1:85)|86|87|(1:89)|90|91|(1:93)|94|95|(1:99)|100|101|102|(1:104)|105|106)(10:107|108|556|109|(8:554|111|558|112|113|114|570|115)|568|119|120|572|121)|126|127|128|(1:134)|135|136|(1:138)|139|562|140|(1:142)|145|146|(1:150)|151|152|(1:160)|161|162|(1:164)(4:165|(3:167|(2:169|(1:171))|173)|172|173)|174|(1:176)|177|178|179|(4:181|(1:183)(5:184|185|(20:187|188|189|(1:191)|192|193|194|(1:196)|197|198|199|(1:201)|202|203|(1:205)|207|208|(2:210|(1:212)(1:213))|214|215)|216|(2:218|219))|220|(2:222|223))|224|(1:226)|227|228|(2:230|(1:232)(1:233))|234|(1:236)|237|(2:242|(2:533|534)(1:246))(1:241)|247|248|(1:250)|251|252|(1:254)(2:255|(1:257))|258|(2:260|(1:262))|263|264|(1:266)|267|268|(4:270|(1:272)|273|274)|275|276|(1:278)|279|280|(4:594|282|289|(1:291))|292|293)|(1:295)(6:296|(1:327)(9:300|(11:596|302|303|598|304|(1:306)(2:307|(4:309|310|600|311))|330|(1:332)(1:333)|334|335|(1:355)(12:339|(3:579|341|(10:343|358|(1:360)(1:361)|362|363|(1:365)(1:366)|367|(3:369|(3:584|371|(6:373|374|590|375|376|(2:378|379)))|383)|384|(1:386))(12:344|(1:346)(1:347)|354|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|357|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|329|330|(0)(0)|334|335|(1:337)|355)|535|536|537|538)|548|387|388|(2:552|390)|394|544|395|398|566|399|402|560|403|406|407|408|564|409|412|542|413|414|588|415|416|(2:550|418)|420|421|582|422|423|581|424|577|425|426|427|575|428|436|437|438|(1:440)|441|(4:443|(1:445)|446|447)|448|(5:586|450|(1:452)(1:453)|454|455)|458|459|(2:461|(1:463)(1:464))|465|466|(1:468)|469|470|(1:472)(1:473)|474|(2:476|(2:478|(5:480|(1:482)(1:483)|484|485|486))(2:487|(1:489)))|490|491|(1:493)(1:494)|495|(8:497|(5:499|(1:501)|502|503|(1:505))|506|507|(1:509)|510|511|(4:513|(1:515)(2:516|(1:518))|519|520))|521|522|(1:524)|525|526|(1:528)|529|530|(1:532)|537|538|(2:(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0690, code lost:
        if (r7 != null) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x09df, code lost:
        if (r7 != null) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x0aa9, code lost:
        if (r7 != null) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0bb8, code lost:
        r7 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0bed, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0bee, code lost:
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting display language name. ", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0c09, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x0c0a, code lost:
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting display language code. ", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0c25, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x0c26, code lost:
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting country name. ", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0c8e, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x0c90, code lost:
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting install date. ", r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x0d8e, code lost:
        r7 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:430:0x0d92, code lost:
        r7 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0d96, code lost:
        r7 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x0d9a, code lost:
        r7 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x0d9e, code lost:
        r7 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x0da2, code lost:
        r7 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x04f6 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0512 A[Catch: Exception -> 0x0521, all -> 0x13cd, TRY_ENTER, TRY_LEAVE, TryCatch #12 {Exception -> 0x0521, blocks: (B:140:0x0503, B:142:0x0512), top: B:562:0x0503, outer: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0536 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x055b A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x058a A[Catch: all -> 0x13cd, TRY_LEAVE, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0598 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x05ea A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0610 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x06fa A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0737 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x074a A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x076e A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x08cc A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:295:0x08ed A[Catch: all -> 0x13cd, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x08fe A[Catch: all -> 0x13cd, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:332:0x09eb A[Catch: all -> 0x13cd, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0a18 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0a39 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0ab5 A[Catch: all -> 0x13cd, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0ae2 A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0af9  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0aff  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0b0a A[Catch: all -> 0x13cd, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0b6d A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0dd9 A[Catch: all -> 0x13cd, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0dec A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0eb0 A[Catch: all -> 0x13cd, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0eed A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:472:0x0f46  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0f4c  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0f6c  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x100a  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x100d  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x106d A[Catch: all -> 0x13cd, TRY_ENTER, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:524:0x12f8 A[Catch: all -> 0x13cd, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:528:0x131b A[Catch: all -> 0x13cd, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:532:0x13b0 A[Catch: all -> 0x13cd, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x13cd, blocks: (B:9:0x0097, B:11:0x009e, B:15:0x00ba, B:16:0x00cc, B:17:0x00d2, B:19:0x00d7, B:21:0x00e0, B:23:0x00ec, B:25:0x00f4, B:27:0x0114, B:29:0x011b, B:31:0x0126, B:33:0x012d, B:35:0x0138, B:37:0x0142, B:39:0x014b, B:41:0x01c9, B:43:0x01d0, B:45:0x01d8, B:47:0x01eb, B:49:0x01f6, B:50:0x0204, B:53:0x0213, B:55:0x021b, B:57:0x022a, B:59:0x0230, B:61:0x023f, B:64:0x0262, B:66:0x0275, B:68:0x029e, B:71:0x02af, B:73:0x02be, B:76:0x02cd, B:78:0x02da, B:79:0x02eb, B:81:0x0300, B:83:0x032d, B:85:0x0335, B:87:0x0343, B:89:0x034d, B:91:0x035c, B:93:0x036a, B:95:0x0378, B:97:0x0384, B:99:0x0391, B:101:0x039f, B:104:0x03ae, B:106:0x03c0, B:107:0x03d2, B:109:0x03e0, B:111:0x03f0, B:112:0x03fa, B:113:0x03fd, B:115:0x0406, B:119:0x0461, B:121:0x0470, B:125:0x049c, B:128:0x04a7, B:132:0x04c5, B:134:0x04cf, B:135:0x04e8, B:136:0x04eb, B:138:0x04f6, B:140:0x0503, B:142:0x0512, B:144:0x0522, B:146:0x052b, B:148:0x0536, B:150:0x053d, B:152:0x054a, B:154:0x055b, B:160:0x056d, B:162:0x057a, B:164:0x058a, B:165:0x0598, B:167:0x059f, B:171:0x05b4, B:173:0x05c8, B:176:0x05ea, B:178:0x05fa, B:181:0x0610, B:183:0x061d, B:185:0x062f, B:187:0x0636, B:189:0x0642, B:191:0x0649, B:194:0x065e, B:196:0x0666, B:199:0x066f, B:201:0x0676, B:203:0x067f, B:205:0x0685, B:213:0x06a8, B:218:0x06c2, B:222:0x06e8, B:226:0x06fa, B:227:0x070a, B:228:0x070d, B:233:0x0724, B:236:0x0737, B:239:0x074a, B:241:0x0751, B:242:0x0760, B:244:0x076e, B:246:0x0775, B:247:0x0781, B:248:0x0784, B:250:0x078f, B:252:0x079d, B:254:0x07a8, B:255:0x07b7, B:257:0x07c5, B:260:0x07d9, B:262:0x07eb, B:263:0x07f8, B:264:0x07fb, B:266:0x0804, B:267:0x0818, B:268:0x081b, B:270:0x0826, B:272:0x082e, B:274:0x0855, B:275:0x085f, B:276:0x0862, B:278:0x086d, B:280:0x087b, B:284:0x08b2, B:288:0x08bf, B:291:0x08cc, B:292:0x08d8, B:293:0x08db, B:295:0x08ed, B:296:0x08fe, B:298:0x091e, B:300:0x0928, B:302:0x0933, B:304:0x0948, B:309:0x096f, B:311:0x0978, B:318:0x0998, B:320:0x09aa, B:324:0x09bb, B:326:0x09cd, B:327:0x09d9, B:332:0x09eb, B:333:0x0a18, B:335:0x0a20, B:337:0x0a39, B:339:0x0a43, B:341:0x0a4e, B:346:0x0a69, B:351:0x0a84, B:353:0x0a96, B:355:0x0aa3, B:360:0x0ab5, B:361:0x0ae2, B:362:0x0ae8, B:363:0x0aeb, B:369:0x0b0a, B:382:0x0b5e, B:386:0x0b6d, B:387:0x0b93, B:388:0x0b96, B:390:0x0ba5, B:393:0x0bb9, B:395:0x0bdb, B:397:0x0bee, B:399:0x0bf7, B:401:0x0c0a, B:403:0x0c13, B:405:0x0c26, B:407:0x0c2f, B:409:0x0c54, B:411:0x0c90, B:435:0x0da3, B:438:0x0daf, B:440:0x0dd9, B:443:0x0dec, B:445:0x0dfe, B:447:0x0e25, B:450:0x0e3b, B:452:0x0e5a, B:453:0x0e6c, B:455:0x0e7b, B:457:0x0e85, B:458:0x0ea4, B:459:0x0ea7, B:461:0x0eb0, B:463:0x0ec2, B:464:0x0ed3, B:466:0x0ee2, B:468:0x0eed, B:470:0x0f10, B:474:0x0f4f, B:480:0x0f7b, B:482:0x0f88, B:483:0x0f99, B:486:0x0fb1, B:487:0x0fde, B:489:0x0fed, B:491:0x1002, B:495:0x1010, B:497:0x106d, B:499:0x1074, B:501:0x108f, B:503:0x10ca, B:505:0x10d2, B:506:0x10de, B:507:0x10e1, B:509:0x1101, B:513:0x1116, B:515:0x1137, B:516:0x1147, B:518:0x1158, B:520:0x1166, B:522:0x116e, B:524:0x12f8, B:526:0x1312, B:528:0x131b, B:529:0x1332, B:530:0x1335, B:532:0x13b0, B:533:0x13bf, B:282:0x089c), top: B:574:0x0097, inners: #1, #2, #11, #12, #13, #15, #24, #28, #34, #35 }] */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0cc1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0ba5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0e3b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v835, types: [long] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r2v227 */
    /* JADX WARN: Type inference failed for: r7v62, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r7v66, types: [java.lang.Throwable] */
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> m38099(com.appsflyer.AFEvent r7) {
        /*
            Method dump skipped, instructions count: 5093
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m38099(com.appsflyer.AFEvent):java.util.Map");
    }

    /* renamed from: Ι */
    public final void m38071(Context context, Intent intent) {
        if (intent.getStringExtra("appsflyer_preinstall") != null) {
            getInstance();
            String stringExtra = intent.getStringExtra("appsflyer_preinstall");
            try {
                if (new JSONObject(stringExtra).has(Constants.URL_MEDIA_SOURCE)) {
                    AppsFlyerProperties.getInstance().set("preInstallName", stringExtra);
                } else {
                    AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
                }
            } catch (JSONException e) {
                AFLogger.afErrorLog("Error parsing JSON for preinstall", e);
            }
        }
        AFLogger.afInfoLog("****** onReceive called *******");
        AppsFlyerProperties.getInstance().setOnReceiveCalled();
        String stringExtra2 = intent.getStringExtra(Payload.RFR);
        AFLogger.afInfoLog("Play store referrer: ".concat(String.valueOf(stringExtra2)));
        if (stringExtra2 != null) {
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putString(Payload.RFR, stringExtra2);
            edit.apply();
            AppsFlyerProperties.getInstance().setReferrer(stringExtra2);
            if (!AppsFlyerProperties.getInstance().isFirstLaunchCalled()) {
                return;
            }
            AFLogger.afInfoLog("onReceive: isLaunchCalled");
            AFEvent weakContext = new BackgroundReferrerLaunch().context(context).m38161().weakContext();
            weakContext.f12698 = stringExtra2;
            weakContext.f12685 = intent;
            if (stringExtra2 == null || stringExtra2.length() <= 5 || !m38115(weakContext, getSharedPreferences(context))) {
                return;
            }
            m38079(AFExecutor.getInstance().m38158(), new RunnableC3389e(this, weakContext, (byte) 0), 5L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: ι */
    public final void m38064(Context context, String str) {
        if (m38106()) {
            AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
            return;
        }
        HashMap hashMap = new HashMap();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        if (string == null) {
            AFLogger.afWarnLog("[registerUninstall] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            hashMap.put("app_version_code", Integer.toString(packageInfo.versionCode));
            hashMap.put("app_version_name", packageInfo.versionName);
            hashMap.put("app_name", packageManager.getApplicationLabel(packageInfo.applicationInfo).toString());
            long j = packageInfo.firstInstallTime;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            hashMap.put("installDate", simpleDateFormat.format(new Date(j)));
        } catch (Throwable th) {
            AFLogger.afErrorLog("Exception while collecting application version info.", th);
        }
        m38101(context, hashMap);
        String string2 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string2 != null) {
            hashMap.put("appUserId", string2);
        }
        try {
            hashMap.put("model", Build.MODEL);
            hashMap.put("brand", Build.BRAND);
        } catch (Throwable th2) {
            AFLogger.afErrorLog("Exception while collecting device brand and model.", th2);
        }
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            hashMap.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
        }
        C3449y m37941 = C3447x.m37941(context.getContentResolver());
        if (m37941 != null) {
            hashMap.put("amazon_aid", m37941.f13013);
            hashMap.put("amazon_aid_limit", String.valueOf(m37941.m37940()));
        }
        String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string3 != null) {
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
        }
        hashMap.put("devkey", string);
        hashMap.put("uid", C3451z.m37938(new WeakReference(context)));
        hashMap.put("af_gcm_token", str);
        hashMap.put("launch_counter", Integer.toString(getLaunchCounter(getSharedPreferences(context), false)));
        hashMap.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        String configuredChannel = getConfiguredChannel(context);
        if (configuredChannel != null) {
            hashMap.put(AppsFlyerProperties.CHANNEL, configuredChannel);
        }
        try {
            AFEvent context2 = new UninstallTokenEvent().trackingStopped(isTrackingStopped()).params(hashMap).context(context);
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(REGISTER_URL));
            sb.append(packageName);
            new Thread(new RunnableC3446w((BackgroundEvent) context2.urlString(sb.toString()))).start();
        } catch (Throwable th3) {
            AFLogger.afErrorLog(th3.getMessage(), th3);
        }
    }
}
