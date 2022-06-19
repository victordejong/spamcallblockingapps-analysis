package com.allinone.callerid.start;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.Switch;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings.class */
public class Generalsettings extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private RadioButton f11721A;

    /* renamed from: B */
    private RadioButton f11722B;

    /* renamed from: C */
    private FrameLayout f11723C;

    /* renamed from: D */
    private TextView f11724D;

    /* renamed from: E */
    private TextView f11725E;

    /* renamed from: F */
    private Switch f11726F;

    /* renamed from: u */
    private final String f11727u = "Generalsettings";

    /* renamed from: v */
    private Typeface f11728v;

    /* renamed from: w */
    private Switch f11729w;

    /* renamed from: x */
    private Switch f11730x;

    /* renamed from: y */
    private TextView f11731y;

    /* renamed from: z */
    private RadioButton f11732z;

    /* renamed from: com.allinone.callerid.start.Generalsettings$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$a.class */
    class View$OnClickListenerC3662a implements View.OnClickListener {
        View$OnClickListenerC3662a() {
            Generalsettings.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Generalsettings.this.finish();
            Generalsettings.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.Generalsettings$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$b.class */
    public class C3663b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: com.allinone.callerid.start.Generalsettings$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$b$a.class */
        class RunnableC3664a implements Runnable {
            RunnableC3664a() {
                C3663b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Generalsettings.this.finish();
                    EZCallApplication.m26146c().m26144e();
                    Intent intent = new Intent(Generalsettings.this, StartActivity.class);
                    intent.addFlags(268435456);
                    Generalsettings.this.startActivity(intent);
                    Process.killProcess(Process.myPid());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.allinone.callerid.start.Generalsettings$b$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$b$b.class */
        class RunnableC3665b implements Runnable {
            RunnableC3665b() {
                C3663b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Generalsettings.this.finish();
                    EZCallApplication.m26146c().m26144e();
                    Intent intent = new Intent(Generalsettings.this, StartActivity.class);
                    intent.addFlags(268435456);
                    Generalsettings.this.startActivity(intent);
                    Process.killProcess(Process.myPid());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3663b() {
            Generalsettings.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                C3711a1.m24541f2(false);
                return;
            }
            C3711a1.m24541f2(true);
            if (C3767h1.m24244i0(Generalsettings.this.getApplicationContext())) {
                if (C3711a1.m24461z2() != 0) {
                    return;
                }
                Generalsettings.this.f11723C.postDelayed(new RunnableC3664a(), 350L);
            } else if (C3711a1.m24461z2() != 1) {
            } else {
                Generalsettings.this.f11723C.postDelayed(new RunnableC3665b(), 350L);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.Generalsettings$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$c.class */
    public class C3666c implements CompoundButton.OnCheckedChangeListener {
        C3666c() {
            Generalsettings.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24597Q1(true);
            } else {
                C3711a1.m24597Q1(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.Generalsettings$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$d.class */
    public class C3667d implements CompoundButton.OnCheckedChangeListener {
        C3667d() {
            Generalsettings.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24574W1(true);
            } else {
                C3711a1.m24574W1(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.Generalsettings$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$e.class */
    public class C3668e implements CompoundButton.OnCheckedChangeListener {
        C3668e() {
            Generalsettings.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                Generalsettings.this.f11732z.setChecked(false);
                return;
            }
            C3711a1.m24590S0(0);
            C3711a1.m24522k1(true);
            Generalsettings.this.f11732z.setChecked(true);
            Generalsettings.this.f11721A.setChecked(false);
            Generalsettings.this.f11722B.setChecked(false);
            Generalsettings.this.f11731y.setText(Generalsettings.this.getResources().getString(R$string.card1));
        }
    }

    /* renamed from: com.allinone.callerid.start.Generalsettings$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$f.class */
    public class C3669f implements CompoundButton.OnCheckedChangeListener {
        C3669f() {
            Generalsettings.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                Generalsettings.this.f11721A.setChecked(false);
                return;
            }
            C3711a1.m24590S0(1);
            C3711a1.m24522k1(true);
            Generalsettings.this.f11721A.setChecked(true);
            Generalsettings.this.f11732z.setChecked(false);
            Generalsettings.this.f11722B.setChecked(false);
            Generalsettings.this.f11731y.setText(Generalsettings.this.getResources().getString(R$string.card2));
        }
    }

    /* renamed from: com.allinone.callerid.start.Generalsettings$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/Generalsettings$g.class */
    public class C3670g implements CompoundButton.OnCheckedChangeListener {
        C3670g() {
            Generalsettings.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                Generalsettings.this.f11722B.setChecked(false);
                return;
            }
            C3711a1.m24590S0(-1);
            C3711a1.m24522k1(false);
            Generalsettings.this.f11722B.setChecked(true);
            Generalsettings.this.f11732z.setChecked(false);
            Generalsettings.this.f11721A.setChecked(false);
            Generalsettings.this.f11731y.setText(Generalsettings.this.getResources().getString(R$string.sim_ask));
        }
    }

    @TargetApi(22)
    /* renamed from: c0 */
    private void m24742c0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.choosesim_layout, (ViewGroup) null, false);
        this.f11732z = (RadioButton) inflate.findViewById(R$id.radio1);
        this.f11721A = (RadioButton) inflate.findViewById(R$id.radio2);
        this.f11722B = (RadioButton) inflate.findViewById(R$id.radio3);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setCancelable(true);
        builder.setTitle(getResources().getString(R$string.selectcard));
        builder.setView(inflate);
        builder.show();
        int m24504p = C3711a1.m24504p();
        if (m24504p == -1) {
            this.f11732z.setChecked(false);
            this.f11721A.setChecked(false);
            this.f11722B.setChecked(true);
        } else if (m24504p == 0) {
            this.f11732z.setChecked(true);
            this.f11721A.setChecked(false);
            this.f11722B.setChecked(false);
        } else if (m24504p == 1) {
            this.f11732z.setChecked(false);
            this.f11721A.setChecked(true);
            this.f11722B.setChecked(false);
        }
        this.f11732z.setOnCheckedChangeListener(new C3668e());
        this.f11721A.setOnCheckedChangeListener(new C3669f());
        this.f11722B.setOnCheckedChangeListener(new C3670g());
    }

    /* renamed from: d0 */
    private void m24741d0() {
        TextView textView = (TextView) findViewById(R$id.tv_title_setting);
        TextView textView2 = (TextView) findViewById(R$id.tv_about);
        TextView textView3 = (TextView) findViewById(R$id.tv_copy_title);
        TextView textView4 = (TextView) findViewById(R$id.tv_copy_tip);
        TextView textView5 = (TextView) findViewById(R$id.tv_offline);
        TextView textView6 = (TextView) findViewById(R$id.tv_offline_date);
        ((TextView) findViewById(R$id.tv_notifi_title)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_notifi_tip)).setTypeface(C3739f1.m24359b());
        long m24516m = C3711a1.m24516m();
        if (m24516m == 0) {
            textView6.setText(getResources().getString(R$string.lastupdate) + " " + C3771i.m24204f(System.currentTimeMillis()));
        } else {
            textView6.setText(getResources().getString(R$string.lastupdate) + " " + C3771i.m24204f(m24516m));
        }
        TextView textView7 = (TextView) findViewById(R$id.tv_terms);
        TextView textView8 = (TextView) findViewById(R$id.tv_privacy);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.ib_about);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.ib_offline);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.fl_copy);
        FrameLayout frameLayout4 = (FrameLayout) findViewById(R$id.fl_notifi);
        FrameLayout frameLayout5 = (FrameLayout) findViewById(R$id.fl_push);
        this.f11723C = (FrameLayout) findViewById(R$id.fl_theme);
        this.f11724D = (TextView) findViewById(R$id.tv_theme);
        this.f11725E = (TextView) findViewById(R$id.tv_theme_tip);
        this.f11726F = (Switch) findViewById(R$id.switch_theme);
        if (C3711a1.m24467y0()) {
            this.f11726F.setChecked(true);
        } else {
            this.f11726F.setChecked(false);
        }
        this.f11726F.setOnCheckedChangeListener(new C3663b());
        frameLayout5.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        textView7.setOnClickListener(this);
        textView8.setOnClickListener(this);
        frameLayout3.setOnClickListener(this);
        frameLayout4.setOnClickListener(this);
        this.f11723C.setOnClickListener(this);
        FrameLayout frameLayout6 = (FrameLayout) findViewById(R$id.fl_select_sim);
        View findViewById = findViewById(R$id.select_sim_line);
        this.f11731y = (TextView) findViewById(R$id.tv_sim);
        if (C3714b1.m24448j(getApplicationContext())) {
            frameLayout6.setVisibility(0);
            findViewById.setVisibility(0);
            frameLayout6.setOnClickListener(this);
            int m24504p = C3711a1.m24504p();
            if (m24504p == -1) {
                this.f11731y.setText(getResources().getString(R$string.sim_ask));
                C3810q.m24071b().m24070c(C3744g1.f11942p);
            } else if (m24504p == 0) {
                this.f11731y.setText(getResources().getString(R$string.card1));
                C3810q.m24071b().m24070c(C3744g1.f11940n);
            } else if (m24504p == 1) {
                this.f11731y.setText(getResources().getString(R$string.card2));
                C3810q.m24071b().m24070c(C3744g1.f11941o);
            }
        } else {
            frameLayout6.setVisibility(8);
            findViewById.setVisibility(8);
        }
        this.f11729w = (Switch) findViewById(R$id.switch_copy);
        if (C3711a1.m24519l0()) {
            this.f11729w.setChecked(true);
        } else {
            this.f11729w.setChecked(false);
        }
        this.f11729w.setOnCheckedChangeListener(new C3666c());
        this.f11730x = (Switch) findViewById(R$id.switch_notifi);
        if (C3711a1.m24499q0()) {
            this.f11730x.setChecked(true);
        } else {
            this.f11730x.setChecked(false);
        }
        this.f11730x.setOnCheckedChangeListener(new C3667d());
        ((TextView) findViewById(R$id.tv_push)).setTypeface(this.f11728v);
        ((TextView) findViewById(R$id.tv_push_des)).setTypeface(this.f11728v);
        textView.setTypeface(this.f11728v);
        textView3.setTypeface(this.f11728v);
        textView4.setTypeface(this.f11728v);
        textView2.setTypeface(this.f11728v);
        textView7.setTypeface(this.f11728v);
        textView8.setTypeface(this.f11728v);
        textView5.setTypeface(this.f11728v);
        textView6.setTypeface(this.f11728v);
        this.f11724D.setTypeface(this.f11728v);
        this.f11725E.setTypeface(this.f11728v);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_copy /* 2131296732 */:
                if (this.f11729w.isChecked()) {
                    C3711a1.m24597Q1(false);
                    this.f11729w.setChecked(false);
                    return;
                }
                C3711a1.m24597Q1(true);
                this.f11729w.setChecked(true);
                return;
            case R$id.fl_notifi /* 2131296765 */:
                if (this.f11730x.isChecked()) {
                    C3711a1.m24574W1(false);
                    this.f11730x.setChecked(false);
                    return;
                }
                C3711a1.m24574W1(true);
                this.f11730x.setChecked(true);
                return;
            case R$id.fl_push /* 2131296771 */:
                startActivity(new Intent(this, PushControlActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_select_sim /* 2131296783 */:
                m24742c0();
                return;
            case R$id.fl_theme /* 2131296801 */:
                if (this.f11726F.isChecked()) {
                    C3711a1.m24541f2(false);
                    this.f11726F.setChecked(false);
                    return;
                }
                C3711a1.m24541f2(true);
                this.f11726F.setChecked(true);
                return;
            case R$id.ib_about /* 2131296856 */:
                startActivity(new Intent(this, AboutActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.tv_privacy /* 2131298057 */:
                try {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse("https://www.show-caller.com/privacy.html"));
                    if (intent.resolveActivity(getPackageManager()) == null) {
                        return;
                    }
                    startActivity(intent);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.tv_terms /* 2131298188 */:
                try {
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setData(Uri.parse("https://www.show-caller.com/terms.html"));
                    if (intent2.resolveActivity(getPackageManager()) == null) {
                        return;
                    }
                    startActivity(intent2);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_generalsettings);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f11728v = C3739f1.m24359b();
        ImageView imageView = (ImageView) findViewById(R$id.lb_setting_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3662a());
        m24741d0();
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

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
