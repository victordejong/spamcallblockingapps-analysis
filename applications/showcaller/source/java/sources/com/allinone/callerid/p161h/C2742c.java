package com.allinone.callerid.p161h;

import android.content.ContentUris;
import android.content.Context;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.main.C3067a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.mvc.view.recorder.C3569a;
import com.allinone.callerid.mvc.view.recorder.RecordBallView;
import com.allinone.callerid.p136b.C2217q;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p164a0.AbstractC2767a;
import com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c;
import com.allinone.callerid.p162i.p163a.p164a0.C2768b;
import com.allinone.callerid.p162i.p163a.p164a0.C2771d;
import com.allinone.callerid.p162i.p163a.p165b0.AbstractC2774a;
import com.allinone.callerid.p162i.p163a.p165b0.C2775b;
import com.allinone.callerid.p162i.p163a.p167d0.AbstractC2783a;
import com.allinone.callerid.p162i.p163a.p167d0.C2784b;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p171f0.AbstractC2804a;
import com.allinone.callerid.p162i.p163a.p171f0.C2805b;
import com.allinone.callerid.p162i.p163a.p173h.AbstractC2833a;
import com.allinone.callerid.p162i.p163a.p173h.C2834b;
import com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a;
import com.allinone.callerid.p162i.p163a.p183m.C2907b;
import com.allinone.callerid.p162i.p163a.p184n.AbstractC2916b;
import com.allinone.callerid.p162i.p163a.p184n.C2914a;
import com.allinone.callerid.p162i.p163a.p192v.C2982a;
import com.allinone.callerid.p200l.p201a.AbstractC3040c;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.service.C3613b;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3848s;
import com.allinone.callerid.util.C3852t;
import com.allinone.callerid.util.C3874x0;
import com.allinone.callerid.util.C3880y0;
import com.allinone.callerid.util.p204j1.C3784b;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3826f;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p020b.p041h.p050l.C1679w;
/* renamed from: com.allinone.callerid.h.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c.class */
public class C2742c extends AbstractC2741b {

    /* renamed from: c */
    private static volatile C2742c f9407c;

    /* renamed from: A */
    private boolean f9408A;

    /* renamed from: B */
    private boolean f9409B;

    /* renamed from: C */
    private int f9410C;

    /* renamed from: D */
    private TextView f9411D;

    /* renamed from: E */
    private TextView f9412E;

    /* renamed from: F */
    private FrameLayout f9413F;

    /* renamed from: G */
    private ImageView f9414G;

    /* renamed from: I */
    private List<View> f9416I;

    /* renamed from: J */
    private ViewPager f9417J;

    /* renamed from: K */
    private LinearLayout f9418K;

    /* renamed from: L */
    private LinearLayout f9419L;

    /* renamed from: M */
    private String f9420M;

    /* renamed from: O */
    private RelativeLayout f9422O;

    /* renamed from: P */
    private LinearLayout f9423P;

    /* renamed from: Q */
    private TextView f9424Q;

    /* renamed from: S */
    private String f9426S;

    /* renamed from: T */
    private String f9427T;

    /* renamed from: W */
    private boolean f9430W;

    /* renamed from: X */
    private boolean f9431X;

    /* renamed from: Y */
    private int f9432Y;

    /* renamed from: Z */
    private int f9433Z;

    /* renamed from: a0 */
    private LinearLayout f9434a0;

    /* renamed from: b0 */
    private ImageView f9435b0;

    /* renamed from: c0 */
    private TextView f9436c0;

    /* renamed from: d0 */
    private LinearLayout f9438d0;

    /* renamed from: e */
    private TextView f9439e;

    /* renamed from: e0 */
    private ImageView f9440e0;

    /* renamed from: f */
    private TextView f9441f;

    /* renamed from: f0 */
    private TextView f9442f0;

    /* renamed from: g */
    private TextView f9443g;

    /* renamed from: g0 */
    private boolean f9444g0;

    /* renamed from: h */
    private ImageView f9445h;

    /* renamed from: h0 */
    private ViewStub f9446h0;

    /* renamed from: i0 */
    private String f9448i0;

    /* renamed from: j */
    private float f9449j;

    /* renamed from: j0 */
    private ImageView f9450j0;

    /* renamed from: k */
    private float f9451k;

    /* renamed from: k0 */
    private int f9452k0;

    /* renamed from: l */
    private float f9453l;

    /* renamed from: l0 */
    public ViewGroup f9454l0;

    /* renamed from: m */
    private float f9455m;

    /* renamed from: m0 */
    private RecordBallView f9456m0;

    /* renamed from: n */
    private WindowManager f9457n;

    /* renamed from: n0 */
    private int f9458n0;

    /* renamed from: o */
    private WindowManager.LayoutParams f9459o;

    /* renamed from: o0 */
    private int f9460o0;

    /* renamed from: p */
    private int f9461p;

    /* renamed from: q */
    private int f9463q;

    /* renamed from: q0 */
    private RecordBallView f9464q0;

    /* renamed from: r */
    private boolean f9465r;

    /* renamed from: s */
    private TextView f9466s;

    /* renamed from: v */
    private TextView f9469v;

    /* renamed from: w */
    private FrameLayout f9470w;

    /* renamed from: x */
    private Typeface f9471x;

    /* renamed from: y */
    private Typeface f9472y;

    /* renamed from: z */
    private boolean f9473z;

    /* renamed from: d */
    private Context f9437d = null;

    /* renamed from: i */
    private String f9447i = "";

    /* renamed from: t */
    private int f9467t = 3;

    /* renamed from: u */
    private String f9468u = "";

    /* renamed from: H */
    private int[] f9415H = {R$layout.spamcall_left, R$layout.spamcall_right};

    /* renamed from: N */
    public boolean f9421N = false;

    /* renamed from: R */
    private int f9425R = 1;

    /* renamed from: U */
    private Handler f9428U = new Handler();

    /* renamed from: V */
    private Runnable f9429V = new RunnableC2754j();

    /* renamed from: p0 */
    private boolean f9462p0 = false;

    /* renamed from: com.allinone.callerid.h.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$a.class */
    public class C2743a implements AbstractC2906a {

        /* renamed from: com.allinone.callerid.h.c$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$a$a.class */
        class C2744a implements AbstractC2833a {
            C2744a() {
                C2743a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p173h.AbstractC2833a
            /* renamed from: a */
            public void mo26526a(String str) {
            }
        }

