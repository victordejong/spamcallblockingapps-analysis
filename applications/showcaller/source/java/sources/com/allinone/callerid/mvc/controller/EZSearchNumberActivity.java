package com.allinone.callerid.mvc.controller;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.dialog.C2600m;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZCountryCode;
import com.allinone.callerid.p136b.C2211o;
import com.allinone.callerid.p136b.p138b0.C2159a;
import com.allinone.callerid.p136b.p138b0.C2163b;
import com.allinone.callerid.p162i.p163a.AbstractC2773b;
import com.allinone.callerid.p162i.p163a.p167d0.AbstractC2783a;
import com.allinone.callerid.p162i.p163a.p167d0.C2784b;
import com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a;
import com.allinone.callerid.p162i.p163a.p174i.C2837b;
import com.allinone.callerid.p162i.p163a.p174i.p178l.AbstractC2865a;
import com.allinone.callerid.p162i.p163a.p174i.p178l.C2866b;
import com.allinone.callerid.p162i.p163a.p194x.AbstractC3003b;
import com.allinone.callerid.p162i.p163a.p194x.AbstractC3004c;
import com.allinone.callerid.p162i.p163a.p194x.AbstractC3005d;
import com.allinone.callerid.p162i.p163a.p194x.AbstractC3006e;
import com.allinone.callerid.p162i.p163a.p194x.C2996a;
import com.allinone.callerid.p162i.p163a.p195y.AbstractC3007a;
import com.allinone.callerid.p162i.p163a.p195y.C3008b;
import com.allinone.callerid.p200l.p201a.AbstractC3051g;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3801m0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity.class */
public class EZSearchNumberActivity extends BaseActivity {

    /* renamed from: B */
    C2163b f10055B;

    /* renamed from: C */
    public List<EZCountryCode> f10056C;

    /* renamed from: D */
    public LinearLayout f10057D;

    /* renamed from: E */
    public FrameLayout f10058E;

    /* renamed from: F */
    public TextView f10059F;

    /* renamed from: G */
    private ImageView f10060G;

    /* renamed from: I */
    private String f10062I;

    /* renamed from: J */
    public TextView f10063J;

    /* renamed from: K */
    private ListView f10064K;

    /* renamed from: L */
    private List<CallLogBean> f10065L;

    /* renamed from: M */
    private TextView f10066M;

    /* renamed from: N */
    private C2159a f10067N;

    /* renamed from: O */
    private boolean f10068O;

    /* renamed from: Q */
    private ViewStub f10070Q;

    /* renamed from: R */
    private ViewStub f10071R;

    /* renamed from: S */
    private ListView f10072S;

    /* renamed from: T */
    private C2211o f10073T;

    /* renamed from: X */
    private ArrayList<CallLogBean> f10077X;

    /* renamed from: b0 */
    private FrameLayout f10081b0;

    /* renamed from: e0 */
    private ViewStub f10084e0;

    /* renamed from: f0 */
    private ViewStub f10085f0;

    /* renamed from: g0 */
    private ImageView f10086g0;

    /* renamed from: h0 */
    private Typeface f10087h0;

    /* renamed from: i0 */
    private ImageView f10088i0;

    /* renamed from: j0 */
    private TextWatcher f10089j0;

    /* renamed from: v */
    public BaseEditText f10093v;

    /* renamed from: w */
    public ImageView f10094w;

    /* renamed from: x */
    private ProgressBar f10095x;

    /* renamed from: y */
    public ListView f10096y;

    /* renamed from: u */
    private final String f10092u = "EZSearchNumberActivity";

    /* renamed from: z */
    public List<EZSearchResult> f10097z = new ArrayList();

    /* renamed from: A */
    public String f10054A = "";

    /* renamed from: H */
    private String f10061H = "";

    /* renamed from: P */
    private boolean f10069P = true;

    /* renamed from: U */
    private ArrayList<CallLogBean> f10074U = new ArrayList<>();

    /* renamed from: V */
    private ArrayList<CallLogBean> f10075V = new ArrayList<>();

    /* renamed from: W */
    private HashMap<String, Integer> f10076W = new HashMap<>();

    /* renamed from: Y */
    private List<CallLogBean> f10078Y = new ArrayList();

    /* renamed from: Z */
    private List<String> f10079Z = new ArrayList();

    /* renamed from: a0 */
    private List<CallLogBean> f10080a0 = new ArrayList();

    /* renamed from: c0 */
    private boolean f10082c0 = false;

    /* renamed from: d0 */
    private int f10083d0 = 0;

    /* renamed from: k0 */
    private Handler f10090k0 = new Handler();

    /* renamed from: l0 */
    private Runnable f10091l0 = new RunnableC3118l();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$a.class */
    public class RunnableC3102a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a.class */
        class C3103a implements C2159a.AbstractC2162c {
            C3103a() {
                RunnableC3102a.this = r4;
            }

