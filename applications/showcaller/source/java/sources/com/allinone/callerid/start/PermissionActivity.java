package com.allinone.callerid.start;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity;
import com.allinone.callerid.p162i.p163a.AbstractC2782d;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3784b;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3826f;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PermissionActivity.class */
public class PermissionActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ConstraintLayout f11812A;

    /* renamed from: B */
    private ConstraintLayout f11813B;

    /* renamed from: C */
    private ConstraintLayout f11814C;

    /* renamed from: v */
    private ConstraintLayout f11818v;

    /* renamed from: w */
    private TextView f11819w;

    /* renamed from: x */
    private TextView f11820x;

    /* renamed from: y */
    private boolean f11821y;

    /* renamed from: z */
    private ConstraintLayout f11822z;

    /* renamed from: u */
    private final String f11817u = "PermissionActivity";

    /* renamed from: D */
    private boolean f11815D = true;

    /* renamed from: E */
    private boolean f11816E = false;

    /* renamed from: com.allinone.callerid.start.PermissionActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PermissionActivity$a.class */
    class RunnableC3688a implements Runnable {
        RunnableC3688a() {
            PermissionActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(PermissionActivity.this, OverlayGuideActivity.class);
            intent.addFlags(268435456);
            PermissionActivity.this.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.start.PermissionActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PermissionActivity$b.class */
    class C3689b implements AbstractC2782d {
        C3689b() {
            PermissionActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2782d
        /* renamed from: a */
        public void mo24692a() {
            PermissionActivity.this.m24697d0();
            PermissionActivity.this.m24699b0();
        }
    }

    /* renamed from: X */
    private void m24703X(Context context) {
        try {
            if (Build.VERSION.SDK_INT < 23 || ((PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(C3767h1.m24275M(context))) {
                return;
            }
            C3810q.m24071b().m24070c("battery_optimize_show");
            Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
            intent.setData(Uri.parse("package:" + C3767h1.m24275M(context)));
            startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a0 */
    private void m24700a0() {
        if (C3784b.m24145a(getApplicationContext())) {
            this.f11818v.setVisibility(8);
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f11819w.setText(getApplicationContext().getResources().getString(R$string.activate_call_blocker));
            this.f11820x.setText(getApplicationContext().getResources().getString(R$string.activate_call_blocker_content));
        }
        C3810q.m24071b().m24070c("top_norifi_per_show");
        this.f11818v.setVisibility(0);
    }

    /* renamed from: b0 */
    public void m24699b0() {
        if (this.f11822z.getVisibility() == 8 && this.f11812A.getVisibility() == 8 && this.f11813B.getVisibility() == 8 && this.f11814C.getVisibility() == 8 && this.f11818v.getVisibility() == 8) {
            m24696e0();
        }
    }

    /* renamed from: c0 */
    private void m24698c0() {
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(getApplicationContext())) {
            this.f11822z.setVisibility(8);
        } else {
            this.f11822z.setVisibility(0);
        }
        if (this.f11815D) {
            if (!C3711a1.m24513m2().booleanValue() || !C3767h1.m24245i()) {
                this.f11812A.setVisibility(8);
            } else {
                this.f11812A.setVisibility(0);
                C3810q.m24071b().m24070c("permission_ziqi_show");
            }
            this.f11815D = false;
        }
        if (C3767h1.m24219v(getApplicationContext())) {
            this.f11813B.setVisibility(0);
        } else {
            this.f11813B.setVisibility(8);
        }
        m24694g0();
        m24697d0();
        m24700a0();
        m24699b0();
    }

    /* renamed from: d0 */
    public void m24697d0() {
        if (C3820b.m24031e()) {
            this.f11814C.setVisibility(8);
        } else if (Build.VERSION.SDK_INT >= 28) {
            this.f11814C.setVisibility(8);
        } else {
            this.f11814C.setVisibility(0);
        }
    }

    /* renamed from: e0 */
    private void m24696e0() {
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        if (C3767h1.m24260a0()) {
            return;
        }
        EZCallApplication.f9910d = true;
    }

    /* renamed from: f0 */
    private void m24695f0() {
        Typeface m24359b = C3739f1.m24359b();
        ((ImageView) findViewById(2131296367)).setOnClickListener(this);
        ((TextView) findViewById(2131297760)).setTypeface(m24359b);
        this.f11822z = (ConstraintLayout) findViewById(R$id.ll_system_dialog_p);
        ((TextView) findViewById(R$id.systemdialog_title)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.systemdialog_content)).setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.fl_systemdialog)).setOnClickListener(this);
        ((TextView) findViewById(R$id.systemdialog_clicktv)).setTypeface(m24359b);
        this.f11812A = (ConstraintLayout) findViewById(R$id.ll_autolunch_p);
        ((TextView) findViewById(R$id.ziqi_titme)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.ziqi_content)).setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.fl_ziqi)).setOnClickListener(this);
        ((TextView) findViewById(R$id.ziqi_clicktv)).setTypeface(m24359b);
        this.f11813B = (ConstraintLayout) findViewById(R$id.ll_battery_p);
        ((TextView) findViewById(R$id.battery_title)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.battery_content)).setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.fl_battery)).setOnClickListener(this);
        ((TextView) findViewById(R$id.batteryclicktv)).setTypeface(m24359b);
        this.f11814C = (ConstraintLayout) findViewById(R$id.ll_record_p);
        ((TextView) findViewById(R$id.recoder_title)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.recoder_content)).setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.fl_reocder)).setOnClickListener(this);
        ((TextView) findViewById(R$id.recoder_clicktv)).setTypeface(m24359b);
        this.f11818v = (ConstraintLayout) findViewById(R$id.ll_notifimanage_p);
        TextView textView = (TextView) findViewById(R$id.notifimanage_title);
        this.f11819w = textView;
        textView.setTypeface(m24359b);
        TextView textView2 = (TextView) findViewById(R$id.notifimanage_content);
        this.f11820x = textView2;
        textView2.setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.fl_notifimanage)).setOnClickListener(this);
        ((TextView) findViewById(R$id.notifimanage_clicktv)).setTypeface(m24359b);
    }

    /* renamed from: g0 */
    private void m24694g0() {
        if (this.f11816E) {
            if (Build.VERSION.SDK_INT >= 23 && C3711a1.m24560b()) {
                C3767h1.m24295B0(EZCallApplication.m26146c());
                C3711a1.m24646E0(false);
            }
            this.f11816E = false;
        }
    }

    /* renamed from: h0 */
    private void m24693h0() {
        Intent intent = new Intent();
        intent.setClass(getApplicationContext(), SelfStartAcitity.class);
        startActivityForResult(intent, 110);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 110 && i2 == 111 && intent.getExtras() != null) {
            if (intent.getExtras().getBoolean("isopen")) {
                this.f11812A.setVisibility(8);
            } else {
                this.f11812A.setVisibility(0);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296367:
                m24696e0();
                return;
            case R$id.fl_battery /* 2131296715 */:
                C3810q.m24071b().m24070c("permission_click_battery");
                m24703X(EZCallApplication.m26146c());
                this.f11816E = true;
                return;
            case R$id.fl_notifimanage /* 2131296766 */:
                this.f11821y = true;
                C3810q.m24071b().m24070c("top_norifi_per_click");
                C3784b.m24143c(getApplicationContext());
                return;
            case R$id.fl_reocder /* 2131296775 */:
                C3810q.m24071b().m24070c("permission_click_recoder");
                if (!C3820b.m24030f()) {
                    C3826f.m23973v(this, new C3689b());
                    return;
                }
                C3820b.m24019q(true);
                m24697d0();
                m24699b0();
                return;
            case R$id.fl_systemdialog /* 2131296799 */:
                C3810q.m24071b().m24070c("permission_click_sd");
                try {
                    Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + EZCallApplication.m26146c().getPackageName()));
                    intent.setFlags(268435456);
                    startActivity(intent);
                    new Handler().postDelayed(new RunnableC3688a(), 300L);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.fl_ziqi /* 2131296813 */:
                C3810q.m24071b().m24070c("permission_click_ziqi");
                C3711a1.m24648D2(Boolean.FALSE);
                m24693h0();
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_permission);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m24695f0();
        C3810q.m24071b().m24070c("permission_activ_show");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getRepeatCount() == 0) {
            m24696e0();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m24698c0();
        if (this.f11821y) {
            this.f11821y = false;
            if (!C3784b.m24145a(getApplicationContext())) {
                return;
            }
            C3810q.m24071b().m24070c("top_norifi_per_enalbleed");
        }
    }
}
