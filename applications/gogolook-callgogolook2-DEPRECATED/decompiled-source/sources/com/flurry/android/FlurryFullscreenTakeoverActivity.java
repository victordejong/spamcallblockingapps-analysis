package com.flurry.android;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractC3344jl;
import com.flurry.sdk.AbstractC3472lt;
import com.flurry.sdk.AbstractC3518x;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import com.flurry.sdk.AbstractRunnableC3447lc;
import com.flurry.sdk.C2788ab;
import com.flurry.sdk.C2853ay;
import com.flurry.sdk.C2861bc;
import com.flurry.sdk.C2866be;
import com.flurry.sdk.C3007du;
import com.flurry.sdk.C3020eg;
import com.flurry.sdk.C3115fu;
import com.flurry.sdk.C3155gd;
import com.flurry.sdk.C3158gh;
import com.flurry.sdk.C3331jb;
import com.flurry.sdk.C3345jm;
import com.flurry.sdk.C3356jq;
import com.flurry.sdk.C3461lm;
import com.flurry.sdk.C3484p;
import com.flurry.sdk.EnumC2874bi;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"Registered"})
/* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryFullscreenTakeoverActivity.class */
public final class FlurryFullscreenTakeoverActivity extends Activity {

    /* renamed from: a */
    public static final String f3841a = FlurryFullscreenTakeoverActivity.class.getSimpleName();

    /* renamed from: b */
    public ViewGroup f3842b;

    /* renamed from: c */
    public AbstractDialogInterface$OnKeyListenerC3134fw f3843c;

    /* renamed from: d */
    public boolean f3844d;

    /* renamed from: e */
    public boolean f3845e;

    /* renamed from: f */
    public Uri f3846f;

    /* renamed from: g */
    public C2866be f3847g;

    /* renamed from: k */
    public AbstractC3518x f3851k;

    /* renamed from: l */
    public C3155gd f3852l;

    /* renamed from: h */
    public int f3848h = C3158gh.EnumC3159a.f5185f;

