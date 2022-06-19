package com.allinone.callerid.start;

import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AboutActivity.class */
public class AboutActivity extends BaseActivity {

    /* renamed from: u */
    private final String f11630u = "AboutActivity";

    /* renamed from: com.allinone.callerid.start.AboutActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AboutActivity$a.class */
    class View$OnClickListenerC3616a implements View.OnClickListener {
        View$OnClickListenerC3616a() {
            AboutActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AboutActivity.this.finish();
            AboutActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_about);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        TextView textView = (TextView) findViewById(R$id.tv_title_about);
        TextView textView2 = (TextView) findViewById(R$id.tv_app_name);
        TextView textView3 = (TextView) findViewById(R$id.tip);
        TextView textView4 = (TextView) findViewById(R$id.version);
        textView4.setText(getResources().getString(R$string.version) + ":" + C3767h1.m24265W(this));
        ImageView imageView = (ImageView) findViewById(R$id.header_left_about);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3616a());
        textView2.setTypeface(C3739f1.m24359b());
        textView3.setTypeface(C3739f1.m24359b());
        textView4.setTypeface(C3739f1.m24359b());
        textView.setTypeface(C3739f1.m24359b());
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
