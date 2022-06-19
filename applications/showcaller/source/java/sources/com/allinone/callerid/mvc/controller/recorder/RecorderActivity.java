package com.allinone.callerid.mvc.controller.recorder;

import android.app.Dialog;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.CustomViewPager;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.view.recorder.LTabIndicator;
import com.allinone.callerid.p136b.p139z.C2292h;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.recorder.C3820b;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecorderActivity.class */
public class RecorderActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private StrangerRecordFragment f11214u;

    /* renamed from: v */
    private C3521a f11215v;

    /* renamed from: w */
    private Boolean f11216w;

    /* renamed from: x */
    private Boolean f11217x;

    /* renamed from: y */
    private boolean f11218y;

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecorderActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecorderActivity$a.class */
    public class View$OnClickListenerC3502a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Dialog f11219d;

        View$OnClickListenerC3502a(Dialog dialog) {
            RecorderActivity.this = r4;
            this.f11219d = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f11219d.dismiss();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecorderActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecorderActivity$b.class */
    public class View$OnClickListenerC3503b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Dialog f11221d;

        View$OnClickListenerC3503b(Dialog dialog) {
            RecorderActivity.this = r4;
            this.f11221d = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f11221d.dismiss();
            C3810q.m24071b().m24070c("record_setting_guide_click");
            RecorderActivity.this.m25137Z();
        }
    }

    /* renamed from: Y */
    private void m25138Y() {
        ((NotificationManager) EZCallApplication.m26146c().getSystemService("notification")).cancel(9707);
    }

    /* renamed from: Z */
    public void m25137Z() {
        startActivity(new Intent(this, RecordSetting.class));
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    /* renamed from: a0 */
    private void m25136a0() {
        ImageView imageView = (ImageView) findViewById(R$id.recorder_header_left);
        TextView textView = (TextView) findViewById(R$id.recorder_tv_title);
        ImageView imageView2 = (ImageView) findViewById(R$id.recorder_more);
        LTabIndicator lTabIndicator = (LTabIndicator) findViewById(R$id.recorder_tab);
        if (this.f11216w.booleanValue() && this.f11217x.booleanValue()) {
            m25133d0();
        }
        lTabIndicator.f11411r = C3719c1.m24432a(this, R$attr.color_blue_tab_text_unselected, R$color.color_99ffffff);
        lTabIndicator.f11410q = C3719c1.m24432a(this, R$attr.color_title, R$color.color_ffffff);
        lTabIndicator.setIndicatorColor(C3719c1.m24432a(this, R$attr.color_title, R$color.color_ffffff));
        lTabIndicator.f11390B = 16;
        lTabIndicator.f11412s = 0;
        ViewPager viewPager = (CustomViewPager) findViewById(R$id.recorder_vp);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        textView.setTypeface(C3739f1.m24359b());
        imageView.setOnClickListener(this);
        imageView2.setOnClickListener(this);
        C2292h c2292h = new C2292h(m32877A());
        this.f11214u = new StrangerRecordFragment();
        this.f11215v = new C3521a();
        c2292h.m27708y(this.f11214u, getString(R$string.saved));
        c2292h.m27708y(this.f11215v, getString(R$string.tv_title_contacts));
        viewPager.setAdapter(c2292h);
        lTabIndicator.setViewPager(viewPager);
    }

    /* renamed from: b0 */
    public void m25135b0() {
        C3521a c3521a = this.f11215v;
        if (c3521a != null) {
            c3521a.m25103k2();
        }
        StrangerRecordFragment strangerRecordFragment = this.f11214u;
        if (strangerRecordFragment != null) {
            strangerRecordFragment.m25118o2();
        }
    }

    /* renamed from: c0 */
    public void m25134c0() {
        if (!this.f11216w.booleanValue() || !C3820b.m24031e()) {
            return;
        }
        C3810q.m24071b().m24070c("record_setting_guide");
        m25133d0();
    }

    /* renamed from: d0 */
    public void m25133d0() {
        Dialog dialog = new Dialog(this, R$style.Transparent);
        dialog.setContentView(R$layout.recorder_guide_layout);
        LinearLayout linearLayout = (LinearLayout) dialog.findViewById(R$id.ll_setting_guide);
        View findViewById = dialog.findViewById(R$id.view);
        dialog.show();
        Window window = dialog.getWindow();
        if (window != null) {
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            window.setAttributes(attributes);
        }
        linearLayout.setOnClickListener(new View$OnClickListenerC3502a(dialog));
        findViewById.setOnClickListener(new View$OnClickListenerC3503b(dialog));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.recorder_header_left /* 2131297433 */:
                C3820b.m24021o(Boolean.FALSE);
                if (this.f11218y) {
                    startActivity(new Intent(this, MainActivity.class));
                }
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.recorder_more /* 2131297434 */:
                C3820b.m24021o(Boolean.FALSE);
                m25137Z();
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_recorder);
        if (C3820b.m24033c().booleanValue()) {
            this.f11216w = Boolean.TRUE;
        } else {
            this.f11216w = Boolean.FALSE;
        }
        if (getIntent() != null) {
            if (getIntent().getBooleanExtra("record_success", false)) {
                this.f11218y = true;
                C3810q.m24071b().m24070c("record_push_click");
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("recorder", "record_success");
                }
                m25138Y();
            }
            if (getIntent().getBooleanExtra("record_success_upload", false)) {
                C3810q.m24071b().m24070c("record_success_upload");
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("recorder", "record_success_upload");
                }
                m25138Y();
            }
        }
        if (C3820b.m24031e()) {
            this.f11217x = Boolean.TRUE;
        } else {
            this.f11217x = Boolean.FALSE;
        }
        m25136a0();
        if (!C3767h1.m24250f0(getApplicationContext()).booleanValue() || Build.VERSION.SDK_INT < 17) {
            return;
        }
        getWindow().getDecorView().setLayoutDirection(1);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            C3820b.m24021o(Boolean.FALSE);
            if (this.f11218y) {
                startActivity(new Intent(this, MainActivity.class));
                return true;
            }
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
