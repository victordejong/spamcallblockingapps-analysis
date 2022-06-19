package com.allinone.callerid.start;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$style;
import com.allinone.callerid.dialog.DialogC2587e;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3784b;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PushControlActivity.class */
public class PushControlActivity extends BaseActivity {

    /* renamed from: u */
    private final String f11838u = "PushControlActivity";

    /* renamed from: v */
    private Typeface f11839v;

    /* renamed from: w */
    private Switch f11840w;

    /* renamed from: x */
    private boolean f11841x;

    /* renamed from: com.allinone.callerid.start.PushControlActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PushControlActivity$a.class */
    public class View$OnClickListenerC3697a implements View.OnClickListener {
        View$OnClickListenerC3697a() {
            PushControlActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C3767h1.f12006a) {
                C3767h1.f12006a = false;
                PushControlActivity.this.startActivity(new Intent(PushControlActivity.this, MainActivity.class));
                PushControlActivity.this.finish();
            } else {
                PushControlActivity.this.finish();
            }
            PushControlActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.PushControlActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PushControlActivity$b.class */
    public class C3698b implements CompoundButton.OnCheckedChangeListener {
        C3698b() {
            PushControlActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24612M2(Boolean.TRUE);
            } else {
                C3711a1.m24612M2(Boolean.FALSE);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.PushControlActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PushControlActivity$c.class */
    public class C3699c implements CompoundButton.OnCheckedChangeListener {
        C3699c() {
            PushControlActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24656B2(Boolean.TRUE);
            } else {
                C3711a1.m24656B2(Boolean.FALSE);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.PushControlActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PushControlActivity$d.class */
    public class C3700d implements CompoundButton.OnCheckedChangeListener {
        C3700d() {
            PushControlActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            try {
                if (z) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wbb", "checked：" + z);
                    }
                    EZCallApplication.m26146c().f9915i = true;
                    C3711a1.m24581U1(true);
                    C1764a.m28939b(PushControlActivity.this.getApplicationContext()).m28937d(new Intent("com.allinone.callerid.CHANGE_NOTIFI"));
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "checked：" + z);
                }
                if (!C3784b.m24142d(PushControlActivity.this.getApplicationContext())) {
                    PushControlActivity.this.f11841x = true;
                    PushControlActivity.this.m24686b0();
                    return;
                }
                EZCallApplication.m26146c().f9915i = false;
                C3711a1.m24581U1(false);
                C1764a.m28939b(PushControlActivity.this.getApplicationContext()).m28937d(new Intent("com.allinone.callerid.CHANGE_NOTIFI"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.PushControlActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PushControlActivity$e.class */
    public class DialogInterface$OnDismissListenerC3701e implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC3701e() {
            PushControlActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "onDismiss");
                PushControlActivity.this.f11840w.setChecked(true);
            }
        }
    }

    /* renamed from: a0 */
    private void m24687a0() {
        ImageView imageView = (ImageView) findViewById(R$id.lb_caller_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3697a());
        Switch r0 = (Switch) findViewById(R$id.switch_missed_notice);
        r0.setOnCheckedChangeListener(new C3698b());
        if (C3711a1.m24481u2().booleanValue()) {
            r0.setChecked(true);
        } else {
            r0.setChecked(false);
        }
        Switch r02 = (Switch) findViewById(R$id.switch_block_push);
        r02.setOnCheckedChangeListener(new C3699c());
        if (C3711a1.m24517l2().booleanValue()) {
            r02.setChecked(true);
        } else {
            r02.setChecked(false);
        }
        View findViewById = findViewById(R$id.v_notifi);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.rl_notifi);
        if (Build.VERSION.SDK_INT > 25) {
            findViewById.setVisibility(0);
            relativeLayout.setVisibility(0);
            ((TextView) findViewById(R$id.tv_block_push)).setTypeface(this.f11839v);
            ((TextView) findViewById(R$id.tv_notifi_content)).setTypeface(this.f11839v);
            this.f11840w = (Switch) findViewById(R$id.switch_notifi);
            if (C3711a1.m24507o0()) {
                this.f11840w.setChecked(true);
            } else {
                this.f11840w.setChecked(false);
            }
            this.f11840w.setOnCheckedChangeListener(new C3700d());
        } else {
            findViewById.setVisibility(8);
            relativeLayout.setVisibility(8);
        }
        TextView textView = (TextView) findViewById(R$id.tv_push_title);
        TextView textView2 = (TextView) findViewById(R$id.tv_missed_call_push);
        textView.setTypeface(this.f11839v);
        textView2.setTypeface(this.f11839v);
        ((TextView) findViewById(R$id.tv_block_push)).setTypeface(this.f11839v);
    }

    /* renamed from: b0 */
    public void m24686b0() {
        try {
            DialogC2587e dialogC2587e = new DialogC2587e(this, R$style.CustomDialog4);
            dialogC2587e.setCanceledOnTouchOutside(false);
            dialogC2587e.setOnDismissListener(new DialogInterface$OnDismissListenerC3701e());
            dialogC2587e.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_push_control);
        this.f11839v = C3739f1.m24359b();
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m24687a0();
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
        if (C3784b.f12036a) {
            if (C3784b.m24144b(getApplicationContext())) {
                C3810q.m24071b().m24070c("dialog_notifi_per_quest_enalbleed");
            }
            C3784b.f12036a = false;
        }
        if (this.f11841x) {
            this.f11841x = false;
            if (!C3784b.m24144b(getApplicationContext())) {
                this.f11840w.setChecked(true);
                return;
            }
            this.f11840w.setChecked(false);
            C3711a1.m24581U1(false);
        }
    }
}
