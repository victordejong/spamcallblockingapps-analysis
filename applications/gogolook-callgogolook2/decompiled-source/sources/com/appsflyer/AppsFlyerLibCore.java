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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.appsflyer.AFFacebookDeferredDeeplink;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.Foreground;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.internal.C1818aa;
import com.appsflyer.internal.C1819ab;
import com.appsflyer.internal.C1821ac;
import com.appsflyer.internal.C1823ae;
import com.appsflyer.internal.C1824af;
import com.appsflyer.internal.C1825ag;
import com.appsflyer.internal.C1829ah;
import com.appsflyer.internal.C1830ai;
import com.appsflyer.internal.C1839c;
import com.appsflyer.internal.C1842d;
import com.appsflyer.internal.C1847j;
import com.appsflyer.internal.C1853s;
import com.appsflyer.internal.C1856t;
import com.appsflyer.internal.C1863v;
import com.appsflyer.internal.C1865w;
import com.appsflyer.internal.C1869y;
import com.appsflyer.internal.C1870z;
import com.appsflyer.internal.RunnableC1822ad;
import com.appsflyer.internal.RunnableC1867x;
import com.appsflyer.internal.model.event.AdRevenue;
import com.appsflyer.internal.model.event.Attr;
import com.appsflyer.internal.model.event.BackgroundEvent;
import com.appsflyer.internal.model.event.BackgroundReferrerLaunch;
import com.appsflyer.internal.model.event.CachedEvent;
import com.appsflyer.internal.model.event.InAppEvent;
import com.appsflyer.internal.model.event.Launch;
import com.appsflyer.internal.model.event.ProxyEvent;
import com.appsflyer.internal.model.event.Stats;
import com.appsflyer.internal.model.event.UninstallTokenEvent;
import com.appsflyer.internal.referrer.GoogleReferrer;
import com.appsflyer.internal.referrer.HuaweiReferrer;
import com.appsflyer.internal.referrer.MandatoryFields;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.share.Constants;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p459j.p460a.p582w0.p590x4.C14247d;
import zendesk.support.CreateRequest;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore.class */
public class AppsFlyerLibCore extends AppsFlyerLib {
    public static final String AF_PRE_INSTALL_PATH = "AF_PRE_INSTALL_PATH";
    public static String FIRST_LAUNCHES_URL;
    @VisibleForTesting
    public static final String INSTALL_REFERRER_PREF = "rfr";
    public static final String IS_STOP_TRACKING_USED = "is_stop_tracking_used";
    public static final String LOG_TAG = "AppsFlyer_5.4.0";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT = "/data/local/tmp/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT_ETC = "/etc/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_RO_PROP = "ro.appsflyer.preinstall.path";
    @VisibleForTesting
    public static String REFERRER_TRACKING_URL;
    public static String REGISTER_URL;

    /* renamed from: ı */
    public static final String f1663 = "5.4";

    /* renamed from: Ɩ */
    public static final String f1664;

    /* renamed from: ɩ */
    public static final String f1666 = "38";

    /* renamed from: ɹ */
    public static String f1668;

    /* renamed from: ɾ */
    public static String f1669;

    /* renamed from: І */
    public static String f1670;

    /* renamed from: і */
    public static final String f1671;

    /* renamed from: ſ */
    public long f1675;

    /* renamed from: Ɨ */
    public String f1676;

    /* renamed from: ƚ */
    public Map<Long, String> f1677;

    /* renamed from: ǀ */
    public boolean f1678;

    /* renamed from: ɨ */
    public String f1683;

    /* renamed from: ɺ */
    public boolean f1684;

    /* renamed from: ʅ */
    public long f1687;
    @Nullable

    /* renamed from: ʟ */
    public GoogleReferrer f1688;

    /* renamed from: ͻ */
    public Map<String, Object> f1689;

    /* renamed from: Ι */
    public String f1690;

    /* renamed from: ι */
    public String f1691;

    /* renamed from: ϲ */
    public Map<String, Object> f1692;

    /* renamed from: ϳ */
    public Application f1693;

    /* renamed from: т */
    public HuaweiReferrer f1697;

    /* renamed from: х */
    public String f1698;
    @VisibleForTesting

    /* renamed from: Ӏ */
    public long f1699;

    /* renamed from: ӏ */
    public static final List<String> f1672 = Arrays.asList("is_cache");

    /* renamed from: ǃ */
    public static AppsFlyerInAppPurchaseValidatorListener f1665 = null;

    /* renamed from: ɪ */
    public static AppsFlyerConversionListener f1667 = null;
    @VisibleForTesting
    public static AppsFlyerLibCore instance = new AppsFlyerLibCore();
    public Uri latestDeepLink = null;

    /* renamed from: ȷ */
    public long f1679 = -1;

    /* renamed from: ŀ */
    public long f1673 = -1;

    /* renamed from: ɿ */
    public long f1686 = TimeUnit.SECONDS.toMillis(5);

    /* renamed from: г */
    public boolean f1695 = false;

    /* renamed from: ł */
    public ScheduledExecutorService f1674 = null;

    /* renamed from: ɍ */
    public boolean f1680 = false;

    /* renamed from: ɟ */
    public C1825ag f1682 = new C1825ag();

    /* renamed from: ɔ */
    public boolean f1681 = false;

    /* renamed from: ɼ */
    public boolean f1685 = false;

    /* renamed from: Ј */
    public boolean f1694 = false;

    /* renamed from: с */
    public boolean f1696 = false;

