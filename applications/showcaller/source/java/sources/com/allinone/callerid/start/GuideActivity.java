package com.allinone.callerid.start;

import android.app.role.RoleManager;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0146a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.CirclePageIndicator;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.CustomViewPager;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZCountryCode;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.permission.OverlayPerActivity;
import com.allinone.callerid.mvc.controller.permission.RequestPermissionActivity;
import com.allinone.callerid.p136b.C2210n;
import com.allinone.callerid.p136b.C2248x;
import com.allinone.callerid.p160g.C2723f;
import com.allinone.callerid.p160g.C2724g;
import com.allinone.callerid.p160g.C2725h;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3848s;
import com.allinone.callerid.util.C3868w;
import com.allinone.callerid.util.p204j1.C3776a;
import com.hzy.lib7z.ErrorCode;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/GuideActivity.class */
public class GuideActivity extends BaseActivity {

    /* renamed from: A */
    private C3868w f11742A;

    /* renamed from: B */
    private DialogInterfaceC0146a f11743B;

    /* renamed from: u */
    private final String f11744u = "GuideActivity";

    /* renamed from: v */
    private TextView f11745v;

    /* renamed from: w */
    private Typeface f11746w;

    /* renamed from: x */
    private boolean f11747x;

    /* renamed from: y */
    private List<EZCountryCode> f11748y;

    /* renamed from: z */
    private EZCountryCode f11749z;

