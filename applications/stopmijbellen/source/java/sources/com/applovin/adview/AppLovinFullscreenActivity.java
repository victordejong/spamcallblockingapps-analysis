package com.applovin.adview;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Process;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.webkit.WebView;
import com.applovin.impl.adview.AbstractC1002k;
import com.applovin.impl.adview.C1013o;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.adview.activity.ServiceConnectionC0901a;
import com.applovin.impl.adview.activity.p037b.AbstractC0914a;
import com.applovin.impl.adview.activity.p037b.C0936e;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinFullscreenActivity.class */
public class AppLovinFullscreenActivity extends Activity implements AbstractC1002k {
    @SuppressLint({"StaticFieldLeak"})
    public static C1013o parentInterstitialWrapper;

    /* renamed from: a */
    private C1408l f3242a;

    /* renamed from: b */
    private AbstractC0914a f3243b;

    /* renamed from: c */
    private final AtomicBoolean f3244c = new AtomicBoolean(true);

    /* renamed from: d */
    private ServiceConnectionC0901a f3245d;

    /* renamed from: e */
    private boolean f3246e;

    /* renamed from: a */
    private void m7215a() {
        WindowInsetsController insetsController;
        if (!this.f3246e || !C1492g.m5066i() || (insetsController = getWindow().getInsetsController()) == null) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
            return;
        }
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(WindowInsets.Type.systemBars());
    }

    @Override // com.applovin.impl.adview.AbstractC1002k
    public void dismiss() {
        AbstractC0914a abstractC0914a = this.f3243b;
        if (abstractC0914a != null) {
            abstractC0914a.mo6958h();
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        AbstractC0914a abstractC0914a = this.f3243b;
        if (abstractC0914a != null) {
            abstractC0914a.m7042k();
        }
        if (Utils.isAppLovinTestEnvironment(getApplicationContext())) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AbstractC0914a abstractC0914a = this.f3243b;
        if (abstractC0914a != null) {
            abstractC0914a.m7059a(configuration);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && parentInterstitialWrapper == null) {
            if (bundle.getBoolean("com.applovin.dismiss_on_restore", false)) {
                C1479t.m5108h("AppLovinFullscreenActivity", "Dismissing ad. Activity was destroyed while in background.");
                dismiss();
                return;
            }
            C1479t.m5110f("AppLovinFullscreenActivity", "Activity was destroyed while in background.");
        }
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        View findViewById = findViewById(16908290);
        findViewById.setBackgroundColor(-16777216);
        C1408l c1408l = AppLovinSdk.getInstance(getIntent().getStringExtra("com.applovin.interstitial.sdk_key"), new AppLovinSdkSettings(this), this).coreSdk;
        this.f3242a = c1408l;
        this.f3246e = ((Boolean) c1408l.m5511a(C1314b.f4830cG)).booleanValue();
        if (((Boolean) this.f3242a.m5511a(C1314b.f4831cH)).booleanValue()) {
            findViewById.setFitsSystemWindows(true);
        }
        m7215a();
        C1013o c1013o = parentInterstitialWrapper;
        if (c1013o != null) {
            AbstractC0914a.m7056a(c1013o.m6823a(), parentInterstitialWrapper.m6805d(), parentInterstitialWrapper.m6807c(), parentInterstitialWrapper.m6810b(), this.f3242a, this, new AbstractC0914a.AbstractC0926a() { // from class: com.applovin.adview.AppLovinFullscreenActivity.1
                @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a.AbstractC0926a
                /* renamed from: a */
                public void mo6797a(AbstractC0914a abstractC0914a) {
                    AppLovinFullscreenActivity.this.f3243b = abstractC0914a;
                    abstractC0914a.mo6961d();
                }

                @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a.AbstractC0926a
                /* renamed from: a */
                public void mo6796a(String str, Throwable th) {
                    C1013o.m6813a(AppLovinFullscreenActivity.parentInterstitialWrapper.m6823a(), AppLovinFullscreenActivity.parentInterstitialWrapper.m6807c(), str, th, AppLovinFullscreenActivity.this);
                }
            });
            return;
        }
        Intent intent = new Intent(this, FullscreenAdService.class);
        ServiceConnectionC0901a serviceConnectionC0901a = new ServiceConnectionC0901a(this, this.f3242a);
        this.f3245d = serviceConnectionC0901a;
        bindService(intent, serviceConnectionC0901a, 1);
        if (!C1492g.m5068g()) {
            return;
        }
        try {
            WebView.setDataDirectorySuffix(String.valueOf(Process.myPid()));
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        parentInterstitialWrapper = null;
        ServiceConnectionC0901a serviceConnectionC0901a = this.f3245d;
        if (serviceConnectionC0901a != null) {
            try {
                unbindService(serviceConnectionC0901a);
            } catch (Throwable th) {
            }
        }
        AbstractC0914a abstractC0914a = this.f3243b;
        if (abstractC0914a != null) {
            abstractC0914a.mo6976j();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        AbstractC0914a abstractC0914a = this.f3243b;
        if (abstractC0914a != null) {
            abstractC0914a.m7061a(i, keyEvent);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        AbstractC0914a abstractC0914a = this.f3243b;
        if (abstractC0914a != null) {
            abstractC0914a.mo7014g();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        AbstractC0914a abstractC0914a;
        try {
            super.onResume();
            if (this.f3244c.get() || (abstractC0914a = this.f3243b) == null) {
                return;
            }
            abstractC0914a.mo7015f();
        } catch (IllegalArgumentException e) {
            this.f3242a.m5542A().m5115b("AppLovinFullscreenActivity", "Error was encountered in onResume().", e);
            dismiss();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        C1408l c1408l = this.f3242a;
        if (c1408l != null) {
            bundle.putBoolean("com.applovin.dismiss_on_restore", ((Boolean) c1408l.m5511a(C1314b.f4942eO)).booleanValue());
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        AbstractC0914a abstractC0914a = this.f3243b;
        if (abstractC0914a != null) {
            abstractC0914a.m7043i();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (this.f3243b != null) {
            if (!this.f3244c.getAndSet(false) || (this.f3243b instanceof C0936e)) {
                this.f3243b.mo6980c(z);
            }
            if (z) {
                m7215a();
            }
        }
        super.onWindowFocusChanged(z);
    }

    public void setPresenter(AbstractC0914a abstractC0914a) {
        this.f3243b = abstractC0914a;
    }
}
