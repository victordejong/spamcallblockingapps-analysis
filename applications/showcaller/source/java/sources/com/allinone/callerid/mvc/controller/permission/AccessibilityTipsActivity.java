package com.allinone.callerid.mvc.controller.permission;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/AccessibilityTipsActivity.class */
public class AccessibilityTipsActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f11062A;

    /* renamed from: u */
    private Typeface f11063u;

    /* renamed from: v */
    private Typeface f11064v;

    /* renamed from: w */
    private View f11065w;

    /* renamed from: x */
    private RelativeLayout f11066x;

    /* renamed from: y */
    private TextView f11067y;

    /* renamed from: z */
    private TextView f11068z;

    /* renamed from: X */
    private void m25243X() {
        this.f11065w = findViewById(R$id.rl_bg);
        this.f11066x = (RelativeLayout) findViewById(R$id.rl_buttom);
        this.f11067y = (TextView) findViewById(R$id.tv_title);
        this.f11068z = (TextView) findViewById(R$id.tv_content);
        TextView textView = (TextView) findViewById(R$id.tv_continue);
        this.f11062A = textView;
        textView.getPaint().setFakeBoldText(true);
        this.f11065w.setOnClickListener(this);
        this.f11062A.setOnClickListener(this);
        this.f11067y.setTypeface(this.f11064v);
        this.f11068z.setTypeface(this.f11063u);
        this.f11062A.setTypeface(this.f11063u);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131297475) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else if (id != 2131297878) {
        } else {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R$layout.activity_accessibility_tips);
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
        this.f11063u = C3739f1.m24359b();
        this.f11064v = C3739f1.m24360a();
        m25243X();
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

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
