package com.allinone.callerid.util.p202gg;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.AbstractC0796g;
import androidx.lifecycle.AbstractC0805o;
import androidx.lifecycle.C0806p;
import androidx.lifecycle.Lifecycle;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.start.StartActivity;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.p262u.AbstractC5850a;
import java.util.Date;
/* renamed from: com.allinone.callerid.util.gg.AppOpenManager */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/AppOpenManager.class */
public class AppOpenManager implements AbstractC0796g, Application.ActivityLifecycleCallbacks {

    /* renamed from: e */
    private AbstractC5850a.AbstractC5851a f11951e;

    /* renamed from: f */
    private final EZCallApplication f11952f;

    /* renamed from: g */
    private Activity f11953g;

    /* renamed from: i */
    public boolean f11955i;

    /* renamed from: d */
    public AbstractC5850a f11950d = null;

    /* renamed from: h */
    private long f11954h = 0;

    /* renamed from: j */
    public boolean f11956j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.gg.AppOpenManager$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/AppOpenManager$a.class */
    public class C3745a implements AbstractC2790b {
        C3745a() {
            AppOpenManager.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            try {
                if (z) {
                    if (AppOpenManager.this.f11953g != null) {
                        Log.e("AppOpenManager", "onStart_currentActivity:" + AppOpenManager.this.f11953g.getClass().getSimpleName());
                        if ("StartActivity".equals(AppOpenManager.this.f11953g.getClass().getSimpleName())) {
                            AppOpenManager.this.m24348m();
                        }
                    }
                } else if (AppOpenManager.this.f11953g != null && "StartActivity".equals(AppOpenManager.this.f11953g.getClass().getSimpleName())) {
                    StartActivity.m24678b0().m24679a0();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.gg.AppOpenManager$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/AppOpenManager$b.class */
    public class C3746b extends AbstractC5621i {
        C3746b() {
            AppOpenManager.this = r4;
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: b */
        public void mo18228b() {
            Log.e("AppOpenManager", "onAdDismissedFullScreenContent");
            AppOpenManager appOpenManager = AppOpenManager.this;
            appOpenManager.f11950d = null;
            appOpenManager.f11956j = false;
            appOpenManager.m24351j();
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: c */
        public void mo18227c(C5592a c5592a) {
            Log.e("AppOpenManager", "onAdFailedToShowFullScreenContent:" + c5592a.m18308c());
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: e */
        public void mo18225e() {
            Log.e("AppOpenManager", "onAdShowedFullScreenContent");
            AppOpenManager.this.f11956j = true;
        }
    }

    /* renamed from: com.allinone.callerid.util.gg.AppOpenManager$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/AppOpenManager$c.class */
    public class C3747c extends AbstractC5850a.AbstractC5851a {
        C3747c() {
            AppOpenManager.this = r4;
        }

        @Override // com.google.android.gms.ads.AbstractC5598c
        /* renamed from: a */
        public void mo18297a(C5756j c5756j) {
            super.mo18297a(c5756j);
            if (!C3767h1.m24296B(EZCallApplication.m26146c()) && !StartActivity.f11853u) {
                StartActivity.m24678b0().m24679a0();
            }
            Log.e("AppOpenManager", "ColdStarts--onAppOpenAdFailedToLoad:" + c5756j.m18308c());
        }

        /* renamed from: c */
        public void mo18296b(AbstractC5850a abstractC5850a) {
            super.mo18296b(abstractC5850a);
            try {
                Log.e("AppOpenManager", "onAppOpenAdLoaded");
                AppOpenManager appOpenManager = AppOpenManager.this;
                appOpenManager.f11950d = abstractC5850a;
                appOpenManager.f11954h = new Date().getTime();
                if (C3767h1.m24296B(EZCallApplication.m26146c()) || StartActivity.f11853u) {
                    return;
                }
                StartActivity.m24678b0().m24679a0();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.gg.AppOpenManager$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/AppOpenManager$d.class */
    public class C3748d extends AbstractC5621i {
        C3748d() {
            AppOpenManager.this = r4;
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: b */
        public void mo18228b() {
            try {
                Log.e("AppOpenManager", "onAdDismissedFullScreenContent");
                AppOpenManager appOpenManager = AppOpenManager.this;
                appOpenManager.f11950d = null;
                appOpenManager.f11956j = false;
                StartActivity.m24678b0().m24679a0();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: c */
        public void mo18227c(C5592a c5592a) {
            Log.e("AppOpenManager", "onAdFailedToShowFullScreenContent:" + c5592a.m18308c());
            StartActivity.m24678b0().m24679a0();
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: e */
        public void mo18225e() {
            Log.e("AppOpenManager", "onAdShowedFullScreenContent");
            StartActivity.f11854v = true;
            AppOpenManager.this.f11956j = true;
        }
    }

    public AppOpenManager(EZCallApplication eZCallApplication) {
        this.f11952f = eZCallApplication;
        eZCallApplication.registerActivityLifecycleCallbacks(this);
        C0806p.m32364j().mo32372a().mo32398a(this);
    }

    /* renamed from: k */
    private C5603e m24350k() {
        return new C5603e.C5604a().m18282c();
    }

    /* renamed from: n */
    private boolean m24347n(long j) {
        return new Date().getTime() - this.f11954h < j * 3600000;
    }

    /* renamed from: j */
    public void m24351j() {
        try {
            Log.e("AppOpenManager", "isAdAvailable():" + m24349l());
            if (m24349l()) {
                this.f11950d.mo14914b(new C3746b());
                this.f11950d.mo14913c(this.f11953g);
                return;
            }
            this.f11951e = new C3747c();
            AbstractC5850a.m17755a(this.f11952f, "ca-app-pub-5825926894918682/8693450802", m24350k(), 1, this.f11951e);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l */
    public boolean m24349l() {
        boolean z = true;
        if (!m24347n(4L)) {
            EZCallApplication.m26146c().f9917k = true;
        }
        if (this.f11950d == null || !m24347n(4L)) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    public void m24348m() {
        try {
            if (this.f11956j || !m24349l()) {
                Log.e("AppOpenManager", "Can not show ad.");
                m24351j();
                return;
            }
            Log.e("AppOpenManager", "Will show ad.");
            if (C3767h1.m24296B(EZCallApplication.m26146c())) {
                Log.e("AppOpenManager", "first install not show ad");
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("AppOpenManager", "hasEntered:" + StartActivity.f11853u);
                C3718c0.m24436a("AppOpenManager", "currentActivity:" + this.f11953g.getClass().getSimpleName());
            }
            if (StartActivity.f11853u || !"StartActivity".equals(this.f11953g.getClass().getSimpleName())) {
                return;
            }
            C3748d c3748d = new C3748d();
            Log.e("AppOpenManager", "currentActivity:" + this.f11953g);
            this.f11950d.mo14914b(c3748d);
            this.f11950d.mo14913c(this.f11953g);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        this.f11953g = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f11953g = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f11953g = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @AbstractC0805o(Lifecycle.Event.ON_CREATE)
    public void onCreate() {
        Log.e("AppOpenManager", "onCreate");
    }

    @AbstractC0805o(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        Log.e("AppOpenManager", "onDestroy");
    }

    @AbstractC0805o(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        Log.e("AppOpenManager", "onPause");
    }

    @AbstractC0805o(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        Log.e("AppOpenManager", "onResume");
    }

    @AbstractC0805o(Lifecycle.Event.ON_START)
    public void onStart() {
        try {
            this.f11955i = false;
            Log.e("AppOpenManager", "onStart");
            if (this.f11953g != null) {
                Log.e("AppOpenManager", "onStart_currentActivity:" + this.f11953g.getClass().getSimpleName());
                if ("StartActivity".equals(this.f11953g.getClass().getSimpleName())) {
                    this.f11955i = true;
                }
            }
            C2786a.m26600a(new C3745a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @AbstractC0805o(Lifecycle.Event.ON_STOP)
    public void onStop() {
        Log.e("AppOpenManager", "onStop");
    }
}
