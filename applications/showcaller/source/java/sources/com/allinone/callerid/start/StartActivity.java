package com.allinone.callerid.start;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.permission.OverlayPerActivity;
import com.allinone.callerid.mvc.controller.permission.RequestPermissionActivity;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.service.NLService;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3799l0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3848s;
import com.allinone.callerid.util.p203i1.C3773a;
import com.allinone.callerid.util.p204j1.C3776a;
import com.zhy.http.okhttp.OkHttpUtils;
import p020b.p041h.p047i.C1568d;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/StartActivity.class */
public class StartActivity extends AppCompatActivity {

    /* renamed from: u */
    public static boolean f11853u;

    /* renamed from: v */
    public static boolean f11854v;

    /* renamed from: w */
    private static StartActivity f11855w;

    /* renamed from: A */
    private CountDownTimer f11856A;

    /* renamed from: x */
    private final String f11857x = "StartActivity";

    /* renamed from: y */
    private boolean f11858y;

    /* renamed from: z */
    private boolean f11859z;

    /* renamed from: com.allinone.callerid.start.StartActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/StartActivity$a.class */
    public class RunnableC3703a implements Runnable {

        /* renamed from: com.allinone.callerid.start.StartActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/StartActivity$a$a.class */
        class RunnableC3704a implements Runnable {
            RunnableC3704a() {
                RunnableC3703a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (StartActivity.this.f11858y) {
                    C3799l0.m24109b(StartActivity.this.getApplicationContext());
                }
                StartActivity.this.m24680Z();
            }
        }