    /* renamed from: i */
    public C2866be.AbstractC2868a f3849i = new C2866be.AbstractC2868a() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.1
        @Override // com.flurry.sdk.C2866be.AbstractC2868a
        /* renamed from: a */
        public final void mo33482a() {
            C2866be beVar = FlurryFullscreenTakeoverActivity.this.f3847g;
            FlurryFullscreenTakeoverActivity flurryFullscreenTakeoverActivity = FlurryFullscreenTakeoverActivity.this;
            beVar.m33487a(flurryFullscreenTakeoverActivity, flurryFullscreenTakeoverActivity.f3846f, new C2866be.AbstractC2869b() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.1.1
                @Override // com.flurry.sdk.C2866be.AbstractC2869b
                /* renamed from: a */
                public final void mo33480a() {
                    FlurryFullscreenTakeoverActivity.this.f3848h = C3158gh.EnumC3159a.f5184e;
                    FlurryFullscreenTakeoverActivity.this.m33743d();
                    FlurryFullscreenTakeoverActivity.this.m33737g();
                }
            });
        }

        @Override // com.flurry.sdk.C2866be.AbstractC2868a
        /* renamed from: b */
        public final void mo33481b() {
            FlurryFullscreenTakeoverActivity.this.f3848h = C3158gh.EnumC3159a.f5184e;
            FlurryFullscreenTakeoverActivity.this.m33743d();
            FlurryFullscreenTakeoverActivity.this.m33737g();
        }
    };

    /* renamed from: j */
    public C2866be.AbstractC2870c f3850j = new C2866be.AbstractC2870c(this) { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.2
    };

    /* renamed from: m */
    public boolean f3853m = true;

    /* renamed from: n */
    public long f3854n = 0;

    /* renamed from: o */
    public final AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a f3855o = new AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.3
        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: a */
        public final void mo32972a() {
            C3356jq.m32613a(FlurryFullscreenTakeoverActivity.f3841a, "onViewBack");
            if (FlurryFullscreenTakeoverActivity.this.f3852l == null || !FlurryFullscreenTakeoverActivity.this.f3852l.f5157c) {
                FlurryFullscreenTakeoverActivity.m33732i(FlurryFullscreenTakeoverActivity.this);
                FlurryFullscreenTakeoverActivity.this.m33739f();
                FlurryFullscreenTakeoverActivity.this.f3853m = true;
                FlurryFullscreenTakeoverActivity.this.m33737g();
                return;
            }
            FlurryFullscreenTakeoverActivity.m33738f(FlurryFullscreenTakeoverActivity.this);
            FlurryFullscreenTakeoverActivity.this.m33735h();
            FlurryFullscreenTakeoverActivity.this.finish();
            FlurryFullscreenTakeoverActivity.this.f3843c = null;
        }

        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: b */
        public final void mo32971b() {
            C3356jq.m32613a(FlurryFullscreenTakeoverActivity.f3841a, "onViewClose");
            FlurryFullscreenTakeoverActivity.m33738f(FlurryFullscreenTakeoverActivity.this);
            FlurryFullscreenTakeoverActivity.this.m33735h();
            FlurryFullscreenTakeoverActivity.this.finish();
            FlurryFullscreenTakeoverActivity.this.f3843c = null;
        }

        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: c */
        public final void mo32970c() {
            C3356jq.m32613a(FlurryFullscreenTakeoverActivity.f3841a, "onViewError");
            FlurryFullscreenTakeoverActivity.this.m33735h();
            FlurryFullscreenTakeoverActivity.this.finish();
            FlurryFullscreenTakeoverActivity.this.f3843c = null;
        }
    };

    /* renamed from: p */
    public final AbstractC3344jl<C3115fu> f3856p = new AbstractC3344jl<C3115fu>() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.4
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3115fu fuVar) {
            final C3115fu fuVar2 = fuVar;
            C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.4.1
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3115fu fuVar3 = fuVar2;
                    int i = C27665.f3864b[fuVar3.f5049d - 1];
                    if (i == 1) {
                        String str = fuVar3.f5047b;
                        AbstractC3518x xVar = fuVar3.f5046a;
                        boolean z = fuVar3.f5048c;
                        String str2 = FlurryFullscreenTakeoverActivity.f3841a;
                        C3356jq.m32615a(3, str2, "RELOAD_ACTIVITY Event was fired for adObject:" + xVar.mo32283d() + " for url:" + str + " and should Close Ad:" + z);
                        FlurryFullscreenTakeoverActivity flurryFullscreenTakeoverActivity = FlurryFullscreenTakeoverActivity.this;
                        flurryFullscreenTakeoverActivity.f3848h = C3158gh.m32961a(flurryFullscreenTakeoverActivity, xVar, str);
                        int i2 = C27665.f3863a[FlurryFullscreenTakeoverActivity.this.f3848h - 1];
                        if (i2 == 1) {
                            FlurryFullscreenTakeoverActivity.this.m33748a(str);
                        } else if (i2 != 2) {
                            FlurryFullscreenTakeoverActivity.this.f3852l = new C3155gd(xVar, str, z);
                            FlurryFullscreenTakeoverActivity flurryFullscreenTakeoverActivity2 = FlurryFullscreenTakeoverActivity.this;
                            flurryFullscreenTakeoverActivity2.f3851k = flurryFullscreenTakeoverActivity2.f3852l.f5155a;
                            if (FlurryFullscreenTakeoverActivity.this.f3851k == null) {
                                C3356jq.m32609b(FlurryFullscreenTakeoverActivity.f3841a, "Cannot launch Activity. No Ad Object");
                                FlurryFullscreenTakeoverActivity.this.finish();
                                return;
                            }
                            FlurryFullscreenTakeoverActivity.this.m33743d();
                            FlurryFullscreenTakeoverActivity.this.m33733i();
                            FlurryFullscreenTakeoverActivity.this.m33735h();
                            FlurryFullscreenTakeoverActivity.this.f3853m = true;
                            FlurryFullscreenTakeoverActivity.this.m33737g();
                        } else {
                            FlurryFullscreenTakeoverActivity.this.finish();
                        }
                    } else if (i == 2) {
                        C3356jq.m32613a(FlurryFullscreenTakeoverActivity.f3841a, "CLOSE_ACTIVITY Event was fired");
                        FlurryFullscreenTakeoverActivity.m33738f(FlurryFullscreenTakeoverActivity.this);
                        if (!FlurryFullscreenTakeoverActivity.this.m33731j()) {
                            FlurryFullscreenTakeoverActivity.this.finish();
                        }
                    }
                }
            });
        }
    };

    /* renamed from: com.flurry.android.FlurryFullscreenTakeoverActivity$5 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryFullscreenTakeoverActivity$5.class */
    public static final /* synthetic */ class C27665 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3863a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f3864b = new int[C3115fu.EnumC3116a.m33045a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003b -> B:16:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003f -> B:6:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0043 -> B:20:0x0030). Please submit an issue!!! */
        static {
            try {
                f3864b[C3115fu.EnumC3116a.f5050a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3864b[C3115fu.EnumC3116a.f5051b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f3863a = new int[C3158gh.EnumC3159a.m32960a().length];
            try {
                f3863a[C3158gh.EnumC3159a.f5183d - 1] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3863a[C3158gh.EnumC3159a.f5185f - 1] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m33738f(FlurryFullscreenTakeoverActivity flurryFullscreenTakeoverActivity) {
        AbstractC3518x xVar = flurryFullscreenTakeoverActivity.f3851k;
        if (xVar instanceof C2788ab) {
            HashMap<String, Object> hashMap = xVar.mo32279k().f4111b.f4155j;
            if (hashMap != null && !hashMap.isEmpty()) {
                hashMap.put(AbstractC3472lt.EnumC3474b.DELTA_ON_CLICK.f5980e, String.valueOf(SystemClock.elapsedRealtime() - flurryFullscreenTakeoverActivity.f3854n));
            }
            if (C3461lm.m32419a().f5954a != null) {
                AbstractC3472lt ltVar = C3461lm.m32419a().f5954a;
            }
        }
    }

    /* renamed from: i */
    public static /* synthetic */ void m33732i(FlurryFullscreenTakeoverActivity flurryFullscreenTakeoverActivity) {
        if (flurryFullscreenTakeoverActivity.f3851k.mo32279k() != null) {
            C3155gd j = flurryFullscreenTakeoverActivity.f3851k.mo32279k().m33520j();
            String str = f3841a;
            C3356jq.m32613a(str, "Remove view state: " + j.toString());
        }
    }

    public static Intent newIntent(Context context, int i, String str, boolean z) {
        return new Intent(context, FlurryFullscreenTakeoverActivity.class).putExtra("ad_object_id", i).putExtra("url", str).putExtra("close_ad", z);
    }

    /* renamed from: a */
    public final void m33750a(EnumC2874bi biVar, Map<String, String> map) {
        String str = f3841a;
        C3356jq.m32613a(str, "fireEvent(event=" + biVar + ", params=" + map + ")");
        AbstractC3518x xVar = this.f3851k;
        C3007du.m33321a(biVar, map, this, xVar, xVar.mo32279k(), 0);
    }

    /* renamed from: a */
    public final void m33749a(AbstractDialogInterface$OnKeyListenerC3134fw fwVar) {
        synchronized (this) {
            if (fwVar != null) {
                m33735h();
                this.f3843c = fwVar;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(13);
                this.f3842b.addView(fwVar, layoutParams);
                this.f3843c.initLayout();
            }
        }
    }

    /* renamed from: a */
    public final void m33748a(String str) {
        this.f3846f = Uri.parse(str);
        this.f3847g = new C2866be();
        C2866be beVar = this.f3847g;
        beVar.f4167a = this.f3849i;
        beVar.f4168b = this.f3850j;
        beVar.m33488a((Activity) this);
    }

    /* renamed from: b */
    public final void m33747b() {
        C3356jq.m32615a(3, f3841a, "onStopActivity");
        AbstractDialogInterface$OnKeyListenerC3134fw fwVar = this.f3843c;
        if (fwVar != null) {
            fwVar.onActivityStop();
        }
        this.f3853m = false;
    }

    /* renamed from: c */
    public final void m33745c() {
        C3356jq.m32615a(3, f3841a, "onDestroyActivity");
        AbstractDialogInterface$OnKeyListenerC3134fw fwVar = this.f3843c;
        if (fwVar != null) {
            fwVar.onActivityDestroy();
        }
        AbstractC3518x xVar = this.f3851k;
        if (!(xVar == null || xVar.mo32279k() == null)) {
            C2861bc bcVar = this.f3851k.mo32279k().f4111b;
            synchronized (bcVar.f4149d) {
                bcVar.f4149d.clear();
            }
            bcVar.f4150e = 0;
            this.f3851k.mo32279k().m33533a(false);
        }
        AbstractC3518x xVar2 = this.f3851k;
        if (xVar2 == null || !xVar2.mo32279k().f4111b.f4153h) {
            C3356jq.m32609b(f3841a, "FlurryFullscreenTakeoverActivity cannot destroy internal ad object as the object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
        } else {
            C3356jq.m32613a(f3841a, "AdClose: Firing ad close.");
            m33750a(EnumC2874bi.EV_AD_CLOSED, Collections.emptyMap());
        }
        if (m33731j()) {
            m33741e();
        }
        this.f3843c = null;
    }

    /* renamed from: d */
    public final void m33743d() {
        if (this.f3842b == null) {
            C3020eg.m33277a(getWindow());
            setVolumeControlStream(3);
            this.f3842b = new RelativeLayout(this);
            this.f3842b.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.f3842b.setBackgroundColor(-16777216);
            setContentView(this.f3842b);
        }
    }

    /* renamed from: e */
    public final void m33741e() {
        FlurryAgent.onEndSession(getApplicationContext());
        C2866be beVar = this.f3847g;
        if (beVar != null) {
            beVar.f4168b = null;
            beVar.f4167a = null;
            beVar.m33484b((Activity) this);
            this.f3847g = null;
        }
    }

    /* renamed from: f */
    public final void m33739f() {
        this.f3852l = this.f3851k.mo32279k().m33519k();
        if (this.f3852l == null) {
            finish();
            return;
        }
        String str = f3841a;
        C3356jq.m32613a(str, "Load view state: " + this.f3852l.toString());
    }

    @Override // android.app.Activity
    public final void finish() {
        synchronized (this) {
            if (!this.f3844d) {
                this.f3844d = true;
                super.finish();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0167 A[Catch: all -> 0x0179, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0010, B:12:0x005e, B:14:0x0068, B:16:0x006e, B:18:0x007c, B:20:0x0084, B:22:0x008b, B:24:0x0095, B:26:0x00a7, B:31:0x00bc, B:33:0x00c7, B:35:0x00cd, B:37:0x00db, B:39:0x00e1, B:42:0x00f5, B:44:0x0100, B:46:0x0108, B:48:0x011a, B:53:0x012f, B:55:0x013a, B:59:0x0147, B:61:0x015b, B:63:0x0167, B:65:0x0172), top: B:72:0x0002 }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33737g() {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.android.FlurryFullscreenTakeoverActivity.m33737g():void");
    }

    /* renamed from: h */
    public final void m33735h() {
        AbstractDialogInterface$OnKeyListenerC3134fw fwVar = this.f3843c;
        if (fwVar != null) {
            fwVar.cleanupLayout();
            this.f3842b.removeAllViews();
            this.f3843c = null;
        }
    }

    /* renamed from: i */
    public final void m33733i() {
        C3155gd peek;
        if (this.f3852l != null) {
            String str = f3841a;
            C3356jq.m32613a(str, "Save view state: " + this.f3852l.toString());
            C2853ay k = this.f3851k.mo32279k();
            C3155gd gdVar = this.f3852l;
            C2861bc bcVar = k.f4111b;
            synchronized (bcVar.f4149d) {
                if (bcVar.f4149d.size() <= 0 || (peek = bcVar.f4149d.peek()) == null || !peek.equals(gdVar)) {
                    bcVar.f4149d.push(gdVar);
                }
            }
        }
    }

    /* renamed from: j */
    public final boolean m33731j() {
        return this.f3848h == C3158gh.EnumC3159a.f5183d;
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            m33741e();
            if (m33731j()) {
                finish();
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C3356jq.m32615a(3, f3841a, "onConfigurationChanged");
        AbstractDialogInterface$OnKeyListenerC3134fw fwVar = this.f3843c;
        if (fwVar != null) {
            fwVar.onConfigurationChanged();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT < 24 || !isInMultiWindowMode()) {
            setTheme(16973841);
        } else {
            setTheme(16973840);
        }
        super.onCreate(bundle);
        C3356jq.m32615a(3, f3841a, "onCreate");
        if (C3331jb.m32681a() == null) {
            C3356jq.m32615a(3, f3841a, "Flurry core not initialized.");
            finish();
            return;
        }
        boolean z = false;
        int intExtra = getIntent().getIntExtra("ad_object_id", 0);
        String stringExtra = getIntent().getStringExtra("url");
        boolean booleanExtra = getIntent().getBooleanExtra("close_ad", true);
        this.f3851k = C3484p.m32358a().f6000b.m32298a(intExtra);
        AbstractC3518x xVar = this.f3851k;
        this.f3845e = xVar instanceof C2788ab;
        if (xVar == null) {
            C3356jq.m32609b(f3841a, "Cannot launch Activity. No ad object.");
        } else {
            this.f3852l = new C3155gd(xVar, stringExtra, booleanExtra);
            C2853ay k = this.f3851k.mo32279k();
            if (k != null) {
                k.m33533a(true);
                m33733i();
                z = true;
            } else {
                C3356jq.m32609b(f3841a, "Cannot launch Activity. No ad controller found.");
            }
        }
        if (!z) {
            finish();
            return;
        }
        C3155gd gdVar = this.f3852l;
        String str = gdVar.f5156b;
        this.f3848h = C3158gh.m32961a(this, gdVar.f5155a, str);
        int i = C27665.f3863a[this.f3848h - 1];
        if (i == 1) {
            m33748a(str);
        } else if (i != 2) {
            m33743d();
        } else {
            finish();
            return;
        }
        if (this.f3851k != null) {
            m33750a(EnumC2874bi.INTERNAL_EV_AD_OPENED, Collections.emptyMap());
            this.f3854n = SystemClock.elapsedRealtime();
            return;
        }
        C3356jq.m32609b(f3841a, "FlurryFullscreenTakeoverActivity cannot be launched as the internal ad object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        C3356jq.m32615a(3, f3841a, "onDestroy");
        m33745c();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        AbstractDialogInterface$OnKeyListenerC3134fw fwVar;
        C3356jq.m32615a(3, f3841a, "onKeyUp");
        if (i != 4 || (fwVar = this.f3843c) == null) {
            return super.onKeyUp(i, keyEvent);
        }
        fwVar.onBackKey();
        return true;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        C3356jq.m32615a(3, f3841a, "onPause");
        AbstractDialogInterface$OnKeyListenerC3134fw fwVar = this.f3843c;
        if (fwVar != null) {
            fwVar.onActivityPause();
        }
        if (isFinishing() && this.f3845e) {
            m33747b();
            m33745c();
        }
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        C3356jq.m32615a(3, f3841a, "onRestart");
        if (!m33731j()) {
            m33739f();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        C3356jq.m32615a(3, f3841a, "onActivityResume");
        AbstractDialogInterface$OnKeyListenerC3134fw fwVar = this.f3843c;
        if (fwVar != null) {
            fwVar.onActivityResume();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        C3356jq.m32615a(3, f3841a, "onStart");
        if (!m33731j()) {
            FlurryAgent.onStartSession(getApplicationContext());
            C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.views.ActivityEvent", this.f3856p);
            m33737g();
            AbstractDialogInterface$OnKeyListenerC3134fw fwVar = this.f3843c;
            if (fwVar != null) {
                fwVar.onActivityStart();
            }
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        C3356jq.m32615a(3, f3841a, "onStop");
        if (!m33731j()) {
            FlurryAgent.onEndSession(getApplicationContext());
            m33747b();
            C3345jm.m32636a().m32634a(this.f3856p);
        }
    }
}
