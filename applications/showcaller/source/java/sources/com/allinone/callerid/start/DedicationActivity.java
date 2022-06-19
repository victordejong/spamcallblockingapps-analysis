package com.allinone.callerid.start;

import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.controller.report.ReportListActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/DedicationActivity.class */
public class DedicationActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f11720u = "DedicationActivity";

    /* renamed from: X */
    private void m24748X() {
        ((FrameLayout) findViewById(R$id.contribution)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.fl_rate)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.rl_complaint)).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R$id.lb_setting_back);
        imageView.setOnClickListener(this);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        ((FrameLayout) findViewById(R$id.like_me)).setOnClickListener(this);
        Typeface m24359b = C3739f1.m24359b();
        TextView textView = (TextView) findViewById(R$id.tv_contribution);
        TextView textView2 = (TextView) findViewById(R$id.tv_rate);
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_complaint)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_like_me)).setTypeface(m24359b);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.contribution /* 2131296509 */:
                Intent intent = new Intent();
                intent.setClass(this, ReportListActivity.class);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                C3810q.m24071b().m24070c("cehua_contribution");
                return;
            case R$id.fl_rate /* 2131296773 */:
                C3810q.m24071b().m24070c("rate");
                try {
                    C3767h1.m24291D0(this, getPackageName());
                    return;
                } catch (Exception e) {
                    e.getMessage();
                    return;
                }
            case R$id.lb_setting_back /* 2131297127 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.like_me /* 2131297138 */:
                try {
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setData(Uri.parse("fb://page/1096990483708279"));
                    if (getPackageManager().queryIntentActivities(intent2, 65536).size() == 0) {
                        intent2.setData(Uri.parse("https://www.facebook.com/Showcaller-1096990483708279/"));
                    }
                    startActivity(intent2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    try {
                        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.facebook.com/Showcaller-1096990483708279/")));
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                C3810q.m24071b().m24070c("like_me");
                return;
            case R$id.rl_complaint /* 2131297493 */:
                C3810q.m24071b().m24070c("cehua_complaint");
                Intent intent3 = new Intent();
                intent3.setClass(this, ComplaintActivity.class);
                startActivity(intent3);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_dedication);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m24748X();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
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
