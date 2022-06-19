package com.allinone.callerid.callscreen.activitys;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.main.BaseThemeActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/GuideSetActivity.class */
public class GuideSetActivity extends BaseThemeActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f8345u = "OverlayGuideActivity";

    /* renamed from: v */
    private Typeface f8346v;

    /* renamed from: w */
    private HomeInfo f8347w;

    /* renamed from: x */
    private long f8348x;

    /* renamed from: W */
    private void m27523W() {
        this.f8347w = (HomeInfo) getIntent().getSerializableExtra("homeinfo");
    }

    /* renamed from: X */
    private void m27522X() {
        ((RelativeLayout) findViewById(R$id.rl_guide)).setOnClickListener(this);
        ((TextView) findViewById(R$id.tv_guide_content)).setTypeface(this.f8346v);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131297506) {
            return;
        }
        if (this.f8347w == null) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return;
        }
        Intent intent = new Intent(this, CallScreenPdtActivity.class);
        intent.putExtra("homeinfo", this.f8347w);
        startActivity(intent);
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        finish();
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_callscreen_guide);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f8346v = C3739f1.m24360a();
        m27522X();
        m27523W();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (System.currentTimeMillis() - this.f8348x > 2000) {
                this.f8348x = System.currentTimeMillis();
                return true;
            }
            C3810q.m24071b().m24070c("callscreen_list_tips_back");
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
