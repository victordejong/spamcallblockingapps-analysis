package com.allinone.callerid.p144d.p148c;

import android.content.ContentUris;
import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.jzvd.C2129t;
import cn.jzvd.Jzvd;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.callscreen.CustomMedia.JZMediaExo;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.view.MyJzvdStd;
import com.allinone.callerid.customview.p143e.C2450d;
import com.allinone.callerid.main.C3067a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.mvc.view.recorder.C3569a;
import com.allinone.callerid.mvc.view.recorder.RecordBallView;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.p161h.AbstractC2741b;
import com.allinone.callerid.p162i.p163a.p164a0.AbstractC2767a;
import com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c;
import com.allinone.callerid.p162i.p163a.p164a0.C2768b;
import com.allinone.callerid.p162i.p163a.p164a0.C2771d;
import com.allinone.callerid.p162i.p163a.p165b0.AbstractC2774a;
import com.allinone.callerid.p162i.p163a.p165b0.C2775b;
import com.allinone.callerid.p162i.p163a.p184n.AbstractC2916b;
import com.allinone.callerid.p162i.p163a.p184n.C2914a;
import com.allinone.callerid.p162i.p163a.p192v.C2982a;
import com.allinone.callerid.p200l.p201a.AbstractC3040c;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.service.C3613b;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3848s;
import com.allinone.callerid.util.C3852t;
import com.allinone.callerid.util.C3874x0;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3826f;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.io.File;
import java.lang.ref.WeakReference;
import org.json.JSONArray;
import org.json.JSONObject;
import p020b.p041h.p050l.C1679w;
/* renamed from: com.allinone.callerid.d.c.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a.class */
public class C2491a extends AbstractC2741b {

    /* renamed from: c */
    private static volatile C2491a f8816c;

    /* renamed from: d */
    private int f8817d = 3;

    /* renamed from: e */
    private String f8818e;

    /* renamed from: f */
    private Context f8819f;

    /* renamed from: g */
    private ImageView f8820g;

    /* renamed from: h */
    private TextView f8821h;

    /* renamed from: i */
    private TextView f8822i;

    /* renamed from: j */
    private HomeInfo f8823j;

    /* renamed from: k */
    private String f8824k;

    /* renamed from: l */
    private MyJzvdStd f8825l;

    /* renamed from: m */
    private TextView f8826m;

    /* renamed from: n */
    private TextView f8827n;

    /* renamed from: o */
    private TextView f8828o;

    /* renamed from: p */
    private String f8829p;

    /* renamed from: q */
    private boolean f8830q;

    /* renamed from: r */
    private RecordBallView f8831r;

    /* renamed from: s */
    private RecordBallView f8832s;

    /* renamed from: t */
    private WindowManager f8833t;

    /* renamed from: u */
    private RelativeLayout f8834u;

    /* renamed from: v */
    private WindowManager.LayoutParams f8835v;

    /* renamed from: w */
    private int f8836w;

    /* renamed from: x */
    public ViewGroup f8837x;

