package com.netqin.p525cm.main.p529ui;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.applovin.sdk.AppLovinSdk;
import com.facebook.ads.AudienceNetworkAds;
import com.google.android.gms.ads.MobileAds;
import com.inmobi.sdk.InMobiSdk;
import com.mopub.common.MoPub;
import com.mopub.common.SdkConfiguration;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import p012b.p119t.C1880a;
import p131c.p161d.p162a.p163b.p166h.C2473d;
import p131c.p396i.p418b.C6619a;
import p131c.p431l.p432a.p433a.p434a.C6690a;
import p131c.p431l.p432a.p433a.p435b.C6694a;
import p131c.p431l.p432a.p459h.p460a.C6813a;
import p131c.p431l.p432a.p459h.p460a.C6815b;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6856o;
/* renamed from: com.netqin.cm.main.ui.NqApplication */
/* loaded from: classes-dex2jar.jar:com/netqin/cm/main/ui/NqApplication.class */
public class NqApplication extends Application implements AudienceNetworkAds.InitListener {

    /* renamed from: a */
    public static NqApplication f35642a;

    /* renamed from: b */
    public static C6690a f35643b;

    /* renamed from: com.netqin.cm.main.ui.NqApplication$TrackerName */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/NqApplication$TrackerName.class */
    public enum TrackerName {
        APP_TRACKER,
        GLOBAL_TRACKER,
        ECOMMERCE_TRACKER
    }

    /* renamed from: a */
    public static void m3304a(NqApplication nqApplication) {
        synchronized (NqApplication.class) {
            try {
                f35642a = nqApplication;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static NqApplication m3303b() {
        NqApplication nqApplication;
        synchronized (NqApplication.class) {
            try {
                nqApplication = f35642a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nqApplication;
    }

    /* renamed from: c */
    public static String m3302c() {
        if (f35642a == null) {
            return null;
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) f35642a.getSystemService("activity");
        String str = null;
        if (activityManager != null) {
            if (activityManager.getRunningAppProcesses() != null) {
                Iterator<ActivityManager.RunningAppProcessInfo> it = activityManager.getRunningAppProcesses().iterator();
                while (true) {
                    str = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == myPid) {
                        str = next.processName;
                        break;
                    }
                }
            } else {
                str = null;
            }
        }
        return str;
    }

    /* renamed from: a */
    public final void m3306a() {
        AppLovinSdk.initializeSdk(getApplicationContext());
        MoPub.initializeSdk(this, new SdkConfiguration.Builder("88c2832c15d040cb93e61cda8aae91f5").build(), null);
        InMobiSdk.setLogLevel(InMobiSdk.LogLevel.NONE);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE, true);
            jSONObject.put("gdpr", "1");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        InMobiSdk.init(this, "8a7cc399970349b1bdbdd888d7d68b73", jSONObject);
        C2473d.m29700a(jSONObject);
    }

    /* renamed from: a */
    public final void m3305a(Context context) {
        String a = C6619a.m20316b().m20318a("am_app_id", "ca-app-pub-7839839351978639~2521220042");
        C6850i.m19579a("Admob", "初始化Admob SDK appId: " + a);
        MobileAds.m18104a(context, a);
        f35643b = new C6690a(this);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        if (Build.VERSION.SDK_INT <= 19) {
            C1880a.m31823d(this);
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        m3304a(this);
        super.onCreate();
        if (!getPackageName().equals(m3302c())) {
            C6694a.m20036b(this);
            return;
        }
        registerActivityLifecycleCallbacks(C6815b.m19685b());
        if (!AudienceNetworkAds.isInAdsProcess(this)) {
            AudienceNetworkAds.buildInitSettings(this).withInitListener(this).initialize();
            AudienceNetworkAds.isInAdsProcess(this);
        }
        registerActivityLifecycleCallbacks(C6815b.m19685b());
        C6856o.m19552a();
        C6694a.m20037a(this);
        C6813a.m19697a(this);
        m3305a((Context) this);
        m3306a();
    }

    @Override // com.facebook.ads.AudienceNetworkAds.InitListener
    public void onInitialized(AudienceNetworkAds.InitResult initResult) {
        C6850i.m19579a(AudienceNetworkAds.TAG, initResult.getMessage());
    }
}
