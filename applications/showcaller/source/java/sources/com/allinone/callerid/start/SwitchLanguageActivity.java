package com.allinone.callerid.start;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/SwitchLanguageActivity.class */
public class SwitchLanguageActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f11865A;

    /* renamed from: B */
    private ImageView f11866B;

    /* renamed from: C */
    private ImageView f11867C;

    /* renamed from: D */
    private ImageView f11868D;

    /* renamed from: E */
    private ImageView f11869E;

    /* renamed from: F */
    private ImageView f11870F;

    /* renamed from: G */
    private ImageView f11871G;

    /* renamed from: H */
    private ImageView f11872H;

    /* renamed from: I */
    private ImageView f11873I;

    /* renamed from: J */
    private ImageView f11874J;

    /* renamed from: K */
    private ImageView f11875K;

    /* renamed from: L */
    private ImageView f11876L;

    /* renamed from: M */
    private ImageView f11877M;

    /* renamed from: N */
    private ImageView f11878N;

    /* renamed from: O */
    private ImageView f11879O;

    /* renamed from: P */
    private ImageView f11880P;

    /* renamed from: Q */
    private ImageView f11881Q;

    /* renamed from: R */
    private ImageView f11882R;

    /* renamed from: S */
    private ImageView f11883S;

    /* renamed from: u */
    private final String f11884u = "SwitchLanguageActivity";

    /* renamed from: v */
    private ImageView f11885v;

    /* renamed from: w */
    private ImageView f11886w;

    /* renamed from: x */
    private ImageView f11887x;

    /* renamed from: y */
    private ImageView f11888y;

    /* renamed from: z */
    private ImageView f11889z;

    /* renamed from: com.allinone.callerid.start.SwitchLanguageActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/SwitchLanguageActivity$a.class */
    class View$OnClickListenerC3708a implements View.OnClickListener {
        View$OnClickListenerC3708a() {
            SwitchLanguageActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SwitchLanguageActivity.this.startActivity(new Intent(SwitchLanguageActivity.this.getApplicationContext(), CommonSetting.class));
            SwitchLanguageActivity.this.finish();
            SwitchLanguageActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: X */
    private void m24673X() {
        String str = EZCallApplication.m26146c().f9914h;
        if (str.equals("en")) {
            this.f11887x.setVisibility(0);
        } else if (str.equals("en_GB")) {
            this.f11887x.setVisibility(0);
        } else if (str.equals("en_CA")) {
            this.f11887x.setVisibility(0);
        } else if (str.equals("hi")) {
            this.f11866B.setVisibility(0);
        } else if (str.equals("bn")) {
            this.f11867C.setVisibility(0);
        } else if (str.equals("fa")) {
            this.f11868D.setVisibility(0);
        } else if (str.equals("ru")) {
            this.f11889z.setVisibility(0);
        } else if (str.equals("tr")) {
            this.f11865A.setVisibility(0);
        } else if (str.equals("in")) {
            this.f11888y.setVisibility(0);
        } else if (str.equals("ms")) {
            this.f11869E.setVisibility(0);
        } else if (str.equals("zh")) {
            this.f11870F.setVisibility(0);
        } else if (str.equals("ar")) {
            this.f11871G.setVisibility(0);
        } else if (str.equals("pt")) {
            this.f11873I.setVisibility(0);
        } else if (str.equals("th")) {
            this.f11874J.setVisibility(0);
        } else if (str.equals("es")) {
            this.f11872H.setVisibility(0);
        } else if (str.equals("iw")) {
            this.f11875K.setVisibility(0);
        } else if (str.equals("de")) {
            this.f11876L.setVisibility(0);
        } else if (str.equals("zh-TW")) {
            this.f11877M.setVisibility(0);
        } else if (str.equals("fr")) {
            this.f11886w.setVisibility(0);
        } else if (str.equals("ko")) {
            this.f11885v.setVisibility(0);
        } else if (str.equals("vi")) {
            this.f11878N.setVisibility(0);
        } else if (str.equals("kk")) {
            this.f11879O.setVisibility(0);
        } else if (str.equals("it")) {
            this.f11880P.setVisibility(0);
        } else if (str.equals("el")) {
            this.f11881Q.setVisibility(0);
        } else if (str.equals("te")) {
            this.f11882R.setVisibility(0);
        } else if (!str.equals("ur")) {
        } else {
            this.f11883S.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.ib_alabo /* 2131296857 */:
                C3767h1.f12006a = true;
                m26153W("ar");
                EZCallApplication.m26146c().f9914h = "ar";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_bosi /* 2131296858 */:
                C3767h1.f12006a = true;
                m26153W("fa");
                EZCallApplication.m26146c().f9914h = "fa";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_deyu /* 2131296859 */:
                C3767h1.f12006a = true;
                m26153W("de");
                EZCallApplication.m26146c().f9914h = "de";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_eluosi /* 2131296860 */:
                C3767h1.f12006a = true;
                m26153W("ru");
                EZCallApplication.m26146c().f9914h = "ru";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_english /* 2131296861 */:
                C3767h1.f12006a = true;
                m26153W("en");
                EZCallApplication.m26146c().f9914h = "en";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_fanzhong /* 2131296862 */:
                C3767h1.f12006a = true;
                m26153W("zh-TW");
                EZCallApplication.m26146c().f9914h = "zh-TW";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_fayu /* 2131296863 */:
                C3767h1.f12006a = true;
                m26153W("fr");
                EZCallApplication.m26146c().f9914h = "fr";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_filter /* 2131296864 */:
            case R$id.ib_offline /* 2131296870 */:
            case R$id.ib_set_language /* 2131296872 */:
            case R$id.ib_submit /* 2131296873 */:
            default:
                return;
            case R$id.ib_hanyu /* 2131296865 */:
                C3767h1.f12006a = true;
                m26153W("ko");
                EZCallApplication.m26146c().f9914h = "ko";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_hasake /* 2131296866 */:
                C3767h1.f12006a = true;
                m26153W("kk");
                EZCallApplication.m26146c().f9914h = "kk";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_jianzhong /* 2131296867 */:
                C3767h1.f12006a = true;
                m26153W("zh");
                EZCallApplication.m26146c().f9914h = "zh";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_malaixiya /* 2131296868 */:
                C3767h1.f12006a = true;
                m26153W("ms");
                EZCallApplication.m26146c().f9914h = "ms";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_mengjiala /* 2131296869 */:
                C3767h1.f12006a = true;
                m26153W("bn");
                EZCallApplication.m26146c().f9914h = "bn";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_putaoya /* 2131296871 */:
                C3767h1.f12006a = true;
                m26153W("pt");
                EZCallApplication.m26146c().f9914h = "pt";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_taiyu /* 2131296874 */:
                C3767h1.f12006a = true;
                m26153W("th");
                EZCallApplication.m26146c().f9914h = "th";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_te /* 2131296875 */:
                C3767h1.f12006a = true;
                m26153W("te");
                EZCallApplication.m26146c().f9914h = "te";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_tuerqi /* 2131296876 */:
                C3767h1.f12006a = true;
                m26153W("tr");
                EZCallApplication.m26146c().f9914h = "tr";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_wuerdu /* 2131296877 */:
                C3767h1.f12006a = true;
                m26153W("ur");
                EZCallApplication.m26146c().f9914h = "ur";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_xibanya /* 2131296878 */:
                C3767h1.f12006a = true;
                m26153W("es");
                EZCallApplication.m26146c().f9914h = "es";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_xibolaiyu /* 2131296879 */:
                C3767h1.f12006a = true;
                m26153W("iw");
                EZCallApplication.m26146c().f9914h = "iw";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_xila /* 2131296880 */:
                C3767h1.f12006a = true;
                m26153W("el");
                EZCallApplication.m26146c().f9914h = "el";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_yidali /* 2131296881 */:
                C3767h1.f12006a = true;
                m26153W("it");
                EZCallApplication.m26146c().f9914h = "it";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_yindu /* 2131296882 */:
                C3767h1.f12006a = true;
                m26153W("hi");
                EZCallApplication.m26146c().f9914h = "hi";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_yinni /* 2131296883 */:
                C3767h1.f12006a = true;
                m26153W("in");
                EZCallApplication.m26146c().f9914h = "in";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
            case R$id.ib_yuenan /* 2131296884 */:
                C3767h1.f12006a = true;
                m26153W("vi");
                EZCallApplication.m26146c().f9914h = "vi";
                startActivity(new Intent(getApplicationContext(), CommonSetting.class));
                finish();
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_set_language);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        Typeface m24359b = C3739f1.m24359b();
        ((TextView) findViewById(R$id.tv_title_language)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_en)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_mengjiala)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_malaixiya)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_yinni)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_yindu)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_jianzhong)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_fanzhong)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_alabo)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_xibanya)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_putaoya)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_taiyu)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_xibolaiyu)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_deyu)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_bosi)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_eluosi)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_fayu)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_hanyu)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_tuerqi)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_yuenan)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_hasake)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_yidali)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_xila)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_te)).setTypeface(m24359b);
        ImageView imageView = (ImageView) findViewById(R$id.header_left_about);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3708a());
        this.f11887x = (ImageView) findViewById(R$id.iv_english);
        this.f11888y = (ImageView) findViewById(R$id.iv_yinni);
        this.f11889z = (ImageView) findViewById(R$id.iv_eluosi);
        this.f11865A = (ImageView) findViewById(R$id.iv_tuerqi);
        this.f11866B = (ImageView) findViewById(R$id.iv_yindu);
        this.f11867C = (ImageView) findViewById(R$id.iv_mengjiala);
        this.f11868D = (ImageView) findViewById(R$id.iv_bosi);
        this.f11869E = (ImageView) findViewById(R$id.iv_malaixiya);
        this.f11870F = (ImageView) findViewById(R$id.iv_jianzhong);
        this.f11877M = (ImageView) findViewById(R$id.iv_fanzhong);
        this.f11871G = (ImageView) findViewById(R$id.iv_alabo);
        this.f11872H = (ImageView) findViewById(R$id.iv_xibanya);
        this.f11873I = (ImageView) findViewById(R$id.iv_putaoya);
        this.f11874J = (ImageView) findViewById(R$id.iv_taiyu);
        this.f11875K = (ImageView) findViewById(R$id.iv_xibolaiyu);
        this.f11876L = (ImageView) findViewById(R$id.iv_deyu);
        this.f11886w = (ImageView) findViewById(R$id.iv_fayu);
        this.f11885v = (ImageView) findViewById(R$id.iv_hanyu);
        this.f11878N = (ImageView) findViewById(R$id.iv_yuenan);
        this.f11879O = (ImageView) findViewById(R$id.iv_hasake);
        this.f11880P = (ImageView) findViewById(R$id.iv_yidali);
        this.f11881Q = (ImageView) findViewById(R$id.iv_xila);
        this.f11882R = (ImageView) findViewById(R$id.iv_te);
        ((FrameLayout) findViewById(R$id.ib_english)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_yinni)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_eluosi)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_tuerqi)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_yindu)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_mengjiala)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_bosi)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_malaixiya)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_jianzhong)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_fanzhong)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_alabo)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_xibanya)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_putaoya)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_taiyu)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_xibolaiyu)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_deyu)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_fayu)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_hanyu)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_yuenan)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_hasake)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_yidali)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_xila)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.ib_te)).setOnClickListener(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.ib_wuerdu);
        this.f11883S = (ImageView) findViewById(R$id.iv_wuerdu);
        frameLayout.setOnClickListener(this);
        ((TextView) findViewById(R$id.tv_wuerdu)).setTypeface(m24359b);
        m24673X();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            startActivity(new Intent(getApplicationContext(), CommonSetting.class));
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
