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
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayGuideActivity.class */
public class OverlayGuideActivity extends BaseThemeActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f11078u = "OverlayGuideActivity";

    /* renamed from: v */
    private Typeface f11079v;

    /* renamed from: w */
    private Switch f11080w;

    /* renamed from: x */
    private ImageView f11081x;

    /* renamed from: y */
    private Animation f11082y;

    /* renamed from: z */
    private Animation f11083z;

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$a.class */
    public class animationAnimation$AnimationListenerC3455a implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3455a() {
            OverlayGuideActivity.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            OverlayGuideActivity.this.f11081x.startAnimation(OverlayGuideActivity.this.f11083z);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b.class */
    public class animationAnimation$AnimationListenerC3456b implements Animation.AnimationListener {

        /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a.class */
        class RunnableC3457a implements Runnable {
            RunnableC3457a() {
                animationAnimation$AnimationListenerC3456b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                OverlayGuideActivity.this.f11080w.setChecked(false);
                OverlayGuideActivity.this.f11081x.setVisibility(0);
                OverlayGuideActivity.this.f11081x.startAnimation(OverlayGuideActivity.this.f11082y);
            }
        }

        animationAnimation$AnimationListenerC3456b() {
            OverlayGuideActivity.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            OverlayGuideActivity.this.f11081x.setVisibility(4);
            OverlayGuideActivity.this.f11080w.setChecked(true);
            OverlayGuideActivity.this.f11081x.postDelayed(new RunnableC3457a(), 1000L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: a0 */
    private void m25233a0() {
        ((TextView) findViewById(R$id.tv_perimison_tip)).setTypeface(this.f11079v);
        ((TextView) findViewById(R$id.tv_perimison_enalbe)).setTypeface(this.f11079v);
        ((TextView) findViewById(R$id.tv_perimison_displey)).setTypeface(this.f11079v);
        View findViewById = findViewById(R$id.rl_bg);
        this.f11080w = (Switch) findViewById(R$id.switch_button);
        this.f11081x = (ImageView) findViewById(R$id.iv_finger);
        findViewById.setOnClickListener(this);
        this.f11082y = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_per_move);
        this.f11083z = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_per_scale);
        this.f11082y.setAnimationListener(new animationAnimation$AnimationListenerC3455a());
        this.f11083z.setAnimationListener(new animationAnimation$AnimationListenerC3456b());
        this.f11081x.startAnimation(this.f11082y);
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
        requestWindowFeature(1);
        setContentView(R$layout.view_dialog_tipshow);
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
        this.f11079v = C3739f1.m24359b();
        m25233a0();
        if (getIntent() != null && getIntent().getBooleanExtra("open_notifi", false)) {
            C3810q.m24071b().m24070c("checkPermission_show_open");
        }
        if (getIntent() == null || !getIntent().getBooleanExtra("open_notifi_overlay", false)) {
            return;
        }
        C3810q.m24071b().m24070c("over_per_notifi_click");
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
