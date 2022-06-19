package com.allinone.callerid.mvc.controller.block;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3784b;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockSettingActivity.class */
public class BlockSettingActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private Switch f10444A;

    /* renamed from: B */
    private LinearLayout f10445B;

    /* renamed from: C */
    private FrameLayout f10446C;

    /* renamed from: D */
    private FrameLayout f10447D;

    /* renamed from: E */
    private FrameLayout f10448E;

    /* renamed from: F */
    private FrameLayout f10449F;

    /* renamed from: G */
    private boolean f10450G;

    /* renamed from: H */
    private int f10451H;

    /* renamed from: u */
    private final String f10452u = "BlockSettingActivity";

    /* renamed from: v */
    private TextView f10453v;

    /* renamed from: w */
    private TextView f10454w;

    /* renamed from: x */
    private TextView f10455x;

    /* renamed from: y */
    private Switch f10456y;

    /* renamed from: z */
    private Switch f10457z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockSettingActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockSettingActivity$a.class */
    public class RunnableC3256a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Typeface f10458d;

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockSettingActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$a.class */
        class View$OnClickListenerC3257a implements View.OnClickListener {
            View$OnClickListenerC3257a() {
                RunnableC3256a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BlockSettingActivity.this.finish();
                BlockSettingActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockSettingActivity$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$b.class */
        class C3258b implements CompoundButton.OnCheckedChangeListener {
            C3258b() {
                RunnableC3256a.this = r4;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    BlockSettingActivity.this.f10453v.setText(BlockSettingActivity.this.getResources().getString(R$string.hide_desc_on));
                    C3711a1.m24575W0(true);
                } else {
                    BlockSettingActivity.this.f10453v.setText(BlockSettingActivity.this.getResources().getString(R$string.hide_desc_off));
                    C3711a1.m24575W0(false);
                }
                BlockSettingActivity.this.f10456y.setChecked(z);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockSettingActivity$a$c */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$c.class */
        class C3259c implements CompoundButton.OnCheckedChangeListener {
            C3259c() {
                RunnableC3256a.this = r4;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    BlockSettingActivity.this.f10454w.setText(BlockSettingActivity.this.getResources().getString(R$string.hide_desc_stranger_on));
                    C3711a1.m24572X0(true);
                } else {
                    BlockSettingActivity.this.f10454w.setText(BlockSettingActivity.this.getResources().getString(R$string.hide_desc_off));
                    C3711a1.m24572X0(false);
                }
                BlockSettingActivity.this.f10457z.setChecked(z);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockSettingActivity$a$d */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d.class */
        class C3260d implements CompoundButton.OnCheckedChangeListener {
            C3260d() {
                RunnableC3256a.this = r4;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    C3810q.m24071b().m24070c("block_unknown_open");
                    BlockSettingActivity.this.f10455x.setText(BlockSettingActivity.this.getResources().getString(R$string.unknow_block_tip));
                    C3711a1.m24569Y0(true);
                } else {
                    C3810q.m24071b().m24070c("block_unknown_close");
                    BlockSettingActivity.this.f10455x.setText(BlockSettingActivity.this.getResources().getString(R$string.hide_desc_off));
                    C3711a1.m24569Y0(false);
                }
                BlockSettingActivity.this.f10444A.setChecked(z);
            }
        }

        RunnableC3256a(Typeface typeface) {
            BlockSettingActivity.this = r4;
            this.f10458d = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            BlockSettingActivity blockSettingActivity = BlockSettingActivity.this;
            blockSettingActivity.f10451H = C3719c1.m24432a(blockSettingActivity, R$attr.color_action, 2131099706);
            TextView textView = (TextView) BlockSettingActivity.this.findViewById(R$id.tv_blcok_set);
            ImageView imageView = (ImageView) BlockSettingActivity.this.findViewById(R$id.header_left_about);
            if (C3767h1.m24250f0(BlockSettingActivity.this.getApplicationContext()).booleanValue()) {
                imageView.setImageResource(R$drawable.ic_back_oppo);
            }
            imageView.setOnClickListener(new View$OnClickListenerC3257a());
            textView.setTypeface(this.f10458d);
            ((TextView) BlockSettingActivity.this.findViewById(R$id.tv_block1)).setTypeface(this.f10458d);
            ((TextView) BlockSettingActivity.this.findViewById(R$id.tv_block2)).setTypeface(this.f10458d);
            ((TextView) BlockSettingActivity.this.findViewById(R$id.tv_block_tip)).setTypeface(this.f10458d);
            ((TextView) BlockSettingActivity.this.findViewById(R$id.tv_block_set_tip)).setTypeface(this.f10458d);
            BlockSettingActivity blockSettingActivity2 = BlockSettingActivity.this;
            blockSettingActivity2.f10447D = (FrameLayout) blockSettingActivity2.findViewById(R$id.rl_block_list);
            BlockSettingActivity blockSettingActivity3 = BlockSettingActivity.this;
            blockSettingActivity3.f10448E = (FrameLayout) blockSettingActivity3.findViewById(R$id.rl_block_unknown);
            BlockSettingActivity blockSettingActivity4 = BlockSettingActivity.this;
            blockSettingActivity4.f10449F = (FrameLayout) blockSettingActivity4.findViewById(R$id.rl_block_hidden);
            BlockSettingActivity blockSettingActivity5 = BlockSettingActivity.this;
            blockSettingActivity5.f10446C = (FrameLayout) blockSettingActivity5.findViewById(R$id.rl_top);
            BlockSettingActivity blockSettingActivity6 = BlockSettingActivity.this;
            blockSettingActivity6.f10445B = (LinearLayout) blockSettingActivity6.findViewById(R$id.ll_notifi_per);
            FrameLayout frameLayout = (FrameLayout) BlockSettingActivity.this.findViewById(R$id.flayout_enable);
            ImageView imageView2 = (ImageView) BlockSettingActivity.this.findViewById(R$id.flayout_ok);
            TextView textView2 = (TextView) BlockSettingActivity.this.findViewById(R$id.tv_unknown_block);
            textView2.setTypeface(this.f10458d);
            textView2.setOnClickListener(BlockSettingActivity.this);
            imageView2.setOnClickListener(BlockSettingActivity.this);
            frameLayout.setOnClickListener(BlockSettingActivity.this);
            ((ImageView) BlockSettingActivity.this.findViewById(R$id.iv_help)).setOnClickListener(BlockSettingActivity.this);
            BlockSettingActivity blockSettingActivity7 = BlockSettingActivity.this;
            blockSettingActivity7.f10453v = (TextView) blockSettingActivity7.findViewById(R$id.switch_status_text);
            BlockSettingActivity.this.f10453v.setTypeface(this.f10458d);
            BlockSettingActivity blockSettingActivity8 = BlockSettingActivity.this;
            blockSettingActivity8.f10455x = (TextView) blockSettingActivity8.findViewById(R$id.tv_unknown_block_tip);
            BlockSettingActivity.this.f10455x.setTypeface(this.f10458d);
            BlockSettingActivity blockSettingActivity9 = BlockSettingActivity.this;
            blockSettingActivity9.f10456y = (Switch) blockSettingActivity9.findViewById(R$id.switch_hide);
            BlockSettingActivity blockSettingActivity10 = BlockSettingActivity.this;
            blockSettingActivity10.f10454w = (TextView) blockSettingActivity10.findViewById(R$id.switch_status_stranger_text);
            BlockSettingActivity.this.f10454w.setTypeface(this.f10458d);
            BlockSettingActivity blockSettingActivity11 = BlockSettingActivity.this;
            blockSettingActivity11.f10457z = (Switch) blockSettingActivity11.findViewById(R$id.switch_stranger_hide);
            BlockSettingActivity blockSettingActivity12 = BlockSettingActivity.this;
            blockSettingActivity12.f10444A = (Switch) blockSettingActivity12.findViewById(R$id.switch_unknown_block);
            BlockSettingActivity.this.f10456y.setOnCheckedChangeListener(new C3258b());
            BlockSettingActivity.this.f10457z.setOnCheckedChangeListener(new C3259c());
            BlockSettingActivity.this.f10444A.setOnCheckedChangeListener(new C3260d());
            BlockSettingActivity.this.m25623r0();
            BlockSettingActivity.this.m25621t0();
            BlockSettingActivity.this.m25620u0();
            BlockSettingActivity.this.m25622s0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockSettingActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockSettingActivity$b.class */
    public class DialogInterface$OnClickListenerC3261b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3261b() {
            BlockSettingActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: X */
    private void m25643X() {
        try {
            AlertDialog create = new AlertDialog.Builder(this).setTitle(getResources().getString(R$string.private_number_title)).setMessage(getResources().getString(R$string.private_number_tip)).setPositiveButton(getResources().getString(R$string.tip_show2), new DialogInterface$OnClickListenerC3261b()).create();
            create.show();
            create.getButton(-1).setTextColor(this.f10451H);
            create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: s0 */
    public void m25622s0() {
        try {
            if (!C3711a1.m24469x2().booleanValue()) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26 && i < 28 && !C3784b.m24142d(getApplicationContext())) {
                    C3810q.m24071b().m24070c("setting_norifi_per_show");
                    this.f10445B.setVisibility(0);
                    this.f10446C.setVisibility(8);
                    this.f10447D.setAlpha(0.3f);
                    this.f10448E.setAlpha(0.3f);
                    this.f10449F.setAlpha(0.3f);
                    this.f10456y.setEnabled(false);
                    this.f10457z.setEnabled(false);
                    this.f10444A.setEnabled(false);
                }
            }
            this.f10445B.setVisibility(8);
            this.f10446C.setVisibility(0);
            this.f10447D.setAlpha(1.0f);
            this.f10448E.setAlpha(1.0f);
            this.f10449F.setAlpha(1.0f);
            this.f10456y.setEnabled(true);
            this.f10457z.setEnabled(true);
            this.f10444A.setEnabled(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.flayout_enable /* 2131296817 */:
                this.f10450G = true;
                C3810q.m24071b().m24070c("setting_norifi_per_click");
                C3784b.m24143c(getApplicationContext());
                return;
            case R$id.flayout_ok /* 2131296818 */:
                this.f10450G = true;
                C3810q.m24071b().m24070c("setting_norifi_per_click");
                C3784b.m24143c(getApplicationContext());
                return;
            case R$id.iv_help /* 2131297002 */:
                m25643X();
                return;
            case R$id.tv_unknown_block /* 2131298217 */:
                m25643X();
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_block_setting);
        Typeface m24359b = C3739f1.m24359b();
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC3256a(m24359b));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
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

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        m25622s0();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f10450G) {
            this.f10450G = false;
            if (!C3784b.m24144b(getApplicationContext())) {
                return;
            }
            C3810q.m24071b().m24070c("setting_norifi_per_enalbleed");
        }
    }

    /* renamed from: r0 */
    public void m25623r0() {
        boolean m24488t = C3711a1.m24488t();
        this.f10456y.setChecked(m24488t);
        if (m24488t) {
            this.f10453v.setText(getResources().getString(R$string.hide_desc_on));
        } else {
            this.f10453v.setText(getResources().getString(R$string.hide_desc_off));
        }
    }

    /* renamed from: t0 */
    public void m25621t0() {
        boolean m24484u = C3711a1.m24484u();
        this.f10457z.setChecked(m24484u);
        if (m24484u) {
            this.f10454w.setText(getResources().getString(R$string.hide_desc_stranger_on));
        } else {
            this.f10454w.setText(getResources().getString(R$string.hide_desc_off));
        }
    }

    /* renamed from: u0 */
    public void m25620u0() {
        boolean m24480v = C3711a1.m24480v();
        this.f10444A.setChecked(m24480v);
        if (m24480v) {
            this.f10455x.setText(getResources().getString(R$string.unknow_block_tip));
        } else {
            this.f10455x.setText(getResources().getString(R$string.hide_desc_off));
        }
    }
}
