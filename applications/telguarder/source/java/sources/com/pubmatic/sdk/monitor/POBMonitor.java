package com.pubmatic.sdk.monitor;

import android.app.Activity;
import android.app.Application;
import android.graphics.Point;
import android.provider.Settings;
import android.text.Html;
import android.util.Log;
import android.view.ViewGroup;
import com.pubmatic.sdk.common.OpenWrapSDK;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.monitor.POBActivityLifeCycleMonitor;
import com.pubmatic.sdk.monitor.POBMonitorView;
import com.pubmatic.sdk.monitor.POBMonitorWebView;
import com.pubmatic.sdk.webrendering.p021ui.POBFullScreenDialog;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitor.class */
public class POBMonitor {
    private static final String SERVER_DOMAIN = "https://ads.pubmatic.com";
    private static final String TAG = "POBMonitor";
    private static final String URL_PATH = "/openbidsdk/monitor/app.html";
    private static Application application;
    private POBFullScreenDialog dialog;
    private C1903f monitorData;
    private POBActivityLifeCycleMonitor monitorUIDelegate;
    private POBMonitorView monitorView;
    private POBMonitorView previousMonitorView;
    private Point touchPointLocation = new Point(0, 0);
    private POBMonitorWebView webView;

    /* renamed from: com.pubmatic.sdk.monitor.POBMonitor$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitor$a.class */
    public class C1898a implements PMLog.PMLogging {
        C1898a() {
            POBMonitor.this = r4;
        }

