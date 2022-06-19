package com.allinone.callerid.start;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.permission.OverlayPerActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PrivacyActivity.class */
public class PrivacyActivity extends BaseActivity {

    /* renamed from: com.allinone.callerid.start.PrivacyActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PrivacyActivity$a.class */
    public class View$OnClickListenerC3696a implements View.OnClickListener {
        View$OnClickListenerC3696a() {
            PrivacyActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3810q.m24071b().m24070c("privacy_click");
            Intent intent = new Intent();
            if (C3776a.m24157h()) {
                intent.setClass(PrivacyActivity.this, MainActivity.class);
            } else {
                intent.setClass(PrivacyActivity.this, OverlayPerActivity.class);
            }
            PrivacyActivity.this.startActivity(intent);
            PrivacyActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            PrivacyActivity.this.finish();
        }
    }

    /* renamed from: X */
    private void m24691X() {
        Typeface m24359b = C3739f1.m24359b();
        TextView textView = (TextView) findViewById(R$id.tv_privacy_title);
        TextView textView2 = (TextView) findViewById(R$id.content_1);
        TextView textView3 = (TextView) findViewById(R$id.content_2);
        TextView textView4 = (TextView) findViewById(R$id.content_3);
        TextView textView5 = (TextView) findViewById(R$id.content_4);
        TextView textView6 = (TextView) findViewById(R$id.content_5);
        TextView textView7 = (TextView) findViewById(R$id.content_6);
        TextView textView8 = (TextView) findViewById(R$id.content_7);
        TextView textView9 = (TextView) findViewById(R$id.content_8);
        TextView textView10 = (TextView) findViewById(R$id.content_9);
        TextView textView11 = (TextView) findViewById(R$id.tv_privacy);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.flayout_btn);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        textView6.setMovementMethod(LinkMovementMethod.getInstance());
        textView11.setMovementMethod(LinkMovementMethod.getInstance());
        C3767h1.m24283H0(textView2);
        C3767h1.m24283H0(textView6);
        frameLayout.setOnClickListener(new View$OnClickListenerC3696a());
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        textView6.setTypeface(m24359b);
        textView7.setTypeface(m24359b);
        textView8.setTypeface(m24359b);
        textView9.setTypeface(m24359b);
        textView10.setTypeface(m24359b);
        textView11.setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_btn)).setTypeface(m24359b);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_privacy);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        C3810q.m24071b().m24070c("privacy_show");
        m24691X();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setFlags(268435456);
                intent.addCategory("android.intent.category.HOME");
                startActivity(intent);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return true;
            }
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
