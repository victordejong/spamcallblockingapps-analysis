package p131c.p135b.p136a.p148e;

import android.app.Activity;
import android.content.Intent;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinUserService;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2329j;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.k */
/* loaded from: classes-dex2jar.jar:c/b/a/e/k.class */
public class C2335k implements C2329j.AbstractC2334b, AppLovinWebViewActivity.EventListener {

    /* renamed from: g */
    public static final AtomicBoolean f9006g = new AtomicBoolean();

    /* renamed from: h */
    public static WeakReference<AppLovinWebViewActivity> f9007h;

    /* renamed from: a */
    public final C2341l f9008a;

    /* renamed from: b */
    public final C2374t f9009b;

    /* renamed from: c */
    public AppLovinUserService.OnConsentDialogDismissListener f9010c;

    /* renamed from: d */
    public C2329j f9011d;

    /* renamed from: e */
    public WeakReference<Activity> f9012e;

    /* renamed from: f */
    public AbstractC2381a f9013f;

    /* renamed from: c.b.a.e.k$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/k$a.class */
    public class C2336a extends AbstractC2381a {
        public C2336a() {
        }

        @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            C2335k.this.f9012e = new WeakReference(activity);
        }
    }

    /* renamed from: c.b.a.e.k$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/k$b.class */
    public class RunnableC2337b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinUserService.OnConsentDialogDismissListener f9015a;

        /* renamed from: b */
        public final /* synthetic */ Activity f9016b;

        /* renamed from: c.b.a.e.k$b$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/k$b$a.class */
        public class C2338a extends AbstractC2381a {
            public C2338a() {
            }

            @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (activity instanceof AppLovinWebViewActivity) {
                    if (!C2335k.this.m30327c() || C2335k.f9007h.get() != activity) {
                        AppLovinWebViewActivity appLovinWebViewActivity = (AppLovinWebViewActivity) activity;
                        WeakReference unused = C2335k.f9007h = new WeakReference(appLovinWebViewActivity);
                        appLovinWebViewActivity.loadUrl((String) C2335k.this.f9008a.m30291a(C2251d.C2256e.f8777z), C2335k.this);
                    }
                    C2335k.f9006g.set(false);
                }
            }
        }

        public RunnableC2337b(AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener, Activity activity) {
            this.f9015a = onConsentDialogDismissListener;
            this.f9016b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2335k kVar = C2335k.this;
            if (!kVar.m30332a(kVar.f9008a) || C2335k.f9006g.getAndSet(true)) {
                AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener = this.f9015a;
                if (onConsentDialogDismissListener != null) {
                    onConsentDialogDismissListener.onDismiss();
                    return;
                }
                return;
            }
            C2335k.this.f9012e = new WeakReference(this.f9016b);
            C2335k.this.f9010c = this.f9015a;
            C2335k.this.f9013f = new C2338a();
            C2335k.this.f9008a.m30234y().m30675a(C2335k.this.f9013f);
            Intent intent = new Intent(this.f9016b, AppLovinWebViewActivity.class);
            intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, C2335k.this.f9008a.m30269b0());
            intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, (Serializable) C2335k.this.f9008a.m30291a(C2251d.C2256e.f8507A));
            this.f9016b.startActivity(intent);
        }
    }

    /* renamed from: c.b.a.e.k$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/k$c.class */
    public class RunnableC2339c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f9019a;

        public RunnableC2339c(long j) {
            this.f9019a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2335k.this.f9009b.m30044b("ConsentDialogManager", "Scheduling repeating consent alert");
            C2335k.this.f9011d.m30344a(this.f9019a, C2335k.this.f9008a, C2335k.this);
        }
    }

    /* renamed from: c.b.a.e.k$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/k$d.class */
    public class RunnableC2340d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Activity f9021a;

        public RunnableC2340d(Activity activity) {
            this.f9021a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2335k.this.m30338a(this.f9021a, (AppLovinUserService.OnConsentDialogDismissListener) null);
        }
    }

    public C2335k(C2341l lVar) {
        this.f9012e = new WeakReference<>(null);
        this.f9008a = lVar;
        this.f9009b = lVar.m30262d0();
        if (lVar.m30261e() != null) {
            this.f9012e = new WeakReference<>(lVar.m30261e());
        }
        lVar.m30234y().m30675a(new C2336a());
        this.f9011d = new C2329j(this, lVar);
    }

    @Override // p131c.p135b.p136a.p148e.C2329j.AbstractC2334b
    /* renamed from: a */
    public void mo30340a() {
        if (this.f9012e.get() != null) {
            Activity activity = this.f9012e.get();
            AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2340d(activity), ((Long) this.f9008a.m30291a(C2251d.C2256e.f8512B)).longValue());
        }
    }

    /* renamed from: a */
    public void m30339a(long j) {
        AppLovinSdkUtils.runOnUiThread(new RunnableC2339c(j));
    }

    /* renamed from: a */
    public void m30338a(Activity activity, AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener) {
        activity.runOnUiThread(new RunnableC2337b(onConsentDialogDismissListener, activity));
    }

    /* renamed from: a */
    public final void m30330a(boolean z, long j) {
        m30325d();
        if (z) {
            m30339a(j);
        }
    }

    /* renamed from: a */
    public final boolean m30332a(C2341l lVar) {
        if (m30327c()) {
            C2374t.m30034j(AppLovinSdk.TAG, "Consent dialog already showing");
            return false;
        } else if (!C2389h.m29964a(lVar.m30264d())) {
            C2374t.m30034j(AppLovinSdk.TAG, "No internet available, skip showing of consent dialog");
            return false;
        } else if (!((Boolean) lVar.m30291a(C2251d.C2256e.f8772y)).booleanValue()) {
            this.f9009b.m30039e("ConsentDialogManager", "Blocked publisher from showing consent dialog");
            return false;
        } else if (C2422o.m29851b((String) lVar.m30291a(C2251d.C2256e.f8777z))) {
            return true;
        } else {
            this.f9009b.m30039e("ConsentDialogManager", "AdServer returned empty consent dialog URL");
            return false;
        }
    }

    @Override // p131c.p135b.p136a.p148e.C2329j.AbstractC2334b
    /* renamed from: b */
    public void mo30329b() {
    }

    /* renamed from: c */
    public boolean m30327c() {
        WeakReference<AppLovinWebViewActivity> weakReference = f9007h;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    /* renamed from: d */
    public final void m30325d() {
        this.f9008a.m30234y().m30673b(this.f9013f);
        if (m30327c()) {
            AppLovinWebViewActivity appLovinWebViewActivity = f9007h.get();
            f9007h = null;
            if (appLovinWebViewActivity != null) {
                appLovinWebViewActivity.finish();
                AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener = this.f9010c;
                if (onConsentDialogDismissListener != null) {
                    onConsentDialogDismissListener.onDismiss();
                    this.f9010c = null;
                }
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinWebViewActivity.EventListener
    public void onReceivedEvent(String str) {
        boolean booleanValue;
        C2341l lVar;
        C2251d.C2256e<Long> eVar;
        if ("accepted".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(true, this.f9008a.m30264d());
            m30325d();
            return;
        }
        if ("rejected".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(false, this.f9008a.m30264d());
            booleanValue = ((Boolean) this.f9008a.m30291a(C2251d.C2256e.f8517C)).booleanValue();
            lVar = this.f9008a;
            eVar = C2251d.C2256e.f8542H;
        } else if ("closed".equalsIgnoreCase(str)) {
            booleanValue = ((Boolean) this.f9008a.m30291a(C2251d.C2256e.f8522D)).booleanValue();
            lVar = this.f9008a;
            eVar = C2251d.C2256e.f8547I;
        } else if (AppLovinWebViewActivity.EVENT_DISMISSED_VIA_BACK_BUTTON.equalsIgnoreCase(str)) {
            booleanValue = ((Boolean) this.f9008a.m30291a(C2251d.C2256e.f8527E)).booleanValue();
            lVar = this.f9008a;
            eVar = C2251d.C2256e.f8552J;
        } else {
            return;
        }
        m30330a(booleanValue, ((Long) lVar.m30291a(eVar)).longValue());
    }
}
