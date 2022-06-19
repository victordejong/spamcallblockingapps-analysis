package com.allinone.callerid.start;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3742g0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3775j0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3868w;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/SelfStartAcitity.class */
public class SelfStartAcitity extends BaseActivity implements View.OnClickListener {

    /* renamed from: v */
    private RelativeLayout f11848v;

    /* renamed from: w */
    private RelativeLayout f11849w;

    /* renamed from: y */
    private C3868w f11851y;

    /* renamed from: u */
    private final String f11847u = "SelfStartAcitity";

    /* renamed from: x */
    private boolean f11850x = false;

    /* renamed from: com.allinone.callerid.start.SelfStartAcitity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/SelfStartAcitity$a.class */
    public class C3702a implements C3868w.AbstractC3870b {
        C3702a() {
            SelfStartAcitity.this = r4;
        }

        @Override // com.allinone.callerid.util.C3868w.AbstractC3870b
        /* renamed from: a */
        public void mo23905a() {
            C3775j0.m24166b().m24165c(SelfStartAcitity.this.getApplicationContext());
        }

        @Override // com.allinone.callerid.util.C3868w.AbstractC3870b
        /* renamed from: b */
        public void mo23904b() {
            C3775j0.m24166b().m24165c(SelfStartAcitity.this.getApplicationContext());
        }
    }

    /* renamed from: X */
    private void m24685X() {
        C3868w c3868w = new C3868w(this);
        this.f11851y = c3868w;
        c3868w.m23908b(new C3702a());
        this.f11851y.m23907c();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.bt_close /* 2131296399 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.bt_selfEnable /* 2131296400 */:
                C3810q.m24071b().m24070c("selfactivity_enable");
                Intent intent = new Intent();
                intent.putExtra("isopen", true);
                setResult(111, intent);
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.bt_selfNotEnable /* 2131296401 */:
                C3810q.m24071b().m24070c("selfactivity_notenable");
                C3711a1.m24648D2(Boolean.TRUE);
                Intent intent2 = new Intent();
                intent2.putExtra("isopen", false);
                setResult(111, intent2);
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.bt_selfStart /* 2131296402 */:
                this.f11850x = true;
                C3810q.m24071b().m24070c("selfactivity_continue");
                new C3742g0().m24355b(this);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
        setContentView(R$layout.activity_self_start_acitity);
        C3810q.m24071b().m24070c("selfactivity_show");
        Typeface m24359b = C3739f1.m24359b();
        this.f11848v = (RelativeLayout) findViewById(R$id.rl_first);
        this.f11849w = (RelativeLayout) findViewById(R$id.rl_second);
        TextView textView = (TextView) findViewById(R$id.tv_close);
        TextView textView2 = (TextView) findViewById(R$id.tv_tip1);
        TextView textView3 = (TextView) findViewById(R$id.tv_tip3);
        TextView textView4 = (TextView) findViewById(R$id.tv_selfstart);
        TextView textView5 = (TextView) findViewById(R$id.tv_not_enable);
        TextView textView6 = (TextView) findViewById(R$id.tv_enable);
        TextView textView7 = (TextView) findViewById(R$id.tv_self_permission);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.bt_selfStart);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.bt_close);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.bt_selfEnable);
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView7.setTypeface(m24359b);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        textView6.setTypeface(m24359b);
        frameLayout2.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        frameLayout3.setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.bt_selfNotEnable)).setOnClickListener(this);
        m24685X();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C3868w c3868w = this.f11851y;
        if (c3868w != null) {
            c3868w.m23906d();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        C3775j0.m24166b().m24165c(this);
        if (this.f11850x) {
            if (this.f11849w != null) {
                RelativeLayout relativeLayout = this.f11848v;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(8);
                }
                this.f11849w.setVisibility(0);
                C3810q.m24071b().m24070c("selfactivity_second_show");
                return;
            }
            Intent intent = new Intent();
            intent.setClass(this, MainActivity.class);
            startActivity(intent);
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            finish();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C3775j0.m24166b().m24165c(this);
    }
}