    /* renamed from: com.appsflyer.AppsFlyerLibCore$10 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$10.class */
    public static final /* synthetic */ class C179010 {

        /* renamed from: ι */
        public static final /* synthetic */ int[] f1702 = new int[AppsFlyerProperties.EmailsCryptType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f1702[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1702[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.appsflyer.AppsFlyerLibCore$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$a.class */
    public final class RunnableC1798a implements Runnable {

        /* renamed from: ɩ */
        public final AFEvent f1716;

        public RunnableC1798a(AFEvent aFEvent) {
            this.f1716 = aFEvent.weakContext();
        }

        public /* synthetic */ RunnableC1798a(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b) {
            this(aFEvent);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x03ac -> B:133:0x0398). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:126:0x0398 -> B:133:0x0398). Please submit an issue!!! */
        @Override // java.lang.Runnable
        public final void run() {
            IOException e;
            Throwable th;
            File file;
            Throwable th2;
            Map<String, Object> params = this.f1716.params();
            boolean z = this.f1716.m36301();
            String urlString = this.f1716.urlString();
            AFEvent aFEvent = this.f1716;
            int i = aFEvent.f1616;
            Context context = aFEvent.context();
            if (!AppsFlyerLibCore.this.isTrackingStopped()) {
                byte[] bArr = new byte[0];
                if (z && i <= 2) {
                    ArrayList arrayList = new ArrayList();
                    if (AppsFlyerLibCore.this.m36239()) {
                        params.put(AppsFlyerLibCore.INSTALL_REFERRER_PREF, AppsFlyerLibCore.this.f1688.oldMap);
                        AppsFlyerLibCore.getSharedPreferences(context).edit().putBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, true).apply();
                        arrayList.add(AppsFlyerLibCore.this.f1688.newMap);
                    }
                    if (AppsFlyerLibCore.this.f1697 != null) {
                        Map<String, Object> map = AppsFlyerLibCore.this.f1697.map;
                        if (map != null) {
                            arrayList.add(map);
                        } else if (AppsFlyerLibCore.this.f1697.valid() && i == 2) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("source", Payload.SOURCE_HUAWEI);
                            hashMap.put(Payload.RESPONSE, Payload.RESPONSE_TIMEOUT);
                            hashMap.putAll(new MandatoryFields());
                            arrayList.add(hashMap);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        params.put(Payload.RFRS, arrayList);
                    }
                    if (AppsFlyerLibCore.this.f1689 != null) {
                        params.put("fb_ddl", AppsFlyerLibCore.this.f1689);
                    }
                    if (AppsFlyerLibCore.this.m36207()) {
                        params.put("lvl", AppsFlyerLibCore.this.f1692);
                    } else if (AppsFlyerLibCore.this.f1696) {
                        AppsFlyerLibCore.this.f1692 = new HashMap();
                        AppsFlyerLibCore.this.f1692.put("error", "operation timed out.");
                    }
                }
                if (!(this.f1716 instanceof AdRevenue)) {
                    params.putAll(new C1839c.C1840a(params, context));
                }
                OutputStreamWriter outputStreamWriter = null;
                bArr = bArr;
                try {
                    try {
                        this.f1716.key(this.f1716 instanceof AdRevenue ? (String) params.get("af_key") : (String) params.get("appsflyerKey"));
                        synchronized (params) {
                            try {
                                byte[] bArr2 = (byte[]) ((Class) C1842d.m36132(48, (char) 11758, 24)).getMethod("ɩ", AFEvent.class).invoke(null, this.f1716);
                                try {
                                    try {
                                        AppsFlyerLibCore.m36260(AppsFlyerLibCore.this, this.f1716.post(bArr2));
                                        return;
                                    } catch (IOException e2) {
                                        e = e2;
                                        bArr = bArr2;
                                        AFLogger.afErrorLog("Exception while sending request to server. ", e);
                                        if (bArr != null && context != null && !urlString.contains("&isCachedRequest=true&timeincache=")) {
                                            C1818aa.m36194();
                                            C1847j jVar = new C1847j(urlString, bArr, "5.4.0");
                                            try {
                                                try {
                                                    file = C1818aa.m36191(context);
                                                } catch (IOException e3) {
                                                }
                                            } catch (Exception e4) {
                                            } catch (Throwable th3) {
                                                th = th3;
                                                outputStreamWriter = null;
                                            }
                                            if (!file.exists()) {
                                                file.mkdir();
                                            } else {
                                                File[] listFiles = file.listFiles();
                                                if (listFiles == null || listFiles.length <= 40) {
                                                    File file2 = new File(C1818aa.m36191(context), Long.toString(System.currentTimeMillis()));
                                                    file2.createNewFile();
                                                    outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file2.getPath(), true));
                                                    try {
                                                        outputStreamWriter.write("version=");
                                                        outputStreamWriter.write(jVar.f1874);
                                                        outputStreamWriter.write(10);
                                                        outputStreamWriter.write("url=");
                                                        outputStreamWriter.write(jVar.f1872);
                                                        outputStreamWriter.write(10);
                                                        outputStreamWriter.write("data=");
                                                        outputStreamWriter.write(Base64.encodeToString(jVar.m36127(), 2));
                                                        outputStreamWriter.write(10);
                                                        outputStreamWriter.flush();
                                                        outputStreamWriter.close();
                                                    } catch (Exception e5) {
                                                        if (outputStreamWriter != null) {
                                                            outputStreamWriter.close();
                                                        }
                                                        AFLogger.afErrorLog(e.getMessage(), e);
                                                        return;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        if (outputStreamWriter != null) {
                                                            try {
                                                                outputStreamWriter.close();
                                                            } catch (IOException e6) {
                                                            }
                                                        }
                                                        throw th;
                                                    }
                                                }
                                            }
                                            AFLogger.afErrorLog(e.getMessage(), e);
                                            return;
                                        }
                                        return;
                                    }
                                } catch (Throwable th5) {
                                    th2 = th5;
                                    bArr = bArr2;
                                    throw th2;
                                }
                            } catch (Throwable th6) {
                                th2 = th6;
                            }
                        }
                        throw th2;
                    } catch (IOException e7) {
                        e = e7;
                    }
                } catch (Throwable th7) {
                    AFLogger.afErrorLog(th7.getMessage(), th7);
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.appsflyer.AppsFlyerLibCore$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$b.class */
    public static final class RunnableC1799b implements Runnable {
        @VisibleForTesting

        /* renamed from: ı */
        public static String f1718 = "https://%sgcdsdk.%s/install_data/v4.0/";

        /* renamed from: ι */
        public static final List<String> f1719 = Arrays.asList("googleplay", "playstore", "googleplaystore");

        /* renamed from: ǃ */
        public final String f1720;

        /* renamed from: ɩ */
        public final Application f1721;

        /* renamed from: ɹ */
        public AppsFlyerLibCore f1722;

        /* renamed from: Ι */
        public final ScheduledExecutorService f1723;

        /* renamed from: І */
        public final AtomicInteger f1724;

        /* renamed from: і */
        public final int f1725;

        public RunnableC1799b(RunnableC1799b bVar) {
            this.f1723 = AFExecutor.getInstance().m36298();
            this.f1724 = new AtomicInteger(0);
            this.f1722 = bVar.f1722;
            this.f1721 = bVar.f1721;
            this.f1720 = bVar.f1720;
            this.f1725 = bVar.f1725 + 1;
        }

        public RunnableC1799b(AppsFlyerLibCore appsFlyerLibCore, Application application, String str) {
            this.f1723 = AFExecutor.getInstance().m36298();
            this.f1724 = new AtomicInteger(0);
            this.f1722 = appsFlyerLibCore;
            this.f1721 = application;
            this.f1720 = str;
            this.f1725 = 0;
        }

        public /* synthetic */ RunnableC1799b(AppsFlyerLibCore appsFlyerLibCore, Application application, String str, byte b) {
            this(appsFlyerLibCore, application, str);
        }

        /* renamed from: Ι */
        private void m36200(String str, int i) {
            if (500 > i || i >= 600) {
                AFLogger.afDebugLog("Calling onConversionFailure with:\n".concat(String.valueOf(str)));
                AppsFlyerLibCore.f1667.onConversionDataFail(str);
            } else if (this.f1725 == 2) {
                AFLogger.afDebugLog("Calling onConversionFailure with:\n".concat(String.valueOf(str)));
                AppsFlyerLibCore.f1667.onConversionDataFail(str);
            } else {
                RunnableC1799b bVar = new RunnableC1799b(this);
                AppsFlyerLibCore.m36230(bVar.f1723, bVar, 10L, TimeUnit.MILLISECONDS);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x043b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x03f9, code lost:
            if (r9 == null) goto L_0x0432;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x042b, code lost:
            if (r9 == null) goto L_0x0432;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x042e, code lost:
            r9.disconnect();
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0432, code lost:
            r8.f1723.shutdown();
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00e9 A[Catch: all -> 0x0404, TryCatch #0 {all -> 0x0404, blocks: (B:10:0x0026, B:14:0x0038, B:16:0x0053, B:18:0x0062, B:19:0x006f, B:22:0x0082, B:24:0x00e9, B:25:0x00f5, B:25:0x00f5, B:26:0x00f8), top: B:108:0x0026 }] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x015c A[Catch: all -> 0x03ff, TryCatch #3 {all -> 0x03ff, blocks: (B:28:0x012e, B:30:0x015c, B:31:0x016b, B:32:0x016e, B:37:0x019a, B:39:0x01a0, B:40:0x01b1, B:41:0x01b4, B:42:0x01e2, B:44:0x020b, B:47:0x0229, B:50:0x0260, B:52:0x0268, B:54:0x0277, B:56:0x0286, B:58:0x0293, B:59:0x02bb, B:61:0x02d7, B:63:0x02e2, B:65:0x0309, B:67:0x032d, B:68:0x033c, B:69:0x0348, B:70:0x034b, B:72:0x0374, B:75:0x0383, B:77:0x0390, B:79:0x03a3, B:82:0x03ba, B:84:0x03c6), top: B:114:0x012e, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x020b A[Catch: all -> 0x03ff, TRY_LEAVE, TryCatch #3 {all -> 0x03ff, blocks: (B:28:0x012e, B:30:0x015c, B:31:0x016b, B:32:0x016e, B:37:0x019a, B:39:0x01a0, B:40:0x01b1, B:41:0x01b4, B:42:0x01e2, B:44:0x020b, B:47:0x0229, B:50:0x0260, B:52:0x0268, B:54:0x0277, B:56:0x0286, B:58:0x0293, B:59:0x02bb, B:61:0x02d7, B:63:0x02e2, B:65:0x0309, B:67:0x032d, B:68:0x033c, B:69:0x0348, B:70:0x034b, B:72:0x0374, B:75:0x0383, B:77:0x0390, B:79:0x03a3, B:82:0x03ba, B:84:0x03c6), top: B:114:0x012e, inners: #1 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 1106
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.RunnableC1799b.run():void");
        }
    }

    /* renamed from: com.appsflyer.AppsFlyerLibCore$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$c.class */
    public final class RunnableC1800c implements Runnable {

        /* renamed from: ι */
        public WeakReference<Context> f1727;

        public RunnableC1800c(Context context) {
            this.f1727 = null;
            this.f1727 = new WeakReference<>(context);
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Runnable
        public final void run() {
            if (!AppsFlyerLibCore.this.f1695) {
                AppsFlyerLibCore.this.f1699 = System.currentTimeMillis();
                if (this.f1727 != null) {
                    AppsFlyerLibCore.this.f1695 = true;
                    try {
                        try {
                            String str = AppsFlyerLibCore.m36243(AppsFlyerProperties.AF_KEY);
                            synchronized (this.f1727) {
                                C1818aa.m36194();
                                for (C1847j jVar : C1818aa.m36193(this.f1727.get())) {
                                    StringBuilder sb = new StringBuilder("resending request: ");
                                    sb.append(jVar.f1872);
                                    AFLogger.afInfoLog(sb.toString());
                                    try {
                                        long currentTimeMillis = System.currentTimeMillis();
                                        long parseLong = Long.parseLong(jVar.f1873, 10);
                                        AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                                        CachedEvent cachedEvent = new CachedEvent();
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(jVar.f1872);
                                        sb2.append("&isCachedRequest=true&timeincache=");
                                        sb2.append((currentTimeMillis - parseLong) / 1000);
                                        AFEvent key = cachedEvent.urlString(sb2.toString()).post(jVar.m36127()).key(str);
                                        key.f1612 = this.f1727;
                                        key.f1619 = jVar.f1873;
                                        key.f1615 = false;
                                        AppsFlyerLibCore.m36260(appsFlyerLibCore, key);
                                    } catch (Exception e) {
                                        AFLogger.afErrorLog("Failed to resend cached request", e);
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            AFLogger.afErrorLog("failed to check cache. ", e2);
                        }
                        AppsFlyerLibCore.this.f1695 = false;
                        AppsFlyerLibCore.this.f1674.shutdown();
                        AppsFlyerLibCore.this.f1674 = null;
                    } catch (Throwable th) {
                        AppsFlyerLibCore.this.f1695 = false;
                        throw th;
                    }
                }
            }
        }
    }

    /* renamed from: com.appsflyer.AppsFlyerLibCore$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$e.class */
    public final class RunnableC1801e implements Runnable {

        /* renamed from: ı */
        public AFEvent f1728;

        public RunnableC1801e(AFEvent aFEvent) {
            this.f1728 = aFEvent;
        }

        public /* synthetic */ RunnableC1801e(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b) {
            this(aFEvent);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
            AFEvent aFEvent = this.f1728;
            aFEvent.f1623 = aFEvent.f1612.get();
            appsFlyerLibCore.m36264(aFEvent);
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(f1663);
        sb.append("/androidevent?buildnumber=5.4.0&app_id=");
        f1664 = sb.toString();
        StringBuilder sb2 = new StringBuilder("https://%sregister.%s/api/v");
        sb2.append(f1664);
        REGISTER_URL = sb2.toString();
        StringBuilder sb3 = new StringBuilder("https://%sadrevenue.%s/api/v");
        sb3.append(f1663);
        sb3.append("/android?buildnumber=5.4.0&app_id=");
        f1670 = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(f1663);
        sb4.append("/androidevent?app_id=");
        f1671 = sb4.toString();
        StringBuilder sb5 = new StringBuilder("https://%sconversions.%s/api/v");
        sb5.append(f1671);
        FIRST_LAUNCHES_URL = sb5.toString();
        StringBuilder sb6 = new StringBuilder("https://%slaunches.%s/api/v");
        sb6.append(f1671);
        f1668 = sb6.toString();
        StringBuilder sb7 = new StringBuilder("https://%sinapps.%s/api/v");
        sb7.append(f1671);
        f1669 = sb7.toString();
        StringBuilder sb8 = new StringBuilder("https://%sattr.%s/api/v");
        sb8.append(f1671);
        REFERRER_TRACKING_URL = sb8.toString();
    }

    @VisibleForTesting
    public AppsFlyerLibCore() {
        AFVersionDeclaration.init();
    }

    public static AppsFlyerLibCore getInstance() {
        return instance;
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        return context.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
    }

    /* renamed from: ı */
    public static String m36259(String str) {
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
    public static Map<String, Object> m36268(Context context) throws C1869y {
        String string = getSharedPreferences(context).getString("attributionId", null);
        if (string != null && string.length() > 0) {
            return m36233(string);
        }
        throw new C1869y();
    }

    /* renamed from: ı */
    public static void m36267(Context context, String str) {
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
                m36240(jSONObject);
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
    private void m36266(Context context, String str, String str2, Intent intent) {
        AFEvent context2 = new Launch().context(context);
        context2.f1626 = null;
        AFEvent key = context2.key(str);
        key.f1622 = null;
        key.f1613 = str2;
        key.f1614 = intent;
        key.f1624 = null;
        m36223(key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ı */
    public void m36264(AFEvent aFEvent) {
        ScheduledExecutorService scheduledExecutorService;
        Context context = aFEvent.context();
        String str = aFEvent.f1626;
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
        boolean z = false;
        boolean z2 = str == null;
        boolean z3 = aFEvent instanceof BackgroundReferrerLaunch;
        boolean z4 = aFEvent instanceof Attr;
        aFEvent.f1615 = z2;
        Map<String, ?> map = m36236(aFEvent);
        String str2 = (String) map.get("appsflyerKey");
        if (str2 == null || str2.length() == 0) {
            AFLogger.afDebugLog("Not sending data yet, waiting for dev key");
            return;
        }
        if (!isTrackingStopped()) {
            AFLogger.afInfoLog("AppsFlyerLib.sendTrackingWithEvent");
        }
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        String url = (z4 || z3) ? ServerConfigHandler.getUrl(REFERRER_TRACKING_URL) : z2 ? launchCounter < 2 ? ServerConfigHandler.getUrl(FIRST_LAUNCHES_URL) : ServerConfigHandler.getUrl(f1668) : ServerConfigHandler.getUrl(f1669);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(url);
        sb2.append(context.getPackageName());
        String obj = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(obj);
        sb3.append("&buildnumber=5.4.0");
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
                if (TextUtils.isEmpty(this.f1691) && map.remove("android_id") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: android_id");
                }
                if (TextUtils.isEmpty(this.f1690) && map.remove("imei") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: imei");
                }
            } catch (Exception e) {
                AFLogger.afErrorLog("failed to remove IMEI or AndroidID key from params; ", e);
            }
        }
        AFEvent aFEvent2 = aFEvent.urlString(str3).params(map).m36302();
        aFEvent2.f1616 = launchCounter;
        RunnableC1798a aVar = new RunnableC1798a(this, aFEvent2, (byte) 0);
        if (z2) {
            boolean z5 = false;
            if (GoogleReferrer.allow(this, context)) {
                z5 = false;
                if (!m36239()) {
                    AFLogger.afDebugLog("Failed to get new referrer, wait ...");
                    z5 = true;
                }
            }
            HuaweiReferrer huaweiReferrer = this.f1697;
            boolean z6 = z5;
            if (huaweiReferrer != null) {
                z6 = z5;
                if (huaweiReferrer.valid()) {
                    z6 = true;
                }
            }
            boolean z7 = z6;
            if (this.f1694) {
                z7 = z6;
                if (!m36269()) {
                    AFLogger.afDebugLog("fetching Facebook deferred AppLink data, wait ...");
                    z7 = true;
                }
            }
            z = z7;
            if (this.f1696) {
                z = z7;
                if (!m36207()) {
                    z = true;
                }
            }
        }
        if (AFDeepLinkManager.f1607) {
            AFLogger.afRDLog("ESP deeplink: execute launch on SerialExecutor");
            AFExecutor instance2 = AFExecutor.getInstance();
            if (instance2.f1630 == null) {
                instance2.f1630 = Executors.newSingleThreadScheduledExecutor(instance2.f1629);
            }
            scheduledExecutorService = instance2.f1630;
        } else {
            scheduledExecutorService = AFExecutor.getInstance().m36298();
        }
        m36230(scheduledExecutorService, aVar, z ? 500L : 0L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: ı */
    public static /* synthetic */ void m36260(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent) throws IOException {
        String str;
        StringBuilder sb = new StringBuilder("url: ");
        sb.append(aFEvent.urlString());
        AFLogger.afInfoLog(sb.toString());
        if (aFEvent.f1619 != null) {
            str = Base64.encodeToString(aFEvent.m36300(), 2);
            AFLogger.afInfoLog("cached data: ".concat(String.valueOf(str)));
        } else {
            str = new JSONObject(aFEvent.params()).toString();
            C1829ah.m36174("data: ".concat(String.valueOf(str)));
        }
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("server_request", aFEvent.urlString(), str);
        try {
            appsFlyerLibCore.m36214(aFEvent);
        } catch (IOException e) {
            AFLogger.afErrorLog("Exception in sendRequestToServer. ", e);
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.USE_HTTP_FALLBACK, false)) {
                appsFlyerLibCore.m36214(aFEvent.urlString(aFEvent.urlString().replace("https:", "http:")));
                return;
            }
            StringBuilder sb2 = new StringBuilder("failed to send requeset to server. ");
            sb2.append(e.getLocalizedMessage());
            AFLogger.afInfoLog(sb2.toString());
            throw e;
        }
    }

    /* renamed from: ı */
    private boolean m36269() {
        Map<String, Object> map = this.f1689;
        return map != null && !map.isEmpty();
    }

    /* renamed from: ı */
    public static boolean m36265(@NonNull SharedPreferences sharedPreferences) {
        return Boolean.parseBoolean(sharedPreferences.getString("sentSuccessfully", null));
    }

    /* renamed from: ı */
    private boolean m36263(AFEvent aFEvent, SharedPreferences sharedPreferences) {
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        return (!sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false) && launchCounter == 1) || (launchCounter == 1 && !(aFEvent instanceof Attr));
    }

    /* renamed from: Ɩ */
    public static boolean m36257(Context context) {
        return (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) || !m36217(context);
    }

    /* renamed from: ǃ */
    public static int m36248(SharedPreferences sharedPreferences, String str, boolean z) {
        int i = sharedPreferences.getInt(str, 0);
        int i2 = i;
        if (z) {
            i2 = i + 1;
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putInt(str, i2);
            edit.apply();
        }
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        if (C1830ai.f1791.m36161()) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai.f1791.m36168(String.valueOf(i2));
        }
        return i2;
    }

    /* renamed from: ǃ */
    public static String m36252(Context context, String str) {
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
    public static String m36244(File file, String str) {
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

    /* renamed from: ǃ */
    public static /* synthetic */ String m36243(String str) {
        return AppsFlyerProperties.getInstance().getString(str);
    }

    /* renamed from: ǃ */
    public static /* synthetic */ void m36250(Context context, String str, String str2) {
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    /* renamed from: ǃ */
    public static void m36249(Context context, Map<String, Object> map) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            map.put("sc_o", rotation != 0 ? rotation != 1 ? rotation != 2 ? rotation != 3 ? "" : "lr" : "pr" : "l" : "p");
        }
    }

    /* renamed from: ǃ */
    public static void m36240(JSONObject jSONObject) {
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
            } catch (JSONException e) {
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
                    while (i2 < jSONArray2.length()) {
                        try {
                            if (jSONArray2.getLong(i2) != ((Long) arrayList.get(0)).longValue() && jSONArray2.getLong(i2) != ((Long) arrayList.get(1)).longValue() && jSONArray2.getLong(i2) != ((Long) arrayList.get(arrayList.size() - 1)).longValue()) {
                                i2++;
                                str = next;
                            }
                        } catch (JSONException e2) {
                        }
                    }
                    continue;
                } catch (JSONException e3) {
                }
            }
        }
        if (str != null) {
            jSONObject.remove(str);
        }
    }

    @Nullable
    /* renamed from: ɩ */
    public static String m36232(String str, PackageManager packageManager, String str2) {
        Object obj;
        try {
            Bundle bundle = ((PackageItemInfo) packageManager.getApplicationInfo(str2, 128)).metaData;
            if (bundle == null || (obj = bundle.get(str)) == null) {
                return null;
            }
            String obj2 = obj.toString();
            if (!obj2.replaceAll("\\p{C}", "").equals(obj2)) {
                StringBuilder sb = new StringBuilder("Manifest meta-data ");
                sb.append(str);
                sb.append(": ");
                sb.append(obj2);
                sb.append(" contains non-printing characters");
                AFLogger.afWarnLog(sb.toString());
            }
            return obj2;
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder("Could not find ");
            sb2.append(str);
            sb2.append(" value in the manifest");
            AFLogger.afErrorLog(sb2.toString(), th);
            return null;
        }
    }

    /* renamed from: ɩ */
    public static Map<String, Object> m36233(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!f1672.contains(next)) {
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
    public static void m36238(Context context) {
        int i;
        if (AndroidUtils.m36273()) {
            i = 23;
            AFLogger.afRDLog("OPPO device found");
        } else {
            i = 18;
        }
        if (Build.VERSION.SDK_INT < i || m36210(AppsFlyerProperties.DISABLE_KEYSTORE)) {
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
        if (!aFKeystoreWrapper.m36294()) {
            aFKeystoreWrapper.f1640 = C1823ae.m36183(new WeakReference(context));
            aFKeystoreWrapper.f1638 = 0;
            aFKeystoreWrapper.m36292(aFKeystoreWrapper.m36293());
        } else {
            String str = aFKeystoreWrapper.m36293();
            synchronized (aFKeystoreWrapper.f1636) {
                aFKeystoreWrapper.f1638++;
                AFLogger.afInfoLog("Deleting key with alias: ".concat(String.valueOf(str)));
                try {
                    synchronized (aFKeystoreWrapper.f1636) {
                        aFKeystoreWrapper.f1639.deleteEntry(str);
                    }
                } catch (KeyStoreException e) {
                    StringBuilder sb3 = new StringBuilder("Exception ");
                    sb3.append(e.getMessage());
                    sb3.append(" occurred");
                    AFLogger.afErrorLog(sb3.toString(), e);
                }
            }
            aFKeystoreWrapper.m36292(aFKeystoreWrapper.m36293());
        }
        AppsFlyerProperties.getInstance().set("KSAppsFlyerId", aFKeystoreWrapper.m36295());
        AppsFlyerProperties.getInstance().set("KSAppsFlyerRICounter", String.valueOf(aFKeystoreWrapper.m36291()));
    }

    /* renamed from: ɩ */
    public static void m36230(ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j, TimeUnit timeUnit) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ɩ */
    public boolean m36239() {
        GoogleReferrer googleReferrer = this.f1688;
        return googleReferrer != null && googleReferrer.oldMap.size() > 0;
    }

    /* renamed from: ɩ */
    public static boolean m36234(File file) {
        return file == null || !file.exists();
    }

    /* renamed from: ɹ */
    public static File m36227(String str) {
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

    /* renamed from: ɹ */
    public static boolean m36229(Context context) {
        if (context == null) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                for (Network network : connectivityManager.getAllNetworks()) {
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                    if (networkCapabilities.hasTransport(4) && !networkCapabilities.hasCapability(15)) {
                        return true;
                    }
                }
                return false;
            } catch (Exception e) {
                AFLogger.afErrorLog("Failed collecting ivc data", e);
                return false;
            }
        } else if (i < 16) {
            return false;
        } else {
            ArrayList arrayList = new ArrayList();
            try {
                Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                while (it.hasNext()) {
                    NetworkInterface networkInterface = (NetworkInterface) it.next();
                    if (networkInterface.isUp()) {
                        arrayList.add(networkInterface.getName());
                    }
                }
                return arrayList.contains("tun0");
            } catch (Exception e2) {
                AFLogger.afErrorLog("Failed collecting ivc data", e2);
                return false;
            }
        }
    }

    /* renamed from: Ι */
    private void m36223(AFEvent aFEvent) {
        aFEvent.m36302();
        boolean z = aFEvent.f1626 == null;
        if (m36218()) {
            AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
            return;
        }
        if (z) {
            if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, true)) {
                AFLogger.afInfoLog("Allowing multiple launches within a 5 second time window.");
            } else if (m36226()) {
                return;
            }
            this.f1679 = System.currentTimeMillis();
        }
        m36230(AFExecutor.getInstance().m36298(), new RunnableC1801e(this, aFEvent.weakContext(), (byte) 0), 150L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: Ι */
    public static /* synthetic */ void m36222(AppsFlyerLibCore appsFlyerLibCore) {
        AFEvent context = new Attr().context(appsFlyerLibCore.f1693);
        if (appsFlyerLibCore.m36239() && appsFlyerLibCore.m36263(context, getSharedPreferences(appsFlyerLibCore.f1693))) {
            appsFlyerLibCore.m36264(context);
        }
    }

    /* renamed from: Ι */
    public static void m36219(Map<String, String> map) {
        if (f1667 != null) {
            try {
                StringBuilder sb = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb.append(map.toString());
                AFLogger.afDebugLog(sb.toString());
                f1667.onAppOpenAttribution(map);
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getLocalizedMessage(), th);
            }
        }
    }

    /* renamed from: Ι */
    private boolean m36226() {
        if (this.f1679 > 0) {
            long currentTimeMillis = System.currentTimeMillis() - this.f1679;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", Locale.US);
            long j = this.f1679;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String format = simpleDateFormat.format(new Date(j));
            long j2 = this.f1673;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String format2 = simpleDateFormat.format(new Date(j2));
            if (currentTimeMillis < this.f1686 && !isTrackingStopped()) {
                AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", format, format2, Long.valueOf(currentTimeMillis), Long.valueOf(this.f1686)));
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

    /* renamed from: Ι */
    private boolean m36225(Context context) {
        try {
            Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
            final long currentTimeMillis = System.currentTimeMillis();
            this.f1692 = new ConcurrentHashMap();
            final C1856t.AbstractC1858d dVar = new C1856t.AbstractC1858d() { // from class: com.appsflyer.AppsFlyerLibCore.4
                @Override // com.appsflyer.internal.C1856t.AbstractC1858d
                /* renamed from: ı */
                public final void mo36114(@NonNull String str, @NonNull String str2) {
                    AppsFlyerLibCore.this.f1692.put("signedData", str);
                    AppsFlyerLibCore.this.f1692.put("signature", str2);
                    AppsFlyerLibCore.this.f1692.put("ttr", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    AFLogger.afInfoLog("Successfully retrieved Google LVL data.");
                }

                @Override // com.appsflyer.internal.C1856t.AbstractC1858d
                /* renamed from: ǃ */
                public final void mo36113(String str, Exception exc) {
                    String message = exc.getMessage();
                    String str2 = message;
                    if (message == null) {
                        str2 = "unknown";
                    }
                    AppsFlyerLibCore.this.f1692.put("error", str2);
                    AFLogger.afErrorLog(str, exc, true);
                }
            };
            try {
                try {
                    Class<?> cls = Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
                    Class<?> cls2 = Class.forName("com.appsflyer.lvl.AppsFlyerLVL$resultListener");
                    cls.getMethod("checkLicense", Long.TYPE, Context.class, cls2).invoke(null, Long.valueOf(currentTimeMillis), context, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.t.3
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method, Object[] objArr) {
                            if (method.getName().equals("onLvlResult")) {
                                String str = objArr[0] != null ? (String) objArr[0] : null;
                                String str2 = objArr[1] != null ? (String) objArr[1] : null;
                                AbstractC1858d dVar2 = dVar;
                                if (dVar2 == null) {
                                    AFLogger.afDebugLog("onLvlResult invocation succeeded, but listener is null");
                                    return null;
                                } else if (str != null && str2 != null) {
                                    dVar2.mo36114(str, str2);
                                    return null;
                                } else if (str2 == null) {
                                    dVar.mo36113("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                                    return null;
                                } else {
                                    dVar.mo36113("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                                    return null;
                                }
                            } else if (method.getName().equals("onLvlFailure")) {
                                AbstractC1858d dVar3 = dVar;
                                if (dVar3 == null) {
                                    AFLogger.afDebugLog("onLvlFailure: listener is null");
                                    return null;
                                } else if (objArr[0] != null) {
                                    dVar3.mo36113("onLvlFailure with exception", (Exception) objArr[0]);
                                    return null;
                                } else {
                                    dVar3.mo36113("onLvlFailure", new Exception("unknown"));
                                    return null;
                                }
                            } else {
                                AbstractC1858d dVar4 = dVar;
                                if (dVar4 == null) {
                                    return null;
                                }
                                dVar4.mo36113("lvlInvocation failed", new Exception("com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"));
                                return null;
                            }
                        }
                    }));
                    return true;
                } catch (ClassNotFoundException e) {
                    dVar.mo36113(e.getClass().getSimpleName(), e);
                    return true;
                } catch (IllegalAccessException e2) {
                    dVar.mo36113(e2.getClass().getSimpleName(), e2);
                    return true;
                }
            } catch (NoSuchMethodException e3) {
                dVar.mo36113(e3.getClass().getSimpleName(), e3);
                return true;
            } catch (InvocationTargetException e4) {
                dVar.mo36113(e4.getClass().getSimpleName(), e4);
                return true;
            }
        } catch (ClassNotFoundException e5) {
            return false;
        }
    }

    /* renamed from: ι */
    public static String m36209(SimpleDateFormat simpleDateFormat, Context context) {
        String str;
        String string = getSharedPreferences(context).getString("appsFlyerFirstInstall", null);
        String str2 = string;
        if (string == null) {
            if (m36204(context)) {
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

    /* renamed from: ι */
    public static void m36216(Context context, String str, long j) {
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        edit.putLong(str, j);
        edit.apply();
    }

    /* renamed from: ι */
    public static void m36215(Context context, Map<String, ? super String> map) {
        C1853s sVar = C1853s.C1855d.f1903;
        C1853s.C1854a aVar = C1853s.m36116(context);
        map.put("network", aVar.f1900);
        String str = aVar.f1902;
        if (str != null) {
            map.put("operator", str);
        }
        String str2 = aVar.f1901;
        if (str2 != null) {
            map.put("carrier", str2);
        }
    }

    /* renamed from: ι */
    private void m36214(AFEvent aFEvent) throws IOException {
        HttpURLConnection httpURLConnection;
        Throwable th;
        HttpURLConnection httpURLConnection2;
        Throwable th2;
        DataOutputStream dataOutputStream;
        URL url = new URL(aFEvent.f1625);
        byte[] bArr = aFEvent.m36300();
        String key = aFEvent.key();
        String str = aFEvent.f1619;
        boolean z = aFEvent.m36301();
        Context context = aFEvent.context();
        AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener = aFEvent.f1617;
        boolean z2 = z && f1667 != null;
        try {
            httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
        try {
            httpURLConnection2.setRequestMethod("POST");
            httpURLConnection2.setRequestProperty("Content-Length", String.valueOf(bArr.length));
            httpURLConnection2.setRequestProperty("Content-Type", aFEvent.isEncrypt() ? "application/octet-stream" : "application/json");
            httpURLConnection2.setConnectTimeout(10000);
            httpURLConnection2.setDoOutput(true);
            try {
                dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                try {
                    dataOutputStream.write(bArr);
                    dataOutputStream.close();
                    int responseCode = httpURLConnection2.getResponseCode();
                    String str2 = m36242(httpURLConnection2);
                    if (C1830ai.f1791 == null) {
                        C1830ai.f1791 = new C1830ai();
                    }
                    C1830ai.f1791.m36172("server_response", url.toString(), String.valueOf(responseCode), str2);
                    AFLogger.afInfoLog("response code: ".concat(String.valueOf(responseCode)));
                    SharedPreferences sharedPreferences = getSharedPreferences(context);
                    if (responseCode == 200) {
                        if (context != null && z) {
                            this.f1673 = System.currentTimeMillis();
                        }
                        if (appsFlyerTrackingRequestListener != null) {
                            appsFlyerTrackingRequestListener.onTrackingRequestSuccess();
                        }
                        if (str != null) {
                            C1818aa.m36194();
                            C1818aa.m36192(str, context);
                        } else {
                            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
                            edit.putString("sentSuccessfully", "true");
                            edit.apply();
                            if (!this.f1695 && System.currentTimeMillis() - this.f1699 >= TooltipCompatHandler.HOVER_HIDE_TIMEOUT_MS && this.f1674 == null) {
                                this.f1674 = AFExecutor.getInstance().m36298();
                                m36230(this.f1674, new RunnableC1800c(context), 1L, TimeUnit.SECONDS);
                            }
                        }
                        String string = AppsFlyerProperties.getInstance().getString("afUninstallToken");
                        if (string != null) {
                            AFLogger.afDebugLog("Uninstall Token exists: ".concat(String.valueOf(string)));
                            if (!sharedPreferences.getBoolean("sentRegisterRequestToAF", false)) {
                                AFLogger.afDebugLog("Resending Uninstall token to AF servers: ".concat(String.valueOf(string)));
                                C1824af.m36182(context, string);
                            }
                        }
                        if (this.latestDeepLink != null) {
                            this.latestDeepLink = null;
                        }
                        this.f1681 = ServerConfigHandler.m36196(str2).optBoolean("send_background", false);
                    } else if (appsFlyerTrackingRequestListener != null) {
                        appsFlyerTrackingRequestListener.onTrackingRequestFailure("Failure: ".concat(String.valueOf(responseCode)));
                    }
                    long j = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
                    if (j != 0 && System.currentTimeMillis() - j > 5184000000L) {
                        SharedPreferences.Editor edit2 = getSharedPreferences(context).edit();
                        edit2.putBoolean("sixtyDayConversionData", true);
                        edit2.apply();
                        SharedPreferences.Editor edit3 = getSharedPreferences(context).edit();
                        edit3.putString("attributionId", null);
                        edit3.apply();
                        m36216(context, "appsflyerConversionDataCacheExpiration", 0L);
                    }
                    if (sharedPreferences.getString("attributionId", null) == null && key != null && z2) {
                        RunnableC1799b bVar = new RunnableC1799b(this, (Application) context.getApplicationContext(), key, (byte) 0);
                        m36230(bVar.f1723, bVar, 10L, TimeUnit.MILLISECONDS);
                    } else if (key == null) {
                        AFLogger.afWarnLog("AppsFlyer dev key is missing.");
                    } else if (z2 && sharedPreferences.getString("attributionId", null) != null && getLaunchCounter(sharedPreferences, false) > 1) {
                        try {
                            Map<String, Object> map = m36268(context);
                            if (map != null) {
                                try {
                                    if (!map.containsKey("is_first_launch")) {
                                        map.put("is_first_launch", Boolean.FALSE);
                                    }
                                    StringBuilder sb = new StringBuilder("Calling onConversionDataSuccess with:\n");
                                    sb.append(map.toString());
                                    AFLogger.afDebugLog(sb.toString());
                                    f1667.onConversionDataSuccess(map);
                                } catch (Throwable th4) {
                                    AFLogger.afErrorLog(th4.getLocalizedMessage(), th4);
                                }
                            }
                        } catch (C1869y e) {
                            AFLogger.afErrorLog(e.getMessage(), e);
                        }
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (Throwable th5) {
                    th2 = th5;
                    if (dataOutputStream != null) {
                        dataOutputStream.close();
                    } else if (appsFlyerTrackingRequestListener != null) {
                        appsFlyerTrackingRequestListener.onTrackingRequestFailure("No Connectivity");
                    }
                    throw th2;
                }
            } catch (Throwable th6) {
                th2 = th6;
                dataOutputStream = null;
            }
        } catch (Throwable th7) {
            th = th7;
            httpURLConnection = httpURLConnection2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: ι */
    public static boolean m36218() {
        return m36210(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID) && AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID) == null;
    }

    /* renamed from: ι */
    public static boolean m36217(Context context) {
        try {
            if (C6790c.m21910a().mo21883c(context) == 0) {
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

    /* renamed from: ι */
    public static boolean m36210(String str) {
        return AppsFlyerProperties.getInstance().getBoolean(str, false);
    }

    /* renamed from: і */
    public static float m36206(Context context) {
        float f;
        int intExtra;
        int intExtra2;
        try {
            Intent registerReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            intExtra = registerReceiver.getIntExtra(IapPlanRealmObject.LEVEL, -1);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: і */
    public boolean m36207() {
        Map<String, Object> map = this.f1692;
        return map != null && !map.isEmpty();
    }

    /* renamed from: Ӏ */
    public static boolean m36204(Context context) {
        return !getSharedPreferences(context).contains("appsFlyerCount");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void enableFacebookDeferredApplinks(boolean z) {
        this.f1694 = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib enableLocationCollection(boolean z) {
        this.f1680 = z;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAppsFlyerUID(Context context) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "getAppsFlyerUID", new String[0]);
        return C1823ae.m36183(new WeakReference(context));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAttributionId(Context context) {
        try {
            return new C1821ac(context).m36186();
        } catch (Throwable th) {
            AFLogger.afErrorLog("Could not collect facebook attribution id. ", th);
            return null;
        }
    }

    @Nullable
    public String getConfiguredChannel(Context context) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.CHANNEL);
        String str = string;
        if (string == null) {
            str = context == null ? null : m36232("CHANNEL", context.getPackageManager(), context.getPackageName());
        }
        if (str == null || !str.equals("")) {
            return str;
        }
        return null;
    }

    public void getConversionData(Context context, final ConversionDataListener conversionDataListener) {
        f1667 = new AppsFlyerConversionListener() { // from class: com.appsflyer.AppsFlyerLibCore.6
            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onAppOpenAttribution(Map<String, String> map) {
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onAttributionFailure(String str) {
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onConversionDataFail(String str) {
                AFLogger.afDebugLog("Calling onConversionFailure with:\n".concat(String.valueOf(str)));
                ConversionDataListener.this.onConversionFailure(str);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onConversionDataSuccess(Map<String, Object> map) {
                StringBuilder sb = new StringBuilder("Calling onConversionDataLoaded with:\n");
                sb.append(map.toString());
                AFLogger.afDebugLog(sb.toString());
                ConversionDataListener.this.onConversionDataLoaded(map);
            }
        };
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
        return m36248(sharedPreferences, "appsFlyerCount", z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getOutOfStore(Context context) {
        String string = AppsFlyerProperties.getInstance().getString("api_store_value");
        if (string != null) {
            return string;
        }
        String str = context == null ? null : m36232("AF_STORE", context.getPackageManager(), context.getPackageName());
        if (str != null) {
            return str;
        }
        AFLogger.afInfoLog("No out-of-store value set");
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getSdkVersion() {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "getSdkVersion", new String[0]);
        StringBuilder sb = new StringBuilder("version: 5.4.0 (build ");
        sb.append(f1666);
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
                if (obj.contains("access_token")) {
                    int indexOf = obj.indexOf(63);
                    String substring = indexOf == -1 ? "" : obj.substring(indexOf);
                    str = obj;
                    if (substring.length() != 0) {
                        ArrayList arrayList = new ArrayList();
                        if (substring.contains(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)) {
                            arrayList = new ArrayList(Arrays.asList(substring.split(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)));
                        } else {
                            arrayList.add(substring);
                        }
                        StringBuilder sb = new StringBuilder();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            if (str2.contains("access_token")) {
                                it.remove();
                            } else {
                                if (sb.length() != 0) {
                                    sb.append(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR);
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
        C1819ab abVar = new C1819ab(uri, this);
        abVar.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        if (abVar.m36190()) {
            abVar.f1774 = new C1819ab.AbstractC1820b() { // from class: com.appsflyer.AppsFlyerLibCore.8
                /* renamed from: ι */
                private void m36201(Map<String, String> map2) {
                    if (weakReference.get() != null) {
                        AppsFlyerLibCore.m36250((Context) weakReference.get(), "deeplinkAttribution", new JSONObject(map2).toString());
                    }
                }

                @Override // com.appsflyer.internal.C1819ab.AbstractC1820b
                /* renamed from: ı */
                public final void mo36189(String str3) {
                    if (AppsFlyerLibCore.f1667 != null) {
                        m36201(hashMap);
                        AFLogger.afDebugLog("Calling onAttributionFailure with:\n".concat(String.valueOf(str3)));
                        AppsFlyerLibCore.f1667.onAttributionFailure(str3);
                    }
                }

                @Override // com.appsflyer.internal.C1819ab.AbstractC1820b
                /* renamed from: ɩ */
                public final void mo36188(Map<String, String> map2) {
                    for (String str3 : map2.keySet()) {
                        hashMap.put(str3, map2.get(str3));
                    }
                    m36201(hashMap);
                    AppsFlyerLibCore.m36219(hashMap);
                }
            };
            AFExecutor.getInstance().getThreadPoolExecutor().execute(abVar);
            return;
        }
        m36219(AndroidUtils.m36271(context, hashMap, uri));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "init", str, appsFlyerConversionListener == null ? C14247d.f31851f : "conversionDataListener");
        AFLogger.m36288(String.format("Initializing AppsFlyer SDK: (v%s.%s)", "5.4.0", f1666));
        this.f1684 = true;
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
        C1829ah.m36175(str);
        f1667 = appsFlyerConversionListener;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, final Context context) {
        if (context != null) {
            this.f1693 = (Application) context.getApplicationContext();
            if (GoogleReferrer.allow(this, context)) {
                if (this.f1688 == null) {
                    this.f1688 = new GoogleReferrer();
                    AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                    this.f1688.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                AFLogger.afDebugLog("Install Referrer collected locally");
                                AppsFlyerLibCore.m36222(AppsFlyerLibCore.this);
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
            if (getLaunchCounter(sharedPreferences, false) < 2) {
                this.f1697 = new HuaweiReferrer(new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (AppsFlyerLibCore.this.getLaunchCounter(sharedPreferences, false) != 1) {
                            return;
                        }
                        if (!GoogleReferrer.allow(AppsFlyerLibCore.this, context) || sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false)) {
                            AppsFlyerLibCore.this.m36264(new Attr().context(context));
                        }
                    }
                }, context);
                this.f1697.start();
            }
            this.f1696 = m36225(context);
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
        return this.f1685;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void onPause(Context context) {
        Foreground.Listener listener = Foreground.listener;
        if (listener != null) {
            listener.onBecameBackground(context);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void performOnAppAttribution(@NonNull Context context, @NonNull URI uri) {
        if (uri == null || uri.toString().isEmpty()) {
            AppsFlyerConversionListener appsFlyerConversionListener = f1667;
            if (appsFlyerConversionListener != null) {
                StringBuilder sb = new StringBuilder("Link is \"");
                sb.append(uri);
                sb.append("\"");
                appsFlyerConversionListener.onAttributionFailure(sb.toString());
            }
        } else if (context == null) {
            AppsFlyerConversionListener appsFlyerConversionListener2 = f1667;
            if (appsFlyerConversionListener2 != null) {
                StringBuilder sb2 = new StringBuilder("Context is \"");
                sb2.append(context);
                sb2.append("\"");
                appsFlyerConversionListener2.onAttributionFailure(sb2.toString());
            }
        } else {
            AFDeepLinkManager.getInstance();
            AFDeepLinkManager.m36303(context, new HashMap(), Uri.parse(uri.toString()));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "registerConversionListener", new String[0]);
        if (appsFlyerConversionListener != null) {
            f1667 = appsFlyerConversionListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "registerValidatorListener", new String[0]);
        AFLogger.afDebugLog("registerValidatorListener called");
        if (appsFlyerInAppPurchaseValidatorListener == null) {
            AFLogger.afDebugLog("registerValidatorListener null listener");
        } else {
            f1665 = appsFlyerInAppPurchaseValidatorListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void reportTrackSession(Context context) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "reportTrackSession", new String[0]);
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.f1796 = false;
        AFEvent context2 = new InAppEvent().context(context);
        context2.f1626 = null;
        context2.f1622 = null;
        m36247(context2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void sendAdRevenue(Context context, Map<String, Object> map) {
        AFEvent context2 = new AdRevenue().context(context);
        context2.f1622 = map;
        Context context3 = context2.context();
        String url = ServerConfigHandler.getUrl(f1670);
        StringBuilder sb = new StringBuilder();
        sb.append(url);
        sb.append(context3.getPackageName());
        String obj = sb.toString();
        SharedPreferences sharedPreferences = getSharedPreferences(context3);
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        int i = m36248(sharedPreferences, "appsFlyerAdRevenueCount", true);
        HashMap hashMap = new HashMap();
        hashMap.put("ad_network", context2.f1622);
        hashMap.put("adrevenue_counter", Integer.valueOf(i));
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        hashMap.put("af_key", string);
        hashMap.put("launch_counter", Integer.valueOf(launchCounter));
        hashMap.put("af_timestamp", Long.toString(new Date().getTime()));
        hashMap.put("uid", C1823ae.m36183(new WeakReference(context3)));
        String string2 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        hashMap.put("advertiserIdEnabled", AppsFlyerProperties.getInstance().getString("advertiserIdEnabled"));
        if (string2 != null) {
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string2);
        }
        hashMap.put("device", Build.DEVICE);
        m36249(context3, hashMap);
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
                str = m36209(simpleDateFormat, context3);
            }
            hashMap.put("first_launch_date", str);
        } catch (Throwable th) {
            AFLogger.afErrorLog("AdRevenue - Exception while collecting app version data ", th);
        }
        AFEvent aFEvent = context2.urlString(obj).params(hashMap).m36302();
        aFEvent.f1616 = launchCounter;
        m36230(AFExecutor.getInstance().m36298(), new RunnableC1798a(this, aFEvent.key(string), (byte) 0), 1L, TimeUnit.MILLISECONDS);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void sendDeepLinkData(Activity activity) {
        if (activity != null && activity.getIntent() != null) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai aiVar = C1830ai.f1791;
            String localClassName = activity.getLocalClassName();
            StringBuilder sb = new StringBuilder("activity_intent_");
            sb.append(activity.getIntent().toString());
            aiVar.m36172("public_api_call", "sendDeepLinkData", localClassName, sb.toString());
        } else if (activity != null) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai.f1791.m36172("public_api_call", "sendDeepLinkData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai.f1791.m36172("public_api_call", "sendDeepLinkData", "activity_null");
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0276  */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendPushNotificationData(android.app.Activity r9) {
        /*
            Method dump skipped, instructions count: 703
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.sendPushNotificationData(android.app.Activity):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAdditionalData(HashMap<String, Object> hashMap) {
        if (hashMap != null) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai.f1791.m36172("public_api_call", "setAdditionalData", hashMap.toString());
            AppsFlyerProperties.getInstance().setCustomData(new JSONObject(hashMap).toString());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAndroidIdData(String str) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setAndroidIdData", str);
        this.f1691 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppId(String str) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setAppId", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppInviteOneLink(String str) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setAppInviteOneLink", str);
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
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setCollectAndroidID", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectIMEI(boolean z) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setCollectIMEI", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectOaid(boolean z) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setCollectOaid", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setConsumeAFDeepLinks(boolean z) {
        AppsFlyerProperties.getInstance().set("consumeAfDeepLink", z);
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setConsumeAFDeepLinks: ".concat(String.valueOf(z)), new String[0]);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCurrencyCode(String str) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setCurrencyCode", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerIdAndTrack(String str, @NonNull Context context) {
        if (context == null) {
            return;
        }
        if (m36218()) {
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
            m36266(context, string, str2, context instanceof Activity ? ((Activity) context).getIntent() : null);
            if (AppsFlyerProperties.getInstance().getString("afUninstallToken") != null) {
                m36237(context, AppsFlyerProperties.getInstance().getString("afUninstallToken"));
                return;
            }
            return;
        }
        setCustomerUserId(str);
        AFLogger.afInfoLog("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerUserId(String str) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setCustomerUserId", str);
        AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_USER_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDebugLog(boolean z) {
        setLogLevel(z ? AFLogger.LogLevel.DEBUG : AFLogger.LogLevel.NONE);
    }

    public void setDeepLinkData(Intent intent) {
        if (intent != null) {
            try {
                if ("android.intent.action.VIEW".equals(intent.getAction())) {
                    this.latestDeepLink = intent.getData();
                    StringBuilder sb = new StringBuilder("Unity setDeepLinkData = ");
                    sb.append(this.latestDeepLink);
                    AFLogger.afDebugLog(sb.toString());
                }
            } catch (Throwable th) {
                AFLogger.afErrorLog("Exception while setting deeplink data (unity). ", th);
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDeviceTrackingDisabled(boolean z) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setDeviceTrackingDisabled", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setExtension(String str) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setExtension", str);
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
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setImeiData", str);
        this.f1690 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setIsUpdate(boolean z) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setIsUpdate", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setLogLevel(@NonNull AFLogger.LogLevel logLevel) {
        boolean z = logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel();
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "log", String.valueOf(z));
        AppsFlyerProperties.getInstance().set("shouldLog", z);
        AppsFlyerProperties.getInstance().set("logLevel", logLevel.getLevel());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setMinTimeBetweenSessions(int i) {
        this.f1686 = TimeUnit.SECONDS.toMillis(i);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOaidData(String str) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setOaidData", str);
        this.f1683 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOneLinkCustomDomain(String... strArr) {
        AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
        AFDeepLinkManager.f1605 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOutOfStore(String str) {
        if (str != null) {
            String lowerCase = str.toLowerCase();
            AppsFlyerProperties.getInstance().set("api_store_value", lowerCase);
            AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
            return;
        }
        AFLogger.m36283("Cannot set setOutOfStore with null");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPhoneNumber(String str) {
        this.f1698 = C1870z.m36099(str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPluginDeepLinkData(Intent intent) {
        setDeepLinkData(intent);
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
            jSONObject.put("c", str2);
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
        AFDeepLinkManager.f1606 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap hashMap = new HashMap();
        String str = null;
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : strArr) {
            if (C179010.f1702[emailsCryptType.ordinal()] != 2) {
                arrayList2.add(C1870z.m36099(str2));
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
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "setUserEmails", strArr);
        setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context) {
        startTracking(context, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, String str) {
        startTracking(context, str, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, final String str, final AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        if (!this.f1684) {
            AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! The API call 'startTracking()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
            if (str == null) {
                return;
            }
        }
        if (Foreground.listener == null) {
            this.f1693 = (Application) context.getApplicationContext();
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai.f1791.m36172("public_api_call", "startTracking", str);
            AFLogger.afInfoLog(String.format("Starting AppsFlyer Tracking: (v%s.%s)", "5.4.0", f1666));
            StringBuilder sb = new StringBuilder("Build Number: ");
            sb.append(f1666);
            AFLogger.afInfoLog(sb.toString());
            AppsFlyerProperties.getInstance().loadProperties(this.f1693.getApplicationContext());
            if (!TextUtils.isEmpty(str)) {
                AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
                C1829ah.m36175(str);
            } else if (TextUtils.isEmpty(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY))) {
                AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the startTracking API method (should be called on Activity's onCreate).");
                return;
            }
            Context baseContext = this.f1693.getBaseContext();
            try {
                if ((baseContext.getPackageManager().getPackageInfo(baseContext.getPackageName(), 0).applicationInfo.flags & 32768) != 0) {
                    if (baseContext.getResources().getIdentifier("appsflyer_backup_rules", "xml", baseContext.getPackageName()) != 0) {
                        AFLogger.afInfoLog("appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
                    } else {
                        AFLogger.m36283("'allowBackup' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules");
                    }
                }
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder("checkBackupRules Exception: ");
                sb2.append(e.toString());
                AFLogger.afRDLog(sb2.toString());
            }
            if (this.f1694) {
                Context applicationContext = this.f1693.getApplicationContext();
                this.f1689 = new HashMap();
                final long currentTimeMillis = System.currentTimeMillis();
                final AFFacebookDeferredDeeplink.AppLinkFetchEvents appLinkFetchEvents = new AFFacebookDeferredDeeplink.AppLinkFetchEvents() { // from class: com.appsflyer.AppsFlyerLibCore.1
                    @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
                    public final void onAppLinkFetchFailed(String str2) {
                        AppsFlyerLibCore.this.f1689.put("error", str2);
                    }

                    @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
                    public final void onAppLinkFetchFinished(String str2, String str3, String str4) {
                        if (str2 != null) {
                            AFLogger.afInfoLog("Facebook Deferred AppLink data received: ".concat(String.valueOf(str2)));
                            AppsFlyerLibCore.this.f1689.put("link", str2);
                            if (str3 != null) {
                                AppsFlyerLibCore.this.f1689.put("target_url", str3);
                            }
                            if (str4 != null) {
                                HashMap hashMap = new HashMap();
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put("promo_code", str4);
                                hashMap.put("deeplink_context", hashMap2);
                                AppsFlyerLibCore.this.f1689.put("extras", hashMap);
                            }
                        } else {
                            AppsFlyerLibCore.this.f1689.put("link", "");
                        }
                        AppsFlyerLibCore.this.f1689.put("ttr", String.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    }
                };
                try {
                    Class.forName(C6135n.f15243a).getMethod("sdkInitialize", Context.class).invoke(null, applicationContext);
                    final Class<?> cls = Class.forName("com.facebook.applinks.AppLinkData");
                    Class<?> cls2 = Class.forName("com.facebook.applinks.AppLinkData$CompletionHandler");
                    Method method = cls.getMethod("fetchDeferredAppLinkData", Context.class, String.class, cls2);
                    Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.AFFacebookDeferredDeeplink.5
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                            String str2;
                            String str3;
                            String str4;
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
                                    str2 = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                                    str3 = bundle2.getString("target_url");
                                    Bundle bundle3 = bundle2.getBundle("extras");
                                    str4 = (bundle3 == null || (bundle = bundle3.getBundle("deeplink_context")) == null) ? null : bundle.getString("promo_code");
                                } else {
                                    str3 = null;
                                    str2 = null;
                                    str4 = null;
                                }
                                AppLinkFetchEvents appLinkFetchEvents3 = appLinkFetchEvents;
                                if (appLinkFetchEvents3 == null) {
                                    return null;
                                }
                                appLinkFetchEvents3.onAppLinkFetchFinished(str2, str3, str4);
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
                    String string = applicationContext.getString(applicationContext.getResources().getIdentifier("facebook_app_id", "string", applicationContext.getPackageName()));
                    if (TextUtils.isEmpty(string)) {
                        appLinkFetchEvents.onAppLinkFetchFailed("Facebook app id not defined in resources");
                    } else {
                        method.invoke(null, applicationContext, string, newProxyInstance);
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
            Foreground.m36198(context, new Foreground.Listener() { // from class: com.appsflyer.AppsFlyerLibCore.2
                @Override // com.appsflyer.Foreground.Listener
                public final void onBecameBackground(Context context2) {
                    AFLogger.afInfoLog("onBecameBackground");
                    AppsFlyerLibCore.this.f1675 = System.currentTimeMillis();
                    AFLogger.afInfoLog("callStatsBackground background call");
                    AppsFlyerLibCore.this.m36231(new WeakReference<>(context2));
                    if (C1830ai.f1791 == null) {
                        C1830ai.f1791 = new C1830ai();
                    }
                    C1830ai aiVar = C1830ai.f1791;
                    if (aiVar.m36161()) {
                        aiVar.m36163();
                        if (context2 != null) {
                            String packageName = context2.getPackageName();
                            PackageManager packageManager = context2.getPackageManager();
                            try {
                                if (C1830ai.f1791 == null) {
                                    C1830ai.f1791 = new C1830ai();
                                }
                                C1830ai.f1791.m36164(packageName, packageManager);
                                if (C1830ai.f1791 == null) {
                                    C1830ai.f1791 = new C1830ai();
                                }
                                BackgroundEvent trackingStopped = new ProxyEvent().body(C1830ai.f1791.m36165()).trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped());
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(ServerConfigHandler.getUrl("https://%smonitorsdk.%s/remote-debug?app_id="));
                                sb3.append(packageName);
                                new Thread(new RunnableC1822ad((BackgroundEvent) trackingStopped.urlString(sb3.toString()))).start();
                            } catch (Throwable th) {
                            }
                        }
                        aiVar.m36169();
                    } else {
                        AFLogger.afDebugLog("RD status is OFF");
                    }
                    AFExecutor instance2 = AFExecutor.getInstance();
                    try {
                        AFExecutor.m36299(instance2.f1631);
                        if (instance2.f1632 instanceof ThreadPoolExecutor) {
                            AFExecutor.m36299((ThreadPoolExecutor) instance2.f1632);
                        }
                    } catch (Throwable th2) {
                        AFLogger.afErrorLog("failed to stop Executors", th2);
                    }
                    AFSensorManager aFSensorManager = AFSensorManager.m36278(context2);
                    aFSensorManager.f1646.post(aFSensorManager.f1655);
                }

                @Override // com.appsflyer.Foreground.Listener
                public final void onBecameForeground(Activity activity) {
                    if (AppsFlyerLibCore.this.getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(activity), false) < 2) {
                        AFSensorManager aFSensorManager = AFSensorManager.m36278(activity);
                        aFSensorManager.f1646.post(aFSensorManager.f1655);
                        aFSensorManager.f1646.post(aFSensorManager.f1651);
                    }
                    AFLogger.afInfoLog("onBecameForeground");
                    AppsFlyerLibCore.this.f1687 = System.currentTimeMillis();
                    AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                    AFEvent key = new Launch().context(activity).key(str);
                    key.f1617 = appsFlyerTrackingRequestListener;
                    appsFlyerLibCore.m36247(key);
                    AFLogger.resetDeltaTime();
                }
            });
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void stopTracking(boolean z, Context context) {
        File[] listFiles;
        this.f1685 = z;
        C1818aa.m36194();
        try {
            File file = C1818aa.m36191(context);
            if (!file.exists()) {
                file.mkdir();
            } else {
                for (File file2 : file.listFiles()) {
                    StringBuilder sb = new StringBuilder("Found cached request");
                    sb.append(file2.getName());
                    sb.toString();
                    C1818aa.m36192(C1818aa.m36195(file2).f1873, context);
                }
            }
        } catch (Exception e) {
        }
        if (this.f1685) {
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putBoolean(IS_STOP_TRACKING_USED, true);
            edit.apply();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void trackAppLaunch(Context context, String str) {
        if (GoogleReferrer.allow(this, context)) {
            if (this.f1688 == null) {
                this.f1688 = new GoogleReferrer();
                AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                this.f1688.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            AFLogger.afDebugLog("Install Referrer collected locally");
                            AppsFlyerLibCore.m36222(AppsFlyerLibCore.this);
                        } catch (Throwable th) {
                            AFLogger.afErrorLog(th.getMessage(), th);
                        }
                    }
                });
            } else {
                AFLogger.afWarnLog("GoogleReferrer instance already created");
            }
        }
        m36266(context, str, "", null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map) {
        trackEvent(context, str, map, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        AFEvent context2 = new InAppEvent().context(context);
        context2.f1626 = str;
        context2.f1622 = map == null ? null : new HashMap(map);
        context2.f1617 = appsFlyerTrackingRequestListener;
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai aiVar = C1830ai.f1791;
        Map<String, Object> map2 = context2.f1622;
        Map<String, Object> map3 = map2;
        if (map2 == null) {
            map3 = new HashMap<>();
        }
        aiVar.m36172("public_api_call", "trackEvent", str, new JSONObject(map3).toString());
        if (str != null) {
            AFSensorManager aFSensorManager = AFSensorManager.m36278(context);
            long currentTimeMillis = System.currentTimeMillis();
            long j = aFSensorManager.f1652;
            if (j != 0) {
                aFSensorManager.f1647++;
                if (j - currentTimeMillis < 500) {
                    aFSensorManager.f1646.removeCallbacks(aFSensorManager.f1656);
                    aFSensorManager.f1646.post(aFSensorManager.f1651);
                }
            } else {
                aFSensorManager.f1646.post(aFSensorManager.f1655);
                aFSensorManager.f1646.post(aFSensorManager.f1651);
            }
            aFSensorManager.f1652 = currentTimeMillis;
        }
        m36247(context2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackLocation(Context context, double d, double d2) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "trackLocation", String.valueOf(d), String.valueOf(d2));
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.LONGTITUDE, Double.toString(d2));
        hashMap.put(AFInAppEventParameterName.LATITUDE, Double.toString(d));
        AFEvent context2 = new InAppEvent().context(context);
        context2.f1626 = AFInAppEventType.LOCATION_COORDINATES;
        context2.f1622 = hashMap;
        m36247(context2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void unregisterConversionListener() {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "unregisterConversionListener", new String[0]);
        f1667 = null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void updateServerUninstallToken(Context context, String str) {
        C1824af.m36182(context, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void validateAndTrackInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        if (C1830ai.f1791 == null) {
            C1830ai.f1791 = new C1830ai();
        }
        C1830ai.f1791.m36172("public_api_call", "validateAndTrackInAppPurchase", str, str2, str3, str4, str5, map == null ? "" : map.toString());
        if (!isTrackingStopped()) {
            StringBuilder sb = new StringBuilder("Validate in app called with parameters: ");
            sb.append(str3);
            sb.append(" ");
            sb.append(str4);
            sb.append(" ");
            sb.append(str5);
            AFLogger.afInfoLog(sb.toString());
        }
        if (str == null || str4 == null || str2 == null || str5 == null || str3 == null) {
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = f1665;
            if (appsFlyerInAppPurchaseValidatorListener != null) {
                appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
                return;
            }
            return;
        }
        new Thread(new RunnableC1867x(context.getApplicationContext(), AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY), str, str2, str3, str4, str5, map, context instanceof Activity ? ((Activity) context).getIntent() : null)).start();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void waitForCustomerUserId(boolean z) {
        AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z)), true);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
        if (r8 == null) goto L_0x00a7;
     */
    @androidx.annotation.NonNull
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m36242(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m36242(java.net.HttpURLConnection):java.lang.String");
    }

    /* renamed from: ǃ */
    public final void m36253(Context context, Intent intent) {
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
        String stringExtra2 = intent.getStringExtra(Payload.REFERRER);
        AFLogger.afInfoLog("Play store referrer: ".concat(String.valueOf(stringExtra2)));
        if (stringExtra2 != null) {
            SharedPreferences.Editor edit = getSharedPreferences(context).edit();
            edit.putString(Payload.REFERRER, stringExtra2);
            edit.apply();
            AppsFlyerProperties.getInstance().setReferrer(stringExtra2);
            if (AppsFlyerProperties.getInstance().isFirstLaunchCalled()) {
                AFLogger.afInfoLog("onReceive: isLaunchCalled");
                AFEvent weakContext = new BackgroundReferrerLaunch().context(context).m36302().weakContext();
                weakContext.f1613 = stringExtra2;
                weakContext.f1614 = intent;
                if (stringExtra2 != null && stringExtra2.length() > 5 && m36263(weakContext, getSharedPreferences(context))) {
                    m36230(AFExecutor.getInstance().m36298(), new RunnableC1801e(this, weakContext, (byte) 0), 5L, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
    @androidx.annotation.VisibleForTesting
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m36247(@androidx.annotation.NonNull com.appsflyer.AFEvent r4) {
        /*
            r3 = this;
            r0 = r4
            android.content.Context r0 = r0.context()
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x002e
            r0 = r5
            android.app.Activity r0 = (android.app.Activity) r0
            r6 = r0
            r0 = r6
            android.content.Intent r0 = r0.getIntent()
            r7 = r0
            r0 = r6
            android.net.Uri r0 = com.appsflyer.internal.ActivityCompat.getReferrer(r0)
            r8 = r0
            r0 = r7
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0030
            r0 = r8
            java.lang.String r0 = r0.toString()
            r6 = r0
            goto L_0x003b
        L_0x002e:
            r0 = 0
            r6 = r0
        L_0x0030:
            java.lang.String r0 = ""
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            r6 = r0
        L_0x003b:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r1 = "AppsFlyerKey"
            java.lang.String r0 = r0.getString(r1)
            if (r0 != 0) goto L_0x004e
            java.lang.String r0 = "[TrackEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey."
            com.appsflyer.AFLogger.afWarnLog(r0)
            return
        L_0x004e:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            r1 = r5
            java.lang.String r0 = r0.getReferrer(r1)
            r5 = r0
            r0 = r5
            r8 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0062
            java.lang.String r0 = ""
            r8 = r0
        L_0x0062:
            r0 = r4
            r1 = r8
            r0.f1613 = r1
            r0 = r4
            r1 = r7
            r0.f1614 = r1
            r0 = r4
            r1 = r6
            r0.f1624 = r1
            r0 = r3
            r1 = r4
            r0.m36223(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m36247(com.appsflyer.AFEvent):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:190:0x061c, code lost:
        if (r7 != null) goto L_0x0624;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x047e A[Catch: all -> 0x041e, TRY_ENTER, TryCatch #27 {all -> 0x041e, blocks: (B:95:0x0368, B:97:0x0376, B:98:0x0380, B:99:0x0383, B:101:0x038c, B:105:0x03e8, B:109:0x0423, B:112:0x042e, B:116:0x044c, B:118:0x0457, B:119:0x0470, B:120:0x0473, B:122:0x047e, B:124:0x048b, B:126:0x049a, B:128:0x04aa, B:130:0x04b3, B:132:0x04be, B:134:0x04c5), top: B:532:0x0368, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x049a A[Catch: all -> 0x041e, Exception -> 0x04a9, TRY_ENTER, TRY_LEAVE, TryCatch #28 {Exception -> 0x04a9, blocks: (B:124:0x048b, B:126:0x049a), top: B:548:0x048b, outer: #27 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x04be A[Catch: all -> 0x041e, TRY_ENTER, TryCatch #27 {all -> 0x041e, blocks: (B:95:0x0368, B:97:0x0376, B:98:0x0380, B:99:0x0383, B:101:0x038c, B:105:0x03e8, B:109:0x0423, B:112:0x042e, B:116:0x044c, B:118:0x0457, B:119:0x0470, B:120:0x0473, B:122:0x047e, B:124:0x048b, B:126:0x049a, B:128:0x04aa, B:130:0x04b3, B:132:0x04be, B:134:0x04c5), top: B:532:0x0368, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x04e3 A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0513 A[Catch: all -> 0x12aa, TRY_LEAVE, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0521 A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0573 A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x059b A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0688 A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x06c4 A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x06d7 A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x06fb A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0961 A[Catch: all -> 0x12aa, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x098e A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x09af A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0a20 A[Catch: all -> 0x12aa, TRY_LEAVE, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0a2e A[Catch: all -> 0x12aa, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0a5b A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0a70  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0a76  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0a7e A[Catch: all -> 0x12aa, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0a86 A[Catch: all -> 0x12aa, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0ae9 A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0b21 A[Catch: Exception -> 0x0b30, all -> 0x12aa, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0b30, blocks: (B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21), top: B:502:0x0b0f, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0c34 A[Catch: all -> 0x0d02, TryCatch #19 {all -> 0x0d02, blocks: (B:392:0x0c1f, B:394:0x0c34, B:396:0x0c5c, B:397:0x0c8b), top: B:534:0x0c1f }] */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0d38 A[Catch: all -> 0x12aa, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0d4b A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0e0e A[Catch: all -> 0x12aa, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0e4b A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0ea4  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0eaa  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0ecd  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0ee1 A[Catch: all -> 0x12aa, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0ef8  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0efb  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0f5b A[Catch: all -> 0x12aa, TRY_ENTER, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:485:0x11e4 A[Catch: all -> 0x12aa, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:489:0x1207 A[Catch: all -> 0x12aa, TryCatch #2 {all -> 0x12aa, blocks: (B:136:0x04d2, B:138:0x04e3, B:144:0x04f5, B:146:0x0503, B:148:0x0513, B:149:0x0521, B:151:0x0528, B:155:0x053d, B:157:0x0551, B:160:0x0573, B:162:0x0583, B:165:0x059b, B:167:0x05a8, B:169:0x05bb, B:171:0x05c2, B:173:0x05ce, B:175:0x05d5, B:178:0x05ea, B:180:0x05f2, B:183:0x05fb, B:185:0x0602, B:187:0x060b, B:189:0x0611, B:197:0x0634, B:200:0x064d, B:204:0x0676, B:208:0x0688, B:209:0x0697, B:210:0x069a, B:215:0x06b1, B:218:0x06c4, B:221:0x06d7, B:223:0x06de, B:224:0x06ed, B:226:0x06fb, B:228:0x0702, B:229:0x070e, B:230:0x0711, B:232:0x071c, B:234:0x072a, B:236:0x0735, B:237:0x0744, B:239:0x0752, B:242:0x0766, B:244:0x0778, B:245:0x0785, B:246:0x0788, B:248:0x0791, B:249:0x07a5, B:250:0x07a8, B:252:0x07b5, B:254:0x07be, B:256:0x07e1, B:257:0x07ec, B:258:0x07ef, B:260:0x07fa, B:262:0x0808, B:268:0x084c, B:271:0x0859, B:272:0x0865, B:273:0x0868, B:275:0x087a, B:276:0x088b, B:278:0x08ab, B:280:0x08b5, B:282:0x08c0, B:287:0x08f8, B:291:0x090e, B:293:0x0920, B:297:0x0931, B:299:0x0943, B:300:0x094c, B:302:0x0953, B:307:0x0961, B:308:0x098e, B:310:0x0996, B:312:0x09af, B:314:0x09b9, B:316:0x09c4, B:321:0x09df, B:326:0x09fa, B:328:0x0a0c, B:330:0x0a19, B:332:0x0a20, B:336:0x0a2e, B:337:0x0a5b, B:338:0x0a61, B:339:0x0a64, B:346:0x0a7e, B:347:0x0a86, B:360:0x0ada, B:364:0x0ae9, B:365:0x0b0f, B:366:0x0b12, B:368:0x0b21, B:370:0x0b32, B:372:0x0b52, B:374:0x0b65, B:376:0x0b6e, B:378:0x0b81, B:380:0x0b8a, B:382:0x0b9d, B:384:0x0ba6, B:386:0x0bcb, B:388:0x0c07, B:405:0x0d07, B:407:0x0d0f, B:409:0x0d38, B:412:0x0d4b, B:414:0x0d5e, B:416:0x0d85, B:419:0x0d9b, B:421:0x0dba, B:422:0x0dcc, B:424:0x0ddb, B:426:0x0de6, B:427:0x0e02, B:428:0x0e05, B:430:0x0e0e, B:432:0x0e20, B:433:0x0e31, B:435:0x0e40, B:437:0x0e4b, B:439:0x0e6e, B:443:0x0ead, B:448:0x0ed3, B:450:0x0ee1, B:452:0x0ef2, B:456:0x0efe, B:458:0x0f5b, B:460:0x0f62, B:462:0x0f7d, B:464:0x0fb8, B:466:0x0fc0, B:467:0x0fcc, B:468:0x0fcf, B:470:0x0fef, B:474:0x1004, B:476:0x1025, B:477:0x1035, B:479:0x1046, B:481:0x1054, B:483:0x105c, B:485:0x11e4, B:487:0x11fe, B:489:0x1207, B:490:0x121e, B:491:0x1221, B:492:0x129c, B:264:0x0829), top: B:504:0x04d2, inners: #0, #4, #7, #10, #12, #13, #21, #22, #25, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0d9b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: ɩ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> m36236(com.appsflyer.AFEvent r7) {
        /*
            Method dump skipped, instructions count: 4805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m36236(com.appsflyer.AFEvent):java.util.Map");
    }

    /* renamed from: ɩ */
    public final void m36237(Context context, String str) {
        if (m36218()) {
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
        m36215(context, hashMap);
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
        C1865w wVar = C1863v.m36108(context.getContentResolver());
        if (wVar != null) {
            hashMap.put("amazon_aid", wVar.f1911);
            hashMap.put("amazon_aid_limit", String.valueOf(wVar.m36106()));
        }
        String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string3 != null) {
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
        }
        hashMap.put("devkey", string);
        hashMap.put("uid", C1823ae.m36183(new WeakReference(context)));
        hashMap.put("af_gcm_token", str);
        hashMap.put("launch_counter", Integer.toString(getLaunchCounter(getSharedPreferences(context), false)));
        hashMap.put(CreateRequest.METADATA_SDK_KEY, Integer.toString(Build.VERSION.SDK_INT));
        String configuredChannel = getConfiguredChannel(context);
        if (configuredChannel != null) {
            hashMap.put(AppsFlyerProperties.CHANNEL, configuredChannel);
        }
        try {
            AFEvent context2 = new UninstallTokenEvent().trackingStopped(isTrackingStopped()).params(hashMap).context(context);
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(REGISTER_URL));
            sb.append(packageName);
            new Thread(new RunnableC1822ad((BackgroundEvent) context2.urlString(sb.toString()))).start();
        } catch (Throwable th3) {
            AFLogger.afErrorLog(th3.getMessage(), th3);
        }
    }

    /* renamed from: ɩ */
    public final void m36231(WeakReference<Context> weakReference) {
        if (weakReference.get() != null) {
            AFLogger.afInfoLog("app went to background");
            SharedPreferences sharedPreferences = getSharedPreferences(weakReference.get());
            AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
            long j = this.f1675;
            long j2 = this.f1687;
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
            C1865w wVar = C1863v.m36108(weakReference.get().getContentResolver());
            if (wVar != null) {
                hashMap.put("amazon_aid", wVar.f1911);
                hashMap.put("amazon_aid_limit", String.valueOf(wVar.m36106()));
            }
            String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
            if (string3 != null) {
                hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
            }
            hashMap.put("app_id", weakReference.get().getPackageName());
            hashMap.put("devkey", string);
            hashMap.put("uid", C1823ae.m36183(weakReference));
            hashMap.put("time_in_app", String.valueOf((j - j2) / 1000));
            hashMap.put("statType", "user_closed_app");
            hashMap.put("platform", "Android");
            hashMap.put("launch_counter", Integer.toString(getLaunchCounter(sharedPreferences, false)));
            hashMap.put(AppsFlyerProperties.CHANNEL, getConfiguredChannel(weakReference.get()));
            hashMap.put("originalAppsflyerId", string2 != null ? string2 : "");
            if (this.f1681) {
                try {
                    AFLogger.afDebugLog("Running callStats task");
                    new Thread(new RunnableC1822ad((BackgroundEvent) new Stats().trackingStopped(isTrackingStopped()).params(hashMap).urlString(ServerConfigHandler.getUrl("https://%sstats.%s/stats")))).start();
                } catch (Throwable th) {
                    AFLogger.afErrorLog("Could not send callStats request", th);
                }
            } else {
                AFLogger.afDebugLog("Stats call is disabled, ignore ...");
            }
        }
    }
}
