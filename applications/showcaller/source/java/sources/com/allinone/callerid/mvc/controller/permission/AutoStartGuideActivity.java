package com.allinone.callerid.mvc.controller.permission;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseThemeActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity.class */
public class AutoStartGuideActivity extends BaseThemeActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f11069u = "AutoStartGuideActivity";

    /* renamed from: v */
    private Typeface f11070v;

    /* renamed from: w */
    private Switch f11071w;

    /* renamed from: x */
    private ImageView f11072x;

    /* renamed from: y */
    private Animation f11073y;

    /* renamed from: z */
    private Animation f11074z;

    /* renamed from: com.allinone.callerid.mvc.controller.permission.AutoStartGuideActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity$a.class */
    public class animationAnimation$AnimationListenerC3452a implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3452a() {
            AutoStartGuideActivity.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AutoStartGuideActivity.this.f11072x.startAnimation(AutoStartGuideActivity.this.f11074z);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.AutoStartGuideActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity$b.class */
    public class animationAnimation$AnimationListenerC3453b implements Animation.AnimationListener {

        /* renamed from: com.allinone.callerid.mvc.controller.permission.AutoStartGuideActivity$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity$b$a.class */
        class RunnableC3454a implements Runnable {
            RunnableC3454a() {
                animationAnimation$AnimationListenerC3453b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                AutoStartGuideActivity.this.f11071w.setChecked(false);
                AutoStartGuideActivity.this.f11072x.setVisibility(0);
                AutoStartGuideActivity.this.f11072x.startAnimation(AutoStartGuideActivity.this.f11073y);
            }
        }

        animationAnimation$AnimationListenerC3453b() {
            AutoStartGuideActivity.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AutoStartGuideActivity.this.f11072x.setVisibility(4);
            AutoStartGuideActivity.this.f11071w.setChecked(true);
            AutoStartGuideActivity.this.f11072x.postDelayed(new RunnableC3454a(), 1000L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: a0 */
    private void m25238a0() {
        ((TextView) findViewById(R$id.tv_name)).setTypeface(this.f11070v);
        ((TextView) findViewById(R$id.tv_perimison_enalbe)).setTypeface(this.f11070v);
        View findViewById = findViewById(R$id.rl_bg);
        this.f11071w = (Switch) findViewById(R$id.switch_button);
        this.f11072x = (ImageView) findViewById(R$id.iv_finger);
        findViewById.setOnClickListener(this);
        this.f11073y = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_per_move);
        this.f11074z = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_per_scale);
        this.f11073y.setAnimationListener(new animationAnimation$AnimationListenerC3452a());
        this.f11074z.setAnimationListener(new animationAnimation$AnimationListenerC3453b());
        this.f11072x.startAnimation(this.f11073y);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131297475) {
            return;
        }
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_autostart_guide);
        try {
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = (int) (defaultDisplay.getWidth() * 1.0d);
            getWindow().setAttributes(attributes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f11070v = C3739f1.m24359b();
        m25238a0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
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
    }
}