        C2743a() {
            C2742c.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (z) {
                C2834b.m26525a(C2742c.this.f9437d, C2742c.this.f9468u, new C2744a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$b.class */
    public class RunnableC2745b implements Runnable {
        RunnableC2745b() {
            C2742c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2742c.this.f9422O.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            C2742c.this.f9417J.setVisibility(0);
            int height = C2742c.this.f9422O.getHeight();
            int m24169a = C3774j.m24169a(C2742c.this.f9437d, 51.7f);
            ViewGroup.LayoutParams layoutParams = C2742c.this.f9417J.getLayoutParams();
            layoutParams.height = height + m24169a;
            C2742c.this.f9417J.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: com.allinone.callerid.h.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$c.class */
    public class RunnableC2746c implements Runnable {
        RunnableC2746c() {
            C2742c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2742c.this.f9422O.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            C2742c.this.f9417J.setVisibility(0);
            int height = C2742c.this.f9422O.getHeight();
            int m24169a = C3774j.m24169a(C2742c.this.f9437d, 51.7f);
            ViewGroup.LayoutParams layoutParams = C2742c.this.f9417J.getLayoutParams();
            layoutParams.height = height + m24169a;
            C2742c.this.f9417J.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: com.allinone.callerid.h.c$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$d.class */
    public class C2747d implements AbstractC2804a {
        C2747d() {
            C2742c.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p171f0.AbstractC2804a
        /* renamed from: a */
        public void mo26567a(boolean z, int i, int i2) {
            C2742c.this.f9430W = z;
            if (z) {
                C2742c.this.f9432Y = i;
                C2742c.this.f9433Z = i2;
                if (!C2742c.this.f9431X) {
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wiki", "searchWikiData--block_count:" + i + " declined_count:" + i2);
                }
                C2742c.this.m26681T0(i, i2);
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$e.class */
    public class C2748e implements AbstractC2770c {

        /* renamed from: a */
        final /* synthetic */ int f9479a;

        /* renamed from: b */
        final /* synthetic */ int f9480b;

        /* renamed from: c */
        final /* synthetic */ boolean f9481c;

        /* renamed from: d */
        final /* synthetic */ String f9482d;

        C2748e(int i, int i2, boolean z, String str) {
            C2742c.this = r4;
            this.f9479a = i;
            this.f9480b = i2;
            this.f9481c = z;
            this.f9482d = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c
        /* renamed from: a */
        public void mo25491a(String str) {
            C2742c c2742c = C2742c.this;
            if (c2742c.f9454l0 != null) {
                Context context = c2742c.f9437d;
                C2742c c2742c2 = C2742c.this;
                c2742c.m26721c(context, c2742c2.f9454l0, c2742c2.f9459o);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callstatus", "未查询过的展示悬浮窗");
                }
            }
            if (str == null || "".equals(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = jSONObject.getInt("status");
                if (i != 1) {
                    if (i == -20) {
                        C3848s.m23967a();
                        C3810q.m24071b().m24069d("search_result_status_20");
                    }
                    C3810q.m24071b().m24069d("search_result_status_failed");
                    return;
                }
                C2742c.this.f9423P.setVisibility(8);
                if (C2742c.this.f9428U != null) {
                    C2742c.this.f9428U.removeCallbacks(C2742c.this.f9429V);
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("searchNumber", "查询完成");
                }
                C2742c.this.f9441f.setVisibility(0);
                String string = jSONObject.getString("type_label");
                C2742c.this.f9427T = string;
                String string2 = jSONObject.getString(ShortCut.NAME);
                String string3 = jSONObject.getString("format_tel_number");
                if ((C2742c.this.f9448i0 == null || "".equals(C2742c.this.f9448i0)) && string3 != null && !string3.equals("")) {
                    C2742c.this.f9443g.setText(string3);
                    C2742c.this.f9441f.setText(string3);
                }
                C2742c.this.f9426S = string2;
                if ((C2742c.this.f9447i == null || "".equals(C2742c.this.f9447i)) && string2 != null && !"".equals(string2)) {
                    C2742c.this.f9447i = string2;
                    C2742c.this.f9441f.setText(string2);
                }
                String string4 = jSONObject.getString("report_count");
                if (string != null && !string.equals("")) {
                    C2742c.this.f9445h.setImageResource(R$drawable.avatar_spam);
                    C2742c.this.m26691O0();
                    C2742c.this.f9418K.setVisibility(0);
                    C2742c.this.f9466s.setVisibility(0);
                    TextView textView = C2742c.this.f9466s;
                    textView.setText(string4 + " " + C2742c.this.f9437d.getResources().getString(R$string.as_spam));
                    if (C2742c.this.f9410C == 1) {
                        C2742c.this.m26685R0();
                    }
                }
                String string5 = jSONObject.getString("avatar");
                if (string5 != null && !"".equals(string5)) {
                    C3852t.m23961b(C2742c.this.f9437d, string5, R$drawable.ic_photo_normal, C2742c.this.f9445h);
                }
                String string6 = jSONObject.getString("belong_area");
                if (string6 != null && !"".equals(string6)) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("searchNumber", "位置：" + string6);
                    }
                    C2742c.this.f9439e.setText(string6);
                    C2742c.this.f9439e.setVisibility(0);
                    C3810q.m24071b().m24069d("search_number_float_success");
                    C3738f0.m24398E(EZCallApplication.m26146c());
                }
                String string7 = jSONObject.getString("operator");
                String string8 = jSONObject.getString("type");
                if (string7 == null || string7.equals("") || string8 == null || string8.equals("")) {
                    C2742c.this.f9469v.setText(C3767h1.m24280J(C2742c.this.f9437d, string8));
                } else {
                    TextView textView2 = C2742c.this.f9469v;
                    textView2.setText(C3767h1.m24280J(C2742c.this.f9437d, string8) + " - " + string7);
                }
                if (this.f9479a == 1) {
                    if (C2742c.this.f9430W) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("wiki", "is_search_wiki_ok--block_count:" + C2742c.this.f9432Y + " declined_count:" + C2742c.this.f9433Z);
                        }
                        C2742c.this.m26679U0();
                    }
                    C2742c.this.f9431X = true;
                }
                if (string2 != null && !"".equals(string2)) {
                    if (this.f9480b == 1) {
                        C3810q.m24071b().m24069d("unknown_incoming_search_name_ok");
                    }
                    C3810q.m24071b().m24069d("new_search_name_success");
                    C3738f0.m24397F(EZCallApplication.m26146c());
                }
                if (string != null && !"".equals(string)) {
                    if (this.f9480b == 1) {
                        C3810q.m24071b().m24069d("unknown_incoming_search_spam_ok");
                    }
                    C3810q.m24071b().m24069d("search_number_float_spam");
                    C3738f0.m24391L(EZCallApplication.m26146c());
                }
                JSONArray jSONArray = jSONObject.getJSONArray("soft_comments");
                if (jSONArray != null && !"".equals(jSONArray.toString()) && jSONArray.length() != 0) {
                    C3738f0.m24401B(EZCallApplication.m26146c());
                }
                String string9 = jSONObject.getString("e164_tel_number");
                if (string9 != null && !"".equals(string9) && this.f9480b == 1) {
                    C3810q.m24071b().m24069d("unknown_incoming_search_e164_ok");
                }
                String string10 = jSONObject.getString("cc");
                int i2 = jSONObject.getInt("faild_error_log");
                if (this.f9480b == 1 && !this.f9481c) {
                    C2742c.this.m26703I0(this.f9482d, string10, string9, i2);
                }
                if (i2 == 0) {
                    C3810q.m24071b().m24069d("new_search_failed");
                } else if (i2 == 1) {
                    C3810q.m24071b().m24069d("new_search_success");
                    if (this.f9480b == 1) {
                        C3810q.m24071b().m24069d("unknown_incoming_search_ok");
                        if (this.f9482d.startsWith("140") || this.f9482d.startsWith("+91140") || this.f9482d.startsWith("0091140")) {
                            C3738f0.m24399D(C2742c.this.f9437d);
                        }
                    }
                    C3738f0.m24396G(EZCallApplication.m26146c());
                }
                jSONObject.getInt("area_error_log");
                if ((string == null || "".equals(string)) && (string2 == null || "".equals(string2))) {
                    C3711a1.m24474w1(false);
                } else {
                    C3711a1.m24474w1(true);
                    int m24479v0 = C3711a1.m24479v0();
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("searchNumber", "spam_or_name:" + m24479v0);
                    }
                    C3711a1.m24553c2(m24479v0 + 1);
                }
                if (string == null || "".equals(string)) {
                    C3711a1.m24478v1(false);
                } else {
                    C3711a1.m24478v1(true);
                }
                C3874x0.m23899b(jSONObject, this.f9482d, false);
            } catch (Exception e) {
                e.printStackTrace();
                C3810q.m24071b().m24069d("search_number_exception");
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$f.class */
    public class C2749f implements AbstractC2767a {

        /* renamed from: a */
        final /* synthetic */ String f9484a;

        C2749f(String str) {
            C2742c.this = r4;
            this.f9484a = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p164a0.AbstractC2767a
        /* renamed from: a */
        public void mo26621a(String str) {
            if (str == null || "".equals(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = jSONObject.getInt("status");
                if (i != 1) {
                    if (i != 2) {
                        if (i != -30) {
                            C3711a1.m24638G0(false);
                            return;
                        }
                        C3711a1.m24638G0(false);
                        C3810q.m24071b().m24070c("search_buyu_error_30");
                        return;
                    }
                    C3810q.m24071b().m24070c("search_buyu_status_2");
                    C3711a1.m24638G0(true);
                    String string = jSONObject.getString("time_stamp");
                    if (string == null || "".equals(string)) {
                        return;
                    }
                    C3711a1.m24642F0(Long.parseLong(string) * 1000);
                    return;
                }
                C3711a1.m24638G0(false);
                if (jSONObject.getInt("faild_error_log") == 1) {
                    C3738f0.m24402A(C2742c.this.f9437d);
                    C3810q.m24071b().m24069d("search_buyu_count_ok");
                }
                C3711a1.m24642F0(0L);
                String string2 = jSONObject.getString("type_label");
                String string3 = jSONObject.getString(ShortCut.NAME);
                String string4 = jSONObject.getString("format_tel_number");
                if ((C2742c.this.f9448i0 == null || "".equals(C2742c.this.f9448i0)) && string4 != null && !string4.equals("")) {
                    C2742c.this.f9443g.setText(string4);
                    C2742c.this.f9441f.setText(string4);
                }
                if ((C2742c.this.f9447i == null || "".equals(C2742c.this.f9447i)) && string3 != null && !"".equals(string3)) {
                    C2742c.this.f9447i = string3;
                    C2742c.this.f9441f.setText(string3);
                }
                String string5 = jSONObject.getString("avatar");
                if (string5 != null && !"".equals(string5)) {
                    C3852t.m23961b(C2742c.this.f9437d, string5, R$drawable.ic_photo_normal, C2742c.this.f9445h);
                }
                jSONObject.getString("operator");
                jSONObject.getString("type");
                if (string2 != null && !string2.equals("")) {
                    C2742c.this.f9445h.setImageResource(R$drawable.avatar_spam);
                    C2742c.this.m26691O0();
                    C2742c.this.f9466s.setVisibility(0);
                    C2742c.this.f9466s.setText(C3767h1.m24292D(C2742c.this.f9437d, string2));
                }
                C3874x0.m23900a(jSONObject, this.f9484a);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$g.class */
    public class C2750g implements AbstractC2783a {

        /* renamed from: a */
        final /* synthetic */ String f9486a;

        C2750g(String str) {
            C2742c.this = r4;
            this.f9486a = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p167d0.AbstractC2783a
        /* renamed from: a */
        public void mo25867a(String str) {
            if (str == null || "".equals(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("status") != 1) {
                    return;
                }
                String string = jSONObject.getString("subtype");
                String string2 = jSONObject.getString("keyword");
                if (string != null && !"".equals(string)) {
                    JSONArray jSONArray = new JSONArray(string);
                    if (jSONArray.length() > 0) {
                        C3810q.m24071b().m24070c("subtype_show");
                        String string3 = jSONArray.getJSONObject(0).getString("subtype");
                        C2742c.this.f9418K.setVisibility(0);
                        C2742c.this.f9411D.setVisibility(0);
                        if (C2742c.this.f9466s != null && C2742c.this.f9466s.getVisibility() == 0) {
                            C2742c.this.f9412E.setVisibility(0);
                        }
                        C2742c.this.f9411D.setText(string3);
                    } else if (string2 != null && !"".equals(string2)) {
                        C3810q.m24071b().m24070c("keyword_show");
                        C2742c.this.f9418K.setVisibility(0);
                        C2742c.this.f9411D.setVisibility(0);
                        if (C2742c.this.f9466s != null && C2742c.this.f9466s.getVisibility() == 0) {
                            C2742c.this.f9412E.setVisibility(0);
                        }
                        C2742c.this.f9411D.setText(string2);
                        C2742c.this.f9444g0 = true;
                    }
                } else if (string2 != null && !"".equals(string2)) {
                    C3810q.m24071b().m24070c("keyword_show");
                    C2742c.this.f9418K.setVisibility(0);
                    C2742c.this.f9411D.setVisibility(0);
                    if (C2742c.this.f9466s != null && C2742c.this.f9466s.getVisibility() == 0) {
                        C2742c.this.f9412E.setVisibility(0);
                    }
                    C2742c.this.f9411D.setText(string2);
                }
                if (C2742c.this.f9411D.getVisibility() == 0 && C2742c.this.f9438d0.getVisibility() == 0) {
                    C2742c.this.f9438d0.setVisibility(8);
                    C2742c.this.m26679U0();
                }
                C3880y0.m23892a(jSONObject, this.f9486a);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$h.class */
    public class C2751h implements AbstractC3040c {

        /* renamed from: com.allinone.callerid.h.c$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$h$a.class */
        class C2752a implements AbstractC2916b {
            C2752a() {
                C2751h.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p184n.AbstractC2916b
            /* renamed from: a */
            public void mo26415a(EZSearchContacts eZSearchContacts) {
                C2742c.this.m26683S0(eZSearchContacts, true);
            }
        }

        C2751h() {
            C2742c.this = r4;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3040c
        /* renamed from: a */
        public void mo26190a(EZSearchContacts eZSearchContacts, String str) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "離線解析器查詢結果: " + str);
            }
            if (eZSearchContacts != null) {
                C2742c.this.f9423P.setVisibility(8);
                if (C2742c.this.f9428U != null) {
                    C2742c.this.f9428U.removeCallbacks(C2742c.this.f9429V);
                }
                C2742c.this.f9441f.setVisibility(0);
                String belong_area = eZSearchContacts.getBelong_area();
                String type = eZSearchContacts.getType();
                String operator = eZSearchContacts.getOperator();
                String format_tel_number = eZSearchContacts.getFormat_tel_number();
                if (belong_area != null && !"".equals(belong_area)) {
                    C2742c.this.f9439e.setText(belong_area);
                    C2742c.this.f9439e.setVisibility(0);
                }
                if (operator == null || operator.equals("") || type == null || type.equals("")) {
                    C2742c.this.f9469v.setText(type);
                } else {
                    TextView textView = C2742c.this.f9469v;
                    textView.setText(type + " - " + operator);
                }
                if ((C2742c.this.f9448i0 == null || "".equals(C2742c.this.f9448i0)) && format_tel_number != null && !"".equals(format_tel_number)) {
                    C2742c.this.f9443g.setText(format_tel_number);
                    C2742c.this.f9441f.setText(format_tel_number);
                }
            }
            C2914a.m26418a(C2742c.this.f9437d, C2742c.this.f9468u, str, new C2752a());
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3040c
        /* renamed from: b */
        public void mo26189b(EZSearchContacts eZSearchContacts) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "本地保存的庫返回數據，該庫返回數據直接展示");
            }
            C3810q.m24071b().m24069d("search_offline_location_ok_new");
            C2742c.this.m26683S0(eZSearchContacts, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.h.c$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$i.class */
    public class RunnableC2753i implements Runnable {
        RunnableC2753i() {
            C2742c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2742c.this.f9464q0 != null) {
                C2742c.this.f9464q0.m24971m(C2742c.this.f9457n.getDefaultDisplay().getWidth(), 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.h.c$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$j.class */
    public class RunnableC2754j implements Runnable {
        RunnableC2754j() {
            C2742c.this = r4;
        }

        /* renamed from: a */
        void m26624a() {
            C3718c0.m24436a("testdian", "i=" + C2742c.this.f9425R);
            int i = C2742c.this.f9425R % 3;
            if (i == 0) {
                C2742c.this.f9424Q.setText(C2742c.this.f9437d.getResources().getString(R$string.point3));
            } else if (i == 1) {
                C2742c.this.f9424Q.setText(C2742c.this.f9437d.getResources().getString(R$string.point1));
            } else if (i != 2) {
            } else {
                C2742c.this.f9424Q.setText(C2742c.this.f9437d.getResources().getString(R$string.point2));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            m26624a();
            C2742c.m26668e(C2742c.this);
            C2742c.this.f9428U.postDelayed(this, 500L);
        }
    }

    /* renamed from: com.allinone.callerid.h.c$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$k.class */
    public class View$OnClickListenerC2755k implements View.OnClickListener {
        View$OnClickListenerC2755k() {
            C2742c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                C2742c.this.m26715C0();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$l.class */
    public class C2756l implements C3569a.AbstractC3571b {

        /* renamed from: a */
        final /* synthetic */ int f9493a;

        /* renamed from: b */
        final /* synthetic */ String f9494b;

        /* renamed from: com.allinone.callerid.h.c$l$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$l$a.class */
        class RunnableC2757a implements Runnable {
            RunnableC2757a() {
                C2756l.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2742c.this.f9464q0 != null) {
                    C2742c.this.f9464q0.m24975i();
                    C2742c.this.f9464q0.m24971m(C2742c.this.f9457n.getDefaultDisplay().getWidth(), 0);
                }
                C2742c.this.m26715C0();
            }
        }

        C2756l(int i, String str) {
            C2742c.this = r4;
            this.f9493a = i;
            this.f9494b = str;
        }

        @Override // com.allinone.callerid.mvc.view.recorder.C3569a.AbstractC3571b
        /* renamed from: a */
        public void mo24966a() {
            try {
                C2742c.this.f9464q0 = new RecordBallView(C2742c.this.f9437d, C2742c.this.f9459o.x, C2742c.this.f9459o.y);
                C2742c.this.f9464q0.setCall_status(this.f9493a);
                C2742c.this.f9464q0.setTel_phone(this.f9494b);
                C2742c.this.f9464q0.setStatus(10002);
                C2742c.this.f9464q0.setInitTime();
                C2742c.this.f9456m0.setVisibility(8);
                C2742c.this.f9464q0.m24978f();
                C2742c.this.f9464q0.postDelayed(new RunnableC2757a(), 90L);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.allinone.callerid.mvc.view.recorder.C3569a.AbstractC3571b
        /* renamed from: b */
        public void mo24965b() {
        }
    }

    /* renamed from: com.allinone.callerid.h.c$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$m.class */
    public class View$OnClickListenerC2758m implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C3569a f9497d;

        /* renamed from: e */
        final /* synthetic */ String f9498e;

        /* renamed from: f */
        final /* synthetic */ int f9499f;

        View$OnClickListenerC2758m(C3569a c3569a, String str, int i) {
            C2742c.this = r4;
            this.f9497d = c3569a;
            this.f9498e = str;
            this.f9499f = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (C1679w.m29314U(C2742c.this.f9419L) && C1679w.m29314U(C2742c.this.f9456m0)) {
                    this.f9497d.m24968c(C2742c.this.f9456m0, C2742c.this.f9419L);
                }
                RecordCall recordCall = new RecordCall();
                recordCall.setNumber(this.f9498e);
                if (this.f9499f == 1) {
                    recordCall.setPhonestatus(110);
                } else {
                    recordCall.setPhonestatus(111);
                }
                C3613b.m24800f().m24795k(recordCall);
                if (C3711a1.m24505o2().booleanValue()) {
                    C3767h1.m24289E0(C2742c.this.f9437d);
                    C3810q.m24071b().m24070c("speaker_tip_show");
                    C3711a1.m24640F2(Boolean.FALSE);
                }
                C3810q.m24071b().m24070c("recorder_floatingball_click");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$n.class */
    public class C2759n implements ViewPager.AbstractC1193i {
        C2759n() {
            C2742c.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
            if (i != 1 || !C2742c.this.f9465r) {
                return;
            }
            C3810q.m24071b().m24070c("spam_huadong");
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            if (i != 0 || !C2742c.this.f9465r) {
                return;
            }
            C3711a1.m24628I2(Boolean.TRUE);
            C3767h1.m24237m(C2742c.this.f9437d);
            C3711a1.m24542f1(true);
            C3810q.m24071b().m24070c("spam_huadong_OK");
            C2742c.this.m26689P0();
        }
    }

    /* renamed from: com.allinone.callerid.h.c$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$o.class */
    public class View$OnTouchListenerC2760o implements View.OnTouchListener {

        /* renamed from: d */
        final /* synthetic */ View f9502d;

        View$OnTouchListenerC2760o(View view) {
            C2742c.this = r4;
            this.f9502d = view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                C2742c.this.f9449j = motionEvent.getX();
                C2742c.this.f9451k = motionEvent.getY();
                C2742c.this.f9473z = true;
                return false;
            } else if (action == 1) {
                try {
                    if (C2742c.this.f9408A) {
                        C2742c.this.f9459o.y = (int) (C2742c.this.f9455m - C2742c.this.f9451k);
                        if (C2742c.this.f9459o.y > C3774j.m24169a(C2742c.this.f9437d, 0.0f) && C2742c.this.f9459o.y < C2742c.this.f9457n.getDefaultDisplay().getHeight() - this.f9502d.getHeight()) {
                            C2742c.this.f9457n.updateViewLayout(this.f9502d, C2742c.this.f9459o);
                            if (C3711a1.m24563a0() == -1) {
                                C3711a1.m24525j2(C2742c.this.f9459o.y);
                            }
                        }
                    }
                    if (C3711a1.m24563a0() == -1) {
                        if (C2742c.this.f9459o.y < C3774j.m24169a(C2742c.this.f9437d, 0.0f)) {
                            C3711a1.m24525j2(C3774j.m24169a(C2742c.this.f9437d, 0.0f));
                        } else if (C2742c.this.f9459o.y > C2742c.this.f9457n.getDefaultDisplay().getHeight() - this.f9502d.getHeight()) {
                            C3711a1.m24525j2(C2742c.this.f9457n.getDefaultDisplay().getHeight() - this.f9502d.getHeight());
                        } else {
                            C3711a1.m24525j2(C2742c.this.f9459o.y);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                C2742c c2742c = C2742c.this;
                c2742c.f9449j = c2742c.f9451k = 0.0f;
                return false;
            } else if (action != 2) {
                return false;
            } else {
                C2742c.this.f9453l = motionEvent.getRawX();
                C2742c.this.f9455m = motionEvent.getRawY();
                if (C2742c.this.f9473z) {
                    C2742c.this.f9461p = (int) (motionEvent.getX() - C2742c.this.f9449j);
                    C2742c.this.f9463q = (int) (motionEvent.getY() - C2742c.this.f9451k);
                    if (C2742c.this.f9461p == 0 || C2742c.this.f9463q == 0) {
                        return false;
                    }
                    if (C2742c.this.f9463q > 0) {
                        if (C2742c.this.f9461p > 0) {
                            if (C2742c.this.f9463q > C2742c.this.f9461p) {
                                C2742c.this.f9408A = true;
                                C2742c.this.f9409B = false;
                            } else if (C2742c.this.f9461p - C2742c.this.f9463q > 2) {
                                C2742c.this.f9409B = true;
                                C2742c.this.f9408A = false;
                            } else {
                                C2742c.this.f9409B = false;
                                C2742c.this.f9408A = true;
                            }
                        } else if (C2742c.this.f9463q > (-C2742c.this.f9461p)) {
                            C2742c.this.f9408A = true;
                            C2742c.this.f9409B = false;
                        } else if ((-C2742c.this.f9461p) - C2742c.this.f9463q > 2) {
                            C2742c.this.f9409B = true;
                            C2742c.this.f9408A = false;
                        } else {
                            C2742c.this.f9409B = false;
                            C2742c.this.f9408A = true;
                        }
                    } else if (C2742c.this.f9461p > 0) {
                        if ((-C2742c.this.f9463q) > C2742c.this.f9461p) {
                            C2742c.this.f9408A = true;
                            C2742c.this.f9409B = false;
                        } else if (C2742c.this.f9461p - (-C2742c.this.f9463q) > 2) {
                            C2742c.this.f9409B = true;
                            C2742c.this.f9408A = false;
                        } else {
                            C2742c.this.f9409B = false;
                            C2742c.this.f9408A = true;
                        }
                    } else if ((-C2742c.this.f9463q) > (-C2742c.this.f9461p)) {
                        C2742c.this.f9408A = true;
                        C2742c.this.f9409B = false;
                    } else if ((-C2742c.this.f9461p) - (-C2742c.this.f9463q) > 2) {
                        C2742c.this.f9409B = true;
                        C2742c.this.f9408A = false;
                    } else {
                        C2742c.this.f9409B = false;
                        C2742c.this.f9408A = true;
                    }
                    C2742c.this.f9473z = false;
                }
                try {
                    if (!C2742c.this.f9408A) {
                        return false;
                    }
                    C2742c.this.f9459o.y = (int) (C2742c.this.f9455m - C2742c.this.f9451k);
                    if (C2742c.this.f9459o.y <= C3774j.m24169a(C2742c.this.f9437d, 0.0f) || C2742c.this.f9459o.y >= C2742c.this.f9457n.getDefaultDisplay().getHeight() - this.f9502d.getHeight()) {
                        return false;
                    }
                    C2742c.this.f9457n.updateViewLayout(this.f9502d, C2742c.this.f9459o);
                    return false;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$p.class */
    public class View$OnTouchListenerC2761p implements View.OnTouchListener {
        View$OnTouchListenerC2761p() {
            C2742c.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                C2742c.this.f9449j = motionEvent.getX();
                C2742c.this.f9451k = motionEvent.getY();
                C2742c.this.f9473z = true;
                return true;
            } else if (action == 1) {
                try {
                    if (C2742c.this.f9408A) {
                        C2742c.this.f9459o.y = (int) (C2742c.this.f9455m - C2742c.this.f9451k);
                        if (C2742c.this.f9459o.y > C3774j.m24169a(C2742c.this.f9437d, 0.0f) && C2742c.this.f9459o.y < C2742c.this.f9457n.getDefaultDisplay().getHeight() - view.getHeight()) {
                            C2742c.this.f9457n.updateViewLayout(view, C2742c.this.f9459o);
                            if (C3711a1.m24563a0() == -1) {
                                C3711a1.m24525j2(C2742c.this.f9459o.y);
                            }
                        }
                    }
                    if (C2742c.this.f9409B) {
                        if (C2742c.this.f9459o.x <= 100 && C2742c.this.f9459o.x >= -100) {
                            view.scrollTo(0, 0);
                        }
                        C2742c.this.m26715C0();
                    }
                    if (C3711a1.m24563a0() == -1) {
                        if (C2742c.this.f9459o.y < C3774j.m24169a(C2742c.this.f9437d, 0.0f)) {
                            C3711a1.m24525j2(C3774j.m24169a(C2742c.this.f9437d, 0.0f));
                        } else if (C2742c.this.f9459o.y > C2742c.this.f9457n.getDefaultDisplay().getHeight() - view.getHeight()) {
                            C3711a1.m24525j2(C2742c.this.f9457n.getDefaultDisplay().getHeight() - view.getHeight());
                        } else {
                            C3711a1.m24525j2(C2742c.this.f9459o.y);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                C2742c c2742c = C2742c.this;
                c2742c.f9449j = c2742c.f9451k = 0.0f;
                view.performClick();
                return true;
            } else if (action != 2) {
                return true;
            } else {
                C2742c.this.f9453l = motionEvent.getRawX();
                C2742c.this.f9455m = motionEvent.getRawY();
                if (C2742c.this.f9473z) {
                    C2742c.this.f9461p = (int) (motionEvent.getX() - C2742c.this.f9449j);
                    C2742c.this.f9463q = (int) (motionEvent.getY() - C2742c.this.f9451k);
                    if (C2742c.this.f9461p == 0 || C2742c.this.f9463q == 0) {
                        return true;
                    }
                    if (C2742c.this.f9463q > 0) {
                        if (C2742c.this.f9461p > 0) {
                            if (C2742c.this.f9463q > C2742c.this.f9461p) {
                                C2742c.this.f9408A = true;
                                C2742c.this.f9409B = false;
                            } else if (C2742c.this.f9461p - C2742c.this.f9463q > 2) {
                                C2742c.this.f9409B = true;
                                C2742c.this.f9408A = false;
                            } else {
                                C2742c.this.f9409B = false;
                                C2742c.this.f9408A = true;
                            }
                        } else if (C2742c.this.f9463q > (-C2742c.this.f9461p)) {
                            C2742c.this.f9408A = true;
                            C2742c.this.f9409B = false;
                        } else if ((-C2742c.this.f9461p) - C2742c.this.f9463q > 2) {
                            C2742c.this.f9409B = true;
                            C2742c.this.f9408A = false;
                        } else {
                            C2742c.this.f9409B = false;
                            C2742c.this.f9408A = true;
                        }
                    } else if (C2742c.this.f9461p > 0) {
                        if ((-C2742c.this.f9463q) > C2742c.this.f9461p) {
                            C2742c.this.f9408A = true;
                            C2742c.this.f9409B = false;
                        } else if (C2742c.this.f9461p - (-C2742c.this.f9463q) > 2) {
                            C2742c.this.f9409B = true;
                            C2742c.this.f9408A = false;
                        } else {
                            C2742c.this.f9409B = false;
                            C2742c.this.f9408A = true;
                        }
                    } else if ((-C2742c.this.f9463q) > (-C2742c.this.f9461p)) {
                        C2742c.this.f9408A = true;
                        C2742c.this.f9409B = false;
                    } else if ((-C2742c.this.f9461p) - (-C2742c.this.f9463q) > 2) {
                        C2742c.this.f9409B = true;
                        C2742c.this.f9408A = false;
                    } else {
                        C2742c.this.f9409B = false;
                        C2742c.this.f9408A = true;
                    }
                    C2742c.this.f9473z = false;
                }
                try {
                    if (C2742c.this.f9408A) {
                        C2742c.this.f9459o.y = (int) (C2742c.this.f9455m - C2742c.this.f9451k);
                        if (C2742c.this.f9459o.y > C3774j.m24169a(C2742c.this.f9437d, 0.0f) && C2742c.this.f9459o.y < C2742c.this.f9457n.getDefaultDisplay().getHeight() - view.getHeight()) {
                            C2742c.this.f9457n.updateViewLayout(view, C2742c.this.f9459o);
                        }
                    }
                    if (!C2742c.this.f9409B) {
                        return true;
                    }
                    C2742c.this.f9459o.x = (int) (C2742c.this.f9449j - C2742c.this.f9453l);
                    view.scrollTo(C2742c.this.f9459o.x, 0);
                    return true;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return true;
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$q.class */
    public class C2762q implements AbstractC2795a {

        /* renamed from: com.allinone.callerid.h.c$q$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$q$a.class */
        class C2763a implements AbstractC2766a {
            C2763a() {
                C2762q.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
            }
        }

        C2762q() {
            C2742c.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            if (!z) {
                EZBlackList eZBlackList = new EZBlackList();
                if (C2742c.this.f9447i == null || "".equals(C2742c.this.f9447i)) {
                    eZBlackList.setName("");
                } else {
                    eZBlackList.setName(C2742c.this.f9447i);
                }
                eZBlackList.setNumber(C2742c.this.f9468u.replace("-", ""));
                eZBlackList.setIs_myblock("true");
                C2796b.m26588a(eZBlackList, new C2763a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$r.class */
    public class C2764r implements AbstractC2774a {

        /* renamed from: a */
        final /* synthetic */ String f9507a;

        /* renamed from: b */
        final /* synthetic */ int f9508b;

        /* renamed from: c */
        final /* synthetic */ int f9509c;

        C2764r(String str, int i, int i2) {
            C2742c.this = r4;
            this.f9507a = str;
            this.f9508b = i;
            this.f9509c = i2;
        }

        @Override // com.allinone.callerid.p162i.p163a.p165b0.AbstractC2774a
        /* renamed from: a */
        public void mo26614a(EZSearchContacts eZSearchContacts) {
            String name;
            try {
                if (eZSearchContacts == null) {
                    C2742c.this.m26697L0(this.f9507a, this.f9508b, this.f9509c, false);
                    C2742c c2742c = C2742c.this;
                    c2742c.m26693N0(c2742c.f9437d, this.f9507a, this.f9509c);
                    C2742c.this.m26695M0(this.f9507a, this.f9509c);
                    return;
                }
                boolean isSearched = eZSearchContacts.isSearched();
                boolean isSearched_buyu = eZSearchContacts.isSearched_buyu();
                if (!isSearched) {
                    C2742c.this.m26697L0(this.f9507a, this.f9508b, this.f9509c, isSearched_buyu);
                } else {
                    C2742c c2742c2 = C2742c.this;
                    if (c2742c2.f9454l0 != null && this.f9509c == 1) {
                        Context context = c2742c2.f9437d;
                        C2742c c2742c3 = C2742c.this;
                        c2742c2.m26721c(context, c2742c3.f9454l0, c2742c3.f9459o);
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("callstatus", "陌生本地有数据展示");
                        }
                    }
                    if (this.f9509c == 1) {
                        C3810q.m24071b().m24069d("unknow_searched_ok");
                        if (this.f9508b == 1) {
                            C3810q.m24071b().m24069d("unknow_incoming_searched_ok");
                        }
                    }
                }
                C2742c.this.f9423P.setVisibility(8);
                if (C2742c.this.f9428U != null) {
                    C2742c.this.f9428U.removeCallbacks(C2742c.this.f9429V);
                }
                C2742c.this.f9441f.setVisibility(0);
                String format_tel_number = eZSearchContacts.getFormat_tel_number();
                if ((C2742c.this.f9448i0 == null || "".equals(C2742c.this.f9448i0)) && format_tel_number != null && !format_tel_number.equals("")) {
                    C2742c.this.f9443g.setText(format_tel_number);
                    C2742c.this.f9441f.setText(format_tel_number);
                }
                if ((C2742c.this.f9447i == null || "".equals(C2742c.this.f9447i)) && (name = eZSearchContacts.getName()) != null && !"".equals(name)) {
                    C2742c.this.f9447i = name;
                    C2742c.this.f9426S = name;
                    C2742c.this.f9441f.setText(name);
                }
                String avatar = eZSearchContacts.getAvatar();
                if (avatar != null && !"".equals(avatar)) {
                    C3852t.m23961b(C2742c.this.f9437d, avatar, R$drawable.ic_photo_normal, C2742c.this.f9445h);
                }
                String operator = eZSearchContacts.getOperator();
                String type = eZSearchContacts.getType();
                if (operator == null || operator.equals("") || type == null || type.equals("")) {
                    C2742c.this.f9469v.setText(C3767h1.m24280J(C2742c.this.f9437d, type));
                } else {
                    TextView textView = C2742c.this.f9469v;
                    textView.setText(C3767h1.m24280J(C2742c.this.f9437d, type) + " - " + operator);
                }
                String belong_area = eZSearchContacts.getBelong_area();
                if (belong_area != null && !"".equals(belong_area)) {
                    C2742c.this.f9439e.setText(belong_area);
                    C2742c.this.f9439e.setVisibility(0);
                }
                String type_label = eZSearchContacts.getType_label();
                C2742c.this.f9427T = type_label;
                if (C2742c.this.f9467t != 1 || type_label == null || type_label.equals("")) {
                    C3711a1.m24478v1(false);
                } else {
                    C2742c.this.f9445h.setImageResource(R$drawable.avatar_spam);
                    C2742c.this.m26691O0();
                    C2742c.this.f9418K.setVisibility(0);
                    C2742c.this.f9466s.setVisibility(0);
                    TextView textView2 = C2742c.this.f9466s;
                    textView2.setText(eZSearchContacts.getReport_count() + " " + C2742c.this.f9437d.getResources().getString(R$string.as_spam));
                    if (C2742c.this.f9410C == 1) {
                        C2742c.this.m26685R0();
                    }
                    C3711a1.m24478v1(true);
                }
                if (C2742c.this.f9467t == 1) {
                    String subtype = eZSearchContacts.getSubtype();
                    String keyword = eZSearchContacts.getKeyword();
                    if (subtype != null && !"".equals(subtype)) {
                        JSONArray jSONArray = new JSONArray(subtype);
                        if (jSONArray.length() > 0) {
                            C3810q.m24071b().m24070c("subtype_show");
                            String string = jSONArray.getJSONObject(0).getString("subtype");
                            C2742c.this.f9418K.setVisibility(0);
                            C2742c.this.f9411D.setVisibility(0);
                            if (C2742c.this.f9466s != null && C2742c.this.f9466s.getVisibility() == 0) {
                                C2742c.this.f9412E.setVisibility(0);
                            }
                            C2742c.this.f9411D.setText(string);
                            C2742c.this.f9444g0 = true;
                        } else if (keyword != null && !"".equals(keyword)) {
                            C3810q.m24071b().m24070c("keyword_show");
                            C2742c.this.f9418K.setVisibility(0);
                            C2742c.this.f9411D.setVisibility(0);
                            if (C2742c.this.f9466s != null && C2742c.this.f9466s.getVisibility() == 0) {
                                C2742c.this.f9412E.setVisibility(0);
                            }
                            C2742c.this.f9411D.setText(keyword);
                            C2742c.this.f9444g0 = true;
                        }
                    } else if (keyword != null && !"".equals(keyword)) {
                        C3810q.m24071b().m24070c("keyword_show");
                        C2742c.this.f9418K.setVisibility(0);
                        C2742c.this.f9411D.setVisibility(0);
                        if (C2742c.this.f9466s != null && C2742c.this.f9466s.getVisibility() == 0) {
                            C2742c.this.f9412E.setVisibility(0);
                        }
                        C2742c.this.f9411D.setText(keyword);
                        C2742c.this.f9444g0 = true;
                    }
                }
                if (C2742c.this.f9467t == 1) {
                    int block_count = eZSearchContacts.getBlock_count();
                    int declined_count = eZSearchContacts.getDeclined_count();
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wiki", "block_count:" + block_count + " declined_count:" + declined_count);
                    }
                    C2742c.this.m26681T0(block_count, declined_count);
                    if (C2742c.this.f9427T != null && !"".equals(C2742c.this.f9427T) && (block_count >= 3 || declined_count >= 3)) {
                        C2742c.this.f9431X = true;
                    }
                }
                if (System.currentTimeMillis() - eZSearchContacts.getWiki_search_time() > 86400000) {
                    C2742c c2742c4 = C2742c.this;
                    c2742c4.m26693N0(c2742c4.f9437d, this.f9507a, this.f9509c);
                }
                if (eZSearchContacts.isSubtype_isserach()) {
                    return;
                }
                C2742c.this.m26695M0(this.f9507a, this.f9509c);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.c$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/c$s.class */
    public static class AsyncTaskC2765s extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a */
        private WeakReference<C2742c> f9511a;

        /* renamed from: b */
        private String f9512b;

        /* renamed from: c */
        private int f9513c;

        AsyncTaskC2765s(C2742c c2742c, String str, int i) {
            this.f9511a = new WeakReference<>(c2742c);
            this.f9512b = str;
            this.f9513c = i;
        }

        /* renamed from: a */
        public Boolean doInBackground(Void... voidArr) {
            C2742c c2742c = this.f9511a.get();
            if (c2742c != null) {
                boolean z = true;
                if (!C3820b.m24031e() || !C2982a.m26310a()) {
                    c2742c.f9462p0 = false;
                } else if (!C3826f.m23977r(this.f9512b, this.f9513c)) {
                    C3810q.m24071b().m24070c("recorder_floatingball_show");
                    c2742c.f9462p0 = true;
                    return Boolean.valueOf(z);
                } else {
                    c2742c.f9462p0 = false;
                }
                z = false;
                return Boolean.valueOf(z);
            }
            return Boolean.FALSE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            try {
                C2742c c2742c = this.f9511a.get();
                if (c2742c != null) {
                    if (bool.booleanValue()) {
                        c2742c.f9456m0.setVisibility(0);
                    } else {
                        c2742c.f9456m0.setVisibility(8);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private C2742c() {
    }

    /* renamed from: A0 */
    public static C2742c m26719A0() {
        if (f9407c == null) {
            synchronized (C2742c.class) {
                try {
                    if (f9407c == null) {
                        f9407c = new C2742c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9407c;
    }

    /* renamed from: B0 */
    private WindowManager.LayoutParams m26717B0() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2010;
        }
        layoutParams.height = -2;
        layoutParams.width = -1;
        layoutParams.gravity = 8388659;
        layoutParams.format = 1;
        int m24658B0 = C3711a1.m24658B0();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("height", "初始值==--->y==" + m24658B0);
        }
        layoutParams.y = m24658B0;
        layoutParams.flags = 524840;
        return layoutParams;
    }

    /* renamed from: D0 */
    private void m26713D0(Context context, String str, int i, int i2, int i3) {
        try {
            m26715C0();
            this.f9459o = m26717B0();
            this.f9457n = (WindowManager) context.getSystemService("window");
            if (Build.VERSION.SDK_INT < 23) {
                this.f9454l0 = m26723a(context, i);
            } else if (Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                this.f9454l0 = m26723a(context, i);
            } else {
                C3810q.m24071b().m24069d("floatview_no_per");
            }
            if (this.f9454l0 == null) {
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "overlay");
            }
            m26711E0(this.f9454l0, str, i2, i3);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: E0 */
    private void m26711E0(View view, String str, int i, int i2) {
        this.f9458n0 = C3719c1.m24431b(this.f9437d, R$attr.color_overlay_spam_bg, R$drawable.iv_spam);
        this.f9460o0 = C3719c1.m24431b(this.f9437d, R$attr.color_overlay_small_spam_bg, R$drawable.iv_spam_simple);
        RecordBallView recordBallView = (RecordBallView) view.findViewById(R$id.float_record_rl_icon);
        this.f9456m0 = recordBallView;
        recordBallView.setIsonTouch(false);
        this.f9456m0.setCall_status(i);
        this.f9456m0.setTel_phone(str);
        this.f9456m0.setStatus(10001);
        m26709F0(str, i2);
        this.f9419L = (LinearLayout) view.findViewById(R$id.float_bg1);
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.vs_yindao);
        this.f9446h0 = (ViewStub) view.findViewById(R$id.vs_offline);
        ((TextView) view.findViewById(R$id.tv_hang_up)).setTypeface(this.f9471x);
        this.f9418K = (LinearLayout) view.findViewById(R$id.ll_tags_type);
        this.f9413F = (FrameLayout) view.findViewById(R$id.rl_hangup);
        this.f9423P = (LinearLayout) view.findViewById(R$id.ll_searching);
        TextView textView = (TextView) view.findViewById(R$id.tv_search);
        this.f9424Q = (TextView) view.findViewById(R$id.tv_point);
        this.f9422O = (RelativeLayout) view.findViewById(R$id.rl_number_content);
        this.f9414G = (ImageView) view.findViewById(R$id.iv_hang_up);
        this.f9450j0 = (ImageView) view.findViewById(R$id.iv_contacts);
        this.f9441f = (TextView) view.findViewById(R$id.tv_number_name);
        this.f9469v = (TextView) view.findViewById(R$id.tv_operator);
        this.f9470w = (FrameLayout) view.findViewById(R$id.rl_float_top);
        this.f9445h = (ImageView) view.findViewById(R$id.photo_view);
        this.f9439e = (TextView) view.findViewById(R$id.tv_location);
        this.f9466s = (TextView) view.findViewById(R$id.tv_type);
        this.f9443g = (TextView) view.findViewById(R$id.tv_number);
        this.f9411D = (TextView) view.findViewById(R$id.tv_subtype_keyword);
        this.f9412E = (TextView) view.findViewById(R$id.tv_dian);
        this.f9434a0 = (LinearLayout) view.findViewById(R$id.ll_wiki);
        this.f9435b0 = (ImageView) view.findViewById(R$id.iv_wiki);
        this.f9436c0 = (TextView) view.findViewById(R$id.tv_wiki);
        this.f9438d0 = (LinearLayout) view.findViewById(R$id.ll_wiki_spam);
        this.f9440e0 = (ImageView) view.findViewById(R$id.iv_wiki_spam);
        this.f9442f0 = (TextView) view.findViewById(R$id.tv_wiki_spam);
        ((ImageView) view.findViewById(R$id.float_close)).setOnClickListener(new View$OnClickListenerC2755k());
        C3569a c3569a = new C3569a();
        c3569a.m24967d(new C2756l(i, str));
        this.f9456m0.setOnClickListener(new View$OnClickListenerC2758m(c3569a, str, i));
        textView.setTypeface(this.f9471x);
        this.f9424Q.setTypeface(this.f9471x);
        this.f9441f.setTypeface(this.f9471x);
        this.f9411D.setTypeface(this.f9471x);
        this.f9412E.setTypeface(this.f9471x);
        this.f9469v.setTypeface(this.f9471x);
        this.f9439e.setTypeface(this.f9471x);
        this.f9466s.setTypeface(this.f9471x);
        this.f9443g.setTypeface(this.f9471x);
        this.f9436c0.setTypeface(this.f9471x);
        this.f9417J = (ViewPager) view.findViewById(R$id.f7402vp);
        this.f9416I = new ArrayList();
        m26627y0(this.f9437d);
        this.f9417J.setAdapter(new C2217q(this.f9416I));
        this.f9417J.setCurrentItem(1);
        this.f9417J.m30744c(new C2759n());
        if (str == null || "".equals(str)) {
            this.f9441f.setTypeface(this.f9472y);
            this.f9441f.setText(this.f9437d.getResources().getString(R$string.hidden_number));
        } else {
            String m24077b = C3809p0.m24077b(str);
            this.f9448i0 = m24077b;
            if (m24077b == null || "".equals(m24077b)) {
                this.f9441f.setText(str);
                this.f9443g.setText(str);
            } else {
                this.f9441f.setText(this.f9448i0);
                this.f9443g.setText(this.f9448i0);
            }
            m26701J0(this.f9437d, str, i, i2);
            this.f9443g.setVisibility(0);
            if (C3711a1.m24654C0()) {
                try {
                    RelativeLayout relativeLayout = (RelativeLayout) viewStub.inflate();
                } catch (Exception e) {
                    viewStub.setVisibility(0);
                }
                C3711a1.m24521k2(false);
            }
        }
        this.f9417J.setOnTouchListener(new View$OnTouchListenerC2760o(view));
        view.setOnTouchListener(new View$OnTouchListenerC2761p());
    }

    /* renamed from: F0 */
    private void m26709F0(String str, int i) {
        new AsyncTaskC2765s(this, str, i).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: I0 */
    public void m26703I0(String str, String str2, String str3, int i) {
        if (System.currentTimeMillis() - C3711a1.m24556c() <= 0 || i != 0 || str3 == null || "".equals(str3)) {
            return;
        }
        if (C3711a1.m24552d()) {
            C3810q.m24071b().m24069d("search_buyu_token_max");
        } else {
            C3738f0.m24361z(this.f9437d);
            C3810q.m24071b().m24069d("search_buyu_count");
        }
        C2768b.m26620a(this.f9437d, str2, str3, new C2749f(str));
    }

    /* renamed from: K0 */
    private void m26699K0(String str, int i) {
        if (i == 1) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "查询本地数据并展示");
            }
            C3810q.m24071b().m24069d("search_offline_new");
            C3045f.m26168d(str, new C2751h());
        }
    }

    /* renamed from: L0 */
    public void m26697L0(String str, int i, int i2, boolean z) {
        if (i2 == 1) {
            C2771d.m26617a(this.f9437d, str, i, i2, new C2748e(i2, i, z, str));
        }
    }

    /* renamed from: M0 */
    public void m26695M0(String str, int i) {
        if (i == 1) {
            C2784b.m26603a(this.f9437d, this.f9420M, str, new C2750g(str));
        }
    }

    /* renamed from: N0 */
    public void m26693N0(Context context, String str, int i) {
        if (i == 1) {
            C2805b.m26566a(context, str, new C2747d());
        }
    }

    /* renamed from: O0 */
    public void m26691O0() {
        int m24475w0 = C3711a1.m24475w0();
        if (m24475w0 == 0) {
            this.f9470w.setBackgroundResource(this.f9458n0);
        } else if (m24475w0 == 1) {
            this.f9470w.setBackgroundResource(this.f9460o0);
        } else if (m24475w0 != 2) {
        } else {
            this.f9470w.setBackgroundResource(this.f9458n0);
        }
    }

    /* renamed from: P0 */
    public void m26689P0() {
        try {
            C2796b.m26587b(this.f9468u, new C2762q());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: R0 */
    public void m26685R0() {
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            this.f9465r = true;
            this.f9413F.setVisibility(0);
            this.f9413F.startAnimation(C3767h1.m24225s());
            this.f9414G.startAnimation(C3767h1.m24229q());
            this.f9428U.postDelayed(new RunnableC2746c(), 1500L);
        } else if (!C3784b.m24142d(this.f9437d) && i < 28) {
        } else {
            this.f9465r = true;
            this.f9413F.setVisibility(0);
            this.f9413F.startAnimation(C3767h1.m24225s());
            this.f9414G.startAnimation(C3767h1.m24229q());
            this.f9428U.postDelayed(new RunnableC2745b(), 1500L);
        }
    }

    /* renamed from: S0 */
    public void m26683S0(EZSearchContacts eZSearchContacts, boolean z) {
        if (eZSearchContacts == null) {
            if (!"".equals(this.f9439e.getText().toString())) {
                return;
            }
            this.f9439e.setTextSize(12.0f);
            this.f9439e.setVisibility(0);
            this.f9439e.setText(this.f9437d.getResources().getString(R$string.no_net_tip));
            return;
        }
        this.f9423P.setVisibility(8);
        Handler handler = this.f9428U;
        if (handler != null) {
            handler.removeCallbacks(this.f9429V);
        }
        if (z) {
            try {
                RelativeLayout relativeLayout = (RelativeLayout) this.f9446h0.inflate();
            } catch (Exception e) {
                this.f9446h0.setVisibility(0);
            }
        }
        this.f9441f.setVisibility(0);
        String format_tel_number = eZSearchContacts.getFormat_tel_number();
        String str = this.f9448i0;
        if ((str == null || "".equals(str)) && format_tel_number != null && !"".equals(format_tel_number)) {
            this.f9443g.setText(format_tel_number);
        }
        String name = eZSearchContacts.getName();
        String str2 = this.f9447i;
        if ((str2 == null || "".equals(str2)) && name != null && !"".equals(name)) {
            this.f9447i = name;
            this.f9441f.setText(name);
        }
        int parseInt = (eZSearchContacts.getReport_count() == null || "".equals(eZSearchContacts.getReport_count())) ? 0 : Integer.parseInt(eZSearchContacts.getReport_count());
        String operator = eZSearchContacts.getOperator();
        String type = eZSearchContacts.getType();
        if (operator == null || "".equals(operator) || type == null || "".equals(type)) {
            this.f9469v.setText(C3767h1.m24280J(this.f9437d, type));
        } else {
            TextView textView = this.f9469v;
            textView.setText(C3767h1.m24280J(this.f9437d, type) + " - " + operator);
        }
        try {
            String subtype = eZSearchContacts.getSubtype();
            String keyword = eZSearchContacts.getKeyword();
            if (subtype != null && !"".equals(subtype)) {
                JSONArray jSONArray = new JSONArray(subtype);
                if (jSONArray.length() > 0) {
                    String string = jSONArray.getJSONObject(0).getString("subtype");
                    this.f9418K.setVisibility(0);
                    this.f9411D.setVisibility(0);
                    TextView textView2 = this.f9466s;
                    if (textView2 != null && textView2.getVisibility() == 0) {
                        this.f9412E.setVisibility(0);
                    }
                    this.f9411D.setText(string);
                }
            } else if (keyword != null && !"".equals(keyword)) {
                this.f9418K.setVisibility(0);
                this.f9411D.setVisibility(0);
                TextView textView3 = this.f9466s;
                if (textView3 != null && textView3.getVisibility() == 0) {
                    this.f9412E.setVisibility(0);
                }
                this.f9411D.setText(keyword);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        String belong_area = eZSearchContacts.getBelong_area();
        if (belong_area != null && !"".equals(belong_area)) {
            this.f9439e.setText(belong_area);
            this.f9439e.setVisibility(0);
        } else if (this.f9439e.getText() == null || "".equals(this.f9439e.getText().toString())) {
            this.f9439e.setText(this.f9437d.getResources().getString(R$string.no_net_tip));
            this.f9439e.setVisibility(0);
        }
        String type_label = eZSearchContacts.getType_label();
        if (this.f9467t == 1 && type_label != null && !type_label.equals("") && parseInt == 0) {
            this.f9445h.setImageResource(R$drawable.avatar_spam);
            m26691O0();
            this.f9418K.setVisibility(0);
            this.f9466s.setVisibility(0);
            this.f9466s.setText(this.f9437d.getResources().getString(R$string.spam_call));
            if (this.f9410C == 1) {
                m26685R0();
            }
        }
        if (this.f9467t != 1 || type_label == null || type_label.equals("") || parseInt <= 0) {
            return;
        }
        this.f9445h.setImageResource(R$drawable.avatar_spam);
        m26691O0();
        this.f9418K.setVisibility(0);
        this.f9466s.setVisibility(0);
        TextView textView4 = this.f9466s;
        textView4.setText(parseInt + " " + this.f9437d.getResources().getString(R$string.as_spam));
        if (this.f9410C != 1) {
            return;
        }
        m26685R0();
    }

    /* renamed from: T0 */
    public void m26681T0(int i, int i2) {
        String str = this.f9427T;
        if (str == null || "".equals(str)) {
            String str2 = this.f9426S;
            if (str2 != null && !"".equals(str2)) {
                return;
            }
            C3810q.m24071b().m24070c("no_spam_no_name_show");
            if (i >= 3) {
                this.f9435b0.setImageResource(R$drawable.iv_block_count);
                String str3 = EZCallApplication.m26146c().f9914h;
                if ("zh".equals(str3) || "zh-TW".equals(str3)) {
                    TextView textView = this.f9436c0;
                    textView.setText(this.f9437d.getResources().getString(R$string.wiki_blocked) + i + this.f9437d.getResources().getString(R$string.time_as));
                } else {
                    TextView textView2 = this.f9436c0;
                    textView2.setText(i + " " + this.f9437d.getResources().getString(R$string.wiki_blocked));
                }
                this.f9434a0.setVisibility(0);
                C3810q.m24071b().m24070c("no_spam_no_name_blocked");
                return;
            } else if (i2 < 3) {
                return;
            } else {
                this.f9435b0.setImageResource(R$drawable.iv_declined_count);
                String str4 = EZCallApplication.m26146c().f9914h;
                if ("zh".equals(str4) || "zh-TW".equals(str4)) {
                    TextView textView3 = this.f9436c0;
                    textView3.setText(this.f9437d.getResources().getString(R$string.wiki_declined) + i2 + this.f9437d.getResources().getString(R$string.time_as));
                } else {
                    TextView textView4 = this.f9436c0;
                    textView4.setText(i2 + " " + this.f9437d.getResources().getString(R$string.wiki_declined));
                }
                this.f9434a0.setVisibility(0);
                C3810q.m24071b().m24070c("no_spam_no_name_declined");
                return;
            }
        }
        String str5 = this.f9426S;
        if (str5 == null || "".equals(str5)) {
            C3810q.m24071b().m24070c("spam_no_name_show");
        } else {
            C3810q.m24071b().m24070c("spam_name_show");
        }
        if (this.f9444g0) {
            if (i >= 3) {
                this.f9435b0.setImageResource(R$drawable.iv_block_count);
                String str6 = EZCallApplication.m26146c().f9914h;
                if ("zh".equals(str6) || "zh-TW".equals(str6)) {
                    TextView textView5 = this.f9436c0;
                    textView5.setText(this.f9437d.getResources().getString(R$string.wiki_blocked) + i + this.f9437d.getResources().getString(R$string.time_as));
                } else {
                    TextView textView6 = this.f9436c0;
                    textView6.setText(i + " " + this.f9437d.getResources().getString(R$string.wiki_blocked));
                }
                this.f9434a0.setVisibility(0);
                String str7 = this.f9426S;
                if (str7 == null || "".equals(str7)) {
                    C3810q.m24071b().m24070c("spam_no_name_blocked");
                } else {
                    C3810q.m24071b().m24070c("spam_name_blocked");
                }
            } else if (i2 < 3) {
            } else {
                this.f9435b0.setImageResource(R$drawable.iv_declined_count);
                String str8 = EZCallApplication.m26146c().f9914h;
                if ("zh".equals(str8) || "zh-TW".equals(str8)) {
                    TextView textView7 = this.f9436c0;
                    textView7.setText(this.f9437d.getResources().getString(R$string.wiki_declined) + i2 + this.f9437d.getResources().getString(R$string.time_as));
                } else {
                    TextView textView8 = this.f9436c0;
                    textView8.setText(i2 + " " + this.f9437d.getResources().getString(R$string.wiki_declined));
                }
                this.f9434a0.setVisibility(0);
                String str9 = this.f9426S;
                if (str9 == null || "".equals(str9)) {
                    C3810q.m24071b().m24070c("spam_no_name_declined");
                } else {
                    C3810q.m24071b().m24070c("spam_name_declined");
                }
            }
        } else if (i >= 3) {
            this.f9440e0.setImageResource(R$drawable.iv_block_count);
            String str10 = EZCallApplication.m26146c().f9914h;
            if ("zh".equals(str10) || "zh-TW".equals(str10)) {
                TextView textView9 = this.f9442f0;
                textView9.setText(this.f9437d.getResources().getString(R$string.wiki_blocked) + i + this.f9437d.getResources().getString(R$string.time_as));
            } else {
                TextView textView10 = this.f9442f0;
                textView10.setText(i + " " + this.f9437d.getResources().getString(R$string.wiki_blocked));
            }
            this.f9438d0.setVisibility(0);
            this.f9418K.setVisibility(0);
            String str11 = this.f9426S;
            if (str11 == null || "".equals(str11)) {
                C3810q.m24071b().m24070c("spam_no_name_blocked");
            } else {
                C3810q.m24071b().m24070c("spam_name_blocked");
            }
        } else if (i2 < 3) {
        } else {
            this.f9440e0.setImageResource(R$drawable.iv_declined_count);
            String str12 = EZCallApplication.m26146c().f9914h;
            if ("zh".equals(str12) || "zh-TW".equals(str12)) {
                TextView textView11 = this.f9442f0;
                textView11.setText(this.f9437d.getResources().getString(R$string.wiki_declined) + i2 + this.f9437d.getResources().getString(R$string.time_as));
            } else {
                TextView textView12 = this.f9442f0;
                textView12.setText(i2 + " " + this.f9437d.getResources().getString(R$string.wiki_declined));
            }
            this.f9438d0.setVisibility(0);
            this.f9418K.setVisibility(0);
            String str13 = this.f9426S;
            if (str13 == null || "".equals(str13)) {
                C3810q.m24071b().m24070c("spam_no_name_declined");
            } else {
                C3810q.m24071b().m24070c("spam_name_declined");
            }
        }
    }

    /* renamed from: U0 */
    public void m26679U0() {
        String str = this.f9427T;
        if (str == null || "".equals(str)) {
            String str2 = this.f9426S;
            if (str2 != null && !"".equals(str2)) {
                return;
            }
            C3810q.m24071b().m24070c("no_spam_no_name_show");
            if (this.f9432Y >= 3) {
                this.f9435b0.setImageResource(R$drawable.iv_block_count);
                String str3 = EZCallApplication.m26146c().f9914h;
                if ("zh".equals(str3) || "zh-TW".equals(str3)) {
                    TextView textView = this.f9436c0;
                    textView.setText(this.f9437d.getResources().getString(R$string.wiki_blocked) + this.f9432Y + this.f9437d.getResources().getString(R$string.time_as));
                } else {
                    TextView textView2 = this.f9436c0;
                    textView2.setText(this.f9432Y + " " + this.f9437d.getResources().getString(R$string.wiki_blocked));
                }
                this.f9434a0.setVisibility(0);
                C3810q.m24071b().m24070c("no_spam_no_name_blocked");
                return;
            } else if (this.f9433Z < 3) {
                return;
            } else {
                this.f9435b0.setImageResource(R$drawable.iv_declined_count);
                String str4 = EZCallApplication.m26146c().f9914h;
                if ("zh".equals(str4) || "zh-TW".equals(str4)) {
                    TextView textView3 = this.f9436c0;
                    textView3.setText(this.f9437d.getResources().getString(R$string.wiki_declined) + this.f9433Z + this.f9437d.getResources().getString(R$string.time_as));
                } else {
                    TextView textView4 = this.f9436c0;
                    textView4.setText(this.f9433Z + " " + this.f9437d.getResources().getString(R$string.wiki_declined));
                }
                this.f9434a0.setVisibility(0);
                C3810q.m24071b().m24070c("no_spam_no_name_declined");
                return;
            }
        }
        String str5 = this.f9426S;
        if (str5 == null || "".equals(str5)) {
            C3810q.m24071b().m24070c("spam_no_name_show");
        } else {
            C3810q.m24071b().m24070c("spam_name_show");
        }
        if (this.f9432Y >= 3) {
            this.f9435b0.setImageResource(R$drawable.iv_block_count);
            String str6 = EZCallApplication.m26146c().f9914h;
            if ("zh".equals(str6) || "zh-TW".equals(str6)) {
                TextView textView5 = this.f9436c0;
                textView5.setText(this.f9437d.getResources().getString(R$string.wiki_blocked) + this.f9432Y + this.f9437d.getResources().getString(R$string.time_as));
            } else {
                TextView textView6 = this.f9436c0;
                textView6.setText(this.f9432Y + " " + this.f9437d.getResources().getString(R$string.wiki_blocked));
            }
            this.f9434a0.setVisibility(0);
            String str7 = this.f9426S;
            if (str7 == null || "".equals(str7)) {
                C3810q.m24071b().m24070c("spam_no_name_blocked");
            } else {
                C3810q.m24071b().m24070c("spam_name_blocked");
            }
        } else if (this.f9433Z < 3) {
        } else {
            this.f9435b0.setImageResource(R$drawable.iv_declined_count);
            String str8 = EZCallApplication.m26146c().f9914h;
            if ("zh".equals(str8) || "zh-TW".equals(str8)) {
                TextView textView7 = this.f9436c0;
                textView7.setText(this.f9437d.getResources().getString(R$string.wiki_declined) + this.f9433Z + this.f9437d.getResources().getString(R$string.time_as));
            } else {
                TextView textView8 = this.f9436c0;
                textView8.setText(this.f9433Z + " " + this.f9437d.getResources().getString(R$string.wiki_declined));
            }
            this.f9434a0.setVisibility(0);
            String str9 = this.f9426S;
            if (str9 == null || "".equals(str9)) {
                C3810q.m24071b().m24070c("spam_no_name_declined");
            } else {
                C3810q.m24071b().m24070c("spam_name_declined");
            }
        }
    }

    /* renamed from: e */
    static /* synthetic */ int m26668e(C2742c c2742c) {
        int i = c2742c.f9425R;
        c2742c.f9425R = i + 1;
        return i;
    }

    /* renamed from: y0 */
    private void m26627y0(Context context) {
        for (int i = 0; i < 2; i++) {
            this.f9416I.add(LayoutInflater.from(context).inflate(this.f9415H[i], (ViewGroup) null, false));
        }
    }

    /* renamed from: z0 */
    private void m26625z0(String str, int i, int i2) {
        String replace = str.replace(" ", "").replace("-", "").replace(BasicSQLHelper.ALL, "").replace("#", "");
        this.f9430W = false;
        this.f9431X = false;
        this.f9432Y = 0;
        this.f9433Z = 0;
        if (C3725e.m24417b(this.f9437d)) {
            C3810q.m24071b().m24069d("is_connected");
            if (i2 == 1) {
                C3810q.m24071b().m24069d("unknow_is_connected");
                if (i == 1) {
                    C3810q.m24071b().m24069d("unknow_incoming_is_connected");
                }
            }
            C3738f0.m24367t(EZCallApplication.m26146c());
            C2775b.m26613a(this.f9468u, new C2764r(replace, i, i2));
            if (i2 != 1) {
                return;
            }
            C2907b.m26435b(this.f9468u, new C2743a());
            return;
        }
        ViewGroup viewGroup = this.f9454l0;
        if (viewGroup != null) {
            m26721c(this.f9437d, viewGroup, this.f9459o);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "无网展示悬浮窗");
            }
        }
        C3810q.m24071b().m24069d("is_not_connected");
        if (i2 == 1) {
            C3810q.m24071b().m24069d("unknow_not_connected");
            if (i == 1) {
                C3810q.m24071b().m24069d("unknow_incoming_not_connected");
            }
        }
        C3738f0.m24366u(EZCallApplication.m26146c());
        m26699K0(replace, i2);
    }

    /* renamed from: C0 */
    public void m26715C0() {
        try {
            synchronized (this.f9406b) {
                ViewGroup viewGroup = this.f9454l0;
                if (viewGroup != null) {
                    try {
                        WindowManager windowManager = this.f9457n;
                        if (windowManager != null) {
                            windowManager.removeView(viewGroup);
                        } else {
                            ((WindowManager) EZCallApplication.m26146c().getSystemService("window")).removeView(this.f9454l0);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    this.f9454l0 = null;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: G0 */
    public void m26707G0(String str, int i) {
        try {
            if (!this.f9462p0) {
                return;
            }
            RecordBallView recordBallView = this.f9464q0;
            if (recordBallView != null) {
                recordBallView.m24974j();
                this.f9464q0 = null;
            }
            Context context = this.f9437d;
            WindowManager.LayoutParams layoutParams = this.f9459o;
            RecordBallView recordBallView2 = new RecordBallView(context, layoutParams.x, layoutParams.y);
            this.f9464q0 = recordBallView2;
            recordBallView2.setCall_status(i);
            this.f9464q0.setTel_phone(str);
            this.f9464q0.setStatus(10001);
            this.f9464q0.setLayoutParams(84, 84);
            this.f9464q0.m24978f();
            this.f9464q0.postDelayed(new RunnableC2753i(), 90L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: H0 */
    public void m26705H0() {
        RecordBallView recordBallView = this.f9464q0;
        if (recordBallView != null) {
            recordBallView.m24974j();
            this.f9464q0 = null;
        }
    }

    /* renamed from: J0 */
    public void m26701J0(Context context, String str, int i, int i2) {
        String str2 = this.f9447i;
        if (str2 == null || !"".equals(str2)) {
            this.f9441f.setText(this.f9447i);
            C3067a.m26102b(this.f9437d).mo23631q(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.f9452k0)).mo22633Z(R$drawable.ic_photo_normal).m26077K0().m23660A0(this.f9445h);
            this.f9450j0.setVisibility(0);
            ViewGroup viewGroup = this.f9454l0;
            if (viewGroup != null) {
                m26721c(this.f9437d, viewGroup, this.f9459o);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callstatus", "联系人直接展示");
                }
            }
        } else {
            this.f9423P.setVisibility(0);
            this.f9441f.setVisibility(8);
            this.f9428U.postDelayed(this.f9429V, 500L);
        }
        m26625z0(str, i, i2);
    }

    /* renamed from: Q0 */
    public void m26687Q0(Context context, String str, int i, int i2, String str2, int i3) {
        synchronized (this.f9406b) {
            try {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callstatus", "show");
                }
                this.f9437d = context;
                this.f9410C = i;
                this.f9467t = i2;
                this.f9447i = str2;
                this.f9452k0 = i3;
                C3767h1.m24281I0(context, EZCallApplication.m26146c().f9914h);
                this.f9420M = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
                this.f9468u = str;
                this.f9471x = C3739f1.m24359b();
                this.f9472y = C3739f1.m24360a();
                int m24475w0 = C3711a1.m24475w0();
                if (m24475w0 == 0) {
                    m26713D0(context, str, R$layout.view_float_normal, i, i2);
                } else if (m24475w0 == 1) {
                    m26713D0(context, str, R$layout.view_float_simple, i, i2);
                } else if (m24475w0 == 2) {
                    m26713D0(context, str, R$layout.view_float_normal, i, i2);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