        @Override // com.pubmatic.sdk.common.log.PMLog.PMLogging
        public void log(PMLog.PMLogMessage pMLogMessage) {
            JSONObject logData = POBMonitor.getLogData(pMLogMessage);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(logData);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("data", jSONArray);
            } catch (JSONException e) {
                Log.w(POBMonitor.TAG, "Not able to push data to js.");
            }
            if (jSONObject.length() > 0) {
                POBMonitor.this.webView.appendData(jSONObject);
            } else {
                Log.w(POBMonitor.TAG, "Not able to push data to js.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.monitor.POBMonitor$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitor$b.class */
    public class C1899b implements POBMonitorWebView.AbstractC1910e {
        C1899b() {
            POBMonitor.this = r4;
        }

        @Override // com.pubmatic.sdk.monitor.POBMonitorWebView.AbstractC1910e
        /* renamed from: a */
        public void mo956a() {
            if (POBMonitor.this.monitorUIDelegate.getCurrentActivity() != null) {
                POBMonitor pOBMonitor = POBMonitor.this;
                pOBMonitor.addButton(pOBMonitor.monitorUIDelegate.getCurrentActivity());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.monitor.POBMonitor$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitor$c.class */
    public class C1900c implements POBActivityLifeCycleMonitor.AbstractC1897a {
        C1900c() {
            POBMonitor.this = r4;
        }

        /* renamed from: a */
        private void m969a() {
            if (POBMonitor.this.previousMonitorView == null || POBMonitor.this.previousMonitorView.getParent() == null) {
                POBMonitor.this.touchPointLocation = new Point(0, 0);
                return;
            }
            POBMonitor pOBMonitor = POBMonitor.this;
            pOBMonitor.touchPointLocation = pOBMonitor.previousMonitorView.getTouchPointLocation();
            ((ViewGroup) POBMonitor.this.previousMonitorView.getParent()).removeView(POBMonitor.this.previousMonitorView);
            POBMonitor.this.previousMonitorView = null;
        }

        @Override // com.pubmatic.sdk.monitor.POBActivityLifeCycleMonitor.AbstractC1897a
        /* renamed from: a */
        public void mo968a(Activity activity) {
            m969a();
            POBMonitor.this.monitorView = null;
            POBMonitor.this.monitorUIDelegate.reset();
        }

        @Override // com.pubmatic.sdk.monitor.POBActivityLifeCycleMonitor.AbstractC1897a
        public void onActivityPaused(Activity activity) {
            m969a();
        }

        @Override // com.pubmatic.sdk.monitor.POBActivityLifeCycleMonitor.AbstractC1897a
        public void onActivityResumed(Activity activity) {
            POBMonitor.this.addButton(activity);
        }
    }

    /* renamed from: com.pubmatic.sdk.monitor.POBMonitor$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitor$d.class */
    public class C1901d implements POBMonitorView.AbstractC1904a {

        /* renamed from: a */
        final /* synthetic */ Activity f606a;

        C1901d(Activity activity) {
            POBMonitor.this = r4;
            this.f606a = activity;
        }

        @Override // com.pubmatic.sdk.monitor.POBMonitorView.AbstractC1904a
        /* renamed from: a */
        public void mo960a() {
            POBMonitor.this.showDialog(this.f606a);
        }
    }

    /* renamed from: com.pubmatic.sdk.monitor.POBMonitor$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitor$e.class */
    public class C1902e implements POBFullScreenDialog.OnDialogCloseListener {
        C1902e() {
            POBMonitor.this = r4;
        }

        @Override // com.pubmatic.sdk.webrendering.p021ui.POBFullScreenDialog.OnDialogCloseListener
        public void onClose() {
            ViewGroup viewGroup = (ViewGroup) POBMonitor.this.webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(POBMonitor.this.webView);
            }
            POBMonitor.this.dialog = null;
        }
    }

    /* renamed from: com.pubmatic.sdk.monitor.POBMonitor$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitor$f.class */
    public static class C1903f {

        /* renamed from: a */
        private String f609a;

        /* renamed from: b */
        private Integer f610b;

        /* renamed from: c */
        private String f611c;

        private C1903f() {
            this.f609a = "";
            this.f610b = 0;
        }

        /* synthetic */ C1903f(C1898a c1898a) {
            this();
        }
    }

    private POBMonitor(C1903f c1903f) {
        this.monitorData = c1903f;
        POBMonitorWebView pOBMonitorWebView = new POBMonitorWebView(application.getApplicationContext());
        this.webView = pOBMonitorWebView;
        pOBMonitorWebView.initWebView(new C1899b());
        POBActivityLifeCycleMonitor pOBActivityLifeCycleMonitor = new POBActivityLifeCycleMonitor(application);
        this.monitorUIDelegate = pOBActivityLifeCycleMonitor;
        pOBActivityLifeCycleMonitor.start(new C1900c());
    }

    public void addButton(Activity activity) {
        String str;
        if ((this.monitorData.f610b.intValue() & 1) == 0) {
            return;
        }
        if (!this.webView.isLoaded || activity == null) {
            str = "Not ready yet to attach touch Point";
        } else {
            POBMonitorView pOBMonitorView = new POBMonitorView(activity, this.touchPointLocation);
            this.monitorView = pOBMonitorView;
            pOBMonitorView.setListener(new C1901d(activity));
            this.monitorView.bringToFront();
            this.previousMonitorView = this.monitorView;
            str = "Touch point attached";
        }
        Log.d(TAG, str);
    }

    private static String encode(String str) {
        return URLEncoder.encode(Html.escapeHtml(str), StandardCharsets.UTF_8.toString()).replaceAll("\\+", "%20").replaceAll("\\%21", "!").replaceAll("\\%27", "'").replaceAll("\\%28", "(").replaceAll("\\%29", ")").replaceAll("\\%7E", "~");
    }

    private static Application getApplicationUsingReflection() {
        return (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
    }

    public static JSONObject getLogData(PMLog.PMLogMessage pMLogMessage) {
        try {
            Field logField = getLogField(pMLogMessage.getClass(), "mLogLevel");
            Field logField2 = getLogField(pMLogMessage.getClass(), "mMsg");
            Field logField3 = getLogField(pMLogMessage.getClass(), "mTAG");
            Field logField4 = getLogField(pMLogMessage.getClass(), "PMSDK_TAG");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("logLevel", logField.get(pMLogMessage));
            jSONObject.put("message", encode((String) logField2.get(pMLogMessage)));
            jSONObject.put("file", logField3.get(pMLogMessage));
            jSONObject.put("sdk_tag", logField4.get(pMLogMessage));
            jSONObject.put("line", "");
            jSONObject.put("function", "");
            return jSONObject;
        } catch (Exception e) {
            Log.w(TAG, e.getMessage());
            return null;
        }
    }

    private static Field getLogField(Class<?> cls, String str) {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private void init(String str) {
        this.webView.loadUrl(str);
        PMLog.addLogger(logger());
    }

    public static void load() {
        String str;
        try {
            Application applicationUsingReflection = getApplicationUsingReflection();
            application = applicationUsingReflection;
            C1903f process = process(Settings.Secure.getString(applicationUsingReflection.getContentResolver(), "bluetooth_name"));
            if (process == null) {
                return;
            }
            String str2 = process.f611c;
            if (str2 != null) {
                str = str2 + URL_PATH;
            } else {
                str = "https://ads.pubmatic.com/openbidsdk/monitor/app.html";
            }
            new POBMonitor(process).init(String.format("%s?plugins=%d&pubId=%s&bundleId=%s&ifa=%s", str, process.f610b, process.f609a, application.getPackageName(), Settings.Secure.getString(application.getContentResolver(), "android_id")));
            OpenWrapSDK.setLogLevel(OpenWrapSDK.LogLevel.All);
        } catch (Exception e) {
            Log.w(TAG, e.getMessage());
        }
    }

    private PMLog.PMLogging logger() {
        return new C1898a();
    }

    private static C1903f process(String str) {
        if (str == null || !str.contains("OB")) {
            return null;
        }
        C1903f c1903f = new C1903f(null);
        String[] split = str.replace("OB", "").split("_");
        if (split.length != 0) {
            try {
                c1903f.f609a = split[0];
                if (split.length > 1) {
                    c1903f.f610b = Integer.valueOf(Integer.parseInt(split[1]));
                }
                if (split.length > 2) {
                    c1903f.f611c = split[2];
                }
            } catch (Exception e) {
                Log.d(TAG, e.getMessage());
            }
        }
        return c1903f;
    }

    public void showDialog(Activity activity) {
        if (this.dialog == null) {
            this.dialog = new POBFullScreenDialog(activity, this.webView, new C1902e());
        }
        this.dialog.show();
    }
}
