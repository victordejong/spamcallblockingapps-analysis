package com.allinone.callerid.mvc.controller.permission;

import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseThemeActivity;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerTipsActivity.class */
public class OverlayPerTipsActivity extends BaseThemeActivity implements View.OnClickListener {

    /* renamed from: v */
    private boolean f11099v;

    /* renamed from: w */
    private boolean f11100w;

    /* renamed from: y */
    private Timer f11102y;

    /* renamed from: z */
    private TimerTask f11103z;

    /* renamed from: u */
    private final String f11098u = "OverlayPerTipsActivity";

    /* renamed from: x */
    private Handler f11101x = new Handler();

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerTipsActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerTipsActivity$a.class */
    class RunnableC3463a implements Runnable {
        RunnableC3463a() {
            OverlayPerTipsActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverlayPerTipsActivity.this.m25222Y();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerTipsActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerTipsActivity$b.class */
    class C3464b extends TimerTask {
        C3464b() {
            OverlayPerTipsActivity.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            OverlayPerTipsActivity.this.m25222Y();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerTipsActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerTipsActivity$c.class */
    public class RunnableC3465c implements Runnable {
        RunnableC3465c() {
            OverlayPerTipsActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(OverlayPerTipsActivity.this, OverlayGuideActivity.class);
            intent.addFlags(268435456);
            OverlayPerTipsActivity.this.startActivity(intent);
        }
    }

    /* renamed from: X */
    private void m25223X() {
        Intent intent = new Intent();
        intent.setClass(this, MainActivity.class);
        startActivity(intent);
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        finish();
    }

    /* renamed from: Y */
    public void m25222Y() {
        try {
            if (!C3776a.m24157h()) {
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("tony", "未开启");
                return;
            }
            this.f11103z.cancel();
            this.f11102y.cancel();
            m25223X();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "开启了");
            }
            C3810q.m24071b().m24069d("overlay_per_open");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: Z */
    private void m25221Z() {
        try {
            new Handler().postDelayed(new RunnableC3465c(), 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296764) {
            try {
                m25223X();
                C3810q.m24071b().m24069d("overlay_per_not_now");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (id != 2131296815) {
        } else {
            try {
                if (Build.VERSION.SDK_INT < 23) {
                    return;
                }
                this.f11100w = true;
                m25221Z();
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getApplicationContext().getPackageName()));
                intent.setFlags(268435456);
                startActivity(intent);
                C3810q.m24071b().m24070c("overlay_per_click");
                C3810q.m24071b().m24069d("overlay_per_click");
                TimerTask timerTask = this.f11103z;
                if (timerTask != null) {
                    timerTask.cancel();
                }
                C3464b c3464b = new C3464b();
                this.f11103z = c3464b;
                this.f11102y.schedule(c3464b, 0L, 500L);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_overlay_per_tips);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        Typeface m24359b = C3739f1.m24359b();
        ((TextView) findViewById(R$id.tv_request_per_tip)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_btn)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_not_now)).setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.flayout_btn)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.fl_not_new)).setOnClickListener(this);
        this.f11099v = true;
        this.f11102y = new Timer();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m25223X();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "onResume_isRequest:" + this.f11100w);
            }
            if (this.f11099v) {
                this.f11099v = false;
                C3810q.m24071b().m24069d("overlay_per_show");
            }
            if (!this.f11100w) {
                return;
            }
            this.f11100w = false;
            this.f11101x.postDelayed(new RunnableC3463a(), 500L);
            TimerTask timerTask = this.f11103z;
            if (timerTask == null) {
                return;
            }
            timerTask.cancel();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
