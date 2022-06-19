package com.callapp.contacts.manager.analytics;

import android.os.Handler;
import android.os.HandlerThread;
import com.appsflyer.AppsFlyerLib;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.SafeRunnable;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.MoPub;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AbstractAnalyticsManager.class */
public abstract class AbstractAnalyticsManager implements ManagedLifecycle {

    /* renamed from: a */
    protected HandlerThread f25863a;

    /* renamed from: b */
    protected Handler f25864b;

    /* renamed from: c */
    protected String f25865c;

    /* renamed from: d */
    protected long f25866d = 0;

    /* renamed from: e */
    protected String f25867e = "";

    /* renamed from: f */
    protected String f25868f = "";

    /* renamed from: g */
    protected String f25869g = "";

    /* renamed from: h */
    protected String f25870h = "";

    /* renamed from: i */
    protected String f25871i = "";

    /* renamed from: j */
    protected String f25872j = "";

    /* renamed from: k */
    protected String f25873k = "";

    /* renamed from: l */
    protected String f25874l = "";

    /* renamed from: m */
    protected String f25875m = "";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM.class */
    public static class UTM {

        /* renamed from: a */
        public String f25896a = "";

        /* renamed from: b */
        public String f25897b = "";

        /* renamed from: c */
        public String f25898c = "";

        /* renamed from: d */
        public String f25899d = "";
    }

    /* renamed from: d */
    public static UTM m28448d(String str) {
        UTM utm;
        Exception e;
        UTM utm2;
        String simpleName = AbstractAnalyticsManager.class.getSimpleName();
        "Starting fetch UTM params for: ".concat(String.valueOf(str));
        CLog.m27606a(simpleName);
        try {
            utm2 = new UTM();
            try {
            } catch (Exception e2) {
                e = e2;
                String simpleName2 = AbstractAnalyticsManager.class.getSimpleName();
                new StringBuilder("Failed fetch UTM params: ").append(e.getMessage());
                CLog.m27606a(simpleName2);
                utm = utm2;
                String simpleName3 = AbstractAnalyticsManager.class.getSimpleName();
                "Finished fetch UTM params for ".concat(String.valueOf(str));
                CLog.m27606a(simpleName3);
                return utm;
            }
        } catch (Exception e3) {
            e = e3;
            utm2 = null;
        }
        if (!StringUtils.m26045b((CharSequence) str)) {
            String simpleName4 = AbstractAnalyticsManager.class.getSimpleName();
            "Didn't find referrer in URL for: ".concat(String.valueOf(str));
            CLog.m27606a(simpleName4);
            return null;
        }
        String[] split = str.split("&");
        int length = split.length;
        int i = 0;
        while (true) {
            utm = utm2;
            if (i >= length) {
                break;
            }
            String[] split2 = split[i].split("=", 2);
            if (CollectionUtils.m26066b(split2) && split2.length == 2) {
                String str2 = split2[0];
                String str3 = split2[1];
                if ("ref_key".equalsIgnoreCase(str2)) {
                    utm2.f25896a = str3;
                    String simpleName5 = AbstractAnalyticsManager.class.getSimpleName();
                    new StringBuilder("Found referrer_key: ").append(utm2.f25896a);
                    CLog.m27606a(simpleName5);
                } else if ("utm_source".equalsIgnoreCase(str2)) {
                    utm2.f25897b = str3;
                    String simpleName6 = AbstractAnalyticsManager.class.getSimpleName();
                    new StringBuilder("Found utm_source: ").append(utm2.f25897b);
                    CLog.m27606a(simpleName6);
                } else if ("utm_medium".equalsIgnoreCase(str2)) {
                    utm2.f25898c = str3;
                    String simpleName7 = AbstractAnalyticsManager.class.getSimpleName();
                    new StringBuilder("Found utm_medium: ").append(utm2.f25898c);
                    CLog.m27606a(simpleName7);
                } else if ("utm_campaign".equalsIgnoreCase(str2)) {
                    utm2.f25899d = str3;
                    String simpleName8 = AbstractAnalyticsManager.class.getSimpleName();
                    new StringBuilder("Found utm_campaign: ").append(utm2.f25899d);
                    CLog.m27606a(simpleName8);
                }
            }
            i++;
        }
        String simpleName32 = AbstractAnalyticsManager.class.getSimpleName();
        "Finished fetch UTM params for ".concat(String.valueOf(str));
        CLog.m27606a(simpleName32);
        return utm;
    }

