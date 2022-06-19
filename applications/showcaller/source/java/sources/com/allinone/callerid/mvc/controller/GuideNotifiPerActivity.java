package com.allinone.callerid.mvc.controller;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3739f1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/GuideNotifiPerActivity.class */
public class GuideNotifiPerActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f10131u = "GuideNotifiPerActivity";

    /* renamed from: v */
    private Typeface f10132v;

    /* renamed from: com.allinone.callerid.mvc.controller.GuideNotifiPerActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/GuideNotifiPerActivity$a.class */
    class RunnableC3133a implements Runnable {
        RunnableC3133a() {
            GuideNotifiPerActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            GuideNotifiPerActivity.this.f10132v = C3739f1.m24359b();
            GuideNotifiPerActivity.this.m25858Z();
        }
    }

    /* renamed from: Z */
    public void m25858Z() {
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.flayout_btn);
        ImageView imageView = (ImageView) findViewById(R$id.iv_close);
        View findViewById = findViewById(R$id.view);
        ((TextView) findViewById(R$id.tv_tip)).setTypeface(this.f10132v);
        ((TextView) findViewById(R$id.tv_btn)).setTypeface(this.f10132v);
        frameLayout.setOnClickListener(this);
        imageView.setOnClickListener(this);
        findViewById.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296815) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else if (id == 2131296970) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else if (id != 2131298267) {
        } else {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_guide_notifi_per);
        try {
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = (int) (defaultDisplay.getWidth() * 1.0d);
            getWindow().setAttributes(attributes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        getWindow().getDecorView().post(new RunnableC3133a());
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