    /* renamed from: com.allinone.callerid.start.GuideActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/GuideActivity$a.class */
    public class View$OnClickListenerC3671a implements View.OnClickListener {
        View$OnClickListenerC3671a() {
            GuideActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C3767h1.m24296B(EZCallApplication.m26146c())) {
                C3810q.m24071b().m24070c("get_start_click");
            }
            if (C3776a.m24160e(GuideActivity.this.getApplicationContext()) && C3776a.m24161d(GuideActivity.this.getApplicationContext())) {
                C3810q.m24071b().m24070c("first_enter_has_per");
                Intent intent = new Intent();
                intent.setClass(GuideActivity.this, PrivacyActivity.class);
                GuideActivity.this.startActivity(intent);
                GuideActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                GuideActivity.this.finish();
                return;
            }
            int i = Build.VERSION.SDK_INT;
            if (i < 23) {
                GuideActivity.this.m24723o0(false);
            } else if (C3776a.m24156i(GuideActivity.this.getApplicationContext())) {
                GuideActivity.this.m24723o0(false);
            } else {
                try {
                    if (i >= 29) {
                        RoleManager roleManager = (RoleManager) GuideActivity.this.getSystemService(RoleManager.class);
                        if (roleManager != null && roleManager.isRoleAvailable("android.app.role.DIALER")) {
                            if (roleManager.isRoleHeld("android.app.role.DIALER")) {
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("default_dialer", "This app is the default dialer app");
                                }
                                GuideActivity.this.m24723o0(false);
                            } else {
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("default_dialer", "This app isn't the default dialer app");
                                }
                                GuideActivity.this.startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.DIALER"), ErrorCode.ERROR_CODE_PATH_ERROR);
                            }
                        }
                    } else {
                        Intent intent2 = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
                        intent2.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", GuideActivity.this.getPackageName());
                        GuideActivity.this.startActivityForResult(intent2, ErrorCode.ERROR_CODE_PATH_ERROR);
                    }
                    C3810q.m24071b().m24070c("first_request_default_dialer");
                } catch (Exception e) {
                    GuideActivity.this.m24723o0(false);
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.GuideActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/GuideActivity$b.class */
    public class View$OnClickListenerC3672b implements View.OnClickListener {
        View$OnClickListenerC3672b() {
            GuideActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GuideActivity.this.m24722p0();
            C3810q.m24071b().m24070c("seleck_language_click");
        }
    }

    /* renamed from: com.allinone.callerid.start.GuideActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/GuideActivity$c.class */
    public class C3673c implements AdapterView.OnItemClickListener {

        /* renamed from: d */
        final /* synthetic */ String[] f11752d;

        C3673c(String[] strArr) {
            GuideActivity.this = r4;
            this.f11752d = strArr;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            String m24726l0 = GuideActivity.this.m24726l0(this.f11752d[i]);
            C3767h1.f12006a = true;
            EZCallApplication.m26146c().f9914h = m24726l0;
            GuideActivity.this.m26153W(m24726l0);
            if (GuideActivity.this.f11743B != null) {
                GuideActivity.this.f11743B.dismiss();
            }
            GuideActivity.this.finish();
            GuideActivity.this.startActivity(new Intent(GuideActivity.this, GuideActivity.class));
        }
    }

    /* renamed from: com.allinone.callerid.start.GuideActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/GuideActivity$d.class */
    class RunnableC3674d implements Runnable {
        RunnableC3674d() {
            GuideActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GuideActivity.this.f11747x) {
                GuideActivity.this.f11747x = false;
                GuideActivity guideActivity = GuideActivity.this;
                guideActivity.f11748y = guideActivity.m24727k0();
                if (C3767h1.m24296B(GuideActivity.this.getApplicationContext())) {
                    C3810q.m24071b().m24070c("first_enter_laucher_oncreate_online");
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("first_enter", "first_enter_laucher");
                    }
                    if (C3767h1.m24256c0(GuideActivity.this.getApplicationContext())) {
                        C3810q.m24071b().m24070c("have_simcard");
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("country", "have_sim");
                        }
                    } else {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("country", "no_sim");
                        }
                        C3810q.m24071b().m24070c("no_simcard");
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("first_enter", "first_enter_guide1");
                    }
                    String country_name = C3806p.m24083d(GuideActivity.this.getApplicationContext()).getCountry_name();
                    if (country_name == null || "".equals(country_name)) {
                        int m24728j0 = GuideActivity.this.m24728j0();
                        if (m24728j0 == 0) {
                            C3810q.m24071b().m24070c("not_get_countrycode");
                        } else if (m24728j0 == 1) {
                            C3810q.m24071b().m24070c("get_matched_countrycode");
                        } else if (m24728j0 == 2) {
                            C3810q.m24071b().m24070c("get_unmatched_countrycode");
                        }
                        if (GuideActivity.this.f11749z != null) {
                            C3806p.m24079h(GuideActivity.this.getApplication(), GuideActivity.this.f11749z);
                        }
                    }
                }
            }
            if (C3767h1.m24296B(GuideActivity.this.getApplicationContext())) {
                C3711a1.m24514m1(true);
                C3711a1.m24546e1(System.currentTimeMillis());
                C3711a1.m24571X1(System.currentTimeMillis() + 86400000);
                C3711a1.m24625J1(System.currentTimeMillis());
            } else {
                C3711a1.m24514m1(false);
            }
            if (C3711a1.m24627J()) {
                C3711a1.m24562a1(System.currentTimeMillis());
                C3711a1.m24510n1(false);
            }
            if (!C3767h1.m24252e0(GuideActivity.this.getApplicationContext())) {
                C3806p.m24083d(GuideActivity.this.getApplicationContext()).getCountry_code();
            }
            if (C3767h1.m24252e0(GuideActivity.this.getApplicationContext())) {
                return;
            }
            C3711a1.m24471x0();
        }
    }

    /* renamed from: com.allinone.callerid.start.GuideActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/GuideActivity$e.class */
    public class C3675e implements C3868w.AbstractC3870b {
        C3675e() {
            GuideActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.C3868w.AbstractC3870b
        /* renamed from: a */
        public void mo23905a() {
            if (C3767h1.m24296B(EZCallApplication.m26146c())) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("first_enter", "HomeLongPressed");
                }
                C3810q.m24071b().m24070c("homelongpressed");
            }
        }

        @Override // com.allinone.callerid.util.C3868w.AbstractC3870b
        /* renamed from: b */
        public void mo23904b() {
            if (C3767h1.m24296B(EZCallApplication.m26146c())) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("first_enter", "keycode_home");
                }
                C3810q.m24071b().m24070c("guide1_key_home");
            }
        }
    }

    /* renamed from: i0 */
    private void m24729i0() {
        C3848s.m23967a();
        Intent intent = new Intent();
        if (C3776a.m24157h()) {
            intent.setClass(this, MainActivity.class);
        } else {
            intent.setClass(this, OverlayPerActivity.class);
        }
        startActivity(intent);
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        finish();
    }

    /* renamed from: j0 */
    public int m24728j0() {
        EZCountryCode next;
        String str;
        EZCountryCode next2;
        String str2;
        EZCountryCode next3;
        String str3;
        try {
            String m24085b = C3806p.m24085b(EZCallApplication.m26146c());
            if (C3718c0.f11914a) {
                C3718c0.m24436a("country", "countryISO=" + m24085b);
            }
            if (m24085b != null && !m24085b.equals("")) {
                Iterator<EZCountryCode> it = this.f11748y.iterator();
                do {
                    if (!it.hasNext()) {
                        return 2;
                    }
                    next3 = it.next();
                    str3 = next3.getIso_code().split("/")[0];
                } while (!m24085b.equals(str3));
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("country", "countryISO:" + m24085b + "    tempISO:" + str3);
                }
                this.f11749z = next3;
                return 1;
            }
            String m24290E = C3767h1.m24290E();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("country", "country=" + m24290E);
            }
            if (m24290E != null && !m24290E.equals("")) {
                Iterator<EZCountryCode> it2 = this.f11748y.iterator();
                do {
                    if (!it2.hasNext()) {
                        return 2;
                    }
                    next2 = it2.next();
                    str2 = next2.getIso_code().split("/")[0];
                } while (!m24290E.equals(str2));
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("country", "countryISO:" + m24290E + "    tempISO:" + str2);
                }
                this.f11749z = next2;
                return 1;
            }
            String m24278K = C3767h1.m24278K(getApplicationContext());
            if (m24278K != null && !m24278K.equals("")) {
                Iterator<EZCountryCode> it3 = this.f11748y.iterator();
                do {
                    if (!it3.hasNext()) {
                        return 2;
                    }
                    next = it3.next();
                    str = next.getIso_code().split("/")[0];
                } while (!m24278K.equals(str));
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("country", "countryISO:" + m24290E + "    tempISO:" + str);
                }
                this.f11749z = next;
                return 1;
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 2;
        }
    }

    /* renamed from: k0 */
    public List<EZCountryCode> m24727k0() {
        try {
            return C3806p.m24086a(this);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: l0 */
    public String m24726l0(String str) {
        return "English".equals(str) ? "en" : "हिन्दी".equals(str) ? "hi" : "বাংলা ভাষা".equals(str) ? "bn" : "فارسی".equals(str) ? "fa" : "русский".equals(str) ? "ru" : "Türk".equals(str) ? "tr" : "Indonesia".equals(str) ? "in" : "Melayu".equals(str) ? "ms" : "简体中文".equals(str) ? "zh" : "العربية".equals(str) ? "ar" : "Espanol".equals(str) ? "es" : "Português".equals(str) ? "pt" : "ภาษาไทย".equals(str) ? "th" : "עִבְרִית".equals(str) ? "iw" : "Deutsch".equals(str) ? "de" : "繁体中文".equals(str) ? "zh-TW" : "Français".equals(str) ? "fr" : "한국어".equals(str) ? "ko" : "Tiếng Việt".equals(str) ? "vi" : "қазақ тілі".equals(str) ? "kk" : "Italiano".equals(str) ? "it" : "Ελληνικά".equals(str) ? "el" : "বతెలుగు".equals(str) ? "te" : "اردو".equals(str) ? "ur" : null;
    }

    /* renamed from: m0 */
    private void m24725m0() {
        try {
            TextView textView = (TextView) findViewById(R$id.tv_server_pre);
            TextView textView2 = (TextView) findViewById(R$id.tv_privacy);
            TextView textView3 = (TextView) findViewById(R$id.tv_service);
            TextView textView4 = (TextView) findViewById(R$id.tv_and);
            TextView textView5 = (TextView) findViewById(R$id.tv_btn);
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.rl_choose_lang);
            this.f11745v = (TextView) findViewById(R$id.tv_choose_lang);
            FrameLayout frameLayout = (FrameLayout) findViewById(R$id.flayout_btn);
            CustomViewPager customViewPager = (CustomViewPager) findViewById(R$id.vp_guide);
            CirclePageIndicator circlePageIndicator = (CirclePageIndicator) findViewById(R$id.vp_indicator);
            C2210n c2210n = new C2210n(m32877A());
            c2210n.m27854y(new C2723f(), "");
            c2210n.m27854y(new C2725h(), "");
            c2210n.m27854y(new C2724g(), "");
            customViewPager.setAdapter(c2210n);
            float f = getResources().getDisplayMetrics().density;
            circlePageIndicator.setRadius(4.0f * f);
            circlePageIndicator.setPageColor(getResources().getColor(R$color.unselect));
            circlePageIndicator.setFillColor(getResources().getColor(2131099706));
            circlePageIndicator.setStrokeColor(getResources().getColor(R$color.unselect));
            circlePageIndicator.setPaddind(f * 10.0f);
            circlePageIndicator.setViewPager(customViewPager);
            textView.setTypeface(this.f11746w);
            textView2.setTypeface(this.f11746w);
            textView3.setTypeface(this.f11746w);
            textView4.setTypeface(this.f11746w);
            textView5.setTypeface(this.f11746w);
            this.f11745v.setTypeface(this.f11746w);
            textView2.setMovementMethod(LinkMovementMethod.getInstance());
            textView3.setMovementMethod(LinkMovementMethod.getInstance());
            frameLayout.setOnClickListener(new View$OnClickListenerC3671a());
            relativeLayout.setOnClickListener(new View$OnClickListenerC3672b());
            m24721q0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: n0 */
    private void m24724n0() {
        C3868w c3868w = new C3868w(this);
        this.f11742A = c3868w;
        c3868w.m23908b(new C3675e());
        this.f11742A.m23907c();
    }

    /* renamed from: o0 */
    public void m24723o0(boolean z) {
        Intent intent = new Intent();
        intent.setClass(this, RequestPermissionActivity.class);
        intent.putExtra("isShowDefault", z);
        startActivity(intent);
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        finish();
    }

    /* renamed from: p0 */
    public void m24722p0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.start_choose_lang_view, (ViewGroup) null);
        ListView listView = (ListView) inflate.findViewById(R$id.start_choose_lang_view);
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = (int) (getWindowManager().getDefaultDisplay().getHeight() * 0.75d);
        listView.setLayoutParams(layoutParams);
        String[] strArr = {"English", "Deutsch", "Espanol", "Português", "Indonesia", "Melayu", "हिन्दी", "বతెలుగు", "עִבְרִית", "ภาษาไทย", "العربية", "русский", "Français", "Türk", "한국어", "বাংলা ভাষা", "فارسی", "Tiếng Việt", "қазақ тілі", "Italiano", "Ελληνικά", "اردو", "简体中文", "繁体中文"};
        listView.setAdapter((ListAdapter) new C2248x(this, strArr, listView));
        listView.setOnItemClickListener(new C3673c(strArr));
        this.f11743B = new DialogInterfaceC0146a.C0147a(this).m35567h(getResources().getString(R$string.choose_lang)).m35557r(inflate).m35571d(true).m35556s();
    }

    /* renamed from: q0 */
    private void m24721q0() {
        String str = EZCallApplication.m26146c().f9914h;
        if (str.equals("en")) {
            this.f11745v.setText("English");
        } else if (str.equals("en_GB")) {
            this.f11745v.setText("English");
        } else if (str.equals("en_CA")) {
            this.f11745v.setText("English");
        } else if (str.equals("hi")) {
            this.f11745v.setText("हिन्दी");
        } else if (str.equals("bn")) {
            this.f11745v.setText("বাংলা ভাষা");
        } else if (str.equals("fa")) {
            this.f11745v.setText("فارسی");
        } else if (str.equals("ru")) {
            this.f11745v.setText("русский");
        } else if (str.equals("tr")) {
            this.f11745v.setText("Türk");
        } else if (str.equals("in")) {
            this.f11745v.setText("Indonesia");
        } else if (str.equals("ms")) {
            this.f11745v.setText("Melayu");
        } else if (str.equals("zh")) {
            this.f11745v.setText("简体中文");
        } else if (str.equals("ar")) {
            this.f11745v.setText("العربية");
        } else if (str.equals("es")) {
            this.f11745v.setText("Espanol");
        } else if (str.equals("pt")) {
            this.f11745v.setText("Português");
        } else if (str.equals("th")) {
            this.f11745v.setText("ภาษาไทย");
        } else if (str.equals("iw")) {
            this.f11745v.setText("עִבְרִית");
        } else if (str.equals("de")) {
            this.f11745v.setText("Deutsch");
        } else if (str.equals("zh-TW")) {
            this.f11745v.setText("繁体中文");
        } else if (str.equals("fr")) {
            this.f11745v.setText("Français");
        } else if (str.equals("ko")) {
            this.f11745v.setText("한국어");
        } else if (str.equals("vi")) {
            this.f11745v.setText("Tiếng Việt");
        } else if (str.equals("kk")) {
            this.f11745v.setText("қазақ тілі");
        } else if (str.equals("it")) {
            this.f11745v.setText("Italiano");
        } else if (str.equals("el")) {
            this.f11745v.setText("Ελληνικά");
        } else if (str.equals("te")) {
            this.f11745v.setText("বతెలుగు");
        } else if (!str.equals("ur")) {
        } else {
            this.f11745v.setText("اردو");
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 999) {
            if (!C3776a.m24156i(getApplicationContext())) {
                m24723o0(false);
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("default_dialer", "notEnable");
                return;
            }
            if (!C3776a.m24160e(getApplicationContext()) || !C3776a.m24161d(getApplicationContext())) {
                m24723o0(false);
            } else {
                m24729i0();
            }
            C3810q.m24071b().m24070c("first_request_default_dialer_enabled");
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("default_dialer", "isEnable");
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
            setContentView(R$layout.layout_start);
            this.f11746w = C3739f1.m24359b();
            m24725m0();
            this.f11747x = true;
            m24724n0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            C3868w c3868w = this.f11742A;
            if (c3868w == null) {
                return;
            }
            c3868w.m23906d();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (!C3767h1.m24296B(EZCallApplication.m26146c())) {
                return true;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("first_enter", "keycode_back");
            }
            C3810q.m24071b().m24070c("guide1_key_back");
            if (!C3776a.m24160e(getApplicationContext()) || !C3776a.m24161d(getApplicationContext())) {
                m24723o0(true);
                return true;
            }
            Intent intent = new Intent();
            intent.setClass(this, MainActivity.class);
            startActivity(intent);
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
        if (this.f11747x) {
            C3767h1.m24285G0(this);
        }
        C3772i0.m24190a().f12015b.execute(new RunnableC3674d());
    }
}