    /* renamed from: a */
    protected abstract void mo28432a();

    /* renamed from: a */
    public void mo28431a(String str) {
    }

    /* renamed from: a */
    public final void m28450a(String str, String str2) {
        mo28444a(str, str2, (String) null, 0.0d, new String[0]);
    }

    /* renamed from: a */
    public void mo28429a(String str, String str2, double d, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
    }

    /* renamed from: a */
    public final void m28449a(String str, String str2, String str3) {
        mo28444a(str, str2, str3, 0.0d, new String[0]);
    }

    /* renamed from: a */
    public void mo28446a(final String str, final String str2, final String str3, final double d) {
        this.f25864b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.4
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.mo28427b(str, str2, str3, d);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    /* renamed from: a */
    public void mo28445a(final String str, final String str2, final String str3, final double d, final String str4) {
        this.f25864b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.3
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.mo28426b(str, str2, str3, d, str4);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    /* renamed from: a */
    public void mo28444a(final String str, final String str2, final String str3, final double d, final String... strArr) {
        this.f25864b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.1
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.mo28425b(str, str2, str3, d, strArr);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    /* renamed from: b */
    public void mo28428b() {
    }

    /* renamed from: b */
    public void mo28441b(final String str) {
        this.f25864b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.2
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.mo28423c(str);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    /* renamed from: b */
    protected abstract void mo28427b(String str, String str2, String str3, double d);

    /* renamed from: b */
    protected abstract void mo28426b(String str, String str2, String str3, double d, String str4);

    /* renamed from: b */
    protected abstract void mo28425b(String str, String str2, String str3, double d, String... strArr);

    /* renamed from: c */
    public void mo28424c() {
    }

    /* renamed from: c */
    protected abstract void mo28423c(String str);

    /* renamed from: d */
    public void mo28422d() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        try {
            mo28438j();
            this.f25863a.quit();
        } catch (RuntimeException e) {
        }
    }

    /* renamed from: e */
    public void mo28436e() {
    }

    /* renamed from: f */
    public void mo28435f() {
    }

    /* renamed from: g */
    public void mo28434g() {
    }

    /* renamed from: h */
    public void mo28433h() {
    }

    /* renamed from: i */
    protected abstract void mo28421i();

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f25865c = Activities.getString(2131887752);
        this.f25866d = CallAppApplication.get().getDaysSinceInstall();
        String str = Prefs.f26220X.get();
        this.f25867e = str;
        if (StringUtils.m26045b((CharSequence) str)) {
            UTM m28448d = m28448d(this.f25867e);
            if (m28448d != null) {
                String str2 = m28448d.f25897b;
                this.f25868f = str2;
                if (str2 == null) {
                    this.f25868f = "";
                }
                String str3 = m28448d.f25898c;
                this.f25869g = str3;
                if (str3 == null) {
                    this.f25869g = "";
                }
                String str4 = m28448d.f25899d;
                this.f25870h = str4;
                if (str4 == null) {
                    this.f25870h = "";
                }
            }
        } else {
            this.f25867e = "";
        }
        String str5 = Prefs.f26524fj.get();
        this.f25871i = str5;
        if (str5 == null) {
            this.f25871i = "";
        }
        String str6 = Prefs.f26525fk.get();
        this.f25872j = str6;
        if (str6 == null) {
            this.f25872j = "";
        }
        String str7 = Prefs.f26526fl.get();
        this.f25873k = str7;
        if (str7 == null) {
            this.f25873k = "";
        }
        String str8 = Prefs.f26527fm.get();
        this.f25874l = str8;
        if (str8 == null) {
            this.f25874l = "";
        }
        String appsFlyerUID = AppsFlyerLib.getInstance().getAppsFlyerUID(CallAppApplication.get());
        this.f25875m = appsFlyerUID;
        if (appsFlyerUID == null) {
            this.f25875m = "";
        }
        HandlerThread handlerThread = new HandlerThread(getClass().getSimpleName(), 10);
        this.f25863a = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.f25863a.getLooper());
        this.f25864b = new Handler(this.f25863a.getLooper());
        mo28432a();
    }

    /* renamed from: j */
    public void mo28438j() {
        this.f25864b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.5
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.mo28421i();
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }
}