            @Override // com.allinone.callerid.p136b.p138b0.C2159a.AbstractC2162c
            /* renamed from: a */
            public void mo25871a(String str) {
                try {
                    EZSearchNumberActivity.this.f10069P = false;
                    EZSearchNumberActivity.this.f10093v.setText(str);
                    BaseEditText baseEditText = EZSearchNumberActivity.this.f10093v;
                    baseEditText.setSelection(baseEditText.getText().length());
                    EZSearchNumberActivity.this.f10064K.setVisibility(8);
                    EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                    EZSearchNumberActivity.this.m25886s1();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        RunnableC3102a() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            EZSearchNumberActivity.this.f10087h0 = C3739f1.m24359b();
            EZSearchNumberActivity eZSearchNumberActivity = EZSearchNumberActivity.this;
            eZSearchNumberActivity.f10060G = (ImageView) eZSearchNumberActivity.findViewById(R$id.back_nav);
            if (C3767h1.m24250f0(EZSearchNumberActivity.this.getApplicationContext()).booleanValue()) {
                EZSearchNumberActivity.this.f10060G.setImageResource(R$drawable.nav_back_oppo);
            }
            EZSearchNumberActivity.this.f10065L = new ArrayList();
            EZSearchNumberActivity eZSearchNumberActivity2 = EZSearchNumberActivity.this;
            eZSearchNumberActivity2.f10093v = (BaseEditText) eZSearchNumberActivity2.findViewById(R$id.input_number);
            EZSearchNumberActivity eZSearchNumberActivity3 = EZSearchNumberActivity.this;
            eZSearchNumberActivity3.f10088i0 = (ImageView) eZSearchNumberActivity3.findViewById(R$id.iv_clear_text);
            EZSearchNumberActivity eZSearchNumberActivity4 = EZSearchNumberActivity.this;
            eZSearchNumberActivity4.f10093v.setTypeface(eZSearchNumberActivity4.f10087h0);
            EZSearchNumberActivity eZSearchNumberActivity5 = EZSearchNumberActivity.this;
            eZSearchNumberActivity5.f10094w = (ImageView) eZSearchNumberActivity5.findViewById(R$id.show_switch_country);
            EZSearchNumberActivity eZSearchNumberActivity6 = EZSearchNumberActivity.this;
            eZSearchNumberActivity6.f10086g0 = (ImageView) eZSearchNumberActivity6.findViewById(R$id.btn_speak_search);
            EZSearchNumberActivity eZSearchNumberActivity7 = EZSearchNumberActivity.this;
            eZSearchNumberActivity7.f10095x = (ProgressBar) eZSearchNumberActivity7.findViewById(R$id.progress_search);
            EZSearchNumberActivity eZSearchNumberActivity8 = EZSearchNumberActivity.this;
            eZSearchNumberActivity8.f10096y = (ListView) eZSearchNumberActivity8.findViewById(R$id.search_list_result);
            EZSearchNumberActivity eZSearchNumberActivity9 = EZSearchNumberActivity.this;
            eZSearchNumberActivity9.f10064K = (ListView) eZSearchNumberActivity9.findViewById(R$id.search_list_history);
            EZSearchNumberActivity eZSearchNumberActivity10 = EZSearchNumberActivity.this;
            eZSearchNumberActivity10.f10057D = (LinearLayout) eZSearchNumberActivity10.findViewById(R$id.switch_layout);
            EZSearchNumberActivity eZSearchNumberActivity11 = EZSearchNumberActivity.this;
            eZSearchNumberActivity11.f10058E = (FrameLayout) eZSearchNumberActivity11.findViewById(R$id.switch_country_layout);
            EZSearchNumberActivity eZSearchNumberActivity12 = EZSearchNumberActivity.this;
            eZSearchNumberActivity12.f10059F = (TextView) eZSearchNumberActivity12.findViewById(R$id.switch_location_text);
            EZSearchNumberActivity eZSearchNumberActivity13 = EZSearchNumberActivity.this;
            eZSearchNumberActivity13.f10066M = (TextView) eZSearchNumberActivity13.findViewById(R$id.tv_search_tip);
            EZSearchNumberActivity eZSearchNumberActivity14 = EZSearchNumberActivity.this;
            eZSearchNumberActivity14.f10070Q = (ViewStub) eZSearchNumberActivity14.findViewById(R$id.vs_nodata);
            EZSearchNumberActivity eZSearchNumberActivity15 = EZSearchNumberActivity.this;
            eZSearchNumberActivity15.f10071R = (ViewStub) eZSearchNumberActivity15.findViewById(R$id.vs_server_error);
            EZSearchNumberActivity eZSearchNumberActivity16 = EZSearchNumberActivity.this;
            eZSearchNumberActivity16.f10084e0 = (ViewStub) eZSearchNumberActivity16.findViewById(R$id.vs_no_offline_result);
            EZSearchNumberActivity eZSearchNumberActivity17 = EZSearchNumberActivity.this;
            eZSearchNumberActivity17.f10085f0 = (ViewStub) eZSearchNumberActivity17.findViewById(R$id.vs_timeout);
            EZSearchNumberActivity eZSearchNumberActivity18 = EZSearchNumberActivity.this;
            eZSearchNumberActivity18.f10059F.setTypeface(eZSearchNumberActivity18.f10087h0);
            EZSearchNumberActivity.this.f10066M.setTypeface(EZSearchNumberActivity.this.f10087h0);
            EZSearchNumberActivity eZSearchNumberActivity19 = EZSearchNumberActivity.this;
            eZSearchNumberActivity19.f10063J = (TextView) eZSearchNumberActivity19.findViewById(R$id.switch_iso_text);
            EZSearchNumberActivity eZSearchNumberActivity20 = EZSearchNumberActivity.this;
            eZSearchNumberActivity20.f10063J.setTypeface(eZSearchNumberActivity20.f10087h0);
            EZSearchNumberActivity eZSearchNumberActivity21 = EZSearchNumberActivity.this;
            eZSearchNumberActivity21.f10072S = (ListView) eZSearchNumberActivity21.findViewById(R$id.ob_listview_search);
            EZSearchNumberActivity eZSearchNumberActivity22 = EZSearchNumberActivity.this;
            eZSearchNumberActivity22.m25950H1(eZSearchNumberActivity22.f10075V, EZSearchNumberActivity.this.f10076W);
            EZSearchNumberActivity.this.f10067N = new C2159a(EZSearchNumberActivity.this);
            EZSearchNumberActivity.this.f10064K.setAdapter((ListAdapter) EZSearchNumberActivity.this.f10067N);
            EZSearchNumberActivity.this.f10067N.m27894c(new C3103a());
            EZSearchNumberActivity.this.m25876x1();
            EZSearchNumberActivity.this.m25888r1();
            EZSearchNumberActivity eZSearchNumberActivity23 = EZSearchNumberActivity.this;
            EZSearchNumberActivity eZSearchNumberActivity24 = EZSearchNumberActivity.this;
            eZSearchNumberActivity23.f10055B = new C2163b(eZSearchNumberActivity24, eZSearchNumberActivity24.f10097z);
            EZSearchNumberActivity eZSearchNumberActivity25 = EZSearchNumberActivity.this;
            eZSearchNumberActivity25.f10096y.setAdapter((ListAdapter) eZSearchNumberActivity25.f10055B);
            EZSearchNumberActivity.this.m25956E1();
            EZSearchNumberActivity.this.m25878w1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$b.class */
    public class View$OnClickListenerC3104b implements View.OnClickListener {

        /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$b$a.class */
        class C3105a implements AbstractC3003b {
            C3105a() {
                View$OnClickListenerC3104b.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p194x.AbstractC3003b
            /* renamed from: a */
            public void mo25870a() {
                EZSearchNumberActivity.this.m25884t1();
                EZSearchNumberActivity.this.m25959C1();
            }
        }

        View$OnClickListenerC3104b() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2996a.m26290a(new C3105a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$c.class */
    public class C3106c implements AbstractC3005d {
        C3106c() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p194x.AbstractC3005d
        /* renamed from: a */
        public void mo25865a(List<CallLogBean> list) {
            if (list != null) {
                EZSearchNumberActivity.this.f10065L = list;
            }
            if (EZSearchNumberActivity.this.f10067N != null) {
                EZSearchNumberActivity.this.f10067N.m27895b(EZSearchNumberActivity.this.f10065L);
                EZSearchNumberActivity.this.f10067N.notifyDataSetChanged();
            } else {
                EZSearchNumberActivity.this.f10067N = new C2159a(EZSearchNumberActivity.this);
                EZSearchNumberActivity.this.f10064K.setAdapter((ListAdapter) EZSearchNumberActivity.this.f10067N);
            }
            if (EZSearchNumberActivity.this.f10065L == null || EZSearchNumberActivity.this.f10065L.size() < 1 || EZSearchNumberActivity.this.f10075V.size() != 0) {
                EZSearchNumberActivity.this.f10066M.setVisibility(0);
                EZSearchNumberActivity.this.f10070Q.setVisibility(8);
                EZSearchNumberActivity.this.f10071R.setVisibility(8);
                EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                EZSearchNumberActivity.this.f10085f0.setVisibility(8);
                EZSearchNumberActivity.this.f10064K.setVisibility(8);
                EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                return;
            }
            EZSearchNumberActivity.this.f10066M.setVisibility(8);
            EZSearchNumberActivity.this.f10070Q.setVisibility(8);
            EZSearchNumberActivity.this.f10071R.setVisibility(8);
            EZSearchNumberActivity.this.f10084e0.setVisibility(8);
            EZSearchNumberActivity.this.f10085f0.setVisibility(8);
            EZSearchNumberActivity.this.f10064K.setVisibility(0);
            EZSearchNumberActivity.this.f10081b0.setVisibility(0);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$d.class */
    public class RunnableC3107d implements Runnable {
        RunnableC3107d() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            EZSearchNumberActivity.this.setResult(777);
            EZSearchNumberActivity.this.finish();
            EZSearchNumberActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$e.class */
    public class RunnableC3108e implements Runnable {
        RunnableC3108e() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((InputMethodManager) EZSearchNumberActivity.this.f10093v.getContext().getSystemService("input_method")).showSoftInput(EZSearchNumberActivity.this.f10093v, 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$f.class */
    public class C3109f implements AbstractC3006e {

        /* renamed from: a */
        final /* synthetic */ String f10105a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$f$a.class */
        public class C3110a implements AbstractC2865a {

            /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$f$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$f$a$a.class */
            class C3111a implements AbstractC2836a {
                C3111a() {
                    C3110a.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a
                /* renamed from: a */
                public void mo23879a(String str) {
                }
            }

            C3110a() {
                C3109f.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p174i.p178l.AbstractC2865a
            /* renamed from: a */
            public void mo25868a(JSONArray jSONArray) {
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
                C2837b.m26522a(EZSearchNumberActivity.this.getApplicationContext(), jSONArray, new C3111a());
            }
        }

        C3109f(String str) {
            EZSearchNumberActivity.this = r4;
            this.f10105a = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p194x.AbstractC3006e
        /* renamed from: a */
        public void mo25869a(EZSearchResult eZSearchResult, boolean z) {
            EZSearchNumberActivity.this.f10095x.setVisibility(8);
            List<EZSearchResult> list = EZSearchNumberActivity.this.f10097z;
            if (list != null && list.size() > 0) {
                EZSearchNumberActivity.this.f10097z.clear();
                EZSearchNumberActivity eZSearchNumberActivity = EZSearchNumberActivity.this;
                eZSearchNumberActivity.f10055B.m27892b(eZSearchNumberActivity.f10097z);
                EZSearchNumberActivity.this.f10055B.notifyDataSetChanged();
            }
            if (eZSearchResult == null) {
                EZSearchNumberActivity.this.f10064K.setVisibility(8);
                EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                EZSearchNumberActivity.this.f10096y.setVisibility(8);
                EZSearchNumberActivity.this.f10066M.setVisibility(8);
                EZSearchNumberActivity.this.f10070Q.setVisibility(8);
                EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                if (z) {
                    EZSearchNumberActivity.this.f10071R.setVisibility(8);
                    EZSearchNumberActivity.this.m25943L1();
                } else {
                    EZSearchNumberActivity.this.m25872z1(this.f10105a, true);
                }
            } else if (eZSearchResult.getStatus() == 1) {
                List<EZSearchResult> list2 = EZSearchNumberActivity.this.f10097z;
                if (list2 != null && list2.size() == 0) {
                    EZSearchNumberActivity.this.f10066M.setVisibility(8);
                    EZSearchNumberActivity.this.f10070Q.setVisibility(8);
                    EZSearchNumberActivity.this.f10071R.setVisibility(8);
                    EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                    EZSearchNumberActivity.this.f10085f0.setVisibility(8);
                    EZSearchNumberActivity.this.f10097z.add(eZSearchResult);
                    EZSearchNumberActivity eZSearchNumberActivity2 = EZSearchNumberActivity.this;
                    eZSearchNumberActivity2.f10055B.m27892b(eZSearchNumberActivity2.f10097z);
                    EZSearchNumberActivity.this.f10055B.notifyDataSetChanged();
                    EZSearchNumberActivity.this.f10096y.setVisibility(0);
                    EZSearchNumberActivity.this.m25962B1();
                }
            } else {
                EZSearchNumberActivity.this.f10064K.setVisibility(8);
                EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                EZSearchNumberActivity.this.f10096y.setVisibility(8);
                EZSearchNumberActivity.this.f10066M.setVisibility(8);
                EZSearchNumberActivity.this.f10068O = true;
                EZSearchNumberActivity eZSearchNumberActivity3 = EZSearchNumberActivity.this;
                eZSearchNumberActivity3.m25948I1(eZSearchNumberActivity3.f10054A);
                EZSearchNumberActivity.this.f10071R.setVisibility(8);
                EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                EZSearchNumberActivity.this.f10085f0.setVisibility(8);
            }
            C2866b.m26492a(EZSearchNumberActivity.this.getApplicationContext(), EZSearchNumberActivity.this.f10054A, new C3110a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$g.class */
    public class RunnableC3112g implements Runnable {
        RunnableC3112g() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C3771i.m24192r(new Date(System.currentTimeMillis()), new Date(C3711a1.m24573X()))) {
                int m24527j0 = C3711a1.m24527j0();
                if (m24527j0 == 0) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "当天查询一次");
                    }
                    C3810q.m24071b().m24070c("search_number_once");
                } else if (m24527j0 == 1) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "当天查询两次");
                    }
                    C3810q.m24071b().m24070c("search_number_twice");
                } else {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "当天查询三次及以上");
                    }
                    C3810q.m24071b().m24070c("search_number_more");
                }
                C3711a1.m24605O1(m24527j0 + 1);
            } else {
                C3711a1.m24605O1(1);
            }
            C3711a1.m24657B1(System.currentTimeMillis());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$h.class */
    public class C3113h implements AbstractC2783a {
        C3113h() {
            EZSearchNumberActivity.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x008c A[Catch: JSONException -> 0x00de, TRY_ENTER, TryCatch #0 {JSONException -> 0x00de, blocks: (B:6:0x000d, B:8:0x0020, B:10:0x0032, B:12:0x003b, B:14:0x004e, B:17:0x0061, B:22:0x0071, B:26:0x0080, B:28:0x008c, B:32:0x0099, B:34:0x00a2), top: B:38:0x000d }] */
        /* JADX WARN: Removed duplicated region for block: B:43:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        @Override // com.allinone.callerid.p162i.p163a.p167d0.AbstractC2783a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo25867a(java.lang.String r4) {
            /*
                Method dump skipped, instructions count: 228
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.mvc.controller.EZSearchNumberActivity.C3113h.mo25867a(java.lang.String):void");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$i.class */
    public class C3114i implements TextWatcher {

        /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$i$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a.class */
        class C3115a implements AbstractC3007a {
            C3115a() {
                C3114i.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p195y.AbstractC3007a
            /* renamed from: a */
            public void mo25866a(String str) {
                if (str == null || "".equals(str)) {
                    return;
                }
                EZSearchNumberActivity.this.f10061H = str;
                if (EZSearchNumberActivity.this.f10061H.equals(EZSearchNumberActivity.this.f10062I)) {
                    return;
                }
                EZSearchNumberActivity eZSearchNumberActivity = EZSearchNumberActivity.this;
                eZSearchNumberActivity.f10062I = eZSearchNumberActivity.f10061H;
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("searchCC", "def_cc==" + EZSearchNumberActivity.this.f10062I);
                }
                EZSearchNumberActivity.this.m25958D1();
                EZSearchNumberActivity.this.f10061H = "";
            }
        }

        C3114i() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("searchNumber", "afterTextChanged");
            }
            if ("".equals(EZSearchNumberActivity.this.f10093v.getText().toString())) {
                EZSearchNumberActivity.this.f10088i0.setVisibility(4);
            } else {
                EZSearchNumberActivity.this.f10088i0.setVisibility(0);
            }
            if (EZSearchNumberActivity.this.f10097z.size() <= 0) {
                if (!EZSearchNumberActivity.this.f10068O) {
                    return;
                }
                EZSearchNumberActivity.this.f10096y.setVisibility(8);
                EZSearchNumberActivity.this.m25884t1();
                EZSearchNumberActivity.this.f10068O = false;
                return;
            }
            EZSearchNumberActivity.this.f10097z.clear();
            EZSearchNumberActivity eZSearchNumberActivity = EZSearchNumberActivity.this;
            eZSearchNumberActivity.f10055B.m27892b(eZSearchNumberActivity.f10097z);
            EZSearchNumberActivity.this.f10055B.notifyDataSetChanged();
            EZSearchNumberActivity.this.f10096y.setVisibility(8);
            EZSearchNumberActivity.this.m25884t1();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            try {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("searchNumber", "onTextChanged---CharSequence:" + ((Object) charSequence));
                }
                if (EZSearchNumberActivity.this.f10082c0) {
                    EZSearchNumberActivity.this.f10082c0 = false;
                } else if (charSequence == null || "".equals(charSequence.toString())) {
                    EZSearchNumberActivity.this.f10075V.clear();
                    EZSearchNumberActivity.this.f10072S.setVisibility(8);
                    EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                    EZSearchNumberActivity.this.f10071R.setVisibility(8);
                    EZSearchNumberActivity.this.f10085f0.setVisibility(8);
                    if (EZSearchNumberActivity.this.f10065L == null || EZSearchNumberActivity.this.f10065L.size() == 0) {
                        EZSearchNumberActivity.this.f10066M.setVisibility(0);
                        return;
                    }
                    EZSearchNumberActivity.this.f10064K.setVisibility(0);
                    EZSearchNumberActivity.this.f10081b0.setVisibility(0);
                } else {
                    if ((charSequence.toString().startsWith("00") || charSequence.toString().startsWith("+")) && charSequence.length() <= 8 && charSequence.length() >= 2) {
                        C3008b.m26268c(EZSearchNumberActivity.this.getApplicationContext(), EZSearchNumberActivity.this.f10062I, charSequence.toString(), new C3115a());
                    }
                    if (charSequence.length() > 0) {
                        if (!EZSearchNumberActivity.this.f10069P) {
                            EZSearchNumberActivity.this.f10069P = true;
                            return;
                        }
                        new AsyncTaskC3132y(EZSearchNumberActivity.this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, charSequence.toString());
                        EZSearchNumberActivity.this.f10072S.setVisibility(0);
                        EZSearchNumberActivity.this.f10064K.setVisibility(8);
                        EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                        if (EZSearchNumberActivity.this.f10066M.getVisibility() != 0) {
                            return;
                        }
                        EZSearchNumberActivity.this.f10066M.setVisibility(8);
                        return;
                    }
                    EZSearchNumberActivity.this.f10075V.clear();
                    EZSearchNumberActivity.this.f10072S.setVisibility(8);
                    EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                    EZSearchNumberActivity.this.f10071R.setVisibility(8);
                    EZSearchNumberActivity.this.f10085f0.setVisibility(8);
                    if (EZSearchNumberActivity.this.f10065L == null || EZSearchNumberActivity.this.f10065L.size() == 0) {
                        EZSearchNumberActivity.this.f10066M.setVisibility(0);
                        return;
                    }
                    EZSearchNumberActivity.this.f10064K.setVisibility(0);
                    EZSearchNumberActivity.this.f10081b0.setVisibility(0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$j.class */
    public class View$OnClickListenerC3116j implements View.OnClickListener {
        View$OnClickListenerC3116j() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EZSearchNumberActivity.this.f10093v.setText("");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$k.class */
    public class C3117k implements AbstractC2773b {
        C3117k() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2773b
        /* renamed from: a */
        public void mo24754a(EZCountryCode eZCountryCode) {
            try {
                EZCountryCode m24083d = C3806p.m24083d(EZSearchNumberActivity.this.getApplicationContext());
                if (m24083d != null && "".equals(m24083d.getCountry_code())) {
                    C3806p.m24079h(EZSearchNumberActivity.this.getApplication(), eZCountryCode);
                }
                C3711a1.m24614M0(eZCountryCode.getCountry_code());
                C3711a1.m24606O0(eZCountryCode.getIso_code());
                C3711a1.m24610N0(eZCountryCode.getCountry_name());
                EZSearchNumberActivity.this.m25958D1();
                EZSearchNumberActivity.this.f10093v.setFocusable(true);
                EZSearchNumberActivity.this.f10093v.setFocusableInTouchMode(true);
                EZSearchNumberActivity.this.f10093v.requestFocus();
                EZSearchNumberActivity.this.f10093v.findFocus();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$l.class */
    public class RunnableC3118l implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$l$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$l$a.class */
        class RunnableC3119a implements Runnable {
            RunnableC3119a() {
                RunnableC3118l.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                EZSearchNumberActivity eZSearchNumberActivity = EZSearchNumberActivity.this;
                eZSearchNumberActivity.f10056C = eZSearchNumberActivity.m25880v1();
            }
        }

        RunnableC3118l() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C3711a1.m24647E()) {
                EZSearchNumberActivity.this.m25941M1();
                C3711a1.m24530i1(false);
            }
            EZSearchNumberActivity.this.m25954F1();
            EZSearchNumberActivity.this.m25964A1();
            Intent intent = EZSearchNumberActivity.this.getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra("searchnumber");
                if (stringExtra == null || "".equals(stringExtra)) {
                    EZSearchNumberActivity.this.m25884t1();
                } else {
                    EZSearchNumberActivity.this.f10082c0 = true;
                    EZSearchNumberActivity.this.f10093v.setText(stringExtra);
                    BaseEditText baseEditText = EZSearchNumberActivity.this.f10093v;
                    baseEditText.setSelection(baseEditText.getText().length());
                    EZSearchNumberActivity.this.f10064K.setVisibility(8);
                    EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                    EZSearchNumberActivity.this.m25886s1();
                    EZSearchNumberActivity.this.m25952G1();
                }
                if (intent.getBooleanExtra("speak_search_number", false)) {
                    Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                    intent2.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                    try {
                        EZSearchNumberActivity.this.startActivityForResult(intent2, 10002);
                    } catch (Exception e) {
                        Toast.makeText(EZSearchNumberActivity.this.getApplicationContext(), EZSearchNumberActivity.this.getResources().getString(R$string.voice_erro_tip), 0).show();
                    }
                }
            }
            C3772i0.m24190a().f12015b.execute(new RunnableC3119a());
            EZSearchNumberActivity.this.m25874y1();
            EZSearchNumberActivity.this.m25961C();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$m.class */
    public class RunnableC3120m implements Runnable {
        RunnableC3120m() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            EZSearchNumberActivity.this.f10090k0.post(EZSearchNumberActivity.this.f10091l0);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$n.class */
    public class C3121n implements AbstractC3005d {
        C3121n() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p194x.AbstractC3005d
        /* renamed from: a */
        public void mo25865a(List<CallLogBean> list) {
            EZSearchNumberActivity.this.f10077X = (ArrayList) list;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$o.class */
    public class C3122o implements AbstractC3004c {
        C3122o() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p194x.AbstractC3004c
        /* renamed from: a */
        public void mo25864a(List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, List<CallLogBean> list3) {
            EZSearchNumberActivity.this.f10078Y = list;
            EZSearchNumberActivity.this.f10079Z = list2;
            EZSearchNumberActivity.this.f10076W = hashMap;
            EZSearchNumberActivity.this.f10080a0 = list3;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$p.class */
    public class C3123p implements AbstractC3051g {

        /* renamed from: a */
        final /* synthetic */ boolean f10120a;

        C3123p(boolean z) {
            EZSearchNumberActivity.this = r4;
            this.f10120a = z;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3051g
        /* renamed from: a */
        public void mo25863a(EZSearchResult eZSearchResult) {
            List<EZSearchResult> list;
            EZSearchNumberActivity.this.f10095x.setVisibility(8);
            List<EZSearchResult> list2 = EZSearchNumberActivity.this.f10097z;
            if (list2 != null && list2.size() > 0) {
                EZSearchNumberActivity.this.f10097z.clear();
                EZSearchNumberActivity eZSearchNumberActivity = EZSearchNumberActivity.this;
                eZSearchNumberActivity.f10055B.m27892b(eZSearchNumberActivity.f10097z);
                EZSearchNumberActivity.this.f10055B.notifyDataSetChanged();
            }
            if (eZSearchResult == null || (list = EZSearchNumberActivity.this.f10097z) == null || list.size() != 0) {
                EZSearchNumberActivity.this.f10064K.setVisibility(8);
                EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                EZSearchNumberActivity.this.f10096y.setVisibility(8);
                EZSearchNumberActivity.this.f10066M.setVisibility(8);
                EZSearchNumberActivity.this.f10070Q.setVisibility(8);
                EZSearchNumberActivity.this.f10085f0.setVisibility(8);
                if (this.f10120a) {
                    EZSearchNumberActivity.this.m25945K1();
                    EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                    return;
                }
                EZSearchNumberActivity.this.m25947J1();
                EZSearchNumberActivity.this.f10071R.setVisibility(8);
                return;
            }
            String name = eZSearchResult.getName();
            String type_label = eZSearchResult.getType_label();
            String location = eZSearchResult.getLocation();
            if ((name != null && !"".equals(name)) || ((type_label != null && !"".equals(type_label)) || (location != null && !"".equals(location)))) {
                EZSearchNumberActivity.this.f10066M.setVisibility(8);
                EZSearchNumberActivity.this.f10070Q.setVisibility(8);
                EZSearchNumberActivity.this.f10071R.setVisibility(8);
                EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                EZSearchNumberActivity.this.f10085f0.setVisibility(8);
                EZSearchNumberActivity.this.f10097z.add(eZSearchResult);
                EZSearchNumberActivity eZSearchNumberActivity2 = EZSearchNumberActivity.this;
                eZSearchNumberActivity2.f10055B.m27892b(eZSearchNumberActivity2.f10097z);
                EZSearchNumberActivity.this.f10055B.notifyDataSetChanged();
                EZSearchNumberActivity.this.f10096y.setVisibility(0);
                return;
            }
            EZSearchNumberActivity.this.f10064K.setVisibility(8);
            EZSearchNumberActivity.this.f10081b0.setVisibility(8);
            EZSearchNumberActivity.this.f10096y.setVisibility(8);
            EZSearchNumberActivity.this.f10066M.setVisibility(8);
            EZSearchNumberActivity.this.f10070Q.setVisibility(8);
            EZSearchNumberActivity.this.f10085f0.setVisibility(8);
            if (this.f10120a) {
                EZSearchNumberActivity.this.m25945K1();
                EZSearchNumberActivity.this.f10084e0.setVisibility(8);
                return;
            }
            EZSearchNumberActivity.this.m25947J1();
            EZSearchNumberActivity.this.f10071R.setVisibility(8);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$q.class */
    public class C3124q implements AdapterView.OnItemClickListener {
        C3124q() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            try {
                if (EZSearchNumberActivity.this.f10075V == null || EZSearchNumberActivity.this.f10075V.size() == 0) {
                    return;
                }
                EZSearchNumberActivity.this.f10093v.setText(((CallLogBean) EZSearchNumberActivity.this.f10075V.get(i)).m24880o());
                BaseEditText baseEditText = EZSearchNumberActivity.this.f10093v;
                baseEditText.setSelection(baseEditText.getText().length());
                EZSearchNumberActivity.this.f10064K.setVisibility(8);
                EZSearchNumberActivity.this.f10081b0.setVisibility(8);
                EZSearchNumberActivity.this.f10075V.clear();
                EZSearchNumberActivity.this.f10072S.setVisibility(8);
                EZSearchNumberActivity.this.m25886s1();
                EZSearchNumberActivity.this.m25952G1();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$r.class */
    public class C3125r implements AdapterView.OnItemLongClickListener {
        C3125r() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            return true;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$s.class */
    public class View$OnClickListenerC3126s implements View.OnClickListener {
        View$OnClickListenerC3126s() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EZSearchNumberActivity.this.m25882u1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$t */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$t.class */
    public class View$OnClickListenerC3127t implements View.OnClickListener {
        View$OnClickListenerC3127t() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3810q.m24071b().m24070c("switch_cc_click");
            if (EZSearchNumberActivity.this.f10057D.getVisibility() != 0) {
                EZSearchNumberActivity.this.f10094w.setImageResource(R$drawable.location_icon_blue);
                EZSearchNumberActivity.this.f10057D.setVisibility(0);
                return;
            }
            EZSearchNumberActivity.this.f10094w.setImageResource(R$drawable.location_icon);
            EZSearchNumberActivity.this.f10057D.startAnimation(AnimationUtils.loadAnimation(EZSearchNumberActivity.this.getApplicationContext(), R$anim.abc_fade_out));
            EZSearchNumberActivity.this.f10057D.setVisibility(8);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$u */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$u.class */
    public class View$OnClickListenerC3128u implements View.OnClickListener {
        View$OnClickListenerC3128u() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EZSearchNumberActivity.this.f10093v.setFocusable(true);
            EZSearchNumberActivity.this.f10093v.setFocusableInTouchMode(true);
            EZSearchNumberActivity.this.f10093v.requestFocus();
            EZSearchNumberActivity.this.f10093v.findFocus();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$v */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$v.class */
    public class View$OnClickListenerC3129v implements View.OnClickListener {
        View$OnClickListenerC3129v() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
            try {
                EZSearchNumberActivity.this.startActivityForResult(intent, 10002);
            } catch (Exception e) {
                Toast.makeText(EZSearchNumberActivity.this.getApplicationContext(), EZSearchNumberActivity.this.getResources().getString(R$string.voice_erro_tip), 0).show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$w */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$w.class */
    public class View$OnClickListenerC3130w implements View.OnClickListener {
        View$OnClickListenerC3130w() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EZSearchNumberActivity.this.m25939N1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$x */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$x.class */
    public class C3131x implements TextView.OnEditorActionListener {
        C3131x() {
            EZSearchNumberActivity.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i == 3) {
                try {
                    ((InputMethodManager) textView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(textView.getWindowToken(), 0);
                    EZSearchNumberActivity.this.f10072S.setVisibility(8);
                    if (!"".equals(EZSearchNumberActivity.this.f10093v.getText().toString())) {
                        EZSearchNumberActivity.this.m25886s1();
                        EZSearchNumberActivity.this.m25952G1();
                        return true;
                    }
                    if (EZSearchNumberActivity.this.f10065L != null && EZSearchNumberActivity.this.f10065L.size() != 0) {
                        EZSearchNumberActivity.this.f10064K.setVisibility(0);
                        EZSearchNumberActivity.this.f10081b0.setVisibility(0);
                    }
                    Toast.makeText(EZSearchNumberActivity.this.getApplicationContext(), EZSearchNumberActivity.this.getResources().getString(R$string.invalid_nubmer), 0).show();
                    return true;
                } catch (Exception e) {
                    e.printStackTrace();
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZSearchNumberActivity$y */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZSearchNumberActivity$y.class */
    private static class AsyncTaskC3132y extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private WeakReference<EZSearchNumberActivity> f10130a;

        AsyncTaskC3132y(EZSearchNumberActivity eZSearchNumberActivity) {
            this.f10130a = new WeakReference<>(eZSearchNumberActivity);
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str = strArr[0];
            EZSearchNumberActivity eZSearchNumberActivity = this.f10130a.get();
            if (eZSearchNumberActivity != null && !eZSearchNumberActivity.isFinishing()) {
                try {
                    eZSearchNumberActivity.f10075V = (ArrayList) C2996a.m26285f(eZSearchNumberActivity.f10077X, str);
                    eZSearchNumberActivity.f10083d0 = eZSearchNumberActivity.f10075V.size();
                    eZSearchNumberActivity.f10074U = (ArrayList) C2996a.m26286e(eZSearchNumberActivity.f10080a0, str);
                    eZSearchNumberActivity.f10075V.addAll(eZSearchNumberActivity.f10074U);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            EZSearchNumberActivity eZSearchNumberActivity = this.f10130a.get();
            if (eZSearchNumberActivity == null || eZSearchNumberActivity.isFinishing()) {
                return;
            }
            eZSearchNumberActivity.f10073T.m27852b(eZSearchNumberActivity.f10075V, eZSearchNumberActivity.f10083d0, str);
        }
    }

    /* renamed from: B1 */
    public void m25962B1() {
        C2784b.m26603a(getApplicationContext(), C3806p.m24083d(getApplicationContext()).getCountry_code(), this.f10054A, new C3113h());
    }

    /* renamed from: C1 */
    public void m25959C1() {
        Intent intent = new Intent();
        intent.setAction("com.allinone.callerid.INIT_HISTORY");
        C1764a.m28939b(getApplicationContext()).m28937d(intent);
    }

    /* renamed from: F1 */
    public void m25954F1() {
        this.f10072S.setOnItemClickListener(new C3124q());
        this.f10072S.setOnItemLongClickListener(new C3125r());
        this.f10060G.setOnClickListener(new View$OnClickListenerC3126s());
        this.f10094w.setOnClickListener(new View$OnClickListenerC3127t());
        this.f10093v.setOnClickListener(new View$OnClickListenerC3128u());
        this.f10086g0.setOnClickListener(new View$OnClickListenerC3129v());
        this.f10058E.setOnClickListener(new View$OnClickListenerC3130w());
        this.f10093v.setOnEditorActionListener(new C3131x());
    }

    /* renamed from: G1 */
    public void m25952G1() {
        C2996a.m26283h(this.f10093v.getText().toString());
    }

    /* renamed from: H1 */
    public void m25950H1(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        C2211o c2211o = new C2211o(this, list, hashMap, this.f10072S);
        this.f10073T = c2211o;
        this.f10072S.setAdapter((ListAdapter) c2211o);
    }

    /* renamed from: I1 */
    public void m25948I1(String str) {
        try {
            TextView textView = (TextView) ((LinearLayout) this.f10070Q.inflate()).findViewById(R$id.tv_notdata);
            textView.setText(getResources().getString(R$string.no_motches) + " " + str + " " + getResources().getString(R$string.is_not_yet));
            textView.setTypeface(this.f10087h0);
        } catch (Exception e) {
            this.f10070Q.setVisibility(0);
        }
    }

    /* renamed from: J1 */
    public void m25947J1() {
        try {
            ((TextView) ((LinearLayout) this.f10084e0.inflate()).findViewById(R$id.tv_no_offline_result)).setTypeface(this.f10087h0);
        } catch (Exception e) {
            this.f10084e0.setVisibility(0);
        }
    }

    /* renamed from: K1 */
    public void m25945K1() {
        try {
            ((TextView) ((LinearLayout) this.f10071R.inflate()).findViewById(R$id.tv_server_error)).setTypeface(this.f10087h0);
        } catch (Exception e) {
            this.f10071R.setVisibility(0);
        }
    }

    /* renamed from: L1 */
    public void m25943L1() {
        try {
            ((TextView) ((LinearLayout) this.f10085f0.inflate()).findViewById(R$id.tv_timeout)).setTypeface(this.f10087h0);
        } catch (Exception e) {
            this.f10085f0.setVisibility(0);
        }
    }

    /* renamed from: M1 */
    public void m25941M1() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f10094w, "alpha", 1.0f, 0.3f, 1.0f);
        ofFloat.setDuration(1500L);
        ofFloat.setRepeatCount(2);
        ofFloat.setRepeatMode(1);
        ofFloat.start();
    }

    /* renamed from: t1 */
    public void m25884t1() {
        C2996a.m26288c(this.f10065L, new C3106c());
    }

    /* renamed from: w1 */
    public void m25878w1() {
        getWindow().getDecorView().post(new RunnableC3120m());
    }

    /* renamed from: x1 */
    public void m25876x1() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.search_history_item_bottom, (ViewGroup) null);
        this.f10064K.addFooterView(inflate, null, false);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.btn_search_del);
        this.f10081b0 = frameLayout;
        frameLayout.setOnClickListener(new View$OnClickListenerC3104b());
    }

    /* renamed from: y1 */
    public void m25874y1() {
        if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") == 0) {
            C2996a.m26287d(new C3121n());
        }
    }

    /* renamed from: z1 */
    public void m25872z1(String str, boolean z) {
        String str2 = this.f10062I;
        String str3 = str;
        if (str2 != null) {
            str3 = str;
            if (!"".equals(str2)) {
                str3 = this.f10062I;
            }
        }
        C3045f.m26166f(this.f10054A, str3, new C3123p(z));
    }

    /* renamed from: A1 */
    public void m25964A1() {
        new Handler().postDelayed(new RunnableC3108e(), 100L);
    }

    /* renamed from: C */
    public void m25961C() {
        try {
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                return;
            }
            C2996a.m26289b(this.f10078Y, this.f10079Z, this.f10076W, this.f10080a0, new C3122o());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: D1 */
    public void m25958D1() {
        String m24528j = C3711a1.m24528j();
        if (m24528j != null && !"".equals(m24528j)) {
            this.f10062I = m24528j;
            this.f10059F.setText(C3711a1.m24524k());
            this.f10063J.setText(C3711a1.m24520l().split("/")[0].replace(" ", ""));
            return;
        }
        EZCountryCode m24083d = C3806p.m24083d(getApplicationContext());
        this.f10062I = m24083d.getCountry_code();
        this.f10059F.setText(m24083d.getCountry_name());
        this.f10063J.setText(m24083d.getIso_code().split("/")[0].replace(" ", ""));
    }

    /* renamed from: E1 */
    public void m25956E1() {
        EZCountryCode m24083d = C3806p.m24083d(getApplicationContext());
        this.f10062I = m24083d.getCountry_code();
        this.f10059F.setText(m24083d.getCountry_name());
        this.f10063J.setText(m24083d.getIso_code().split("/")[0].replace(" ", ""));
        C3711a1.m24614M0(m24083d.getCountry_code());
        C3711a1.m24606O0(m24083d.getIso_code());
        C3711a1.m24610N0(m24083d.getCountry_name());
    }

    /* renamed from: N1 */
    public void m25939N1() {
        if (this.f10056C == null) {
            this.f10056C = m25880v1();
        }
        C2600m.m27038i(this, new ArrayList(this.f10056C), new C3117k());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList<String> stringArrayListExtra;
        super.onActivityResult(i, i2, intent);
        if (i != 10002 || i2 != -1 || intent == null || (stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS")) == null || stringArrayListExtra.size() <= 0) {
            return;
        }
        String m24094a = C3801m0.m24094a(stringArrayListExtra.get(0));
        if (!m24094a.matches("[0-9]+")) {
            return;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "voiceText: " + m24094a);
        }
        this.f10082c0 = true;
        this.f10093v.setText(m24094a);
        BaseEditText baseEditText = this.f10093v;
        baseEditText.setSelection(baseEditText.getText().length());
        this.f10064K.setVisibility(8);
        this.f10081b0.setVisibility(8);
        m25886s1();
        m25952G1();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.activity_search);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            getWindow().getDecorView().post(new RunnableC3102a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.f10093v.removeTextChangedListener(this.f10089j0);
            this.f10089j0 = null;
            this.f10093v.setOnEditorActionListener(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getRepeatCount() == 0) {
            m25882u1();
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

    /* renamed from: r1 */
    public void m25888r1() {
        C3114i c3114i = new C3114i();
        this.f10089j0 = c3114i;
        this.f10093v.addTextChangedListener(c3114i);
        this.f10088i0.setOnClickListener(new View$OnClickListenerC3116j());
    }

    /* renamed from: s1 */
    public void m25886s1() {
        String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
        if (country_code == null || "".equals(country_code)) {
            Toast.makeText(getApplicationContext(), (int) R$string.start_choose_dialog_title, 0).show();
            return;
        }
        this.f10054A = this.f10093v.getText().toString();
        this.f10064K.setVisibility(8);
        this.f10081b0.setVisibility(8);
        this.f10095x.setVisibility(0);
        if (!C3767h1.m24261a(EZCallApplication.m26146c())) {
            m25872z1(country_code, false);
        } else {
            C2996a.m26284g(getApplicationContext(), this.f10062I, country_code, this.f10054A, new C3109f(country_code));
        }
        C3772i0.m24190a().f12015b.execute(new RunnableC3112g());
    }

    /* renamed from: u1 */
    public void m25882u1() {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f10093v.getContext().getSystemService("input_method");
            if (inputMethodManager == null || !inputMethodManager.isActive()) {
                setResult(777);
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } else {
                inputMethodManager.hideSoftInputFromWindow(this.f10093v.getWindowToken(), 0);
                new Handler().postDelayed(new RunnableC3107d(), 300L);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: v1 */
    public List<EZCountryCode> m25880v1() {
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
}