    /* renamed from: y */
    private ImageView f8838y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$a.class */
    public class RunnableC2492a implements Runnable {
        RunnableC2492a() {
            C2491a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2491a.this.f8831r != null) {
                C2491a.this.f8831r.m24971m(C2491a.this.f8833t.getDefaultDisplay().getWidth(), 0);
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$b.class */
    public class View$OnClickListenerC2493b implements View.OnClickListener {
        View$OnClickListenerC2493b() {
            C2491a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2491a.this.m27251B();
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$c.class */
    public class View$OnClickListenerC2494c implements View.OnClickListener {
        View$OnClickListenerC2494c() {
            C2491a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2491a.this.m27251B();
            C3767h1.m24237m(C2491a.this.f8819f);
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$d.class */
    public class View$OnClickListenerC2495d implements View.OnClickListener {
        View$OnClickListenerC2495d() {
            C2491a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2491a.this.m27251B();
            C2568a.m27104a(C2491a.this.f8819f);
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$e.class */
    public class C2496e implements C3569a.AbstractC3571b {

        /* renamed from: com.allinone.callerid.d.c.a$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$e$a.class */
        class RunnableC2497a implements Runnable {
            RunnableC2497a() {
                C2496e.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2491a.this.f8831r != null) {
                    C2491a.this.f8831r.m24975i();
                    C2491a.this.f8831r.m24971m(C2491a.this.f8833t.getDefaultDisplay().getWidth(), 0);
                }
                C2491a.this.m27251B();
            }
        }

        C2496e() {
            C2491a.this = r4;
        }

        @Override // com.allinone.callerid.mvc.view.recorder.C3569a.AbstractC3571b
        /* renamed from: a */
        public void mo24966a() {
            try {
                C2491a.this.f8831r = new RecordBallView(C2491a.this.f8819f, C2491a.this.f8835v.x, C2491a.this.f8835v.y);
                C2491a.this.f8831r.setCall_status(1);
                C2491a.this.f8831r.setTel_phone(C2491a.this.f8824k);
                C2491a.this.f8831r.setStatus(10002);
                C2491a.this.f8831r.setInitTime();
                C2491a.this.f8832s.setVisibility(8);
                C2491a.this.f8831r.m24978f();
                C2491a.this.f8831r.postDelayed(new RunnableC2497a(), 90L);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.allinone.callerid.mvc.view.recorder.C3569a.AbstractC3571b
        /* renamed from: b */
        public void mo24965b() {
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$f.class */
    public class View$OnClickListenerC2498f implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C3569a f8845d;

        View$OnClickListenerC2498f(C3569a c3569a) {
            C2491a.this = r4;
            this.f8845d = c3569a;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (C1679w.m29314U(C2491a.this.f8834u) && C1679w.m29314U(C2491a.this.f8832s)) {
                    this.f8845d.m24968c(C2491a.this.f8832s, C2491a.this.f8834u);
                }
                RecordCall recordCall = new RecordCall();
                if (Build.VERSION.SDK_INT >= 28) {
                    recordCall.setNumber("");
                } else {
                    recordCall.setNumber(C2491a.this.f8824k);
                }
                recordCall.setPhonestatus(111);
                C3613b.m24800f().m24795k(recordCall);
                if (C3711a1.m24505o2().booleanValue()) {
                    C3767h1.m24289E0(C2491a.this.f8819f);
                    C3810q.m24071b().m24070c("speaker_tip_show");
                    C3711a1.m24640F2(Boolean.FALSE);
                }
                C3810q.m24071b().m24070c("recorder_floatingball_click");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$g.class */
    public class C2499g implements AbstractC2774a {

        /* renamed from: a */
        final /* synthetic */ String f8847a;

        C2499g(String str) {
            C2491a.this = r4;
            this.f8847a = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p165b0.AbstractC2774a
        /* renamed from: a */
        public void mo26614a(EZSearchContacts eZSearchContacts) {
            String name;
            try {
                if (eZSearchContacts == null) {
                    C2491a c2491a = C2491a.this;
                    c2491a.m27240M(this.f8847a, c2491a.f8817d, false);
                    return;
                }
                boolean isSearched = eZSearchContacts.isSearched();
                boolean isSearched_buyu = eZSearchContacts.isSearched_buyu();
                if (!isSearched) {
                    C2491a c2491a2 = C2491a.this;
                    c2491a2.m27240M(this.f8847a, c2491a2.f8817d, isSearched_buyu);
                } else if (C2491a.this.f8817d == 1) {
                    C3810q.m24071b().m24069d("unknow_searched_ok");
                    C3810q.m24071b().m24069d("unknow_incoming_searched_ok");
                }
                String format_tel_number = eZSearchContacts.getFormat_tel_number();
                if ((C2491a.this.f8829p == null || "".equals(C2491a.this.f8829p)) && format_tel_number != null && !format_tel_number.equals("")) {
                    C2491a.this.f8822i.setText(format_tel_number);
                }
                if (C2491a.this.f8817d == 1 && (name = eZSearchContacts.getName()) != null && !"".equals(name)) {
                    C2491a.this.f8821h.setText(name);
                }
                String avatar = eZSearchContacts.getAvatar();
                if (avatar != null && !"".equals(avatar)) {
                    C3852t.m23961b(C2491a.this.f8819f, avatar, R$drawable.ic_photo_normal, C2491a.this.f8820g);
                }
                String belong_area = eZSearchContacts.getBelong_area();
                if (belong_area != null && !"".equals(belong_area)) {
                    C2491a.this.f8827n.setText(belong_area);
                    C2491a.this.f8827n.setVisibility(0);
                }
                String type_label = eZSearchContacts.getType_label();
                if (C2491a.this.f8817d != 1 || type_label == null || type_label.equals("")) {
                    C3711a1.m24478v1(false);
                    return;
                }
                C2491a.this.f8820g.setImageResource(R$drawable.avatar_spam);
                C2491a.this.f8826m.setVisibility(0);
                TextView textView = C2491a.this.f8828o;
                textView.setText(eZSearchContacts.getReport_count() + " " + C2491a.this.f8819f.getResources().getString(R$string.as_spam));
                C2491a.this.f8828o.setVisibility(0);
                C3711a1.m24478v1(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$h.class */
    public class C2500h implements AbstractC2770c {

        /* renamed from: a */
        final /* synthetic */ boolean f8849a;

        /* renamed from: b */
        final /* synthetic */ String f8850b;

        C2500h(boolean z, String str) {
            C2491a.this = r4;
            this.f8849a = z;
            this.f8850b = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c
        /* renamed from: a */
        public void mo25491a(String str) {
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
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("searchNumber", "查询完成");
                }
                String string = jSONObject.getString("type_label");
                String string2 = jSONObject.getString(ShortCut.NAME);
                String string3 = jSONObject.getString("format_tel_number");
                if ((C2491a.this.f8829p == null || "".equals(C2491a.this.f8829p)) && string3 != null && !string3.equals("")) {
                    C2491a.this.f8822i.setText(string3);
                }
                if (string2 != null && !"".equals(string2)) {
                    C2491a.this.f8821h.setText(string2);
                }
                String string4 = jSONObject.getString("report_count");
                if (string != null && !string.equals("")) {
                    C2491a.this.f8820g.setImageResource(R$drawable.avatar_spam);
                    C2491a.this.f8826m.setVisibility(0);
                    TextView textView = C2491a.this.f8828o;
                    textView.setText(string4 + " " + C2491a.this.f8819f.getResources().getString(R$string.as_spam));
                    C2491a.this.f8828o.setVisibility(0);
                }
                String string5 = jSONObject.getString("avatar");
                if (string5 != null && !"".equals(string5)) {
                    C3852t.m23961b(C2491a.this.f8819f, string5, R$drawable.ic_photo_normal, C2491a.this.f8820g);
                }
                String string6 = jSONObject.getString("belong_area");
                if (string6 != null && !"".equals(string6)) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("searchNumber", "位置：" + string6);
                    }
                    C2491a.this.f8827n.setText(string6);
                    C2491a.this.f8827n.setVisibility(0);
                    C3810q.m24071b().m24069d("search_number_float_success");
                    C3738f0.m24398E(EZCallApplication.m26146c());
                }
                if (string2 != null && !"".equals(string2)) {
                    C3810q.m24071b().m24069d("unknown_incoming_search_name_ok");
                    C3810q.m24071b().m24069d("new_search_name_success");
                    C3738f0.m24397F(EZCallApplication.m26146c());
                }
                if (string != null && !"".equals(string)) {
                    C3810q.m24071b().m24069d("unknown_incoming_search_spam_ok");
                    C3810q.m24071b().m24069d("search_number_float_spam");
                    C3738f0.m24391L(EZCallApplication.m26146c());
                }
                JSONArray jSONArray = jSONObject.getJSONArray("soft_comments");
                if (jSONArray != null && !"".equals(jSONArray.toString()) && jSONArray.length() != 0) {
                    C3738f0.m24401B(EZCallApplication.m26146c());
                }
                String string7 = jSONObject.getString("e164_tel_number");
                if (string7 != null && !"".equals(string7)) {
                    C3810q.m24071b().m24069d("unknown_incoming_search_e164_ok");
                }
                String string8 = jSONObject.getString("cc");
                int i2 = jSONObject.getInt("faild_error_log");
                if (!this.f8849a) {
                    C2491a.this.m27242K(this.f8850b, string8, string7, i2);
                }
                if (i2 == 0) {
                    C3810q.m24071b().m24069d("new_search_failed");
                } else if (i2 == 1) {
                    C3810q.m24071b().m24069d("new_search_success");
                    C3810q.m24071b().m24069d("unknown_incoming_search_ok");
                    if (this.f8850b.startsWith("140") || this.f8850b.startsWith("+91140") || this.f8850b.startsWith("0091140")) {
                        C3738f0.m24399D(C2491a.this.f8819f);
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
                C3874x0.m23899b(jSONObject, this.f8850b, false);
            } catch (Exception e) {
                e.printStackTrace();
                C3810q.m24071b().m24069d("search_number_exception");
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$i.class */
    public class C2501i implements AbstractC2767a {

        /* renamed from: a */
        final /* synthetic */ String f8852a;

        C2501i(String str) {
            C2491a.this = r4;
            this.f8852a = str;
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
                    C3738f0.m24402A(C2491a.this.f8819f);
                    C3810q.m24071b().m24069d("search_buyu_count_ok");
                }
                C3711a1.m24642F0(0L);
                String string2 = jSONObject.getString("type_label");
                String string3 = jSONObject.getString(ShortCut.NAME);
                String string4 = jSONObject.getString("format_tel_number");
                if ((C2491a.this.f8829p == null || "".equals(C2491a.this.f8829p)) && string4 != null && !string4.equals("")) {
                    C2491a.this.f8822i.setText(string4);
                }
                if (C2491a.this.f8817d == 1 && string3 != null && !"".equals(string3)) {
                    C2491a.this.f8821h.setText(string3);
                }
                if (string2 != null && !string2.equals("")) {
                    C2491a.this.f8820g.setImageResource(R$drawable.avatar_spam);
                    C2491a.this.f8826m.setVisibility(0);
                }
                String string5 = jSONObject.getString("avatar");
                if (string5 != null && !"".equals(string5)) {
                    C3852t.m23961b(C2491a.this.f8819f, string5, R$drawable.ic_photo_normal, C2491a.this.f8820g);
                }
                C3874x0.m23900a(jSONObject, this.f8852a);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$j.class */
    public class C2502j implements AbstractC3040c {

        /* renamed from: com.allinone.callerid.d.c.a$j$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$j$a.class */
        class C2503a implements AbstractC2916b {
            C2503a() {
                C2502j.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p184n.AbstractC2916b
            /* renamed from: a */
            public void mo26415a(EZSearchContacts eZSearchContacts) {
                C2491a.this.m27238O(eZSearchContacts, true);
            }
        }

        C2502j() {
            C2491a.this = r4;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3040c
        /* renamed from: a */
        public void mo26190a(EZSearchContacts eZSearchContacts, String str) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "離線解析器查詢結果: " + str);
            }
            if (eZSearchContacts != null) {
                String belong_area = eZSearchContacts.getBelong_area();
                eZSearchContacts.getType();
                eZSearchContacts.getOperator();
                String format_tel_number = eZSearchContacts.getFormat_tel_number();
                if (belong_area != null && !"".equals(belong_area)) {
                    C2491a.this.f8827n.setText(belong_area);
                    C2491a.this.f8827n.setVisibility(0);
                }
                if ((C2491a.this.f8829p == null || "".equals(C2491a.this.f8829p)) && format_tel_number != null && !"".equals(format_tel_number)) {
                    C2491a.this.f8822i.setText(format_tel_number);
                }
            }
            C2914a.m26418a(C2491a.this.f8819f, C2491a.this.f8824k, str, new C2503a());
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3040c
        /* renamed from: b */
        public void mo26189b(EZSearchContacts eZSearchContacts) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "本地保存的庫返回數據，該庫返回數據直接展示");
            }
            C3810q.m24071b().m24070c("search_offline_location_ok_new");
            C3810q.m24071b().m24069d("search_offline_location_ok_new");
            C2491a.this.m27238O(eZSearchContacts, false);
        }
    }

    /* renamed from: com.allinone.callerid.d.c.a$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/c/a$k.class */
    public static class AsyncTaskC2504k extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a */
        private WeakReference<C2491a> f8856a;

        /* renamed from: b */
        private String f8857b;

        /* renamed from: c */
        private int f8858c;

        AsyncTaskC2504k(C2491a c2491a, String str, int i) {
            this.f8856a = new WeakReference<>(c2491a);
            this.f8857b = str;
            this.f8858c = i;
        }

        /* renamed from: a */
        public Boolean doInBackground(Void... voidArr) {
            C2491a c2491a = this.f8856a.get();
            if (c2491a != null) {
                boolean z = true;
                if (!C3820b.m24031e() || !C2982a.m26310a()) {
                    c2491a.f8830q = false;
                } else if (!C3826f.m23977r(this.f8857b, this.f8858c)) {
                    C3810q.m24071b().m24070c("recorder_floatingball_show");
                    c2491a.f8830q = true;
                    return Boolean.valueOf(z);
                } else {
                    c2491a.f8830q = false;
                }
                z = false;
                return Boolean.valueOf(z);
            }
            return Boolean.FALSE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            C2491a c2491a = this.f8856a.get();
            if (c2491a != null) {
                if (bool.booleanValue()) {
                    c2491a.f8832s.setVisibility(0);
                } else {
                    c2491a.f8832s.setVisibility(8);
                }
            }
        }
    }

    private C2491a() {
    }

    /* renamed from: A */
    private WindowManager.LayoutParams m27252A() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2010;
        }
        layoutParams.height = -2;
        layoutParams.width = -1;
        layoutParams.gravity = 51;
        layoutParams.format = 1;
        int m24658B0 = C3711a1.m24658B0();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("height", "初始值==--->y==" + m24658B0);
        }
        layoutParams.y = m24658B0;
        layoutParams.flags = 524840;
        return layoutParams;
    }

    /* renamed from: C */
    private void m27250C() {
        try {
            m27251B();
            WindowManager.LayoutParams m27215z = m27215z();
            this.f8833t = (WindowManager) this.f8819f.getSystemService("window");
            if (Build.VERSION.SDK_INT < 23) {
                this.f8837x = m26722b(this.f8819f, R$layout.dialog_callscreen, m27215z);
            } else if (Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                this.f8837x = m26722b(this.f8819f, R$layout.dialog_callscreen, m27215z);
            } else {
                C3810q.m24071b().m24069d("floatview_no_per");
            }
            ViewGroup viewGroup = this.f8837x;
            if (viewGroup == null) {
                return;
            }
            this.f8833t.updateViewLayout(viewGroup, m27215z);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "overlay");
            }
            m27247F(this.f8837x);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: D */
    private void m27249D() {
        if (this.f8817d == 0) {
            this.f8838y.setVisibility(0);
            this.f8821h.setText(this.f8818e);
            C3067a.m26102b(this.f8819f).mo23631q(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.f8836w)).mo22633Z(R$drawable.ic_photo_normal).m26077K0().m23660A0(this.f8820g);
        }
        m27217x();
    }

    /* renamed from: E */
    private void m27248E() {
        this.f8835v = m27252A();
        C3569a c3569a = new C3569a();
        c3569a.m24967d(new C2496e());
        this.f8832s.setOnClickListener(new View$OnClickListenerC2498f(c3569a));
    }

    /* renamed from: F */
    private void m27247F(View view) {
        this.f8834u = (RelativeLayout) view.findViewById(R$id.rl_bg);
        this.f8825l = (MyJzvdStd) view.findViewById(R$id.jz_video);
        this.f8820g = (ImageView) view.findViewById(R$id.call_icon);
        this.f8821h = (TextView) view.findViewById(R$id.call_name);
        this.f8822i = (TextView) view.findViewById(R$id.call_phone);
        ImageView imageView = (ImageView) view.findViewById(R$id.end_call_click);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.accept_call_click);
        ImageView imageView3 = (ImageView) view.findViewById(R$id.iv_close);
        this.f8838y = (ImageView) view.findViewById(R$id.iv_is_contacts);
        this.f8826m = (TextView) view.findViewById(R$id.tv_spam);
        this.f8827n = (TextView) view.findViewById(R$id.tv_location);
        this.f8828o = (TextView) view.findViewById(R$id.tv_report_counts);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("contact", "展示来电闪屏弹窗: " + this.f8824k);
        }
        Typeface m24360a = C3739f1.m24360a();
        this.f8821h.setTypeface(m24360a);
        this.f8822i.setTypeface(m24360a);
        this.f8826m.setTypeface(m24360a);
        this.f8827n.setTypeface(m24360a);
        this.f8828o.setTypeface(m24360a);
        String str = this.f8824k;
        if (str != null) {
            String m24077b = C3809p0.m24077b(str);
            this.f8829p = m24077b;
            if (m24077b == null || "".equals(m24077b)) {
                this.f8822i.setText(this.f8824k);
            } else {
                this.f8822i.setText(this.f8829p);
            }
        }
        imageView3.setOnClickListener(new View$OnClickListenerC2493b());
        imageView.setOnClickListener(new View$OnClickListenerC2494c());
        imageView2.setOnClickListener(new View$OnClickListenerC2495d());
        C3810q.m24071b().m24070c("callscreen_show");
        HomeInfo homeInfo = this.f8823j;
        if (homeInfo != null) {
            m27244I(homeInfo);
        }
        C2450d.m27319h(imageView2).m27335d().m27327l(5.0f, -5.0f, 5.0f).m27336c().m27317j(400L).m27314m(-1).m27313n();
        RecordBallView recordBallView = (RecordBallView) view.findViewById(R$id.float_record_rl_icon);
        this.f8832s = recordBallView;
        recordBallView.setIsonTouch(false);
        this.f8832s.setCall_status(1);
        this.f8832s.setTel_phone(this.f8824k);
        this.f8832s.setStatus(10001);
        m27246G(this.f8824k, this.f8817d);
        m27248E();
        m27249D();
    }

    /* renamed from: G */
    private void m27246G(String str, int i) {
        new AsyncTaskC2504k(this, str, i).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: I */
    private void m27244I(HomeInfo homeInfo) {
        try {
            if (homeInfo.getPath() == null || "".equals(homeInfo.getPath()) || !new File(homeInfo.getPath()).exists() || !C3776a.m24159f(this.f8819f)) {
                return;
            }
            Jzvd.m27996L();
            C2129t c2129t = new C2129t(Uri.parse(homeInfo.getPath()));
            c2129t.f7391e = true;
            this.f8825l.setUp(c2129t, 1, JZMediaExo.class);
            if (!homeInfo.isIsdiy() || !homeInfo.isUseVideoAudioRing()) {
                this.f8825l.setSilence(true);
            } else {
                this.f8825l.setSilence(false);
            }
            this.f8825l.mo27462U();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: K */
    public void m27242K(String str, String str2, String str3, int i) {
        if (System.currentTimeMillis() - C3711a1.m24556c() <= 0 || i != 0 || str3 == null || "".equals(str3)) {
            return;
        }
        if (C3711a1.m24552d()) {
            C3810q.m24071b().m24069d("search_buyu_token_max");
        } else {
            C3738f0.m24361z(this.f8819f);
            C3810q.m24071b().m24069d("search_buyu_count");
        }
        C2768b.m26620a(this.f8819f, str2, str3, new C2501i(str));
    }

    /* renamed from: L */
    private void m27241L(String str, int i) {
        if (i == 1) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "查询本地数据并展示");
            }
            C3810q.m24071b().m24070c("search_offline_new");
            C3810q.m24071b().m24069d("search_offline_new");
            C3045f.m26168d(str, new C2502j());
        }
    }

    /* renamed from: M */
    public void m27240M(String str, int i, boolean z) {
        if (i == 1) {
            C2771d.m26617a(this.f8819f, str, 1, i, new C2500h(z, str));
        }
    }

    /* renamed from: O */
    public void m27238O(EZSearchContacts eZSearchContacts, boolean z) {
        if (eZSearchContacts != null) {
            String format_tel_number = eZSearchContacts.getFormat_tel_number();
            String str = this.f8829p;
            if ((str == null || "".equals(str)) && format_tel_number != null && !"".equals(format_tel_number)) {
                this.f8822i.setText(format_tel_number);
            }
            String name = eZSearchContacts.getName();
            if (this.f8817d == 1 && name != null && !"".equals(name)) {
                this.f8821h.setText(name);
            }
            int parseInt = (eZSearchContacts.getReport_count() == null || "".equals(eZSearchContacts.getReport_count())) ? 0 : Integer.parseInt(eZSearchContacts.getReport_count());
            String belong_area = eZSearchContacts.getBelong_area();
            if (belong_area != null && !"".equals(belong_area)) {
                this.f8827n.setText(belong_area);
                this.f8827n.setVisibility(0);
            }
            String type_label = eZSearchContacts.getType_label();
            if (type_label != null && !type_label.equals("") && parseInt == 0) {
                this.f8820g.setImageResource(R$drawable.avatar_spam);
                this.f8826m.setVisibility(0);
            }
            if (type_label == null || type_label.equals("") || parseInt <= 0) {
                return;
            }
            this.f8820g.setImageResource(R$drawable.avatar_spam);
            this.f8826m.setVisibility(0);
            this.f8828o.setVisibility(0);
            TextView textView = this.f8828o;
            textView.setText(parseInt + " " + this.f8819f.getResources().getString(R$string.as_spam));
        }
    }

    /* renamed from: x */
    private void m27217x() {
        String replace = this.f8824k.replace(" ", "").replace("-", "").replace(BasicSQLHelper.ALL, "").replace("#", "");
        if (!C3725e.m24417b(this.f8819f)) {
            C3810q.m24071b().m24069d("is_not_connected");
            C3810q.m24071b().m24069d("unknow_not_connected");
            C3810q.m24071b().m24069d("unknow_incoming_not_connected");
            C3738f0.m24366u(EZCallApplication.m26146c());
            m27241L(replace, this.f8817d);
            return;
        }
        C3810q.m24071b().m24069d("is_connected");
        if (this.f8817d == 1) {
            C3810q.m24071b().m24069d("unknow_is_connected");
            C3810q.m24071b().m24069d("unknow_incoming_is_connected");
        }
        C3738f0.m24367t(EZCallApplication.m26146c());
        C2775b.m26613a(this.f8824k, new C2499g(replace));
    }

    /* renamed from: y */
    public static C2491a m27216y() {
        if (f8816c == null) {
            synchronized (C2491a.class) {
                try {
                    if (f8816c == null) {
                        f8816c = new C2491a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8816c;
    }

    /* renamed from: z */
    private WindowManager.LayoutParams m27215z() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2010;
        }
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.flags = 17303336;
        return layoutParams;
    }

    /* renamed from: B */
    public void m27251B() {
        synchronized (this.f9406b) {
            if (this.f8837x != null) {
                try {
                    if (this.f8833t != null) {
                        try {
                            Jzvd.m27996L();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        this.f8833t.removeView(this.f8837x);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                this.f8837x = null;
            }
        }
    }

    /* renamed from: H */
    public void m27245H(String str, int i) {
        try {
            if (!this.f8830q) {
                return;
            }
            RecordBallView recordBallView = this.f8831r;
            if (recordBallView != null) {
                recordBallView.m24974j();
                this.f8831r = null;
            }
            Context context = this.f8819f;
            WindowManager.LayoutParams layoutParams = this.f8835v;
            RecordBallView recordBallView2 = new RecordBallView(context, layoutParams.x, layoutParams.y);
            this.f8831r = recordBallView2;
            recordBallView2.setCall_status(i);
            this.f8831r.setTel_phone(str);
            this.f8831r.setStatus(10001);
            this.f8831r.setLayoutParams(84, 84);
            this.f8831r.m24978f();
            this.f8831r.postDelayed(new RunnableC2492a(), 90L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: J */
    public void m27243J() {
        RecordBallView recordBallView = this.f8831r;
        if (recordBallView != null) {
            recordBallView.m24974j();
            this.f8831r = null;
        }
    }

    /* renamed from: N */
    public void m27239N(Context context, String str, HomeInfo homeInfo, int i, String str2, int i2) {
        synchronized (this.f9406b) {
            this.f8819f = context;
            this.f8823j = homeInfo;
            this.f8824k = str;
            this.f8817d = i;
            this.f8818e = str2;
            this.f8836w = i2;
            m27250C();
        }
    }
}
