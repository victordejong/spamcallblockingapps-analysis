package com.allinone.callerid.callscreen.activitys;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSettingActivity.class */
public class CallScreenSettingActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f8315A;

    /* renamed from: u */
    private final String f8316u = "CallScreenSettingActivity";

    /* renamed from: v */
    private Switch f8317v;

    /* renamed from: w */
    private FrameLayout f8318w;

    /* renamed from: x */
    private Switch f8319x;

    /* renamed from: y */
    private Typeface f8320y;

    /* renamed from: z */
    private FrameLayout f8321z;

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSettingActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a.class */
    class RunnableC2383a implements Runnable {
        RunnableC2383a() {
            CallScreenSettingActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CallScreenSettingActivity.this.f8320y = C3739f1.m24359b();
            CallScreenSettingActivity.this.m27539b0();
            CallScreenSettingActivity.this.m27540a0();
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSettingActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$b.class */
    public class C2384b implements CompoundButton.OnCheckedChangeListener {
        C2384b() {
            CallScreenSettingActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C2578f.m27067n(z);
            if (!z) {
                C3810q.m24071b().m24070c("callscreen_close");
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSettingActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$c.class */
    public class C2385c implements CompoundButton.OnCheckedChangeListener {
        C2385c() {
            CallScreenSettingActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C2578f.m27063r(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSettingActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d.class */
    public class C2386d extends Thread {

        /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSettingActivity$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d$a.class */
        class RunnableC2387a implements Runnable {
            RunnableC2387a() {
                C2386d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(CallScreenSettingActivity.this.getApplicationContext(), CallScreenSettingActivity.this.getApplicationContext().getResources().getString(R$string.cleared_cache), 0).show();
            }
        }

        C2386d() {
            CallScreenSettingActivity.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            File file = new File(CallScreenSettingActivity.this.getApplicationContext().getExternalCacheDir() + "/video-cache");
            if (file.exists()) {
                C3767h1.m24239l(file);
            }
            CallScreenSettingActivity.this.runOnUiThread(new RunnableC2387a());
        }
    }

    /* renamed from: a0 */
    public void m27540a0() {
        if (C3776a.m24164a(getApplicationContext())) {
            this.f8318w.setVisibility(8);
        } else {
            this.f8318w.setVisibility(0);
        }
        this.f8317v.setChecked(C2578f.m27079b());
        this.f8319x.setChecked(C2578f.m27075f());
        this.f8317v.setOnCheckedChangeListener(new C2384b());
        this.f8319x.setOnCheckedChangeListener(new C2385c());
    }

    /* renamed from: b0 */
    public void m27539b0() {
        ImageView imageView = (ImageView) findViewById(R$id.iv_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        TextView textView = (TextView) findViewById(R$id.tv_set);
        TextView textView2 = (TextView) findViewById(R$id.tv_call_screen_enable);
        this.f8317v = (Switch) findViewById(R$id.switch_call_screen_enable);
        this.f8318w = (FrameLayout) findViewById(R$id.fl_per);
        TextView textView3 = (TextView) findViewById(R$id.tv_per);
        TextView textView4 = (TextView) findViewById(R$id.tv_per_tip);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_upload);
        TextView textView5 = (TextView) findViewById(R$id.tv_upload);
        TextView textView6 = (TextView) findViewById(R$id.tv_upload_tip);
        TextView textView7 = (TextView) findViewById(R$id.tv_wifi_only_title);
        TextView textView8 = (TextView) findViewById(R$id.tv_wifi_only_tip);
        this.f8319x = (Switch) findViewById(R$id.switch_wifi_only);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.fl_clear_cache);
        TextView textView9 = (TextView) findViewById(R$id.tv_cache);
        this.f8321z = (FrameLayout) findViewById(R$id.fl_use_guide);
        this.f8315A = (TextView) findViewById(R$id.tv_use_guide);
        imageView.setOnClickListener(this);
        this.f8318w.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        this.f8321z.setOnClickListener(this);
        textView.setTypeface(this.f8320y);
        textView2.setTypeface(this.f8320y);
        textView3.setTypeface(this.f8320y);
        textView4.setTypeface(this.f8320y);
        textView5.setTypeface(this.f8320y);
        textView6.setTypeface(this.f8320y);
        textView7.setTypeface(this.f8320y);
        textView8.setTypeface(this.f8320y);
        textView9.setTypeface(this.f8320y);
        this.f8315A.setTypeface(this.f8320y);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        try {
            if (C3776a.m24164a(getApplicationContext())) {
                this.f8318w.setVisibility(8);
            } else {
                this.f8318w.setVisibility(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_clear_cache /* 2131296728 */:
                Toast.makeText(getApplicationContext(), getApplicationContext().getResources().getString(R$string.clearing_cache), 0).show();
                new C2386d().start();
                return;
            case R$id.fl_per /* 2131296769 */:
                Intent intent = new Intent();
                intent.setClass(this, OpenPerActivity.class);
                startActivityForResult(intent, 10010);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_upload /* 2131296805 */:
                try {
                    Intent intent2 = new Intent();
                    intent2.setClass(this, CallScreenUploadActivity.class);
                    startActivity(intent2);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.fl_use_guide /* 2131296806 */:
                startActivity(new Intent(this, GuideUseActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.iv_back /* 2131296951 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_callscreen_setting);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC2383a());
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
