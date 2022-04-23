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

    /* renamed from: a  reason: collision with root package name */
    protected HandlerThread f14956a;

    /* renamed from: b  reason: collision with root package name */
    protected Handler f14957b;

    /* renamed from: c  reason: collision with root package name */
    protected String f14958c;

    /* renamed from: d  reason: collision with root package name */
    protected long f14959d = 0;
    protected String e = "";
    protected String f = "";
    protected String g = "";
    protected String h = "";
    protected String i = "";
    protected String j = "";
    protected String k = "";
    protected String l = "";
    protected String m = "";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM.class */
    public static class UTM {

        /* renamed from: a  reason: collision with root package name */
        public String f14975a = "";

        /* renamed from: b  reason: collision with root package name */
        public String f14976b = "";

        /* renamed from: c  reason: collision with root package name */
        public String f14977c = "";

        /* renamed from: d  reason: collision with root package name */
        public String f14978d = "";
    }

    public static UTM d(String str) {
        UTM utm;
        Exception e;
        String simpleName = AbstractAnalyticsManager.class.getSimpleName();
        "Starting fetch UTM params for: ".concat(String.valueOf(str));
        CLog.a(simpleName);
        try {
            utm = new UTM();
            try {
            } catch (Exception e2) {
                e = e2;
                String simpleName2 = AbstractAnalyticsManager.class.getSimpleName();
                new StringBuilder("Failed fetch UTM params: ").append(e.getMessage());
                CLog.a(simpleName2);
                String simpleName3 = AbstractAnalyticsManager.class.getSimpleName();
                "Finished fetch UTM params for ".concat(String.valueOf(str));
                CLog.a(simpleName3);
                return utm;
            }
        } catch (Exception e3) {
            e = e3;
            utm = null;
        }
        if (StringUtils.b((CharSequence) str)) {
            String[] split = str.split("&");
            int length = split.length;
            int i = 0;
            while (true) {
                utm = utm;
                if (i >= length) {
                    break;
                }
                String[] split2 = split[i].split("=", 2);
                if (CollectionUtils.b(split2) && split2.length == 2) {
                    String str2 = split2[0];
                    String str3 = split2[1];
                    if ("ref_key".equalsIgnoreCase(str2)) {
                        utm.f14975a = str3;
                        String simpleName4 = AbstractAnalyticsManager.class.getSimpleName();
                        new StringBuilder("Found referrer_key: ").append(utm.f14975a);
                        CLog.a(simpleName4);
                    } else if ("utm_source".equalsIgnoreCase(str2)) {
                        utm.f14976b = str3;
                        String simpleName5 = AbstractAnalyticsManager.class.getSimpleName();
                        new StringBuilder("Found utm_source: ").append(utm.f14976b);
                        CLog.a(simpleName5);
                    } else if ("utm_medium".equalsIgnoreCase(str2)) {
                        utm.f14977c = str3;
                        String simpleName6 = AbstractAnalyticsManager.class.getSimpleName();
                        new StringBuilder("Found utm_medium: ").append(utm.f14977c);
                        CLog.a(simpleName6);
                    } else if ("utm_campaign".equalsIgnoreCase(str2)) {
                        utm.f14978d = str3;
                        String simpleName7 = AbstractAnalyticsManager.class.getSimpleName();
                        new StringBuilder("Found utm_campaign: ").append(utm.f14978d);
                        CLog.a(simpleName7);
                    }
                }
                i++;
            }
            String simpleName32 = AbstractAnalyticsManager.class.getSimpleName();
            "Finished fetch UTM params for ".concat(String.valueOf(str));
            CLog.a(simpleName32);
            return utm;
        }
        String simpleName8 = AbstractAnalyticsManager.class.getSimpleName();
        "Didn't find referrer in URL for: ".concat(String.valueOf(str));
        CLog.a(simpleName8);
        return null;
    }

    protected abstract void a();

    public void a(String str) {
    }

    public final void a(String str, String str2) {
        a(str, str2, (String) null, 0.0d, new String[0]);
    }

    public void a(String str, String str2, double d2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
    }

    public final void a(String str, String str2, String str3) {
        a(str, str2, str3, 0.0d, new String[0]);
    }

    public void a(final String str, final String str2, final String str3, final double d2) {
        this.f14957b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.4
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.b(str, str2, str3, d2);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    public void a(final String str, final String str2, final String str3, final double d2, final String str4) {
        this.f14957b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.3
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.b(str, str2, str3, d2, str4);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    public void a(final String str, final String str2, final String str3, final double d2, final String... strArr) {
        this.f14957b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.1
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.b(str, str2, str3, d2, strArr);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    public void b() {
    }

    public void b(final String str) {
        this.f14957b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.2
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.c(str);
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }

    protected abstract void b(String str, String str2, String str3, double d2);

    protected abstract void b(String str, String str2, String str3, double d2, String str4);

    protected abstract void b(String str, String str2, String str3, double d2, String... strArr);

    public void c() {
    }

    protected abstract void c(String str);

    public void d() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        try {
            j();
            this.f14956a.quit();
        } catch (RuntimeException e) {
        }
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    public void h() {
    }

    protected abstract void i();

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f14958c = Activities.getString(2131887752);
        this.f14959d = CallAppApplication.get().getDaysSinceInstall();
        String str = Prefs.X.get();
        this.e = str;
        if (StringUtils.b((CharSequence) str)) {
            UTM d2 = d(this.e);
            if (d2 != null) {
                String str2 = d2.f14976b;
                this.f = str2;
                if (str2 == null) {
                    this.f = "";
                }
                String str3 = d2.f14977c;
                this.g = str3;
                if (str3 == null) {
                    this.g = "";
                }
                String str4 = d2.f14978d;
                this.h = str4;
                if (str4 == null) {
                    this.h = "";
                }
            }
        } else {
            this.e = "";
        }
        String str5 = Prefs.fj.get();
        this.i = str5;
        if (str5 == null) {
            this.i = "";
        }
        String str6 = Prefs.fk.get();
        this.j = str6;
        if (str6 == null) {
            this.j = "";
        }
        String str7 = Prefs.fl.get();
        this.k = str7;
        if (str7 == null) {
            this.k = "";
        }
        String str8 = Prefs.fm.get();
        this.l = str8;
        if (str8 == null) {
            this.l = "";
        }
        String appsFlyerUID = AppsFlyerLib.getInstance().getAppsFlyerUID(CallAppApplication.get());
        this.m = appsFlyerUID;
        if (appsFlyerUID == null) {
            this.m = "";
        }
        HandlerThread handlerThread = new HandlerThread(getClass().getSimpleName(), 10);
        this.f14956a = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.f14956a.getLooper());
        this.f14957b = new Handler(this.f14956a.getLooper());
        a();
    }

    public void j() {
        this.f14957b.post(new SafeRunnable() { // from class: com.callapp.contacts.manager.analytics.AbstractAnalyticsManager.5
            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void doTask() {
                AbstractAnalyticsManager.this.i();
            }

            @Override // com.callapp.contacts.manager.task.SafeRunnable
            public void handleException(Throwable th) {
            }
        });
    }
}
