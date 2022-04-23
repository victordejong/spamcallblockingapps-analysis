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
import com.amazonaws.services.s3.util.Mimetypes;
import com.appsflyer.AFFacebookDeferredDeeplink;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.Foreground;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.attribution.RequestError;
import com.appsflyer.internal.EventDataCollector;
import com.appsflyer.internal.Exlytics;
import com.appsflyer.internal.aa;
import com.appsflyer.internal.ab;
import com.appsflyer.internal.ac;
import com.appsflyer.internal.ad;
import com.appsflyer.internal.ae;
import com.appsflyer.internal.af;
import com.appsflyer.internal.ag;
import com.appsflyer.internal.ah;
import com.appsflyer.internal.attribution.RequestErrorMessage;
import com.appsflyer.internal.i;
import com.appsflyer.internal.model.event.AdRevenue;
import com.appsflyer.internal.model.event.Attr;
import com.appsflyer.internal.model.event.BackgroundEvent;
import com.appsflyer.internal.model.event.BackgroundReferrerLaunch;
import com.appsflyer.internal.model.event.CachedEvent;
import com.appsflyer.internal.model.event.InAppEvent;
import com.appsflyer.internal.model.event.Launch;
import com.appsflyer.internal.model.event.Stats;
import com.appsflyer.internal.model.event.UninstallTokenEvent;
import com.appsflyer.internal.q;
import com.appsflyer.internal.referrer.GoogleReferrer;
import com.appsflyer.internal.referrer.HuaweiReferrer;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.internal.referrer.Referrer;
import com.appsflyer.internal.t;
import com.appsflyer.internal.u;
import com.appsflyer.internal.w;
import com.appsflyer.internal.x;
import com.appsflyer.internal.y;
import com.appsflyer.internal.z;
import com.appsflyer.share.Constants;
import com.facebook.AccessToken;
import com.google.android.gms.common.b;
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

    /* renamed from: Ɩ  reason: contains not printable characters */
    private static final String f76;

    /* renamed from: ǃ  reason: contains not printable characters */
    static final String f77 = "5.4";

    /* renamed from: ɪ  reason: contains not printable characters */
    private static String f80;

    /* renamed from: ɾ  reason: contains not printable characters */
    private static String f81;

    /* renamed from: Ι  reason: contains not printable characters */
    public static final String f82 = "74";

    /* renamed from: І  reason: contains not printable characters */
    private static String f83 = "https://%sstats.%s/stats";

    /* renamed from: і  reason: contains not printable characters */
    private static final String f84;

    /* renamed from: Ӏ  reason: contains not printable characters */
    private static String f85;

    /* renamed from: ł  reason: contains not printable characters */
    private GoogleReferrer f87;

    /* renamed from: ſ  reason: contains not printable characters */
    private long f88;

    /* renamed from: Ɨ  reason: contains not printable characters */
    private long f89;

    /* renamed from: ƚ  reason: contains not printable characters */
    private String f90;

    /* renamed from: ɟ  reason: contains not printable characters */
    private Map<Long, String> f94;

    /* renamed from: ɩ  reason: contains not printable characters */
    public String f95;

    /* renamed from: ɭ  reason: contains not printable characters */
    private String[] f96;

    /* renamed from: ɹ  reason: contains not printable characters */
    long f97;

    /* renamed from: ɺ  reason: contains not printable characters */
    private boolean f98;

    /* renamed from: ɼ  reason: contains not printable characters */
    private boolean f99;

    /* renamed from: ͻ  reason: contains not printable characters */
    private Map<String, Object> f103;

    /* renamed from: ι  reason: contains not printable characters */
    public String f104;

    /* renamed from: ϲ  reason: contains not printable characters */
    private Map<String, Object> f105;

    /* renamed from: ϳ  reason: contains not printable characters */
    private Application f106;

    /* renamed from: х  reason: contains not printable characters */
    private String f111;

    /* renamed from: ј  reason: contains not printable characters */
    private SharedPreferences f112;

    /* renamed from: ӏ  reason: contains not printable characters */
    private String f114;

    /* renamed from: ɨ  reason: contains not printable characters */
    private static final List<String> f79 = Arrays.asList("is_cache");

    /* renamed from: ı  reason: contains not printable characters */
    static AppsFlyerInAppPurchaseValidatorListener f75 = null;

    /* renamed from: ȷ  reason: contains not printable characters */
    private static AppsFlyerConversionListener f78 = null;
    public static AppsFlyerLibCore instance = new AppsFlyerLibCore();
    protected Intent pluginDeeplinkIntent = null;

    /* renamed from: ʟ  reason: contains not printable characters */
    private long f102 = -1;

    /* renamed from: ɿ  reason: contains not printable characters */
    private long f100 = -1;

    /* renamed from: ŀ  reason: contains not printable characters */
    private long f86 = TimeUnit.SECONDS.toMillis(5);

    /* renamed from: г  reason: contains not printable characters */
    private boolean f108 = false;

    /* renamed from: ɍ  reason: contains not printable characters */
    private ScheduledExecutorService f92 = null;

    /* renamed from: ʅ  reason: contains not printable characters */
    private boolean f101 = false;

    /* renamed from: ǀ  reason: contains not printable characters */
    private ah f91 = new ah();

    /* renamed from: ɔ  reason: contains not printable characters */
    private boolean f93 = false;

    /* renamed from: с  reason: contains not printable characters */
    private boolean f109 = false;

    /* renamed from: Ј  reason: contains not printable characters */
    private boolean f107 = false;

    /* renamed from: ґ  reason: contains not printable characters */
    private boolean f113 = false;

    /* renamed from: т  reason: contains not printable characters */
    private final HuaweiReferrer f110 = new HuaweiReferrer();

    /* renamed from: com.appsflyer.AppsFlyerLibCore$10  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$10.class */
    static final /* synthetic */ class AnonymousClass10 {

        /* renamed from: ǃ  reason: contains not printable characters */
        static final /* synthetic */ int[] f119;

        /* renamed from: ɩ  reason: contains not printable characters */
        static final /* synthetic */ int[] f120;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[Referrer.State.values().length];
            f120 = iArr;
            try {
                iArr[Referrer.State.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f120[Referrer.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[AppsFlyerProperties.EmailsCryptType.values().length];
            f119 = iArr2;
            try {
                iArr2[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f119[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher.class */
    public static class InstallAttributionIdFetcher implements Runnable {

        /* renamed from: ǃ  reason: contains not printable characters */
        private static String f132 = "https://%sgcdsdk.%s/install_data/v4.0/";

        /* renamed from: ι  reason: contains not printable characters */
        private static final List<String> f133 = Arrays.asList("googleplay", "playstore", "googleplaystore");

        /* renamed from: ı  reason: contains not printable characters */
        private final String f134;

        /* renamed from: ɩ  reason: contains not printable characters */
        private final Application f135;

        /* renamed from: Ι  reason: contains not printable characters */
        final ScheduledExecutorService f136;

        /* renamed from: І  reason: contains not printable characters */
        private final int f137;

        /* renamed from: і  reason: contains not printable characters */
        private final AtomicInteger f138;

        /* renamed from: Ӏ  reason: contains not printable characters */
        private AppsFlyerLibCore f139;

        private InstallAttributionIdFetcher(InstallAttributionIdFetcher installAttributionIdFetcher) {
            this.f136 = AFExecutor.getInstance().m783();
            this.f138 = new AtomicInteger(0);
            this.f139 = installAttributionIdFetcher.f139;
            this.f135 = installAttributionIdFetcher.f135;
            this.f134 = installAttributionIdFetcher.f134;
            this.f137 = installAttributionIdFetcher.f137 + 1;
        }

        private InstallAttributionIdFetcher(AppsFlyerLibCore appsFlyerLibCore, Application application, String str) {
            this.f136 = AFExecutor.getInstance().m783();
            this.f138 = new AtomicInteger(0);
            this.f139 = appsFlyerLibCore;
            this.f135 = application;
            this.f134 = str;
            this.f137 = 0;
        }

        /* synthetic */ InstallAttributionIdFetcher(AppsFlyerLibCore appsFlyerLibCore, Application application, String str, byte b2) {
            this(appsFlyerLibCore, application, str);
        }

        public static void setUrl(Map<String, String> map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if ("gcdsdk".equals(entry.getKey())) {
                    f132 = entry.getValue();
                }
            }
        }

        /* renamed from: ı  reason: contains not printable characters */
        static /* synthetic */ void m907(String str) {
            if (AppsFlyerLibCore.f78 != null) {
                AFLogger.afDebugLog("[GCD-A02] Calling onConversionFailure with:\n".concat(String.valueOf(str)));
                AppsFlyerLibCore.f78.onConversionDataFail(str);
            }
        }

        /* renamed from: ι  reason: contains not printable characters */
        static /* synthetic */ void m908(Map map) {
            StringBuilder sb = new StringBuilder("[GCD-A02] Calling onConversionDataSuccess with:\n");
            sb.append(map.toString());
            AFLogger.afDebugLog(sb.toString());
            AppsFlyerLibCore.f78.onConversionDataSuccess(map);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:21|(2:23|(12:25|29|30|120|31|32|(2:46|(16:48|49|(1:51)|52|(1:56)|57|58|(2:60|(1:62)(1:63))|64|65|(1:67)|68|69|(1:71)(1:72)|73|(7:118|78|(1:80)|81|82|85|86)))(2:36|(1:42)(2:43|(1:45)))|87|88|(1:90)|106|107)(1:26))|27|28|29|30|120|31|32|(1:34)|46|(0)|87|88|(0)|106|107) */
        /* JADX WARN: Code restructure failed: missing block: B:100:0x040a, code lost:
            com.appsflyer.AFLogger.afDebugLog("[GCD-A02] Calling onConversionFailure with:\n".concat(java.lang.String.valueOf(r0)));
            com.appsflyer.AppsFlyerLibCore.f78.onConversionDataFail(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0422, code lost:
            com.appsflyer.AFLogger.afErrorLog(r11.getMessage(), r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x042a, code lost:
            r8.f138.decrementAndGet();
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x0432, code lost:
            if (r9 != null) goto L_0x0435;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x0435, code lost:
            r9.disconnect();
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0449, code lost:
            r11 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x044a, code lost:
            r8.f138.decrementAndGet();
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0453, code lost:
            if (r9 != null) goto L_0x0456;
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
            if (r8.f137 < 2) goto L_0x03e3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x03e3, code lost:
            r0 = new com.appsflyer.AppsFlyerLibCore.InstallAttributionIdFetcher(r8);
            com.appsflyer.AppsFlyerLibCore.m861(r0.f136, r0, 10, java.util.concurrent.TimeUnit.MILLISECONDS);
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x03fe, code lost:
            r0 = r11.getMessage();
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0407, code lost:
            if (com.appsflyer.AppsFlyerLibCore.f78 != null) goto L_0x040a;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$c.class */
    public final class c implements Runnable {

        /* renamed from: Ι  reason: contains not printable characters */
        private final AFEvent f140;

        private c(AFEvent aFEvent) {
            this.f140 = aFEvent.weakContext();
        }

        /* synthetic */ c(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b2) {
            this(aFEvent);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:143:0x0459  */
        /* JADX WARN: Type inference failed for: r13v17 */
        /* JADX WARN: Type inference failed for: r13v21 */
        /* JADX WARN: Type inference failed for: r13v22 */
        /* JADX WARN: Type inference failed for: r13v35 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v5 */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Type inference failed for: r13v7, types: [java.lang.Throwable, java.io.IOException] */
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
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.c.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$d.class */
    public final class d implements Runnable {

        /* renamed from: ǃ  reason: contains not printable characters */
        private WeakReference<Context> f143;

        public d(Context context) {
            this.f143 = null;
            this.f143 = new WeakReference<>(context);
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Runnable
        public final void run() {
            if (!AppsFlyerLibCore.this.f108) {
                AppsFlyerLibCore.this.f97 = System.currentTimeMillis();
                if (this.f143 != null) {
                    AppsFlyerLibCore.this.f108 = true;
                    try {
                        try {
                            String str = AppsFlyerLibCore.m870(AppsFlyerProperties.AF_KEY);
                            synchronized (this.f143) {
                                aa.m921();
                                for (i iVar : aa.m925(this.f143.get())) {
                                    StringBuilder sb = new StringBuilder("resending request: ");
                                    sb.append(iVar.f290);
                                    AFLogger.afInfoLog(sb.toString());
                                    try {
                                        long currentTimeMillis = System.currentTimeMillis();
                                        long parseLong = Long.parseLong(iVar.f291, 10);
                                        AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                                        CachedEvent cachedEvent = new CachedEvent();
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(iVar.f290);
                                        sb2.append("&isCachedRequest=true&timeincache=");
                                        sb2.append((currentTimeMillis - parseLong) / 1000);
                                        AFEvent key = cachedEvent.urlString(sb2.toString()).post(iVar.m1006()).key(str);
                                        key.f12 = this.f143;
                                        key.f14 = iVar.f291;
                                        key.f15 = false;
                                        AppsFlyerLibCore.m846(appsFlyerLibCore, key);
                                    } catch (Exception e) {
                                        AFLogger.afErrorLog("Failed to resend cached request", e);
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            AFLogger.afErrorLog("failed to check cache. ", e2);
                        }
                        AppsFlyerLibCore.this.f108 = false;
                        AppsFlyerLibCore.this.f92.shutdown();
                        AppsFlyerLibCore.this.f92 = null;
                    } catch (Throwable th) {
                        AppsFlyerLibCore.this.f108 = false;
                        throw th;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$e.class */
    public final class e implements Runnable {

        /* renamed from: ǃ  reason: contains not printable characters */
        private AFEvent f144;

        private e(AFEvent aFEvent) {
            this.f144 = aFEvent;
        }

        /* synthetic */ e(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b2) {
            this(aFEvent);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
            AFEvent aFEvent = this.f144;
            aFEvent.f18 = aFEvent.f12.get();
            appsFlyerLibCore.m881(aFEvent);
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(f77);
        sb.append("/androidevent?buildnumber=5.4.6&app_id=");
        String obj = sb.toString();
        f76 = obj;
        StringBuilder sb2 = new StringBuilder("https://%sregister.%s/api/v");
        sb2.append(obj);
        REGISTER_URL = sb2.toString();
        StringBuilder sb3 = new StringBuilder("https://%sadrevenue.%s/api/v");
        sb3.append(f77);
        sb3.append("/android?buildnumber=5.4.6&app_id=");
        f85 = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(f77);
        sb4.append("/androidevent?app_id=");
        String obj2 = sb4.toString();
        f84 = obj2;
        StringBuilder sb5 = new StringBuilder("https://%sconversions.%s/api/v");
        sb5.append(obj2);
        FIRST_LAUNCHES_URL = sb5.toString();
        StringBuilder sb6 = new StringBuilder("https://%slaunches.%s/api/v");
        sb6.append(obj2);
        f81 = sb6.toString();
        StringBuilder sb7 = new StringBuilder("https://%sinapps.%s/api/v");
        sb7.append(obj2);
        f80 = sb7.toString();
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
        if (getInstance().f112 == null) {
            getInstance().f112 = context.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
        }
        return getInstance().f112;
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            char c2 = 65535;
            switch (key.hashCode()) {
                case -1407250527:
                    if (key.equals("launches")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1184318185:
                    if (key.equals("inapps")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1084269027:
                    if (key.equals("conversions")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -690213213:
                    if (key.equals("register")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3004913:
                    if (key.equals("attr")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 57793177:
                    if (key.equals("adrevenue")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 109757599:
                    if (key.equals("stats")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    FIRST_LAUNCHES_URL = value;
                    break;
                case 1:
                    REFERRER_TRACKING_URL = value;
                    break;
                case 2:
                    f81 = value;
                    break;
                case 3:
                    f80 = value;
                    break;
                case 4:
                    REGISTER_URL = value;
                    break;
                case 5:
                    f83 = value;
                    break;
                case 6:
                    f85 = value;
                    break;
            }
        }
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static String m827(String str) {
        String str2 = null;
        try {
            str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
        }
        return str2;
    }

    /* renamed from: ı  reason: contains not printable characters */
    private void m829(Context context) {
        this.f105 = new HashMap();
        final long currentTimeMillis = System.currentTimeMillis();
        final AFFacebookDeferredDeeplink.AppLinkFetchEvents appLinkFetchEvents = new AFFacebookDeferredDeeplink.AppLinkFetchEvents() { // from class: com.appsflyer.AppsFlyerLibCore.4
            @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
            public final void onAppLinkFetchFailed(String str) {
                AppsFlyerLibCore.this.f105.put("error", str);
            }

            @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
            public final void onAppLinkFetchFinished(String str, String str2, String str3) {
                if (str != null) {
                    AFLogger.afInfoLog("Facebook Deferred AppLink data received: ".concat(String.valueOf(str)));
                    AppsFlyerLibCore.this.f105.put("link", str);
                    if (str2 != null) {
                        AppsFlyerLibCore.this.f105.put("target_url", str2);
                    }
                    if (str3 != null) {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put("promo_code", str3);
                        hashMap.put("deeplink_context", hashMap2);
                        AppsFlyerLibCore.this.f105.put("extras", hashMap);
                    }
                } else {
                    AppsFlyerLibCore.this.f105.put("link", "");
                }
                AppsFlyerLibCore.this.f105.put("ttr", String.valueOf(System.currentTimeMillis() - currentTimeMillis));
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
                    } else if (objArr[0] != null) {
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
                        AppLinkFetchEvents appLinkFetchEvents3 = appLinkFetchEvents;
                        if (appLinkFetchEvents3 == null) {
                            return null;
                        }
                        appLinkFetchEvents3.onAppLinkFetchFinished(str, str2, str3);
                        return null;
                    } else {
                        AppLinkFetchEvents appLinkFetchEvents4 = appLinkFetchEvents;
                        if (appLinkFetchEvents4 == null) {
                            return null;
                        }
                        appLinkFetchEvents4.onAppLinkFetchFinished(null, null, null);
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
        } catch (ClassNotFoundException e2) {
            appLinkFetchEvents.onAppLinkFetchFailed(e2.toString());
        } catch (IllegalAccessException e3) {
            appLinkFetchEvents.onAppLinkFetchFailed(e3.toString());
        } catch (NoSuchMethodException e4) {
            appLinkFetchEvents.onAppLinkFetchFailed(e4.toString());
        } catch (InvocationTargetException e5) {
            appLinkFetchEvents.onAppLinkFetchFailed(e5.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ı  reason: contains not printable characters */
    public static void m830(Context context, String str) {
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
                m834(jSONObject);
            }
            jSONObject.put(str, jSONArray.toString());
            String jSONObject2 = jSONObject.toString();
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putString("extraReferrers", jSONObject2);
            edit.apply();
        } catch (JSONException e2) {
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Couldn't save referrer - ");
            sb.append(str);
            sb.append(": ");
            AFLogger.afErrorLog(sb.toString(), th);
        }
    }

    /* renamed from: ı  reason: contains not printable characters */
    static /* synthetic */ void m831(Context context, String str, String str2) {
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static void m832(Context context, Map<String, Object> map) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            map.put("sc_o", rotation != 0 ? rotation != 1 ? rotation != 2 ? rotation != 3 ? "" : "lr" : "pr" : "l" : "p");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ı  reason: contains not printable characters */
    public static void m833(Map<String, String> map) {
        if (f78 != null) {
            try {
                StringBuilder sb = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb.append(map.toString());
                AFLogger.afDebugLog(sb.toString());
                f78.onAppOpenAttribution(map);
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getLocalizedMessage(), th);
            }
        }
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static void m834(JSONObject jSONObject) {
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = jSONObject.keys();
        while (true) {
            if (!keys.hasNext()) {
                break;
            }
            try {
                JSONArray jSONArray = new JSONArray((String) jSONObject.get(keys.next()));
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(Long.valueOf(jSONArray.getLong(i)));
                }
            } catch (JSONException e2) {
            }
        }
        Collections.sort(arrayList);
        Iterator<String> keys2 = jSONObject.keys();
        loop2: while (true) {
            str = null;
            while (keys2.hasNext() && str == null) {
                String next = keys2.next();
                try {
                    JSONArray jSONArray2 = new JSONArray((String) jSONObject.get(next));
                    int i2 = 0;
                    str = str;
                    while (i2 < jSONArray2.length()) {
                        if (jSONArray2.getLong(i2) != ((Long) arrayList.get(0)).longValue() && jSONArray2.getLong(i2) != ((Long) arrayList.get(1)).longValue() && jSONArray2.getLong(i2) != ((Long) arrayList.get(arrayList.size() - 1)).longValue()) {
                            i2++;
                            str = next;
                        }
                    }
                    continue;
                } catch (JSONException e3) {
                    str = str;
                }
            }
        }
        if (str != null) {
            jSONObject.remove(str);
        }
    }

    /* renamed from: ı  reason: contains not printable characters */
    private boolean m835(AFEvent aFEvent, SharedPreferences sharedPreferences) {
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        return (!sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false) && launchCounter == 1) || (launchCounter == 1 && !(aFEvent instanceof Attr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ɩ  reason: contains not printable characters */
    public static Map<String, Object> m837(Context context) throws u {
        String string = getSharedPreferences(context).getString("attributionId", null);
        if (string != null && string.length() > 0) {
            return m858(string);
        }
        throw new u();
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static File m840(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (str.trim().length() > 0) {
                return new File(str.trim());
            }
            return null;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ǃ  reason: contains not printable characters */
    public static String m841(Context context, String str) {
        SharedPreferences sharedPreferences = getSharedPreferences(context);
        if (sharedPreferences.contains("CACHED_CHANNEL")) {
            return sharedPreferences.getString("CACHED_CHANNEL", null);
        }
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putString("CACHED_CHANNEL", str);
        edit.apply();
        return str;
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static void m842(Context context) {
        int i;
        if (AndroidUtils.m820()) {
            i = 23;
            AFLogger.afRDLog("OPPO device found");
        } else {
            i = 18;
        }
        if (Build.VERSION.SDK_INT < i || m850(AppsFlyerProperties.DISABLE_KEYSTORE, true)) {
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
        if (!aFKeystoreWrapper.m789()) {
            aFKeystoreWrapper.f34 = z.m1038(new WeakReference(context));
            aFKeystoreWrapper.f32 = 0;
            aFKeystoreWrapper.m788(aFKeystoreWrapper.m786());
        } else {
            String str = aFKeystoreWrapper.m786();
            synchronized (aFKeystoreWrapper.f36) {
                aFKeystoreWrapper.f32++;
                AFLogger.afInfoLog("Deleting key with alias: ".concat(String.valueOf(str)));
                try {
                    synchronized (aFKeystoreWrapper.f36) {
                        aFKeystoreWrapper.f33.deleteEntry(str);
                    }
                } catch (KeyStoreException e2) {
                    StringBuilder sb3 = new StringBuilder("Exception ");
                    sb3.append(e2.getMessage());
                    sb3.append(" occurred");
                    AFLogger.afErrorLog(sb3.toString(), e2);
                }
            }
            aFKeystoreWrapper.m788(aFKeystoreWrapper.m786());
        }
        AppsFlyerProperties.getInstance().set("KSAppsFlyerId", aFKeystoreWrapper.m787());
        AppsFlyerProperties.getInstance().set("KSAppsFlyerRICounter", String.valueOf(aFKeystoreWrapper.m790()));
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private void m844(Context context, String str, String str2, Intent intent) {
        AFEvent context2 = new Launch().context(context);
        context2.f21 = null;
        AFEvent key = context2.key(str);
        key.f7 = null;
        key.f22 = str2;
        key.f9 = intent;
        key.f19 = null;
        m860(key);
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static void m845(Context context, Map<String, ? super String> map) {
        t tVar = t.d.f330;
        t.c cVar = t.m1025(context);
        map.put("network", cVar.f327);
        if (cVar.f328 != null) {
            map.put("operator", cVar.f328);
        }
        if (cVar.f329 != null) {
            map.put("carrier", cVar.f329);
        }
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    static /* synthetic */ void m846(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent) throws IOException {
        String str;
        StringBuilder sb = new StringBuilder("url: ");
        sb.append(aFEvent.urlString());
        AFLogger.afInfoLog(sb.toString());
        if (aFEvent.f14 != null) {
            str = Base64.encodeToString(aFEvent.m779(), 2);
            AFLogger.afInfoLog("cached data: ".concat(String.valueOf(str)));
        } else {
            String jSONObject = new JSONObject(aFEvent.params()).toString();
            String replaceAll = jSONObject.replaceAll("\\p{C}", "*Non-printing character*");
            str = jSONObject;
            if (!replaceAll.equals(jSONObject)) {
                AFLogger.afWarnLog("Payload contains non-printing characters");
                str = replaceAll;
            }
            ag.m956("data: ".concat(String.valueOf(str)));
        }
        ae.m938().m948("server_request", aFEvent.urlString(), str);
        try {
            appsFlyerLibCore.m872(aFEvent);
        } catch (IOException e2) {
            AFLogger.afErrorLog("Exception in sendRequestToServer. ", e2);
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.USE_HTTP_FALLBACK, false)) {
                appsFlyerLibCore.m872(aFEvent.urlString(aFEvent.urlString().replace("https:", "http:")));
                return;
            }
            StringBuilder sb2 = new StringBuilder("failed to send request to server. ");
            sb2.append(e2.getLocalizedMessage());
            AFLogger.afInfoLog(sb2.toString());
            throw e2;
        }
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static boolean m848() {
        return m850(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false) && AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID) == null;
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    public static boolean m849(SharedPreferences sharedPreferences) {
        return Boolean.parseBoolean(sharedPreferences.getString("sentSuccessfully", null));
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static boolean m850(String str, boolean z) {
        return AppsFlyerProperties.getInstance().getBoolean(str, z);
    }

    /* renamed from: ȷ  reason: contains not printable characters */
    private static boolean m852(Context context) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
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
        } else if (Build.VERSION.SDK_INT < 16) {
            return false;
        } else {
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
            } catch (Exception e3) {
                AFLogger.afErrorLog("Failed collecting ivc data", e3);
                return false;
            }
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static int m853(SharedPreferences sharedPreferences, String str, boolean z) {
        int i = sharedPreferences.getInt(str, 0);
        int i2 = i;
        if (z) {
            i2 = i + 1;
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putInt(str, i2);
            edit.apply();
        }
        if (ae.m938().m952()) {
            ae.m938().m947(String.valueOf(i2));
        }
        return i2;
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static String m855(String str, PackageManager packageManager, String str2) {
        Object obj;
        try {
            Bundle bundle = ((PackageItemInfo) packageManager.getApplicationInfo(str2, 128)).metaData;
            if (bundle == null || (obj = bundle.get(str)) == null) {
                return null;
            }
            return obj.toString();
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Could not find ");
            sb.append(str);
            sb.append(" value in the manifest");
            AFLogger.afErrorLog(sb.toString(), th);
            return null;
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static String m856(SimpleDateFormat simpleDateFormat, Context context) {
        String str;
        String string = getSharedPreferences(context).getString("appsFlyerFirstInstall", null);
        String str2 = string;
        if (string == null) {
            if (m867(context)) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ɩ  reason: contains not printable characters */
    public static Map<String, Object> m858(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!f79.contains(next)) {
                    hashMap.put(next, jSONObject.isNull(next) ? null : jSONObject.get(next));
                }
            }
            return hashMap;
        } catch (JSONException e2) {
            AFLogger.afErrorLog(e2.getMessage(), e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ɩ  reason: contains not printable characters */
    public static void m859(Context context, String str, long j) {
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putLong(str, j);
        edit.apply();
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private void m860(AFEvent aFEvent) {
        aFEvent.m780();
        boolean z = aFEvent.f21 == null;
        if (m848()) {
            AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
            return;
        }
        if (z) {
            if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, true)) {
                AFLogger.afInfoLog("Allowing multiple launches within a 5 second time window.");
            } else if (m863()) {
                AppsFlyerRequestListener requestListener = aFEvent.getRequestListener();
                if (requestListener != null) {
                    requestListener.onError(RequestError.EVENT_TIMEOUT, RequestErrorMessage.EVENT_TIMEOUT);
                    return;
                }
                return;
            }
            this.f102 = System.currentTimeMillis();
        }
        m861(AFExecutor.getInstance().m783(), new e(this, aFEvent.weakContext(), (byte) 0), 0L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ɩ  reason: contains not printable characters */
    public static void m861(ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j, TimeUnit timeUnit) {
        if (scheduledExecutorService != null) {
            try {
                if (!scheduledExecutorService.isShutdown() && !scheduledExecutorService.isTerminated()) {
                    scheduledExecutorService.schedule(runnable, j, timeUnit);
                    return;
                }
            } catch (RejectedExecutionException e2) {
                AFLogger.afErrorLog("scheduleJob failed with RejectedExecutionException Exception", e2);
                return;
            } catch (Throwable th) {
                AFLogger.afErrorLog("scheduleJob failed with Exception", th);
                return;
            }
        }
        AFLogger.afWarnLog("scheduler is null, shut downed or terminated");
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private boolean m863() {
        if (this.f102 > 0) {
            long currentTimeMillis = System.currentTimeMillis() - this.f102;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", Locale.US);
            long j = this.f102;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String format = simpleDateFormat.format(new Date(j));
            long j2 = this.f100;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String format2 = simpleDateFormat.format(new Date(j2));
            if (currentTimeMillis < this.f86 && !isTrackingStopped()) {
                AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", format, format2, Long.valueOf(currentTimeMillis), Long.valueOf(this.f86)));
                return true;
            } else if (isTrackingStopped()) {
                return false;
            } else {
                AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", format, format2, Long.valueOf(currentTimeMillis)));
                return false;
            }
        } else if (isTrackingStopped()) {
            return false;
        } else {
            AFLogger.afInfoLog("Sending first launch for this session!");
            return false;
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private boolean m864(Context context) {
        try {
            Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
            final long currentTimeMillis = System.currentTimeMillis();
            this.f103 = new ConcurrentHashMap();
            final q.a aVar = new q.a() { // from class: com.appsflyer.AppsFlyerLibCore.2
                @Override // com.appsflyer.internal.q.a
                /* renamed from: ǃ  reason: contains not printable characters */
                public final void mo901(String str, Exception exc) {
                    String message = exc.getMessage();
                    String str2 = message;
                    if (message == null) {
                        str2 = "unknown";
                    }
                    AppsFlyerLibCore.this.f103.put("error", str2);
                    AFLogger.afErrorLog(str, exc, true);
                }

                @Override // com.appsflyer.internal.q.a
                /* renamed from: ɩ  reason: contains not printable characters */
                public final void mo902(String str, String str2) {
                    AppsFlyerLibCore.this.f103.put("signedData", str);
                    AppsFlyerLibCore.this.f103.put("signature", str2);
                    AppsFlyerLibCore.this.f103.put("ttr", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
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
                                a aVar2 = aVar;
                                if (aVar2 == null) {
                                    AFLogger.afDebugLog("onLvlResult invocation succeeded, but listener is null");
                                    return null;
                                } else if (str != null && str2 != null) {
                                    aVar2.mo902(str, str2);
                                    return null;
                                } else if (str2 == null) {
                                    aVar2.mo901("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                                    return null;
                                } else {
                                    aVar2.mo901("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                                    return null;
                                }
                            } else if (method.getName().equals("onLvlFailure")) {
                                a aVar3 = aVar;
                                if (aVar3 == null) {
                                    AFLogger.afDebugLog("onLvlFailure: listener is null");
                                    return null;
                                } else if (objArr[0] != null) {
                                    aVar3.mo901("onLvlFailure with exception", (Exception) objArr[0]);
                                    return null;
                                } else {
                                    aVar3.mo901("onLvlFailure", new Exception("unknown"));
                                    return null;
                                }
                            } else {
                                a aVar4 = aVar;
                                if (aVar4 == null) {
                                    return null;
                                }
                                aVar4.mo901("lvlInvocation failed", new Exception("com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"));
                                return null;
                            }
                        }
                    }));
                    return true;
                } catch (IllegalAccessException e2) {
                    aVar.mo901(e2.getClass().getSimpleName(), e2);
                    return true;
                } catch (InvocationTargetException e3) {
                    aVar.mo901(e3.getClass().getSimpleName(), e3);
                    return true;
                }
            } catch (ClassNotFoundException e4) {
                aVar.mo901(e4.getClass().getSimpleName(), e4);
                return true;
            } catch (NoSuchMethodException e5) {
                aVar.mo901(e5.getClass().getSimpleName(), e5);
                return true;
            }
        } catch (ClassNotFoundException e6) {
            return false;
        }
    }

    /* renamed from: ɪ  reason: contains not printable characters */
    private static float m865(Context context) {
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

    /* renamed from: ɹ  reason: contains not printable characters */
    private static boolean m867(Context context) {
        return !getSharedPreferences(context).contains("appsFlyerCount");
    }

    /* renamed from: Ι  reason: contains not printable characters */
    static /* synthetic */ String m870(String str) {
        return AppsFlyerProperties.getInstance().getString(str);
    }

    /* renamed from: Ι  reason: contains not printable characters */
    private static void m871(Context context) {
        try {
            if ((context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.flags & 32768) == 0) {
                return;
            }
            if (context.getResources().getIdentifier("appsflyer_backup_rules", "xml", context.getPackageName()) != 0) {
                AFLogger.afInfoLog("appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
            } else {
                AFLogger.m793("'allowBackup' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules");
            }
        } catch (Exception e2) {
            StringBuilder sb = new StringBuilder("checkBackupRules Exception: ");
            sb.append(e2.toString());
            AFLogger.afRDLog(sb.toString());
        }
    }

    /* renamed from: Ι  reason: contains not printable characters */
    private void m872(AFEvent aFEvent) throws IOException {
        long j;
        HttpURLConnection httpURLConnection;
        Throwable th;
        Throwable th2;
        DataOutputStream dataOutputStream;
        URL url = new URL(aFEvent.f8);
        byte[] bArr = aFEvent.m779();
        String key = aFEvent.key();
        String str = aFEvent.f14;
        boolean z = aFEvent.m781();
        Context context = aFEvent.context();
        AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener = aFEvent.f17;
        AppsFlyerRequestListener requestListener = aFEvent.getRequestListener();
        boolean z2 = z && f78 != null;
        boolean z3 = z && aFEvent.f23 == 1;
        if (z3) {
            new EventDataCollector(context).set(ServerParameters.FIRST_LAUNCH_COLLECTION, System.currentTimeMillis() - this.f88);
            j = System.currentTimeMillis();
        } else {
            j = 0;
        }
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bArr.length));
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
                    dataOutputStream2.write(bArr);
                    dataOutputStream2.close();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (z3) {
                        new EventDataCollector(context).set(ServerParameters.FIRST_LAUNCH_NETWORKING, System.currentTimeMillis() - j);
                    }
                    String str2 = m896(httpURLConnection);
                    ae.m938().m948("server_response", url.toString(), String.valueOf(responseCode), str2);
                    AFLogger.afInfoLog("response code: ".concat(String.valueOf(responseCode)));
                    SharedPreferences sharedPreferences = getSharedPreferences(context);
                    if (responseCode == 200) {
                        if (context != null && z) {
                            this.f100 = System.currentTimeMillis();
                        }
                        if (appsFlyerTrackingRequestListener != null) {
                            appsFlyerTrackingRequestListener.onTrackingRequestSuccess();
                        }
                        if (requestListener != null) {
                            requestListener.onSuccess();
                        }
                        if (str != null) {
                            aa.m921();
                            aa.m924(str, context);
                        } else {
                            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
                            edit.putString("sentSuccessfully", "true");
                            edit.apply();
                            if (!this.f108 && System.currentTimeMillis() - this.f97 >= FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT && this.f92 == null) {
                                this.f92 = AFExecutor.getInstance().m783();
                                m861(this.f92, new d(context), 1L, TimeUnit.SECONDS);
                            }
                        }
                        String string = AppsFlyerProperties.getInstance().getString("afUninstallToken");
                        if (string != null) {
                            AFLogger.afDebugLog("Uninstall Token exists: ".concat(String.valueOf(string)));
                            if (!sharedPreferences.getBoolean("sentRegisterRequestToAF", false)) {
                                AFLogger.afDebugLog("Resending Uninstall token to AF servers: ".concat(String.valueOf(string)));
                                af.m953(context, string);
                            }
                        }
                        if (this.pluginDeeplinkIntent != null) {
                            this.pluginDeeplinkIntent = null;
                        }
                        this.f93 = ServerConfigHandler.m916(str2).optBoolean("send_background", false);
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
                    sb2.append(aFEvent.f23);
                    AFLogger.afDebugLog(sb2.toString());
                    long j2 = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
                    if (j2 != 0 && System.currentTimeMillis() - j2 > 5184000000L) {
                        AFLogger.afDebugLog("[GCD-E02] Cached conversion data expired");
                        SharedPreferences.Editor edit2 = getSharedPreferences(context).edit();
                        edit2.putBoolean("sixtyDayConversionData", true);
                        edit2.apply();
                        SharedPreferences.Editor edit3 = getSharedPreferences(context).edit();
                        edit3.putString("attributionId", null);
                        edit3.apply();
                        m859(context, "appsflyerConversionDataCacheExpiration", 0L);
                    }
                    if (sharedPreferences.getString("attributionId", null) == null && key != null && z2) {
                        InstallAttributionIdFetcher installAttributionIdFetcher = new InstallAttributionIdFetcher(this, (Application) context.getApplicationContext(), key, (byte) 0);
                        m861(installAttributionIdFetcher.f136, installAttributionIdFetcher, 10L, TimeUnit.MILLISECONDS);
                    } else if (key == null) {
                        AFLogger.afDebugLog("[GCD-E05] AppsFlyer dev key is missing");
                    } else if (z2 && sharedPreferences.getString("attributionId", null) != null && getLaunchCounter(sharedPreferences, false) > 1) {
                        try {
                            Map<String, Object> map = m837(context);
                            if (map != null) {
                                try {
                                    if (!map.containsKey("is_first_launch")) {
                                        map.put("is_first_launch", Boolean.FALSE);
                                    }
                                    InstallAttributionIdFetcher.m908(map);
                                } catch (Throwable th5) {
                                    AFLogger.afErrorLog(th5.getLocalizedMessage(), th5);
                                }
                            }
                        } catch (u e2) {
                            AFLogger.afErrorLog(e2.getMessage(), e2);
                        }
                    } else if (f78 == null) {
                        AFLogger.afDebugLog("[GCD-E01] AppsFlyerConversionListener is null - skip gcd");
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
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

    /* renamed from: Ι  reason: contains not printable characters */
    static /* synthetic */ void m873(AppsFlyerLibCore appsFlyerLibCore) {
        AFEvent context = new Attr().context(appsFlyerLibCore.f106);
        if (appsFlyerLibCore.m883() && appsFlyerLibCore.m835(context, getSharedPreferences(appsFlyerLibCore.f106))) {
            appsFlyerLibCore.m881(context);
        }
    }

    /* renamed from: Ι  reason: contains not printable characters */
    private boolean m874() {
        Map<String, Object> map = this.f105;
        return map != null && !map.isEmpty();
    }

    /* renamed from: ι  reason: contains not printable characters */
    private static String m875(File file, String str) {
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
            } catch (FileNotFoundException e2) {
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
            } catch (FileNotFoundException e3) {
                fileReader2 = fileReader4;
                StringBuilder sb = new StringBuilder("PreInstall file wasn't found: ");
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

    /* renamed from: ι  reason: contains not printable characters */
    private void m879(Context context, final String str, final AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener, final AppsFlyerRequestListener appsFlyerRequestListener) {
        if (Foreground.listener == null) {
            if (!this.f98) {
                AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! The API call 'startTracking()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
                if (str == null) {
                    if (appsFlyerRequestListener != null) {
                        appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, RequestErrorMessage.NO_DEV_KEY);
                        return;
                    }
                    return;
                }
            }
            this.f106 = (Application) context.getApplicationContext();
            ae.m938().m948("public_api_call", "startTracking", str);
            String str2 = f82;
            AFLogger.afInfoLog(String.format("Starting AppsFlyer Tracking: (v%s.%s)", BuildConfig.VERSION_NAME, str2));
            StringBuilder sb = new StringBuilder("Build Number: ");
            sb.append(str2);
            AFLogger.afInfoLog(sb.toString());
            AppsFlyerProperties.getInstance().loadProperties(this.f106.getApplicationContext());
            if (!TextUtils.isEmpty(str)) {
                AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
                ag.m955(str);
            } else if (TextUtils.isEmpty(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY))) {
                AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the startTracking API method (should be called on Activity's onCreate).");
                if (appsFlyerRequestListener != null) {
                    appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, RequestErrorMessage.NO_DEV_KEY);
                    return;
                }
                return;
            }
            m871(this.f106.getBaseContext());
            if (this.f107) {
                m829(this.f106.getApplicationContext());
            }
            Foreground.m913(context, new Foreground.Listener() { // from class: com.appsflyer.AppsFlyerLibCore.1
                @Override // com.appsflyer.Foreground.Listener
                public final void onBecameBackground(Context context2) {
                    AFLogger.afInfoLog("onBecameBackground");
                    AppsFlyerLibCore.this.f89 = System.currentTimeMillis();
                    new EventDataCollector(context2).set(ServerParameters.PREVIOUS_SESSION_DURATION, TimeUnit.MILLISECONDS.toSeconds(AppsFlyerLibCore.this.f89 - AppsFlyerLibCore.this.f88));
                    AFLogger.afInfoLog("callStatsBackground background call");
                    AppsFlyerLibCore.this.m895(new WeakReference<>(context2));
                    ae aeVar = ae.m938();
                    if (aeVar.m952()) {
                        aeVar.m951();
                        if (context2 != null) {
                            ae.m936(context2.getPackageName(), context2.getPackageManager());
                        }
                        aeVar.m946();
                    } else {
                        AFLogger.afDebugLog("RD status is OFF");
                    }
                    AFExecutor instance2 = AFExecutor.getInstance();
                    try {
                        AFExecutor.m782(instance2.f28);
                        if (instance2.f25 instanceof ThreadPoolExecutor) {
                            AFExecutor.m782((ThreadPoolExecutor) instance2.f25);
                        }
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("failed to stop Executors", th);
                    }
                    AFSensorManager aFSensorManager = AFSensorManager.m807(context2);
                    aFSensorManager.f44.post(aFSensorManager.f48);
                }

                @Override // com.appsflyer.Foreground.Listener
                public final void onBecameForeground(Activity activity) {
                    if (AppsFlyerLibCore.this.getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(activity), false) < 2) {
                        AFSensorManager aFSensorManager = AFSensorManager.m807(activity);
                        aFSensorManager.f44.post(aFSensorManager.f48);
                        aFSensorManager.f44.post(aFSensorManager.f50);
                    }
                    AFLogger.afInfoLog("onBecameForeground");
                    AppsFlyerLibCore.this.f88 = System.currentTimeMillis();
                    AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                    AFEvent key = new Launch().context(activity).key(str);
                    key.f17 = appsFlyerTrackingRequestListener;
                    appsFlyerLibCore.m894(key.requestListener(appsFlyerRequestListener));
                }
            });
        }
    }

    /* renamed from: ι  reason: contains not printable characters */
    private void m880(Context context, String str, Map<String, Object> map, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener, AppsFlyerRequestListener appsFlyerRequestListener) {
        AFEvent context2 = new InAppEvent().context(context);
        context2.f21 = str;
        context2.f7 = map == null ? null : new HashMap(map);
        context2.f17 = appsFlyerTrackingRequestListener;
        AFEvent requestListener = context2.requestListener(appsFlyerRequestListener);
        ae.m938().m948("public_api_call", "trackEvent", str, new JSONObject(requestListener.f7 == null ? new HashMap() : requestListener.f7).toString());
        if (str != null) {
            AFSensorManager aFSensorManager = AFSensorManager.m807(context);
            long currentTimeMillis = System.currentTimeMillis();
            if (aFSensorManager.f54 != 0) {
                aFSensorManager.f43++;
                if (aFSensorManager.f54 - currentTimeMillis < 500) {
                    aFSensorManager.f44.removeCallbacks(aFSensorManager.f42);
                    aFSensorManager.f44.post(aFSensorManager.f50);
                }
            } else {
                aFSensorManager.f44.post(aFSensorManager.f48);
                aFSensorManager.f44.post(aFSensorManager.f50);
            }
            aFSensorManager.f54 = currentTimeMillis;
        }
        m894(requestListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ι  reason: contains not printable characters */
    public void m881(AFEvent aFEvent) {
        ScheduledExecutorService scheduledExecutorService;
        Context context = aFEvent.context();
        String str = aFEvent.f21;
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
        boolean z = true;
        boolean z2 = str == null;
        boolean z3 = aFEvent instanceof BackgroundReferrerLaunch;
        boolean z4 = aFEvent instanceof Attr;
        aFEvent.f15 = z2;
        Map<String, ?> map = m897(aFEvent);
        String str2 = (String) map.get("appsflyerKey");
        if (str2 == null || str2.length() == 0) {
            AFLogger.afDebugLog("Not sending data yet, waiting for dev key");
            AppsFlyerRequestListener requestListener = aFEvent.getRequestListener();
            if (requestListener != null) {
                requestListener.onError(RequestError.NO_DEV_KEY, RequestErrorMessage.NO_DEV_KEY);
                return;
            }
            return;
        }
        if (!isTrackingStopped()) {
            AFLogger.afInfoLog("AppsFlyerLib.sendTrackingWithEvent");
        }
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        String url = (z4 || z3) ? ServerConfigHandler.getUrl(REFERRER_TRACKING_URL) : z2 ? launchCounter < 2 ? ServerConfigHandler.getUrl(FIRST_LAUNCHES_URL) : ServerConfigHandler.getUrl(f81) : ServerConfigHandler.getUrl(f80);
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
        if (!(AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) && map.get(ServerParameters.ADVERTISING_ID_PARAM) != null) {
            try {
                if (TextUtils.isEmpty(this.f95) && map.remove("android_id") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: android_id");
                }
                if (TextUtils.isEmpty(this.f104) && map.remove("imei") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: imei");
                }
            } catch (Exception e2) {
                AFLogger.afErrorLog("failed to remove IMEI or AndroidID key from params; ", e2);
            }
        }
        AFEvent aFEvent2 = aFEvent.urlString(str3).params(map).m780();
        aFEvent2.f23 = launchCounter;
        c cVar = new c(this, aFEvent2, (byte) 0);
        if (z2) {
            boolean z5 = false;
            if (GoogleReferrer.allow(this, context)) {
                z5 = false;
                if (!m883()) {
                    AFLogger.afDebugLog("Failed to get new referrer, wait ...");
                    z5 = true;
                }
            }
            if (this.f110.getState() == Referrer.State.STARTED) {
                z5 = true;
            }
            z = z5;
            if (this.f107) {
                z = z5;
                if (!m874()) {
                    AFLogger.afDebugLog("fetching Facebook deferred AppLink data, wait ...");
                    z = true;
                }
            }
            if (!this.f113 || !m889()) {
            }
        } else {
            z = false;
        }
        if (AFDeepLinkManager.f1) {
            AFLogger.afRDLog("ESP deeplink: execute launch on SerialExecutor");
            AFExecutor instance2 = AFExecutor.getInstance();
            if (instance2.f26 == null) {
                instance2.f26 = Executors.newSingleThreadScheduledExecutor(instance2.f27);
            }
            scheduledExecutorService = instance2.f26;
        } else {
            scheduledExecutorService = AFExecutor.getInstance().m783();
        }
        m861(scheduledExecutorService, cVar, z ? 500L : 0L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ι  reason: contains not printable characters */
    public boolean m883() {
        GoogleReferrer googleReferrer = this.f87;
        return googleReferrer != null && googleReferrer.oldMap.size() > 0;
    }

    /* renamed from: ι  reason: contains not printable characters */
    private static boolean m885(File file) {
        return file == null || !file.exists();
    }

    /* renamed from: І  reason: contains not printable characters */
    private static String m886(Context context) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: і  reason: contains not printable characters */
    public boolean m889() {
        Map<String, Object> map = this.f103;
        return map != null && !map.isEmpty();
    }

    /* renamed from: і  reason: contains not printable characters */
    private static boolean m890(Context context) {
        return (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) || !m891(context);
    }

    /* renamed from: Ӏ  reason: contains not printable characters */
    private static boolean m891(Context context) {
        try {
            if (b.a().a(context) == 0) {
                return true;
            }
        } catch (Throwable th) {
            AFLogger.afErrorLog("WARNING:  Google play services is unavailable. ", th);
        }
        try {
            context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.afErrorLog("WARNING:  Google Play Services is unavailable. ", e2);
            return false;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void enableFacebookDeferredApplinks(boolean z) {
        this.f107 = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib enableLocationCollection(boolean z) {
        this.f101 = z;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAppsFlyerUID(Context context) {
        ae.m938().m948("public_api_call", "getAppsFlyerUID", new String[0]);
        return z.m1038(new WeakReference(context));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAttributionId(Context context) {
        try {
            return new ab(context).m927();
        } catch (Throwable th) {
            AFLogger.afErrorLog("Could not collect facebook attribution id. ", th);
            return null;
        }
    }

    public String getConfiguredChannel(Context context) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.CHANNEL);
        String str = string;
        if (string == null) {
            str = context == null ? null : m855("CHANNEL", context.getPackageManager(), context.getPackageName());
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
        return m853(sharedPreferences, "appsFlyerCount", z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getOutOfStore(Context context) {
        String string = AppsFlyerProperties.getInstance().getString("api_store_value");
        if (string != null) {
            return string;
        }
        String str = context == null ? null : m855("AF_STORE", context.getPackageManager(), context.getPackageName());
        if (str != null) {
            return str;
        }
        AFLogger.afInfoLog("No out-of-store value set");
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getSdkVersion() {
        ae.m938().m948("public_api_call", "getSdkVersion", new String[0]);
        StringBuilder sb = new StringBuilder("version: 5.4.6 (build ");
        sb.append(f82);
        sb.append(")");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
        ad adVar = new ad(uri, this);
        if (adVar.f177) {
            map.put("isBrandedDomain", Boolean.TRUE);
        }
        adVar.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        if (adVar.m934()) {
            adVar.f180 = new ad.b() { // from class: com.appsflyer.AppsFlyerLibCore.9
                /* renamed from: ı  reason: contains not printable characters */
                private void m903(Map<String, String> map2) {
                    if (weakReference.get() != null) {
                        AppsFlyerLibCore.m831((Context) weakReference.get(), "deeplinkAttribution", new JSONObject(map2).toString());
                    }
                }

                @Override // com.appsflyer.internal.ad.b
                /* renamed from: ɩ  reason: contains not printable characters */
                public final void mo904(String str3) {
                    if (AppsFlyerLibCore.f78 != null) {
                        m903(hashMap);
                        AFLogger.afDebugLog("Calling onAttributionFailure with:\n".concat(String.valueOf(str3)));
                        AppsFlyerLibCore.f78.onAttributionFailure(str3);
                    }
                }

                @Override // com.appsflyer.internal.ad.b
                /* renamed from: Ι  reason: contains not printable characters */
                public final void mo905(Map<String, String> map2) {
                    for (String str3 : map2.keySet()) {
                        hashMap.put(str3, map2.get(str3));
                    }
                    m903(hashMap);
                    AppsFlyerLibCore.m833(hashMap);
                }
            };
            AFExecutor.getInstance().getThreadPoolExecutor().execute(adVar);
            return;
        }
        m833(AndroidUtils.m821(context, hashMap, uri));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener) {
        ae.m938().m948("public_api_call", "init", str, appsFlyerConversionListener == null ? JsonReaderKt.NULL : "conversionDataListener");
        AFLogger.m795(String.format("Initializing AppsFlyer SDK: (v%s.%s)", BuildConfig.VERSION_NAME, f82));
        this.f98 = true;
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
        ag.m955(str);
        f78 = appsFlyerConversionListener;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, final Context context) {
        if (context != null) {
            this.f106 = (Application) context.getApplicationContext();
            if (GoogleReferrer.allow(this, context)) {
                if (this.f87 == null) {
                    this.f87 = new GoogleReferrer();
                    AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                    this.f87.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                AFLogger.afDebugLog("Install Referrer collected locally");
                                AppsFlyerLibCore.m873(AppsFlyerLibCore.this);
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
            this.f110.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (AppsFlyerLibCore.this.getLaunchCounter(sharedPreferences, false) != 1) {
                        return;
                    }
                    if (!GoogleReferrer.allow(AppsFlyerLibCore.this, context) || sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false)) {
                        AppsFlyerLibCore.this.m881(new Attr().context(context));
                    }
                }
            });
            this.f113 = m864(context);
            Exlytics.setContext(this.f106);
        } else {
            AFLogger.afWarnLog("init :: context is null, Google Install Referrer will be not initialized!");
        }
        return init(str, appsFlyerConversionListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public boolean isPreInstalledApp(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.afErrorLog("Could not check if app is pre installed", e2);
            return false;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public boolean isTrackingStopped() {
        return this.f109;
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
            AppsFlyerConversionListener appsFlyerConversionListener = f78;
            if (appsFlyerConversionListener != null) {
                StringBuilder sb = new StringBuilder("Link is \"");
                sb.append(uri);
                sb.append("\"");
                appsFlyerConversionListener.onAttributionFailure(sb.toString());
            }
        } else if (context == null) {
            AppsFlyerConversionListener appsFlyerConversionListener2 = f78;
            if (appsFlyerConversionListener2 != null) {
                StringBuilder sb2 = new StringBuilder("Context is \"");
                sb2.append(context);
                sb2.append("\"");
                appsFlyerConversionListener2.onAttributionFailure(sb2.toString());
            }
        } else {
            AFDeepLinkManager.getInstance();
            AFDeepLinkManager.m774(context, new HashMap(), Uri.parse(uri.toString()));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        ae.m938().m948("public_api_call", "registerConversionListener", new String[0]);
        if (appsFlyerConversionListener != null) {
            f78 = appsFlyerConversionListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener) {
        ae.m938().m948("public_api_call", "registerValidatorListener", new String[0]);
        AFLogger.afDebugLog("registerValidatorListener called");
        if (appsFlyerInAppPurchaseValidatorListener == null) {
            AFLogger.afDebugLog("registerValidatorListener null listener");
        } else {
            f75 = appsFlyerInAppPurchaseValidatorListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void reportTrackSession(Context context) {
        ae.m938().m948("public_api_call", "reportTrackSession", new String[0]);
        ae.m938().f187 = false;
        AFEvent context2 = new InAppEvent().context(context);
        context2.f21 = null;
        context2.f7 = null;
        m894(context2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void sendAdRevenue(Context context, Map<String, Object> map) {
        AFEvent context2 = new AdRevenue().context(context);
        context2.f7 = map;
        Context context3 = context2.context();
        String url = ServerConfigHandler.getUrl(f85);
        StringBuilder sb = new StringBuilder();
        sb.append(url);
        sb.append(context3.getPackageName());
        String obj = sb.toString();
        SharedPreferences sharedPreferences = getSharedPreferences(context3);
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        int i = m853(sharedPreferences, "appsFlyerAdRevenueCount", true);
        HashMap hashMap = new HashMap();
        hashMap.put("ad_network", context2.f7);
        hashMap.put("adrevenue_counter", Integer.valueOf(i));
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        hashMap.put("af_key", string);
        hashMap.put("launch_counter", Integer.valueOf(launchCounter));
        hashMap.put("af_timestamp", Long.toString(new Date().getTime()));
        hashMap.put("uid", z.m1038(new WeakReference(context3)));
        String string2 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        hashMap.put("advertiserIdEnabled", AppsFlyerProperties.getInstance().getString("advertiserIdEnabled"));
        if (string2 != null) {
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string2);
        }
        hashMap.put("device", Build.DEVICE);
        m832(context3, hashMap);
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
                str = m856(simpleDateFormat, context3);
            }
            hashMap.put("first_launch_date", str);
        } catch (Throwable th) {
            AFLogger.afErrorLog("AdRevenue - Exception while collecting app version data ", th);
        }
        AFEvent aFEvent = context2.urlString(obj).params(hashMap).m780();
        aFEvent.f23 = launchCounter;
        m861(AFExecutor.getInstance().m783(), new c(this, aFEvent.key(string), (byte) 0), 1L, TimeUnit.MILLISECONDS);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void sendDeepLinkData(Activity activity) {
        if (activity != null && activity.getIntent() != null) {
            ae aeVar = ae.m938();
            String localClassName = activity.getLocalClassName();
            StringBuilder sb = new StringBuilder("activity_intent_");
            sb.append(activity.getIntent().toString());
            aeVar.m948("public_api_call", "sendDeepLinkData", localClassName, sb.toString());
        } else if (activity != null) {
            ae.m938().m948("public_api_call", "sendDeepLinkData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            ae.m938().m948("public_api_call", "sendDeepLinkData", "activity_null");
        }
        try {
            startTracking(activity);
            StringBuilder sb2 = new StringBuilder("getDeepLinkData with activity ");
            sb2.append(activity.getIntent().getDataString());
            AFLogger.afInfoLog(sb2.toString());
        } catch (Exception e2) {
            AFLogger.afInfoLog("getDeepLinkData Exception: ".concat(String.valueOf(e2)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01f4  */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Unknown variable types count: 1 */
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
            ae.m938().m948("public_api_call", "setAdditionalData", hashMap.toString());
            AppsFlyerProperties.getInstance().setCustomData(new JSONObject(hashMap).toString());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAndroidIdData(String str) {
        ae.m938().m948("public_api_call", "setAndroidIdData", str);
        this.f95 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppId(String str) {
        ae.m938().m948("public_api_call", "setAppId", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppInviteOneLink(String str) {
        ae.m938().m948("public_api_call", "setAppInviteOneLink", str);
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
        ae.m938().m948("public_api_call", "setCollectAndroidID", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectIMEI(boolean z) {
        ae.m938().m948("public_api_call", "setCollectIMEI", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectOaid(boolean z) {
        ae.m938().m948("public_api_call", "setCollectOaid", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setConsumeAFDeepLinks(boolean z) {
        AppsFlyerProperties.getInstance().set("consumeAfDeepLink", z);
        ae.m938().m948("public_api_call", "setConsumeAFDeepLinks: ".concat(String.valueOf(z)), new String[0]);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCurrencyCode(String str) {
        ae.m938().m948("public_api_call", "setCurrencyCode", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerIdAndTrack(String str, Context context) {
        if (context == null) {
            return;
        }
        if (m848()) {
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
            m844(context, string, str2, context instanceof Activity ? ((Activity) context).getIntent() : null);
            if (AppsFlyerProperties.getInstance().getString("afUninstallToken") != null) {
                m899(context, AppsFlyerProperties.getInstance().getString("afUninstallToken"));
                return;
            }
            return;
        }
        setCustomerUserId(str);
        AFLogger.afInfoLog("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerUserId(String str) {
        ae.m938().m948("public_api_call", "setCustomerUserId", str);
        AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_USER_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDebugLog(boolean z) {
        setLogLevel(z ? AFLogger.LogLevel.DEBUG : AFLogger.LogLevel.NONE);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDeviceTrackingDisabled(boolean z) {
        ae.m938().m948("public_api_call", "setDeviceTrackingDisabled", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setExtension(String str) {
        ae.m938().m948("public_api_call", "setExtension", str);
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
        ae.m938().m948("public_api_call", "setImeiData", str);
        this.f104 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setIsUpdate(boolean z) {
        ae.m938().m948("public_api_call", "setIsUpdate", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setLogLevel(AFLogger.LogLevel logLevel) {
        boolean z = logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel();
        ae.m938().m948("public_api_call", "log", String.valueOf(z));
        AppsFlyerProperties.getInstance().set("shouldLog", z);
        AppsFlyerProperties.getInstance().set("logLevel", logLevel.getLevel());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setMinTimeBetweenSessions(int i) {
        this.f86 = TimeUnit.SECONDS.toMillis(i);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOaidData(String str) {
        ae.m938().m948("public_api_call", "setOaidData", str);
        this.f114 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOneLinkCustomDomain(String... strArr) {
        AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
        AFDeepLinkManager.f0 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOutOfStore(String str) {
        if (str != null) {
            String lowerCase = str.toLowerCase();
            AppsFlyerProperties.getInstance().set("api_store_value", lowerCase);
            AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
            return;
        }
        AFLogger.m793("Cannot set setOutOfStore with null");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPhoneNumber(String str) {
        this.f111 = ac.m932(str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void setPluginDeepLinkData(Intent intent) {
        if (intent != null) {
            try {
                if ("android.intent.action.VIEW".equals(intent.getAction())) {
                    this.pluginDeeplinkIntent = intent;
                    StringBuilder sb = new StringBuilder("Plugin setDeepLinkData = ");
                    sb.append(this.pluginDeeplinkIntent.getDataString());
                    AFLogger.afDebugLog(sb.toString());
                }
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
            } catch (JSONException e2) {
                AFLogger.afErrorLog(e2.getMessage(), e2);
            }
        }
        if (str2 != null) {
            jSONObject.put(Constants.URL_CAMPAIGN, str2);
        }
        if (str3 != null) {
            jSONObject.put(Constants.URL_SITE_ID, str3);
        }
        if (jSONObject.has(Constants.URL_MEDIA_SOURCE)) {
            AppsFlyerProperties.getInstance().set("preInstallName", jSONObject.toString());
            return;
        }
        AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setResolveDeepLinkURLs(String... strArr) {
        AFLogger.afDebugLog(String.format("setResolveDeepLinkURLs %s", Arrays.toString(strArr)));
        AFDeepLinkManager.f2 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setSharingFilter(String... strArr) {
        if (strArr != null && !Arrays.equals(this.f96, new String[]{"all"})) {
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
                this.f96 = (String[]) arrayList.toArray(new String[0]);
            } else {
                this.f96 = null;
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setSharingFilterForAllPartners() {
        this.f96 = new String[]{"all"};
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        ae.m938().m948("public_api_call", "setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        String str = null;
        for (String str2 : strArr) {
            if (AnonymousClass10.f119[emailsCryptType.ordinal()] != 2) {
                arrayList2.add(ac.m932(str2));
                str = "sha256_el_arr";
            } else {
                arrayList2.add(str2);
                str = "plain_el_arr";
            }
        }
        hashMap.put(str, arrayList2);
        AppsFlyerProperties.getInstance().setUserEmails(new JSONObject(hashMap).toString());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setUserEmails(String... strArr) {
        ae.m938().m948("public_api_call", "setUserEmails", strArr);
        setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context) {
        startTracking(context, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, String str) {
        m879(context, str, null, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void startTracking(Context context, String str, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        m879(context, str, appsFlyerTrackingRequestListener, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, String str, AppsFlyerRequestListener appsFlyerRequestListener) {
        m879(context, str, null, appsFlyerRequestListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void stopTracking(boolean z, Context context) {
        File[] listFiles;
        this.f109 = z;
        aa.m921();
        try {
            File file = aa.m922(context);
            if (!file.exists()) {
                file.mkdir();
            } else {
                for (File file2 : file.listFiles()) {
                    StringBuilder sb = new StringBuilder("Found cached request");
                    sb.append(file2.getName());
                    AFLogger.afInfoLog(sb.toString());
                    aa.m924(aa.m923(file2).f291, context);
                }
            }
        } catch (Exception e2) {
            AFLogger.afErrorLog("Could not cache request", e2);
        }
        if (this.f109) {
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putBoolean(IS_STOP_TRACKING_USED, true);
            edit.apply();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void trackAppLaunch(Context context, String str) {
        if (GoogleReferrer.allow(this, context)) {
            if (this.f87 == null) {
                this.f87 = new GoogleReferrer();
                AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                this.f87.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            AFLogger.afDebugLog("Install Referrer collected locally");
                            AppsFlyerLibCore.m873(AppsFlyerLibCore.this);
                        } catch (Throwable th) {
                            AFLogger.afErrorLog(th.getMessage(), th);
                        }
                    }
                });
            } else {
                AFLogger.afWarnLog("GoogleReferrer instance already created");
            }
        }
        m844(context, str, "", null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map) {
        m880(context, str, map, null, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        m880(context, str, map, appsFlyerTrackingRequestListener, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener) {
        m880(context, str, map, null, appsFlyerRequestListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackLocation(Context context, double d2, double d3) {
        ae.m938().m948("public_api_call", "trackLocation", String.valueOf(d2), String.valueOf(d3));
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.LONGTITUDE, Double.toString(d3));
        hashMap.put(AFInAppEventParameterName.LATITUDE, Double.toString(d2));
        AFEvent context2 = new InAppEvent().context(context);
        context2.f21 = AFInAppEventType.LOCATION_COORDINATES;
        context2.f7 = hashMap;
        m894(context2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void unregisterConversionListener() {
        ae.m938().m948("public_api_call", "unregisterConversionListener", new String[0]);
        f78 = null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void updateServerUninstallToken(Context context, String str) {
        af.m953(context, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void validateAndTrackInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        ae.m938().m948("public_api_call", "validateAndTrackInAppPurchase", str, str2, str3, str4, str5, map == null ? "" : map.toString());
        if (!isTrackingStopped()) {
            StringBuilder sb = new StringBuilder("Validate in app called with parameters: ");
            sb.append(str3);
            sb.append(StringUtils.SPACE);
            sb.append(str4);
            sb.append(StringUtils.SPACE);
            sb.append(str5);
            AFLogger.afInfoLog(sb.toString());
        }
        if (str == null || str4 == null || str2 == null || str5 == null || str3 == null) {
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = f75;
            if (appsFlyerInAppPurchaseValidatorListener != null) {
                appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
                return;
            }
            return;
        }
        new Thread(new AFValidateInAppPurchase(context.getApplicationContext(), AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY), str, str2, str3, str4, str5, map, context instanceof Activity ? ((Activity) context).getIntent() : null)).start();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void waitForCustomerUserId(boolean z) {
        AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z)), true);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* renamed from: ı  reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m894(com.appsflyer.AFEvent r5) {
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
            if (r0 == 0) goto L_0x003a
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
            if (r0 == 0) goto L_0x003d
            r0 = r11
            java.lang.String r0 = r0.toString()
            r9 = r0
            goto L_0x004a
        L_0x003a:
            r0 = 0
            r9 = r0
        L_0x003d:
            java.lang.String r0 = ""
            r11 = r0
            r0 = r9
            r10 = r0
            r0 = r11
            r9 = r0
        L_0x004a:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r1 = "AppsFlyerKey"
            java.lang.String r0 = r0.getString(r1)
            if (r0 != 0) goto L_0x0072
            java.lang.String r0 = "[TrackEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey."
            com.appsflyer.AFLogger.afWarnLog(r0)
            r0 = r5
            com.appsflyer.attribution.AppsFlyerRequestListener r0 = r0.getRequestListener()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0071
            r0 = r5
            int r1 = com.appsflyer.attribution.RequestError.NO_DEV_KEY
            java.lang.String r2 = com.appsflyer.internal.attribution.RequestErrorMessage.NO_DEV_KEY
            r0.onError(r1, r2)
        L_0x0071:
            return
        L_0x0072:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            r1 = r6
            java.lang.String r0 = r0.getReferrer(r1)
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0083
            goto L_0x0087
        L_0x0083:
            r0 = r11
            r8 = r0
        L_0x0087:
            r0 = r5
            r1 = r8
            r0.f22 = r1
            r0 = r5
            r1 = r10
            r0.f9 = r1
            r0 = r5
            r1 = r9
            r0.f19 = r1
            r0 = r4
            r1 = r5
            r0.m860(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m894(com.appsflyer.AFEvent):void");
    }

    /* renamed from: ı  reason: contains not printable characters */
    final void m895(WeakReference<Context> weakReference) {
        if (weakReference.get() != null) {
            AFLogger.afInfoLog("app went to background");
            SharedPreferences sharedPreferences = getSharedPreferences(weakReference.get());
            AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
            long j = this.f89;
            long j2 = this.f88;
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
            y yVar = x.m1033(weakReference.get().getContentResolver());
            if (yVar != null) {
                hashMap.put("amazon_aid", yVar.f337);
                hashMap.put("amazon_aid_limit", String.valueOf(yVar.m1034()));
            }
            String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
            if (string3 != null) {
                hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
            }
            hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, weakReference.get().getPackageName());
            hashMap.put("devkey", string);
            hashMap.put("uid", z.m1038(weakReference));
            hashMap.put("time_in_app", String.valueOf((j - j2) / 1000));
            hashMap.put("statType", "user_closed_app");
            hashMap.put("platform", "Android");
            hashMap.put("launch_counter", Integer.toString(getLaunchCounter(sharedPreferences, false)));
            hashMap.put(AppsFlyerProperties.CHANNEL, getConfiguredChannel(weakReference.get()));
            hashMap.put("originalAppsflyerId", string2 != null ? string2 : "");
            if (this.f93) {
                try {
                    AFLogger.afDebugLog("Running callStats task");
                    new Thread(new w((BackgroundEvent) new Stats().trackingStopped(isTrackingStopped()).params(hashMap).urlString(ServerConfigHandler.getUrl(f83)))).start();
                } catch (Throwable th) {
                    AFLogger.afErrorLog("Could not send callStats request", th);
                }
            } else {
                AFLogger.afDebugLog("Stats call is disabled, ignore ...");
            }
        }
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    public final String m896(HttpURLConnection httpURLConnection) {
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
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(z ? '\n' : "");
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
        } catch (JSONException e2) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("string_response", obj);
                return jSONObject.toString();
            } catch (JSONException e3) {
                return new JSONObject().toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(150:2|(1:4)(1:5)|6|(1:8)|574|9|(3:11|(1:13)(1:14)|15)(1:16)|17|18|546|19|(1:21)|24|(9:592|25|(1:27)|28|29|(1:31)|32|33|(1:35))|38|39|(32:41|(10:43|(1:45)|46|47|(1:49)(1:50)|51|(1:55)|56|57|(1:59))|60|61|62|(1:64)(1:65)|66|(1:68)|69|(1:71)|72|73|74|(4:76|(1:78)(1:79)|80|81)|82|83|(1:85)|86|87|(1:89)|90|91|(1:93)|94|95|(1:99)|100|101|102|(1:104)|105|106)(10:107|108|556|109|(8:554|111|558|112|113|114|570|115)|568|119|120|572|121)|126|127|128|(1:134)|135|136|(1:138)|139|562|140|(1:142)|145|146|(1:150)|151|152|(1:160)|161|162|(1:164)(4:165|(3:167|(2:169|(1:171))|173)|172|173)|174|(1:176)|177|178|179|(4:181|(1:183)(5:184|185|(20:187|188|189|(1:191)|192|193|194|(1:196)|197|198|199|(1:201)|202|203|(1:205)|207|208|(2:210|(1:212)(1:213))|214|215)|216|(2:218|219))|220|(2:222|223))|224|(1:226)|227|228|(2:230|(1:232)(1:233))|234|(1:236)|237|(2:242|(2:533|534)(1:246))(1:241)|247|248|(1:250)|251|252|(1:254)(2:255|(1:257))|258|(2:260|(1:262))|263|264|(1:266)|267|268|(4:270|(1:272)|273|274)|275|276|(1:278)|279|280|(4:594|282|289|(1:291))|292|293|(1:295)(6:296|(1:327)(9:300|(11:596|302|303|598|304|(1:306)(2:307|(4:309|310|600|311))|330|(1:332)(1:333)|334|335|(1:355)(12:339|(3:579|341|(10:343|358|(1:360)(1:361)|362|363|(1:365)(1:366)|367|(3:369|(3:584|371|(6:373|374|590|375|376|(2:378|379)))|383)|384|(1:386))(12:344|(1:346)(1:347)|354|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|357|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|329|330|(0)(0)|334|335|(1:337)|355)|535|536|537|538)|548|387|388|(2:552|390)|394|544|395|398|566|399|402|560|403|406|407|408|564|409|412|542|413|414|588|415|416|(2:550|418)|420|421|582|422|423|581|424|577|425|426|427|575|428|436|437|438|(1:440)|441|(4:443|(1:445)|446|447)|448|(5:586|450|(1:452)(1:453)|454|455)|458|459|(2:461|(1:463)(1:464))|465|466|(1:468)|469|470|(1:472)(1:473)|474|(2:476|(2:478|(5:480|(1:482)(1:483)|484|485|486))(2:487|(1:489)))|490|491|(1:493)(1:494)|495|(8:497|(5:499|(1:501)|502|503|(1:505))|506|507|(1:509)|510|511|(4:513|(1:515)(2:516|(1:518))|519|520))|521|522|(1:524)|525|526|(1:528)|529|530|(1:532)|537|538|(2:(0)|(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(81:2|(1:4)(1:5)|6|(1:8)|(70:574|9|(3:11|(1:13)(1:14)|15)(1:16)|17|18|546|19|(1:21)|24|(9:592|25|(1:27)|28|29|(1:31)|32|33|(1:35))|38|39|(32:41|(10:43|(1:45)|46|47|(1:49)(1:50)|51|(1:55)|56|57|(1:59))|60|61|62|(1:64)(1:65)|66|(1:68)|69|(1:71)|72|73|74|(4:76|(1:78)(1:79)|80|81)|82|83|(1:85)|86|87|(1:89)|90|91|(1:93)|94|95|(1:99)|100|101|102|(1:104)|105|106)(10:107|108|556|109|(8:554|111|558|112|113|114|570|115)|568|119|120|572|121)|126|127|128|(1:134)|135|136|(1:138)|139|562|140|(1:142)|145|146|(1:150)|151|152|(1:160)|161|162|(1:164)(4:165|(3:167|(2:169|(1:171))|173)|172|173)|174|(1:176)|177|178|179|(4:181|(1:183)(5:184|185|(20:187|188|189|(1:191)|192|193|194|(1:196)|197|198|199|(1:201)|202|203|(1:205)|207|208|(2:210|(1:212)(1:213))|214|215)|216|(2:218|219))|220|(2:222|223))|224|(1:226)|227|228|(2:230|(1:232)(1:233))|234|(1:236)|237|(2:242|(2:533|534)(1:246))(1:241)|247|248|(1:250)|251|252|(1:254)(2:255|(1:257))|258|(2:260|(1:262))|263|264|(1:266)|267|268|(4:270|(1:272)|273|274)|275|276|(1:278)|279|280|(4:594|282|289|(1:291))|292|293)|(1:295)(6:296|(1:327)(9:300|(11:596|302|303|598|304|(1:306)(2:307|(4:309|310|600|311))|330|(1:332)(1:333)|334|335|(1:355)(12:339|(3:579|341|(10:343|358|(1:360)(1:361)|362|363|(1:365)(1:366)|367|(3:369|(3:584|371|(6:373|374|590|375|376|(2:378|379)))|383)|384|(1:386))(12:344|(1:346)(1:347)|354|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|357|358|(0)(0)|362|363|(0)(0)|367|(0)|384|(0)))|329|330|(0)(0)|334|335|(1:337)|355)|535|536|537|538)|548|387|388|(2:552|390)|394|544|395|398|566|399|402|560|403|406|407|408|564|409|412|542|413|414|588|415|416|(2:550|418)|420|421|582|422|423|581|424|577|425|426|427|575|428|436|437|438|(1:440)|441|(4:443|(1:445)|446|447)|448|(5:586|450|(1:452)(1:453)|454|455)|458|459|(2:461|(1:463)(1:464))|465|466|(1:468)|469|470|(1:472)(1:473)|474|(2:476|(2:478|(5:480|(1:482)(1:483)|484|485|486))(2:487|(1:489)))|490|491|(1:493)(1:494)|495|(8:497|(5:499|(1:501)|502|503|(1:505))|506|507|(1:509)|510|511|(4:513|(1:515)(2:516|(1:518))|519|520))|521|522|(1:524)|525|526|(1:528)|529|530|(1:532)|537|538|(2:(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0690, code lost:
        if (r7 != null) goto L_0x0698;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x09df, code lost:
        if (r7 != null) goto L_0x09e7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x0aa9, code lost:
        if (r7 != null) goto L_0x0ab1;
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
    /* renamed from: ǃ  reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> m897(com.appsflyer.AFEvent r7) {
        /*
            Method dump skipped, instructions count: 5093
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m897(com.appsflyer.AFEvent):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public final void m898(Context context, Intent intent) {
        if (intent.getStringExtra("appsflyer_preinstall") != null) {
            getInstance();
            String stringExtra = intent.getStringExtra("appsflyer_preinstall");
            try {
                if (new JSONObject(stringExtra).has(Constants.URL_MEDIA_SOURCE)) {
                    AppsFlyerProperties.getInstance().set("preInstallName", stringExtra);
                } else {
                    AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
                }
            } catch (JSONException e2) {
                AFLogger.afErrorLog("Error parsing JSON for preinstall", e2);
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
            if (AppsFlyerProperties.getInstance().isFirstLaunchCalled()) {
                AFLogger.afInfoLog("onReceive: isLaunchCalled");
                AFEvent weakContext = new BackgroundReferrerLaunch().context(context).m780().weakContext();
                weakContext.f22 = stringExtra2;
                weakContext.f9 = intent;
                if (stringExtra2 != null && stringExtra2.length() > 5 && m835(weakContext, getSharedPreferences(context))) {
                    m861(AFExecutor.getInstance().m783(), new e(this, weakContext, (byte) 0), 5L, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    /* renamed from: ι  reason: contains not printable characters */
    public final void m899(Context context, String str) {
        if (m848()) {
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
        m845(context, hashMap);
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
        y yVar = x.m1033(context.getContentResolver());
        if (yVar != null) {
            hashMap.put("amazon_aid", yVar.f337);
            hashMap.put("amazon_aid_limit", String.valueOf(yVar.m1034()));
        }
        String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string3 != null) {
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
        }
        hashMap.put("devkey", string);
        hashMap.put("uid", z.m1038(new WeakReference(context)));
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
            new Thread(new w((BackgroundEvent) context2.urlString(sb.toString()))).start();
        } catch (Throwable th3) {
            AFLogger.afErrorLog(th3.getMessage(), th3);
        }
    }
}
