package com.allinone.callerid.start;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.backup.activitys.BackupActivity;
import com.allinone.callerid.dialog.C2600m;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.C3071a;
import com.allinone.callerid.model.EZCountryCode;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.ShowTipActivityNew;
import com.allinone.callerid.mvc.controller.block.BlockSettingActivity;
import com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p162i.p163a.AbstractC2773b;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3877y;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting.class */
public class CommonSetting extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f11696A;

    /* renamed from: u */
    private final String f11697u = "CommonSetting";

    /* renamed from: v */
    private String f11698v = "";

    /* renamed from: w */
    private ProgressBar f11699w;

    /* renamed from: x */
    private int f11700x;

    /* renamed from: y */
    private TextView f11701y;

    /* renamed from: z */
    private List<EZCountryCode> f11702z;

    /* renamed from: com.allinone.callerid.start.CommonSetting$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$a.class */
    class RunnableC3650a implements Runnable {
        RunnableC3650a() {
            CommonSetting.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonSetting commonSetting = CommonSetting.this;
            commonSetting.f11702z = commonSetting.m24760c0();
        }
    }

    /* renamed from: com.allinone.callerid.start.CommonSetting$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$b.class */
    public class View$OnClickListenerC3651b implements View.OnClickListener {
        View$OnClickListenerC3651b() {
            CommonSetting.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommonSetting.this.m24755h0();
            C3810q.m24071b().m24070c("defaults_cc_click");
        }
    }

    /* renamed from: com.allinone.callerid.start.CommonSetting$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$c.class */
    public class View$OnClickListenerC3652c implements View.OnClickListener {
        View$OnClickListenerC3652c() {
            CommonSetting.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C3767h1.f12006a) {
                C3767h1.f12006a = false;
                CommonSetting.this.startActivity(new Intent(CommonSetting.this, MainActivity.class));
                CommonSetting.this.finish();
            } else {
                CommonSetting.this.finish();
            }
            CommonSetting.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.CommonSetting$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$d.class */
    public class C3653d implements AbstractC2773b {
        C3653d() {
            CommonSetting.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2773b
        /* renamed from: a */
        public void mo24754a(EZCountryCode eZCountryCode) {
            String charSequence = CommonSetting.this.f11696A.getText().toString();
            C3806p.m24079h(CommonSetting.this.getApplication(), eZCountryCode);
            CommonSetting.this.f11696A.setText(C3806p.m24083d(CommonSetting.this).getCountry_name());
            if (charSequence.equals(CommonSetting.this.f11696A.getText().toString()) || !C3767h1.m24224s0(EZCallApplication.m26146c())) {
                return;
            }
            new AsyncTaskC3658h(CommonSetting.this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: com.allinone.callerid.start.CommonSetting$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$e.class */
    public class C3654e implements C3877y.AbstractC3879b {

        /* renamed from: com.allinone.callerid.start.CommonSetting$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$e$a.class */
        class RunnableC3655a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ C3071a f11708d;

            RunnableC3655a(C3071a c3071a) {
                C3654e.this = r4;
                this.f11708d = c3071a;
            }

            @Override // java.lang.Runnable
            public void run() {
                CommonSetting commonSetting = CommonSetting.this;
                commonSetting.m24759d0(commonSetting.getApplicationContext(), this.f11708d);
            }
        }

        C3654e() {
            CommonSetting.this = r4;
        }

        @Override // com.allinone.callerid.util.C3877y.AbstractC3879b
        /* renamed from: a */
        public void mo23893a(C3071a c3071a) {
            CommonSetting.this.runOnUiThread(new RunnableC3655a(c3071a));
        }
    }

    /* renamed from: com.allinone.callerid.start.CommonSetting$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$f.class */
    public class DialogInterface$OnClickListenerC3656f implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3656f() {
            CommonSetting.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.start.CommonSetting$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$g.class */
    public class DialogInterface$OnClickListenerC3657g implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3657g() {
            CommonSetting.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                CommonSetting.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(CommonSetting.this.f11698v)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.CommonSetting$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CommonSetting$h.class */
    private static class AsyncTaskC3658h extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<CommonSetting> f11712a;

        AsyncTaskC3658h(CommonSetting commonSetting) {
            this.f11712a = new WeakReference<>(commonSetting);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CommonSetting commonSetting = this.f11712a.get();
            if (commonSetting == null || commonSetting.isFinishing()) {
                return null;
            }
            try {
                C2631f.m27001b().m27002a();
                return null;
            } catch (Exception e) {
                try {
                    e.printStackTrace();
                    return null;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            CommonSetting commonSetting = this.f11712a.get();
            if (commonSetting == null || commonSetting.isFinishing()) {
                return;
            }
            Intent intent = new Intent();
            intent.setAction("com.allinone.callerid.RELOAD_DATA");
            C1764a.m28939b(commonSetting).m28937d(intent);
        }
    }

    /* renamed from: d0 */
    public void m24759d0(Context context, C3071a c3071a) {
        C3718c0.m24436a("testupdate", "info==" + c3071a.toString());
        this.f11698v = c3071a.m26045b();
        String m26046a = c3071a.m26046a();
        String str = this.f11698v;
        if (str == null || str.equals("")) {
            this.f11699w.setVisibility(8);
            Toast.makeText(this, getResources().getString(R$string.current), 0).show();
            return;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "minVersion:" + m26046a);
        }
        this.f11699w.setVisibility(8);
        C3718c0.m24436a("testupdate", "Utils.getTestRest==" + C3767h1.m24269S(m26046a));
        if (C3767h1.m24269S(m26046a)) {
            m24761b0();
            return;
        }
        try {
            C3767h1.m24291D0(this, getPackageName());
        } catch (Exception e) {
            e.getMessage();
        }
    }

    /* renamed from: e0 */
    private void m24758e0() {
        Typeface m24359b = C3739f1.m24359b();
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_generalsetting);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.fl_blockset);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.fl_backup);
        FrameLayout frameLayout4 = (FrameLayout) findViewById(R$id.fl_nodisturbset);
        FrameLayout frameLayout5 = (FrameLayout) findViewById(R$id.fl_complaint);
        FrameLayout frameLayout6 = (FrameLayout) findViewById(R$id.fl_feedback);
        FrameLayout frameLayout7 = (FrameLayout) findViewById(R$id.fl_check_update);
        this.f11699w = (ProgressBar) findViewById(R$id.progress_search);
        FrameLayout frameLayout8 = (FrameLayout) findViewById(R$id.show_tips);
        ((FrameLayout) findViewById(R$id.ib_set_language)).setOnClickListener(this);
        this.f11701y = (TextView) findViewById(R$id.tv_default_language);
        ((TextView) findViewById(R$id.tv_language)).setTypeface(m24359b);
        this.f11701y.setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.setting_bg)).setOnClickListener(new View$OnClickListenerC3651b());
        this.f11696A = (TextView) findViewById(R$id.tv_country_name);
        String country_name = C3806p.m24083d(this).getCountry_name();
        if (country_name == null || "".equals(country_name)) {
            this.f11696A.setText(getResources().getString(R$string.unknown));
        } else {
            this.f11696A.setText(C3806p.m24083d(this).getCountry_name());
        }
        this.f11696A.setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_country)).setTypeface(m24359b);
        TextView textView = (TextView) findViewById(R$id.tv_caller_id);
        ((TextView) findViewById(R$id.tv_caller_id_tip)).setTypeface(m24359b);
        textView.setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.caller_id)).setOnClickListener(this);
        frameLayout8.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        frameLayout3.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        frameLayout4.setOnClickListener(this);
        frameLayout5.setOnClickListener(this);
        frameLayout6.setOnClickListener(this);
        frameLayout7.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R$id.lb_setting_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3652c());
        ((TextView) findViewById(R$id.tv_generalsetting)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_blockdset)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_backup)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_nodisturbset)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_complaint)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_feedback)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_check_update)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_show_tips)).setTypeface(m24359b);
    }

    /* renamed from: f0 */
    private void m24757f0() {
        String str = EZCallApplication.m26146c().f9914h;
        if (str.equals("en")) {
            this.f11701y.setText("English");
        } else if (str.equals("hi")) {
            this.f11701y.setText("हिन्दी");
        } else if (str.equals("bn")) {
            this.f11701y.setText("বাংলা ভাষা");
        } else if (str.equals("fa")) {
            this.f11701y.setText("فارسی");
        } else if (str.equals("ru")) {
            this.f11701y.setText("русский");
        } else if (str.equals("tr")) {
            this.f11701y.setText("Türk");
        } else if (str.equals("in")) {
            this.f11701y.setText("Indonesia");
        } else if (str.equals("ms")) {
            this.f11701y.setText("Melayu");
        } else if (str.equals("zh")) {
            this.f11701y.setText("简体中文");
        } else if (str.equals("ar")) {
            this.f11701y.setText("العربية");
        } else if (str.equals("es")) {
            this.f11701y.setText("Espanol");
        } else if (str.equals("pt")) {
            this.f11701y.setText("Português");
        } else if (str.equals("th")) {
            this.f11701y.setText("ภาษาไทย");
        } else if (str.equals("iw")) {
            this.f11701y.setText("עִבְרִית");
        } else if (str.equals("de")) {
            this.f11701y.setText("Deutsch");
        } else if (str.equals("zh-TW")) {
            this.f11701y.setText("繁体中文");
        } else if (str.equals("fr")) {
            this.f11701y.setText("Français");
        } else if (str.equals("ko")) {
            this.f11701y.setText("한국어");
        } else if (str.equals("vi")) {
            this.f11701y.setText("Tiếng Việt");
        } else if (str.equals("kk")) {
            this.f11701y.setText("қазақ тілі");
        } else if (str.equals("it")) {
            this.f11701y.setText("Italiano");
        } else if (str.equals("el")) {
            this.f11701y.setText("Ελληνικά");
        } else if (str.equals("te")) {
            this.f11701y.setText("বతెలుగు");
        } else if (!str.equals("ur")) {
        } else {
            this.f11701y.setText("اردو");
        }
    }

    /* renamed from: b0 */
    public void m24761b0() {
        AlertDialog create = new AlertDialog.Builder(this).setTitle(getResources().getString(R$string.update_dialog_title)).setMessage(getResources().getString(R$string.min_update)).setPositiveButton(getResources().getString(R$string.update_dialog_ok), new DialogInterface$OnClickListenerC3657g()).setNegativeButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3656f()).create();
        create.show();
        create.getButton(-1).setTextColor(this.f11700x);
        create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
    }

    /* renamed from: c0 */
    public List<EZCountryCode> m24760c0() {
        try {
            return C3806p.m24086a(this);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: g0 */
    public void m24756g0() {
        C3877y c3877y = new C3877y();
        c3877y.m23894c(new C3654e());
        c3877y.m23895b(getApplicationContext());
    }

    /* renamed from: h0 */
    public void m24755h0() {
        if (this.f11702z == null) {
            this.f11702z = m24760c0();
        }
        C2600m.m27038i(this, new ArrayList(this.f11702z), new C3653d());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.caller_id /* 2131296455 */:
                startActivity(new Intent(this, CallerActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_backup /* 2131296713 */:
                Intent intent = new Intent();
                intent.setClass(this, BackupActivity.class);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_blockset /* 2131296719 */:
                Intent intent2 = new Intent();
                intent2.setClass(this, BlockSettingActivity.class);
                startActivity(intent2);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_check_update /* 2131296727 */:
                this.f11699w.setVisibility(0);
                m24756g0();
                return;
            case R$id.fl_complaint /* 2131296729 */:
                Intent intent3 = new Intent();
                intent3.setClass(this, ComplaintActivity.class);
                startActivity(intent3);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_feedback /* 2131296744 */:
                try {
                    Intent intent4 = new Intent("android.intent.action.SENDTO");
                    intent4.setData(Uri.parse("mailto:andreapps2015@gmail.com"));
                    intent4.putExtra("android.intent.extra.SUBJECT", "Showcaller-Feedback");
                    intent4.putExtra("android.intent.extra.TEXT", C3767h1.m24266V());
                    startActivity(intent4);
                } catch (Exception e) {
                    try {
                        Intent intent5 = new Intent("android.intent.action.SEND");
                        intent5.setType("message/rfc822");
                        intent5.putExtra("android.intent.extra.EMAIL", new String[]{"andreapps2015@gmail.com"});
                        intent5.putExtra("android.intent.extra.SUBJECT", "Showcaller-Feedback");
                        intent5.putExtra("android.intent.extra.TEXT", C3767h1.m24266V());
                        startActivity(Intent.createChooser(intent5, "E-mail"));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_generalsetting /* 2131296751 */:
                Intent intent6 = new Intent();
                intent6.setClass(this, Generalsettings.class);
                startActivity(intent6);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fl_nodisturbset /* 2131296762 */:
                Intent intent7 = new Intent();
                intent7.setClass(this, NoDisturbActivity.class);
                startActivity(intent7);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.ib_set_language /* 2131296872 */:
                startActivity(new Intent(getApplicationContext(), SwitchLanguageActivity.class));
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.show_tips /* 2131297636 */:
                Intent intent8 = new Intent();
                intent8.setClass(this, ShowTipActivityNew.class);
                startActivity(intent8);
                overridePendingTransition(R$anim.abc_grow_fade_in_from_bottom, R$anim.abc_slide_out_top);
                C3810q.m24071b().m24070c("show_tips");
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_common_setting);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f11700x = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        m24758e0();
        m24757f0();
        C3772i0.m24190a().f12015b.execute(new RunnableC3650a());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.f11699w.isShown()) {
                this.f11699w.setVisibility(8);
            }
            if (!C3767h1.f12006a) {
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return true;
            }
            C3767h1.f12006a = false;
            startActivity(new Intent(getApplicationContext(), MainActivity.class));
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            finish();
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