        RunnableC3703a() {
            StartActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C3767h1.m24294C(StartActivity.this.getApplicationContext())) {
                if (!C3767h1.m24252e0(StartActivity.this.getApplicationContext())) {
                    C3806p.m24083d(StartActivity.this.getApplicationContext()).getCountry_code();
                }
                if (!C3767h1.m24252e0(StartActivity.this.getApplicationContext())) {
                    C3711a1.m24471x0();
                }
            }
            StartActivity.this.f11858y = C3773a.m24181i();
            StartActivity startActivity = StartActivity.this;
            startActivity.f11859z = C3767h1.m24296B(startActivity.getApplicationContext());
            StartActivity.this.runOnUiThread(new RunnableC3704a());
        }
    }

    /* renamed from: com.allinone.callerid.start.StartActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/StartActivity$b.class */
    public class View$OnClickListenerC3705b implements View.OnClickListener {
        View$OnClickListenerC3705b() {
            StartActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3767h1.m24291D0(StartActivity.this.getApplicationContext(), C3767h1.m24275M(StartActivity.this.getApplicationContext()));
            StartActivity.this.finish();
        }
    }

    /* renamed from: com.allinone.callerid.start.StartActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/StartActivity$c.class */
    class CountDownTimerC3706c extends CountDownTimer {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        CountDownTimerC3706c(long j, long j2) {
            super(j, j2);
            StartActivity.this = r7;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("AppOpenManager", "onFinish");
            }
            if (EZCallApplication.m26146c().f9916j.f11950d == null) {
                StartActivity.f11853u = true;
                StartActivity.this.m24679a0();
            } else if (EZCallApplication.m26146c().f9916j.f11956j) {
            } else {
                StartActivity.f11853u = true;
                StartActivity.this.m24679a0();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("AppOpenManager", "millisUntilFinished:" + ((j / 1000) + 1));
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.StartActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/StartActivity$d.class */
    public class View$OnClickListenerC3707d implements View.OnClickListener {
        View$OnClickListenerC3707d() {
            StartActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3767h1.m24291D0(StartActivity.this.getApplicationContext(), C3767h1.m24275M(StartActivity.this.getApplicationContext()));
            StartActivity.this.finish();
        }
    }

    /* renamed from: Z */
    public void m24680Z() {
        if (this.f11859z) {
            C2578f.m27064q(true);
            C2578f.m27066o(System.currentTimeMillis());
            if (!m24676d0()) {
                setContentView(R$layout.layout_play);
                ((FrameLayout) findViewById(R$id.fl_enable)).setOnClickListener(new View$OnClickListenerC3705b());
                return;
            }
            C3810q.m24071b().m24070c("first_enter_startactivity");
            Intent intent = new Intent();
            if (!C3776a.m24160e(getApplicationContext()) || !C3776a.m24161d(getApplicationContext())) {
                intent.setClass(this, GuideActivity.class);
            } else if (C3776a.m24157h()) {
                intent.setClass(this, MainActivity.class);
            } else {
                intent.setClass(this, OverlayPerActivity.class);
            }
            startActivity(intent);
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: b0 */
    public static StartActivity m24678b0() {
        return f11855w;
    }

    /* renamed from: c0 */
    private void m24677c0() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3703a());
    }

    /* renamed from: d0 */
    private boolean m24676d0() {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                getDrawable(R$drawable.ic_permission);
            } catch (Resources.NotFoundException e) {
                z = false;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: e0 */
    private void m24675e0() {
        try {
            if (!m24676d0()) {
                setContentView(R$layout.layout_play);
                ((FrameLayout) findViewById(R$id.fl_enable)).setOnClickListener(new View$OnClickListenerC3707d());
            } else if (!C3776a.m24160e(getApplicationContext()) || !C3776a.m24161d(getApplicationContext())) {
                Intent intent = new Intent();
                intent.setClass(this, RequestPermissionActivity.class);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } else {
                Intent intent2 = new Intent(this, MainActivity.class);
                if (getIntent() != null && "offline_notifi".equals(getIntent().getStringExtra("offline_notifi"))) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("fcm", "offline_notifi");
                    }
                    intent2.putExtra("offline_notifi", intent2.getStringExtra("offline_notifi"));
                }
                if (getIntent() != null && "callscreen".equals(getIntent().getStringExtra("callscreen"))) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("fcm", "callscreen");
                    }
                    intent2.putExtra("is_callscreen", true);
                }
                Intent intent3 = intent2;
                if (getIntent() != null) {
                    intent3 = intent2;
                    if ("open_version_update".equals(getIntent().getStringExtra("version_update_notifi"))) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("fcm", "open_version_update");
                        }
                        try {
                            Intent launchIntentForPackage = getApplicationContext().getPackageManager().getLaunchIntentForPackage("com.android.vending");
                            ComponentName componentName = new ComponentName("com.android.vending", "com.google.android.finsky.activities.LaunchUrlHandlerActivity");
                            intent3 = launchIntentForPackage;
                            if (launchIntentForPackage != null) {
                                launchIntentForPackage.setComponent(componentName);
                                launchIntentForPackage.setData(Uri.parse("market://details?id=" + getApplicationContext().getPackageName()));
                                launchIntentForPackage.setFlags(268435456);
                                intent3 = launchIntentForPackage;
                            }
                        } catch (Exception e) {
                            intent3 = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + getApplicationContext().getPackageName()));
                            intent3.setFlags(268435456);
                        }
                    }
                }
                startActivity(intent3);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: f0 */
    private void m24674f0() {
        try {
            PackageManager packageManager = getPackageManager();
            packageManager.setComponentEnabledSetting(new ComponentName(this, NLService.class), 2, 1);
            packageManager.setComponentEnabledSetting(new ComponentName(this, NLService.class), 1, 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a0 */
    public void m24679a0() {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("AppOpenManager", "enterMain()");
        }
        CountDownTimer countDownTimer = this.f11856A;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        m24675e0();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        C1568d.m29722c(this);
        super.onCreate(bundle);
        f11855w = this;
        if ((getIntent().getFlags() & 4194304) != 0) {
            finish();
            return;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("first_enter", "StartActivity_onCreate");
        }
        if (C3767h1.m24218v0()) {
            C3810q.m24071b().m24070c("isSpecialDevice");
            finish();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21 && C3776a.m24153l()) {
            m24674f0();
        }
        C3848s.m23967a();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (C3767h1.m24296B(getApplicationContext())) {
            return;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("AppOpenManager", "onResume--StartActivity");
        }
        if (!EZCallApplication.m26146c().f9916j.f11955i) {
            return;
        }
        f11853u = false;
        CountDownTimerC3706c countDownTimerC3706c = new CountDownTimerC3706c(OkHttpUtils.DEFAULT_MILLISECONDS, 1000L);
        this.f11856A = countDownTimerC3706c;
        countDownTimerC3706c.start();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (C3767h1.m24296B(getApplicationContext())) {
            m24677c0();
        }
    }
}
