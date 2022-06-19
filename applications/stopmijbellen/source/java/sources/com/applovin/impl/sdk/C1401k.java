package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Intent;
import android.webkit.WebView;
import com.applovin.impl.sdk.C1395j;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinUserService;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.sdk.k */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/k.class */
public class C1401k implements C1395j.AbstractC1400a, AppLovinWebViewActivity.EventListener {

    /* renamed from: a */
    private static final AtomicBoolean f5258a = new AtomicBoolean();

    /* renamed from: b */
    private static WeakReference<AppLovinWebViewActivity> f5259b;

    /* renamed from: c */
    private final C1408l f5260c;

    /* renamed from: d */
    private final C1479t f5261d;

    /* renamed from: e */
    private AppLovinUserService.OnConsentDialogDismissListener f5262e;

    /* renamed from: f */
    private C1395j f5263f;

    /* renamed from: g */
    private WeakReference<Activity> f5264g;

    /* renamed from: h */
    private AbstractC1485a f5265h;

    /* renamed from: i */
    private AtomicBoolean f5266i = new AtomicBoolean();

    public C1401k(C1408l c1408l) {
        this.f5264g = new WeakReference<>(null);
        this.f5260c = c1408l;
        this.f5261d = c1408l.m5542A();
        if (c1408l.m5530M() != null) {
            this.f5264g = new WeakReference<>(c1408l.m5530M());
        }
        C1408l.m5514a(C1408l.m5531L()).m6067a(new AbstractC1485a() { // from class: com.applovin.impl.sdk.k.1
            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                C1401k.this.f5264g = new WeakReference(activity);
            }
        });
        this.f5263f = new C1395j(this, c1408l);
    }

    /* renamed from: a */
    private void m5552a(boolean z, long j) {
        m5543g();
        if (z) {
            m5561a(j);
        }
    }

    /* renamed from: a */
    public boolean m5554a(C1408l c1408l) {
        if (m5547d()) {
            C1479t.m5107i("AppLovinSdk", "Consent dialog already showing");
            return false;
        } else if (!C1493h.m5062a(c1408l.m5532K())) {
            C1479t.m5107i("AppLovinSdk", "No internet available, skip showing of consent dialog");
            return false;
        } else if (!((Boolean) c1408l.m5511a(C1314b.f4763as)).booleanValue()) {
            this.f5261d.m5111e("ConsentDialogManager", "Blocked publisher from showing consent dialog");
            return false;
        } else if (StringUtils.isValidString((String) c1408l.m5511a(C1314b.f4764at))) {
            return true;
        } else {
            this.f5261d.m5111e("ConsentDialogManager", "AdServer returned empty consent dialog URL");
            return false;
        }
    }

    /* renamed from: g */
    private void m5543g() {
        this.f5260c.m5491ad().m6065b(this.f5265h);
        if (m5547d()) {
            AppLovinWebViewActivity appLovinWebViewActivity = f5259b.get();
            f5259b = null;
            if (appLovinWebViewActivity == null) {
                return;
            }
            appLovinWebViewActivity.finish();
            AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener = this.f5262e;
            if (onConsentDialogDismissListener == null) {
                return;
            }
            onConsentDialogDismissListener.onDismiss();
            this.f5262e = null;
        }
    }

    @Override // com.applovin.impl.sdk.C1395j.AbstractC1400a
    /* renamed from: a */
    public void mo5562a() {
        if (this.f5264g.get() != null) {
            final Activity activity = this.f5264g.get();
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.k.5
                @Override // java.lang.Runnable
                public void run() {
                    C1401k.this.m5560a(activity, (AppLovinUserService.OnConsentDialogDismissListener) null);
                }
            }, ((Long) this.f5260c.m5511a(C1314b.f4766av)).longValue());
        }
    }

    /* renamed from: a */
    public void m5561a(final long j) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.k.4
            @Override // java.lang.Runnable
            public void run() {
                C1401k.this.f5261d.m5116b("ConsentDialogManager", "Scheduling repeating consent alert");
                C1401k.this.f5263f.m5566a(j, C1401k.this.f5260c, C1401k.this);
            }
        });
    }

    /* renamed from: a */
    public void m5560a(final Activity activity, final AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener) {
        activity.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.k.3
            @Override // java.lang.Runnable
            public void run() {
                C1401k c1401k = C1401k.this;
                if (!c1401k.m5554a(c1401k.f5260c) || C1401k.f5258a.getAndSet(true)) {
                    AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener2 = onConsentDialogDismissListener;
                    if (onConsentDialogDismissListener2 == null) {
                        return;
                    }
                    onConsentDialogDismissListener2.onDismiss();
                    return;
                }
                C1401k.this.f5264g = new WeakReference(activity);
                C1401k.this.f5262e = onConsentDialogDismissListener;
                C1401k.this.f5265h = new AbstractC1485a() { // from class: com.applovin.impl.sdk.k.3.1
                    @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity2) {
                        if (activity2 instanceof AppLovinWebViewActivity) {
                            if (!C1401k.this.m5547d() || C1401k.f5259b.get() != activity2) {
                                AppLovinWebViewActivity appLovinWebViewActivity = (AppLovinWebViewActivity) activity2;
                                WeakReference unused = C1401k.f5259b = new WeakReference(appLovinWebViewActivity);
                                appLovinWebViewActivity.loadUrl((String) C1401k.this.f5260c.m5511a(C1314b.f4764at), C1401k.this);
                            }
                            C1401k.f5258a.set(false);
                        }
                    }
                };
                C1401k.this.f5260c.m5491ad().m6067a(C1401k.this.f5265h);
                Intent intent = new Intent(activity, AppLovinWebViewActivity.class);
                intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, C1401k.this.f5260c.m5444z());
                intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, (Serializable) C1401k.this.f5260c.m5511a(C1314b.f4765au));
                activity.startActivity(intent);
            }
        });
    }

    @Override // com.applovin.impl.sdk.C1395j.AbstractC1400a
    /* renamed from: b */
    public void mo5551b() {
    }

    /* renamed from: c */
    public void m5549c() {
        if (this.f5266i.getAndSet(true)) {
            return;
        }
        final String str = (String) this.f5260c.m5511a(C1314b.f4764at);
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.k.2
            @Override // java.lang.Runnable
            public void run() {
                new WebView(C1401k.this.f5260c.m5532K()).loadUrl(str);
            }
        });
    }

    /* renamed from: d */
    public boolean m5547d() {
        WeakReference<AppLovinWebViewActivity> weakReference = f5259b;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    @Override // com.applovin.sdk.AppLovinWebViewActivity.EventListener
    public void onReceivedEvent(String str) {
        boolean booleanValue;
        C1408l c1408l;
        C1314b<Long> c1314b;
        if ("accepted".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(true, this.f5260c.m5532K());
            m5543g();
            return;
        }
        if ("rejected".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(false, this.f5260c.m5532K());
            booleanValue = ((Boolean) this.f5260c.m5511a(C1314b.f4767aw)).booleanValue();
            c1408l = this.f5260c;
            c1314b = C1314b.f4720aB;
        } else if ("closed".equalsIgnoreCase(str)) {
            booleanValue = ((Boolean) this.f5260c.m5511a(C1314b.f4768ax)).booleanValue();
            c1408l = this.f5260c;
            c1314b = C1314b.f4721aC;
        } else if (!AppLovinWebViewActivity.EVENT_DISMISSED_VIA_BACK_BUTTON.equalsIgnoreCase(str)) {
            return;
        } else {
            booleanValue = ((Boolean) this.f5260c.m5511a(C1314b.f4769ay)).booleanValue();
            c1408l = this.f5260c;
            c1314b = C1314b.f4722aD;
        }
        m5552a(booleanValue, ((Long) c1408l.m5511a(c1314b)).longValue());
    }
}
