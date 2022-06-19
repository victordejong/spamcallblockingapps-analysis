package com.allinone.callerid.mvc.controller.recorder;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.view.recorder.C3572b;
import com.allinone.callerid.mvc.view.recorder.ExpandLayout;
import com.allinone.callerid.p162i.p163a.AbstractC2778c;
import com.allinone.callerid.start.CommonSetting;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3821c;
import com.allinone.callerid.util.recorder.C3822d;
import com.allinone.callerid.util.recorder.C3826f;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting.class */
public class RecordSetting extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f11174A;

    /* renamed from: B */
    private ImageView f11175B;

    /* renamed from: C */
    private ExpandLayout f11176C;

    /* renamed from: D */
    private ConstraintLayout f11177D;

    /* renamed from: E */
    private CheckBox f11178E;

    /* renamed from: F */
    private ConstraintLayout f11179F;

    /* renamed from: G */
    private CheckBox f11180G;

    /* renamed from: H */
    private ConstraintLayout f11181H;

    /* renamed from: I */
    private FrameLayout f11182I;

    /* renamed from: J */
    private TextView f11183J;

    /* renamed from: K */
    private Switch f11184K;

    /* renamed from: L */
    private boolean f11185L;

    /* renamed from: M */
    private TimerTask f11186M;

    /* renamed from: N */
    private Timer f11187N;

    /* renamed from: u */
    private final String f11188u = "RecordSetting";

    /* renamed from: v */
    private Switch f11189v;

    /* renamed from: w */
    private FrameLayout f11190w;

    /* renamed from: x */
    private Typeface f11191x;

    /* renamed from: y */
    private FrameLayout f11192y;

    /* renamed from: z */
    private ConstraintLayout f11193z;

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$a.class */
    public class DialogInterface$OnClickListenerC3484a implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ BaseEditText f11194d;

        DialogInterface$OnClickListenerC3484a(BaseEditText baseEditText) {
            RecordSetting.this = r4;
            this.f11194d = baseEditText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            String obj = this.f11194d.getText().toString();
            if (!obj.equals("") && !obj.equals("0")) {
                RecordSetting.this.f11183J.setText(RecordSetting.this.getString(R$string.setting_clear_massage).replace("$$", obj));
                C3820b.m24022n(obj);
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$b.class */
    public class DialogInterface$OnDismissListenerC3485b implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC3485b() {
            RecordSetting.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            String m24034b = C3820b.m24034b();
            String string = RecordSetting.this.getString(R$string.setting_clear_massage);
            if (m24034b == null || "".equals(m24034b) || "0".equals(m24034b)) {
                RecordSetting.this.f11183J.setText(string.replace("$$", "X"));
                RecordSetting.this.f11184K.setChecked(false);
                return;
            }
            RecordSetting.this.f11183J.setText(string.replace("$$", m24034b));
            RecordSetting.this.f11184K.setChecked(true);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$c.class */
    public class View$OnClickListenerC3486c implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C3572b f11197d;

        View$OnClickListenerC3486c(C3572b c3572b) {
            RecordSetting.this = r4;
            this.f11197d = c3572b;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131297367) {
                C3820b.m24016t(1);
                RecordSetting.this.f11174A.setText(RecordSetting.this.getString(R$string.setting_record_massage_jog));
                RecordSetting.this.f11176C.m25006f();
                this.f11197d.dismiss();
            } else if (id != 2131297369) {
            } else {
                C3810q.m24071b().m24070c("auto_record_all");
                C3820b.m24016t(0);
                RecordSetting.this.f11174A.setText(RecordSetting.this.getString(R$string.setting_record_massage_auto));
                if (RecordSetting.this.f11176C.m25003i()) {
                    RecordSetting.this.f11176C.m25007e();
                }
                this.f11197d.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$d.class */
    class RunnableC3487d implements Runnable {
        RunnableC3487d() {
            RecordSetting.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecordSetting.this.f11176C.m25006f();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$e.class */
    public class View$OnClickListenerC3488e implements View.OnClickListener {
        View$OnClickListenerC3488e() {
            RecordSetting.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C3767h1.f12006a) {
                C3767h1.f12006a = false;
                RecordSetting.this.startActivity(new Intent(RecordSetting.this, CommonSetting.class));
                RecordSetting.this.finish();
            } else {
                RecordSetting.this.finish();
            }
            RecordSetting.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$f.class */
    public class View$OnClickListenerC3489f implements View.OnClickListener {
        View$OnClickListenerC3489f() {
            RecordSetting.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!RecordSetting.this.f11189v.isChecked()) {
                RecordSetting.this.m25147r0();
                return;
            }
            C3820b.m24019q(false);
            RecordSetting.this.f11189v.setChecked(false);
            RecordSetting.this.f11190w.setAlpha(0.3f);
            RecordSetting.this.f11190w.setClickable(false);
            RecordSetting.this.f11192y.setAlpha(0.3f);
            RecordSetting.this.f11193z.setAlpha(0.3f);
            RecordSetting.this.f11193z.setClickable(false);
            RecordSetting.this.f11177D.setAlpha(0.3f);
            RecordSetting.this.f11177D.setClickable(false);
            RecordSetting.this.f11179F.setAlpha(0.3f);
            RecordSetting.this.f11179F.setClickable(false);
            RecordSetting.this.f11181H.setAlpha(0.3f);
            RecordSetting.this.f11181H.setClickable(false);
            RecordSetting.this.f11178E.setClickable(false);
            RecordSetting.this.f11180G.setClickable(false);
            RecordSetting.this.f11182I.setClickable(false);
            RecordSetting.this.f11182I.setAlpha(0.3f);
            RecordSetting.this.f11184K.setEnabled(false);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$g.class */
    public class C3490g implements CompoundButton.OnCheckedChangeListener {
        C3490g() {
            RecordSetting.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3820b.m24015u(true);
            } else {
                C3820b.m24015u(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$h.class */
    public class C3491h implements CompoundButton.OnCheckedChangeListener {
        C3491h() {
            RecordSetting.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C3820b.m24017s(z);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$i.class */
    public class C3492i implements CompoundButton.OnCheckedChangeListener {
        C3492i() {
            RecordSetting.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                RecordSetting.this.m25141x0();
                return;
            }
            C3820b.m24022n("");
            RecordSetting.this.f11183J.setText(RecordSetting.this.getString(R$string.setting_clear_massage).replace("$$", "X"));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$j.class */
    public class C3493j implements CompoundButton.OnCheckedChangeListener {
        C3493j() {
            RecordSetting.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                RecordSetting.this.m25147r0();
                return;
            }
            C3820b.m24019q(false);
            RecordSetting.this.f11190w.setAlpha(0.3f);
            RecordSetting.this.f11190w.setClickable(false);
            RecordSetting.this.f11192y.setAlpha(0.3f);
            RecordSetting.this.f11193z.setAlpha(0.3f);
            RecordSetting.this.f11193z.setClickable(false);
            RecordSetting.this.f11177D.setAlpha(0.3f);
            RecordSetting.this.f11177D.setClickable(false);
            RecordSetting.this.f11179F.setAlpha(0.3f);
            RecordSetting.this.f11179F.setClickable(false);
            RecordSetting.this.f11181H.setAlpha(0.3f);
            RecordSetting.this.f11181H.setClickable(false);
            RecordSetting.this.f11178E.setClickable(false);
            RecordSetting.this.f11180G.setClickable(false);
            RecordSetting.this.f11182I.setClickable(false);
            RecordSetting.this.f11182I.setAlpha(0.3f);
            RecordSetting.this.f11184K.setEnabled(false);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$k.class */
    public class C3494k implements AbstractC2778c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$k$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a.class */
        public class C3495a implements AbstractC2778c {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$k$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a.class */
            public class C3496a implements AbstractC2778c {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$k$a$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a$a.class */
                public class C3497a implements C3776a.AbstractC3783g {

                    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$k$a$a$a$a */
                    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a$a$a.class */
                    class C3498a implements AbstractC2778c {
                        C3498a() {
                            C3497a.this = r4;
                        }

                        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                        /* renamed from: a */
                        public void mo25101a() {
                            RecordSetting.this.m25142w0();
                        }

                        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                        /* renamed from: b */
                        public void mo25100b() {
                        }
                    }

                    C3497a() {
                        C3496a.this = r4;
                    }

                    @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
                    /* renamed from: a */
                    public void mo23968a() {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("record", "开启了权限");
                        }
                        C3810q.m24071b().m24070c("permissions_enabled");
                        if (!C3776a.m24158g(RecordSetting.this)) {
                            C3826f.m23975t(RecordSetting.this, new C3498a());
                        } else {
                            RecordSetting.this.m25146s0();
                        }
                    }
                }

                /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$k$a$a$b */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$k$a$a$b.class */
                class C3499b implements AbstractC2778c {
                    C3499b() {
                        C3496a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                    /* renamed from: a */
                    public void mo25101a() {
                        RecordSetting.this.m25142w0();
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                    /* renamed from: b */
                    public void mo25100b() {
                    }
                }

                C3496a() {
                    C3495a.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                /* renamed from: a */
                public void mo25101a() {
                    if (!C3776a.m24163b(RecordSetting.this)) {
                        C3810q.m24071b().m24070c("permissions_request");
                        C3776a.m24151n(RecordSetting.this, new C3497a());
                    } else if (!C3776a.m24158g(RecordSetting.this)) {
                        C3826f.m23975t(RecordSetting.this, new C3499b());
                    } else {
                        RecordSetting.this.m25146s0();
                    }
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                /* renamed from: b */
                public void mo25100b() {
                }
            }

            C3495a() {
                C3494k.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
            /* renamed from: a */
            public void mo25101a() {
                C3826f.m23971x(RecordSetting.this, new C3496a());
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
            /* renamed from: b */
            public void mo25100b() {
            }
        }

        C3494k() {
            RecordSetting.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
        /* renamed from: a */
        public void mo25101a() {
            C3826f.m23976s(RecordSetting.this, new C3495a());
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
        /* renamed from: b */
        public void mo25100b() {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$l.class */
    public class DialogInterface$OnDismissListenerC3500l implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC3500l() {
            RecordSetting.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            RecordSetting.this.m25145t0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordSetting$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordSetting$m.class */
    public class C3501m extends TimerTask {
        C3501m() {
            RecordSetting.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            RecordSetting.this.m25143v0();
        }
    }

    /* renamed from: r0 */
    public void m25147r0() {
        if (C3820b.m24030f()) {
            C3820b.m24019q(true);
            m25145t0();
        } else if (Build.VERSION.SDK_INT >= 28) {
            C3826f.m23972w(this, new C3494k());
        } else {
            AlertDialog m23973v = C3826f.m23973v(this, null);
            if (m23973v == null) {
                return;
            }
            m23973v.setOnDismissListener(new DialogInterface$OnDismissListenerC3500l());
        }
    }

    /* renamed from: s0 */
    public void m25146s0() {
        if (!C3776a.m24163b(this) || !C3776a.m24158g(this)) {
            return;
        }
        C3820b.m24018r(true);
        C3820b.m24019q(true);
        C3810q.m24071b().m24070c("call_record_enabled");
        m25145t0();
    }

    /* renamed from: t0 */
    public void m25145t0() {
        if (C3820b.m24031e()) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("record", "开启了录音");
            }
            this.f11189v.setChecked(true);
            this.f11190w.setAlpha(1.0f);
            this.f11190w.setClickable(true);
            this.f11192y.setAlpha(1.0f);
            this.f11193z.setAlpha(1.0f);
            this.f11193z.setClickable(true);
            this.f11177D.setAlpha(1.0f);
            this.f11177D.setClickable(true);
            this.f11179F.setAlpha(1.0f);
            this.f11179F.setClickable(true);
            this.f11181H.setAlpha(1.0f);
            this.f11181H.setClickable(true);
            this.f11178E.setClickable(true);
            this.f11180G.setClickable(true);
            this.f11182I.setClickable(true);
            this.f11182I.setAlpha(1.0f);
            this.f11184K.setEnabled(true);
        } else {
            this.f11189v.setChecked(false);
            this.f11190w.setAlpha(0.3f);
            this.f11190w.setClickable(false);
            this.f11192y.setAlpha(0.3f);
            this.f11193z.setAlpha(0.3f);
            this.f11193z.setClickable(false);
            this.f11177D.setAlpha(0.3f);
            this.f11177D.setClickable(false);
            this.f11179F.setAlpha(0.3f);
            this.f11179F.setClickable(false);
            this.f11181H.setAlpha(0.3f);
            this.f11181H.setClickable(false);
            this.f11178E.setClickable(false);
            this.f11180G.setClickable(false);
            this.f11182I.setClickable(false);
            this.f11182I.setAlpha(0.3f);
            this.f11184K.setEnabled(false);
            C3822d.m24005c();
        }
        if (C3820b.m24027i()) {
            this.f11178E.setChecked(true);
        } else {
            this.f11178E.setChecked(false);
        }
    }

    /* renamed from: u0 */
    private void m25144u0() {
        this.f11192y = (FrameLayout) findViewById(R$id.setting_diy_record_fl);
        ImageView imageView = (ImageView) findViewById(R$id.setting_diy_record_image);
        TextView textView = (TextView) findViewById(R$id.setting_diy_record_title);
        this.f11193z = (ConstraintLayout) findViewById(R$id.setting_record_tip_ll);
        this.f11174A = (TextView) findViewById(R$id.setting_diy_record_tip);
        this.f11175B = (ImageView) findViewById(R$id.setting_diy_record_tip_triangle);
        this.f11176C = (ExpandLayout) findViewById(R$id.setting_diy_record_ex);
        this.f11177D = (ConstraintLayout) findViewById(R$id.setting_diy_record_unknown_ll);
        TextView textView2 = (TextView) findViewById(R$id.setting_diy_record_unknown_text);
        this.f11178E = (CheckBox) findViewById(R$id.setting_diy_record_unknown_cb);
        this.f11179F = (ConstraintLayout) findViewById(R$id.setting_diy_record_contact_ll);
        TextView textView3 = (TextView) findViewById(R$id.setting_diy_record_contact_text);
        this.f11180G = (CheckBox) findViewById(R$id.setting_diy_record_contact_cb);
        this.f11181H = (ConstraintLayout) findViewById(R$id.setting_diy_record_diy_ll);
        TextView textView4 = (TextView) findViewById(R$id.setting_diy_record_diy_text);
        ImageView imageView2 = (ImageView) findViewById(R$id.setting_diy_record_diy_image);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.setting_record_fl);
        TextView textView5 = (TextView) findViewById(R$id.setting_record_title);
        TextView textView6 = (TextView) findViewById(R$id.setting_record_tip);
        this.f11189v = (Switch) findViewById(R$id.setting_record_switch);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.setting_location_fl);
        TextView textView7 = (TextView) findViewById(R$id.setting_location_tv);
        TextView textView8 = (TextView) findViewById(R$id.setting_location_path_tv);
        this.f11190w = (FrameLayout) findViewById(R$id.setting_configuration_fl);
        TextView textView9 = (TextView) findViewById(R$id.setting_configuration_tv);
        TextView textView10 = (TextView) findViewById(R$id.setting_configuration_conent_tv);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.setting_clear_fl);
        this.f11182I = frameLayout3;
        frameLayout3.setOnClickListener(this);
        this.f11183J = (TextView) findViewById(R$id.setting_clear_massage);
        TextView textView11 = (TextView) findViewById(R$id.setting_clear_title);
        this.f11184K = (Switch) findViewById(R$id.setting_clear_switch);
        Typeface createFromAsset = Typeface.createFromAsset(getAssets(), "Roboto-Regular.ttf");
        this.f11191x = createFromAsset;
        textView5.setTypeface(createFromAsset);
        textView6.setTypeface(this.f11191x);
        textView7.setTypeface(this.f11191x);
        textView8.setTypeface(this.f11191x);
        textView9.setTypeface(this.f11191x);
        textView.setTypeface(this.f11191x);
        this.f11174A.setTypeface(this.f11191x);
        textView2.setTypeface(this.f11191x);
        textView3.setTypeface(this.f11191x);
        textView4.setTypeface(this.f11191x);
        textView11.setTypeface(this.f11191x);
        this.f11183J.setTypeface(this.f11191x);
        textView10.setTypeface(this.f11191x);
        ImageView imageView3 = (ImageView) findViewById(R$id.lb_setting_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView3.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView3.setOnClickListener(new View$OnClickListenerC3488e());
        if (C3820b.m24029g()) {
            this.f11180G.setChecked(true);
        } else {
            this.f11180G.setChecked(false);
        }
        this.f11190w.setOnClickListener(this);
        textView8.setText(C3821c.f12102a);
        frameLayout2.setAlpha(0.3f);
        frameLayout.setOnClickListener(new View$OnClickListenerC3489f());
        int m24028h = C3820b.m24028h();
        if (m24028h == 0) {
            this.f11174A.setText(getString(R$string.setting_record_massage_auto));
            this.f11176C.m25005g(false);
        } else if (m24028h == 1) {
            this.f11174A.setText(getString(R$string.setting_record_massage_jog));
            this.f11176C.m25005g(true);
        }
        this.f11178E.setOnCheckedChangeListener(new C3490g());
        this.f11180G.setOnCheckedChangeListener(new C3491h());
        this.f11193z.setOnClickListener(this);
        this.f11177D.setOnClickListener(this);
        this.f11179F.setOnClickListener(this);
        this.f11181H.setOnClickListener(this);
        String m24034b = C3820b.m24034b();
        String string = getString(R$string.setting_clear_massage);
        if (m24034b == null || "".equals(m24034b)) {
            this.f11183J.setText(string.replace("$$", "X"));
            this.f11184K.setChecked(false);
        } else {
            this.f11183J.setText(string.replace("$$", m24034b));
            this.f11184K.setChecked(true);
        }
        this.f11184K.setOnCheckedChangeListener(new C3492i());
        m25145t0();
        this.f11189v.setOnCheckedChangeListener(new C3493j());
    }

    /* renamed from: v0 */
    public void m25143v0() {
        try {
            if (!C3776a.m24158g(this)) {
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("record", "未开启");
                return;
            }
            this.f11186M.cancel();
            this.f11187N.cancel();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("record", "开启了");
            }
            C3810q.m24071b().m24070c("permissions_accessibility_enabled");
            C3820b.m24018r(true);
            C3820b.m24019q(true);
            C3810q.m24071b().m24070c("call_record_enabled");
            m25145t0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: w0 */
    public void m25142w0() {
        try {
            C3810q.m24071b().m24070c("permissions_accessibility_request");
            this.f11185L = true;
            startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
            C3826f.m23996A(this);
            TimerTask timerTask = this.f11186M;
            if (timerTask != null) {
                timerTask.cancel();
            }
            C3501m c3501m = new C3501m();
            this.f11186M = c3501m;
            this.f11187N.schedule(c3501m, 0L, 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x0 */
    public void m25141x0() {
        try {
            View inflate = LayoutInflater.from(this).inflate(R$layout.dialog_setting_clear, (ViewGroup) null);
            BaseEditText baseEditText = (BaseEditText) inflate.findViewById(R$id.dialog_setting_clear_number);
            baseEditText.setTypeface(this.f11191x);
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(R$string.Numbwe_of_days);
            builder.setView(inflate);
            builder.setPositiveButton(R$string.save_small, new DialogInterface$OnClickListenerC3484a(baseEditText));
            AlertDialog create = builder.create();
            create.setOnDismissListener(new DialogInterface$OnDismissListenerC3485b());
            create.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: y0 */
    private void m25140y0(View view) {
        C3572b c3572b = new C3572b(this);
        c3572b.m24963b(new String[]{getString(R$string.setting_record_massage_auto), getString(R$string.setting_record_massage_jog)});
        c3572b.m24964a(new View$OnClickListenerC3486c(c3572b));
        c3572b.showAsDropDown(view);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.setting_clear_fl /* 2131297594 */:
                if (!this.f11184K.isChecked()) {
                    this.f11184K.setChecked(true);
                    return;
                }
                this.f11184K.setChecked(false);
                C3820b.m24022n("");
                this.f11183J.setText(getString(R$string.setting_clear_massage).replace("$$", "X"));
                return;
            case R$id.setting_configuration_fl /* 2131297600 */:
                startActivity(new Intent(this, RecordProblemActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.setting_diy_record_contact_ll /* 2131297604 */:
                if (this.f11180G.isChecked()) {
                    this.f11180G.setChecked(false);
                    C3820b.m24017s(false);
                    return;
                }
                this.f11180G.setChecked(true);
                C3820b.m24017s(true);
                return;
            case R$id.setting_diy_record_diy_ll /* 2131297607 */:
                C3810q.m24071b().m24070c("auto_record_custom");
                Intent intent = new Intent(this, CustomActivity.class);
                intent.putExtra("customType", 0);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.setting_diy_record_unknown_ll /* 2131297616 */:
                if (!this.f11178E.isChecked()) {
                    this.f11178E.setChecked(true);
                    C3820b.m24015u(true);
                    return;
                }
                C3810q.m24071b().m24070c("auto_record_unknown_call_unselect");
                this.f11178E.setChecked(false);
                C3820b.m24015u(false);
                return;
            case R$id.setting_record_tip_ll /* 2131297627 */:
                m25140y0(this.f11175B);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_record_setting);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m25144u0();
        this.f11187N = new Timer();
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
        if (this.f11185L) {
            this.f11185L = false;
            TimerTask timerTask = this.f11186M;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this.f11176C.m25007e();
            this.f11176C.postDelayed(new RunnableC3487d(), 500L);
            m25145t0();
        }
    }
}
