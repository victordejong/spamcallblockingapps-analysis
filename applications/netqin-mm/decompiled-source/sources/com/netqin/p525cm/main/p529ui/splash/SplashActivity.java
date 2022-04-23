package com.netqin.p525cm.main.p529ui.splash;

import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.google.common.collect.RegularImmutableMap;
import com.library.p518ad.core.AdInfo;
import com.netqin.p525cm.antiharass.p527ui.activity.MainActivity;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.main.p529ui.NqApplication;
import com.netqin.p525cm.service.MainService;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.C6490b;
import p131c.p396i.p397a.C6497d;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p431l.p432a.p433a.p434a.C6690a;
import p131c.p431l.p432a.p452c.C6793d;
import p131c.p431l.p432a.p452c.C6794e;
import p131c.p431l.p432a.p467m.C6838a;
import p131c.p431l.p432a.p468n.C6854m;
import p131c.p431l.p432a.p468n.C6860r;
import p131c.p431l.p478c.C6871a;
/* renamed from: com.netqin.cm.main.ui.splash.SplashActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/splash/SplashActivity.class */
public class SplashActivity extends BaseActivity {

    /* renamed from: t */
    public final Runnable f35647t = new RunnableC9157e();

    /* renamed from: com.netqin.cm.main.ui.splash.SplashActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/splash/SplashActivity$a.class */
    public class RunnableC9152a implements Runnable {

        /* renamed from: com.netqin.cm.main.ui.splash.SplashActivity$a$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/splash/SplashActivity$a$a.class */
        public class C9153a implements C6690a.AbstractC6693c {
            public C9153a() {
            }

            @Override // p131c.p431l.p432a.p433a.p434a.C6690a.AbstractC6693c
            /* renamed from: a */
            public void mo3295a() {
                SplashActivity splashActivity = SplashActivity.this;
                splashActivity.m3325a(splashActivity.f35647t);
            }

            @Override // p131c.p431l.p432a.p433a.p434a.C6690a.AbstractC6693c
            public void onClose() {
                SplashActivity splashActivity = SplashActivity.this;
                splashActivity.m3325a(splashActivity.f35647t);
            }
        }

        public RunnableC9152a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NqApplication.f35643b.m20044a(SplashActivity.this, new C9153a());
        }
    }

    /* renamed from: com.netqin.cm.main.ui.splash.SplashActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/splash/SplashActivity$b.class */
    public class RunnableC9154b implements Runnable {
        public RunnableC9154b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity.this.m3296p();
        }
    }

    /* renamed from: com.netqin.cm.main.ui.splash.SplashActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/splash/SplashActivity$c.class */
    public class C9155c implements AbstractC6518i {
        public C9155c() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: a */
        public void mo3229a(AdInfo adInfo) {
            SplashActivity.this.m3296p();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: b */
        public void mo3228b(AdInfo adInfo) {
            SplashActivity splashActivity = SplashActivity.this;
            splashActivity.m3325a(splashActivity.f35647t);
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        public void onStart() {
        }
    }

    /* renamed from: com.netqin.cm.main.ui.splash.SplashActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/splash/SplashActivity$d.class */
    public class C9156d extends AbstractC6515g {
        public C9156d() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: b */
        public void mo3231b(AdInfo adInfo, int i) {
            SplashActivity splashActivity = SplashActivity.this;
            splashActivity.m3325a(splashActivity.f35647t);
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: c */
        public void mo3294c(AdInfo adInfo, int i) {
            SplashActivity splashActivity = SplashActivity.this;
            splashActivity.m3325a(splashActivity.f35647t);
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: d */
        public void mo3230d(AdInfo adInfo, int i) {
            SplashActivity.this.m3298n();
        }
    }

    /* renamed from: com.netqin.cm.main.ui.splash.SplashActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/splash/SplashActivity$e.class */
    public class RunnableC9157e implements Runnable {
        public RunnableC9157e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(SplashActivity.this, MainActivity.class);
            intent.addFlags(RegularImmutableMap.SHORT_MAX_SIZE);
            intent.putExtra("isFromSplash", true);
            SplashActivity.this.startActivity(intent);
            SplashActivity.this.overridePendingTransition(2130771992, 2130771993);
            SplashActivity.this.finish();
        }
    }

    /* renamed from: n */
    public void m3298n() {
        findViewById(2131231138).setVisibility(8);
    }

    /* renamed from: o */
    public final void m3297o() {
        if (!C6860r.m19546a(System.currentTimeMillis(), C6838a.m19616a())) {
            C6838a.m19615a(0);
        }
        int b = C6838a.m19613b() + 1;
        C6871a.m19505b("Start Page", "Show Startup animation Page", String.valueOf(b));
        C6838a.m19615a(b);
        C6838a.m19611d();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427464);
        C6794e.m19773d().m19775b();
        C6871a.m19509a("ShowSplash");
        MainService.m3260a("COMMAND_NONE");
        m3297o();
        C6489a.m20720a(this);
        if (C6838a.m19612c() || C6793d.m19782d() || !((Boolean) C6854m.m19558a("ShowOpenAds", false)).booleanValue()) {
            m3324a(this.f35647t, 1500L);
            C6838a.m19614a(false);
        } else if (!((Boolean) C6854m.m19558a("OpenAdsMethod", false)).booleanValue()) {
            NqApplication.f35643b.m20046a();
            m3324a(new RunnableC9152a(), 3000L);
            return;
        } else if (C6490b.m20696c("14")) {
            m3324a(new RunnableC9154b(), 1500L);
        } else {
            C6490b bVar = new C6490b("14");
            bVar.m20708a(new C9155c());
            bVar.m20694e();
        }
        C6497d.m20645o().m20658g();
    }

    /* renamed from: p */
    public final void m3296p() {
        if (C6793d.m19782d() || !C6490b.m20696c("14")) {
            m3325a(this.f35647t);
            return;
        }
        C9156d dVar = new C9156d();
        C6490b bVar = new C6490b("14");
        bVar.m20709a(dVar);
        bVar.m20697c(new FrameLayout(this));
    }
}
