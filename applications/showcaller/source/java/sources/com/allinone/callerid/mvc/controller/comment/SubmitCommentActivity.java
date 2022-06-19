package com.allinone.callerid.mvc.controller.comment;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.CommentContent;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.dialog.DialogC2580a;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c;
import com.allinone.callerid.p162i.p163a.p165b0.C2775b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2832o;
import com.allinone.callerid.p162i.p163a.p172g.C2829m;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p179j.AbstractC2872c;
import com.allinone.callerid.p162i.p163a.p179j.AbstractC2876f;
import com.allinone.callerid.p162i.p163a.p179j.C2868a;
import com.allinone.callerid.p162i.p163a.p179j.C2877g;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3868w;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity.class */
public class SubmitCommentActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f10565A;

    /* renamed from: B */
    private TextView f10566B;

    /* renamed from: C */
    private TextView f10567C;

    /* renamed from: D */
    private BaseEditText f10568D;

    /* renamed from: E */
    private FrameLayout f10569E;

    /* renamed from: F */
    private String f10570F;

    /* renamed from: G */
    private ImageView f10571G;

    /* renamed from: H */
    private ImageView f10572H;

    /* renamed from: I */
    private ImageView f10573I;

    /* renamed from: J */
    private ImageView f10574J;

    /* renamed from: K */
    private boolean f10575K;

    /* renamed from: M */
    private String f10577M;

    /* renamed from: N */
    private String f10578N;

    /* renamed from: O */
    private String f10579O;

    /* renamed from: P */
    private FrameLayout f10580P;

    /* renamed from: Q */
    private TextView f10581Q;

    /* renamed from: R */
    private FrameLayout f10582R;

    /* renamed from: S */
    private DialogC2580a f10583S;

    /* renamed from: T */
    private boolean f10584T;

    /* renamed from: V */
    private C3868w f10586V;

    /* renamed from: W */
    private int f10587W;

    /* renamed from: X */
    private int f10588X;

    /* renamed from: Y */
    private int f10589Y;

    /* renamed from: Z */
    private int f10590Z;

    /* renamed from: a0 */
    private TextWatcher f10591a0;

    /* renamed from: v */
    private Typeface f10593v;

    /* renamed from: w */
    private TextView f10594w;

    /* renamed from: x */
    private TextView f10595x;

    /* renamed from: y */
    private TextView f10596y;

    /* renamed from: z */
    private TextView f10597z;

    /* renamed from: u */
    private final String f10592u = "SubmitCommentActivity";

    /* renamed from: L */
    private String f10576L = "";

    /* renamed from: U */
    private boolean f10585U = true;

    /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a.class */
    class RunnableC3303a implements Runnable {
        RunnableC3303a() {
            SubmitCommentActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            SubmitCommentActivity.this.m25526s0();
            SubmitCommentActivity.this.f10593v = C3739f1.m24359b();
            C3810q.m24071b().m24070c("unknow_submit_comment_show");
            TextView textView = (TextView) SubmitCommentActivity.this.findViewById(R$id.tv_title);
            ImageView imageView = (ImageView) SubmitCommentActivity.this.findViewById(R$id.lb_tag_close);
            SubmitCommentActivity.this.findViewById(R$id.rl_close).setOnClickListener(SubmitCommentActivity.this);
            imageView.setOnClickListener(SubmitCommentActivity.this);
            textView.setTypeface(SubmitCommentActivity.this.f10593v);
            SubmitCommentActivity.this.m25527r0();
            SubmitCommentActivity.this.m25524u0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b.class */
    public class C3304b implements TextWatcher {
        C3304b() {
            SubmitCommentActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence == null || "".equals(charSequence.toString())) {
                SubmitCommentActivity.this.f10567C.setText("0/500");
                return;
            }
            C3810q.m24071b().m24070c("unknow_write_comment");
            TextView textView = SubmitCommentActivity.this.f10567C;
            textView.setText(charSequence.length() + "/500");
            String charSequence2 = charSequence.toString();
            if (charSequence2.length() < 5 || charSequence2.contains("http") || charSequence2.contains("wwww.") || C3767h1.m24238l0(charSequence2)) {
                SubmitCommentActivity.this.f10569E.setBackgroundResource(R$drawable.bg_start);
            } else {
                SubmitCommentActivity.this.f10580P.setVisibility(8);
                SubmitCommentActivity.this.f10582R.setBackgroundResource(SubmitCommentActivity.this.f10590Z);
                SubmitCommentActivity.this.f10567C.setTextColor(SubmitCommentActivity.this.f10588X);
            }
            if (charSequence2.length() >= 495) {
                SubmitCommentActivity.this.f10567C.setTextColor(SubmitCommentActivity.this.f10589Y);
            } else {
                SubmitCommentActivity.this.f10567C.setTextColor(SubmitCommentActivity.this.f10588X);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$c.class */
    public class View$OnClickListenerC3305c implements View.OnClickListener {
        View$OnClickListenerC3305c() {
            SubmitCommentActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131296725) {
                C3810q.m24071b().m24070c("unknow_select_dialog_cancel");
                SubmitCommentActivity.this.f10583S.dismiss();
                SubmitCommentActivity.this.finish();
                SubmitCommentActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } else if (id != 2131296767) {
            } else {
                C3810q.m24071b().m24070c("unknow_select_dialog_submit");
                SubmitCommentActivity.this.f10583S.dismiss();
                if (C3767h1.m24261a(SubmitCommentActivity.this.getApplicationContext())) {
                    SubmitCommentActivity.this.m25530o0();
                } else {
                    Toast.makeText(SubmitCommentActivity.this.getApplicationContext(), (int) R$string.search_desc, 0).show();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d.class */
    public class C3306d implements AbstractC2832o {

        /* renamed from: a */
        final /* synthetic */ String f10601a;

        /* renamed from: b */
        final /* synthetic */ long f10602b;

        /* renamed from: c */
        final /* synthetic */ String f10603c;

        /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d$a.class */
        class C3307a implements AbstractC2876f {
            C3307a() {
                C3306d.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p179j.AbstractC2876f
            /* renamed from: a */
            public void mo25493a(String str) {
                if (str != null) {
                    try {
                        if ("".equals(str)) {
                            return;
                        }
                        if (new JSONObject(str).getInt("status") != 1) {
                            C3810q.m24071b().m24070c("unknow_submit_comment_fail");
                            return;
                        }
                        C3810q.m24071b().m24070c("unknow_submit_comment_success");
                        if (SubmitCommentActivity.this.f10579O.equals("1")) {
                            C3810q.m24071b().m24070c("unknow_submit_comment_success_isnormal");
                        }
                        if (!SubmitCommentActivity.this.f10584T) {
                            return;
                        }
                        C3810q.m24071b().m24070c("unknow_submit_comment_success_isspam");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        C3306d(String str, long j, String str2) {
            SubmitCommentActivity.this = r5;
            this.f10601a = str;
            this.f10602b = j;
            this.f10603c = str2;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2832o
        /* renamed from: a */
        public void mo25494a(String str, String str2) {
            String str3;
            String str4;
            if (str == null || "".equals(str) || str2 == null || "".equals(str2)) {
                str3 = "";
                str4 = str3;
            } else {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("submitcomment", "call_time:" + str + "\nis_answered:" + str2);
                }
                str3 = str;
                str4 = str2;
            }
            C2877g.m26478a(this.f10601a, this.f10602b, str3, str4, SubmitCommentActivity.this.f10579O, SubmitCommentActivity.this.f10570F, this.f10603c, new C3307a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e.class */
    public class C3308e implements AbstractC2872c {

        /* renamed from: a */
        final /* synthetic */ String f10606a;

        /* renamed from: b */
        final /* synthetic */ String f10607b;

        /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e$a.class */
        class C3309a implements AbstractC2770c {
            C3309a() {
                C3308e.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c
            /* renamed from: a */
            public void mo25491a(String str) {
                if (str == null || !"ok".equals(str)) {
                    return;
                }
                C3767h1.m24279J0(SubmitCommentActivity.this.getApplicationContext());
            }
        }

        C3308e(String str, String str2) {
            SubmitCommentActivity.this = r4;
            this.f10606a = str;
            this.f10607b = str2;
        }

        @Override // com.allinone.callerid.p162i.p163a.p179j.AbstractC2872c
        /* renamed from: a */
        public void mo25492a(String str) {
            if (str == null || !"ok".equals(str)) {
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("comment", "s:" + str);
            }
            C2775b.m26612b(this.f10606a, this.f10607b, SubmitCommentActivity.this.f10570F, new C3309a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$f.class */
    public class C3310f implements C3868w.AbstractC3870b {
        C3310f() {
            SubmitCommentActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.C3868w.AbstractC3870b
        /* renamed from: a */
        public void mo23905a() {
        }

        @Override // com.allinone.callerid.util.C3868w.AbstractC3870b
        /* renamed from: b */
        public void mo23904b() {
            C3810q.m24071b().m24070c("unknow_submit_comment_click_home");
        }
    }

    /* renamed from: o0 */
    public void m25530o0() {
        String obj = this.f10568D.getText().toString();
        if (obj != null) {
            if (!"".equals(obj)) {
                C3810q.m24071b().m24070c("unknow_submit_has_comment");
                if (obj.length() < 5) {
                    this.f10581Q.setText(getResources().getString(R$string.comment_text_flew));
                    this.f10580P.setVisibility(0);
                    this.f10582R.setBackgroundResource(R$drawable.bg_comment_edit_error);
                    this.f10567C.setTextColor(this.f10589Y);
                    C3810q.m24071b().m24070c("unknow_submit_comment_least");
                    return;
                } else if (obj.contains("http") || obj.contains("wwww")) {
                    this.f10581Q.setText(getResources().getString(R$string.comment_is_url));
                    this.f10580P.setVisibility(0);
                    this.f10582R.setBackgroundResource(R$drawable.bg_comment_edit_error);
                    C3810q.m24071b().m24070c("unknow_submit_comment_url");
                    return;
                } else if (C3767h1.m24238l0(obj)) {
                    this.f10581Q.setText(getResources().getString(R$string.comment_special_character));
                    this.f10580P.setVisibility(0);
                    this.f10582R.setBackgroundResource(R$drawable.bg_comment_edit_error);
                    C3810q.m24071b().m24070c("unknow_submit_comment_special");
                    return;
                }
            } else {
                C3810q.m24071b().m24070c("unknow_submit_no_comment");
            }
            long currentTimeMillis = System.currentTimeMillis();
            m25525t0(this.f10578N, obj, currentTimeMillis);
            m25522w0(getApplicationContext(), this.f10578N, obj, currentTimeMillis);
            Toast.makeText(getApplicationContext(), getResources().getString(R$string.submit_success), 0).show();
            this.f10585U = false;
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: p0 */
    private void m25529p0() {
        if (!this.f10575K) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return;
        }
        this.f10583S = new DialogC2580a(this, R$style.CustomDialog4, new View$OnClickListenerC3305c());
        C3810q.m24071b().m24070c("unknow_select_dialog_show");
        this.f10583S.show();
    }

    /* renamed from: q0 */
    private void m25528q0(IBinder iBinder) {
        if (iBinder != null) {
            try {
                InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
                if (inputMethodManager == null) {
                    return;
                }
                inputMethodManager.hideSoftInputFromWindow(iBinder, 2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: r0 */
    public void m25527r0() {
        this.f10587W = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        this.f10588X = C3719c1.m24432a(this, R$attr.color_weak, R$color.color_999999);
        this.f10589Y = C3719c1.m24432a(this, R$attr.color_FF0000, R$color.color_FF0000);
        this.f10590Z = C3719c1.m24431b(this, R$attr.bg_comment_edit, R$drawable.bg_comment_edit);
        this.f10594w = (TextView) findViewById(R$id.tv_comment_title);
        this.f10595x = (TextView) findViewById(R$id.tv_normal);
        this.f10596y = (TextView) findViewById(R$id.tv_spam);
        this.f10597z = (TextView) findViewById(R$id.tv_scam);
        this.f10565A = (TextView) findViewById(R$id.tv_telemarket);
        this.f10566B = (TextView) findViewById(R$id.tv_btn);
        this.f10567C = (TextView) findViewById(R$id.tv_max);
        this.f10568D = (BaseEditText) findViewById(R$id.et_comment);
        this.f10580P = (FrameLayout) findViewById(R$id.rl_comment_tip_error);
        this.f10582R = (FrameLayout) findViewById(R$id.rl_edit_bg);
        this.f10581Q = (TextView) findViewById(R$id.tv_comment_tip_error);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_normal);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.fl_spam);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.fl_scam);
        FrameLayout frameLayout4 = (FrameLayout) findViewById(R$id.fl_telemarket);
        this.f10569E = (FrameLayout) findViewById(R$id.fl_report_comment);
        this.f10571G = (ImageView) findViewById(R$id.im_normal);
        this.f10572H = (ImageView) findViewById(R$id.im_spam);
        this.f10573I = (ImageView) findViewById(R$id.im_scam);
        this.f10574J = (ImageView) findViewById(R$id.im_telemarket);
        FrameLayout frameLayout5 = (FrameLayout) findViewById(R$id.rl_comment_title);
        View findViewById = findViewById(R$id.view_mid);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        frameLayout3.setOnClickListener(this);
        frameLayout4.setOnClickListener(this);
        this.f10569E.setOnClickListener(this);
        frameLayout5.setOnClickListener(this);
        findViewById.setOnClickListener(this);
        this.f10594w.setTypeface(this.f10593v);
        this.f10595x.setTypeface(this.f10593v);
        this.f10596y.setTypeface(this.f10593v);
        this.f10597z.setTypeface(this.f10593v);
        this.f10565A.setTypeface(this.f10593v);
        this.f10566B.setTypeface(this.f10593v);
        this.f10567C.setTypeface(this.f10593v);
        this.f10568D.setTypeface(this.f10593v);
        this.f10581Q.setTypeface(this.f10593v);
        C3304b c3304b = new C3304b();
        this.f10591a0 = c3304b;
        this.f10568D.addTextChangedListener(c3304b);
    }

    /* renamed from: s0 */
    public void m25526s0() {
        C3868w c3868w = new C3868w(this);
        this.f10586V = c3868w;
        c3868w.m23908b(new C3310f());
        this.f10586V.m23907c();
    }

    /* renamed from: t0 */
    private void m25525t0(String str, String str2, long j) {
        CommentContent commentContent = new CommentContent();
        commentContent.setTel_number(str);
        commentContent.setType_label(this.f10570F);
        commentContent.setAuthor(getApplicationContext().getResources().getString(R$string.you));
        commentContent.setCreate_time(C3771i.m24206d(j));
        commentContent.setContent(str2);
        commentContent.setT_p(this.f10577M);
        C2868a.m26488b(commentContent, new C3308e(str, str2));
    }

    /* renamed from: u0 */
    public void m25524u0() {
        Intent intent = getIntent();
        if (intent != null) {
            CallLogBean callLogBean = (CallLogBean) intent.getParcelableExtra("number_content");
            int intExtra = intent.getIntExtra("is_activity", 0);
            String stringExtra = intent.getStringExtra("activity_count");
            if (callLogBean == null) {
                return;
            }
            String m24928S = callLogBean.m24928S();
            this.f10570F = callLogBean.m24932P();
            String m24864x = callLogBean.m24864x();
            this.f10577M = callLogBean.m24943J();
            this.f10578N = callLogBean.m24880o();
            if (m24928S != null && !"".equals(m24928S)) {
                boolean z = true;
                switch (m24928S.hashCode()) {
                    case 2570908:
                        if (m24928S.equals("Scam")) {
                            z = false;
                            break;
                        }
                        break;
                    case 2583401:
                        if (m24928S.equals("Spam")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1172387228:
                        if (m24928S.equals("Telemarketing")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        this.f10576L = "is_scam";
                        this.f10570F = "Scam";
                        this.f10575K = true;
                        this.f10579O = "";
                        this.f10584T = true;
                        this.f10582R.setVisibility(0);
                        this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                        this.f10571G.setImageResource(R$drawable.comment_normal_gray_40dp);
                        this.f10595x.setTextColor(this.f10588X);
                        this.f10573I.setImageResource(R$drawable.comment_scam_red_40dp);
                        this.f10597z.setTextColor(getResources().getColor(R$color.comments_sapm));
                        this.f10572H.setImageResource(R$drawable.comment_spam_gray_40dp);
                        this.f10596y.setTextColor(this.f10588X);
                        this.f10574J.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                        this.f10565A.setTextColor(this.f10588X);
                        this.f10566B.setTextColor(getResources().getColor(R$color.white));
                        this.f10569E.setBackgroundResource(R$drawable.bg_start);
                        break;
                    case true:
                        this.f10576L = "is_spam";
                        this.f10570F = "Spam";
                        this.f10575K = true;
                        this.f10579O = "";
                        this.f10584T = true;
                        this.f10582R.setVisibility(0);
                        this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                        this.f10571G.setImageResource(R$drawable.comment_normal_gray_40dp);
                        this.f10595x.setTextColor(this.f10588X);
                        this.f10573I.setImageResource(R$drawable.comment_scam_gray_40dp);
                        this.f10597z.setTextColor(this.f10588X);
                        this.f10572H.setImageResource(R$drawable.comment_spam_red_40dp);
                        this.f10596y.setTextColor(getResources().getColor(R$color.comments_sapm));
                        this.f10574J.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                        this.f10565A.setTextColor(this.f10588X);
                        this.f10566B.setTextColor(getResources().getColor(R$color.white));
                        this.f10569E.setBackgroundResource(R$drawable.bg_start);
                        break;
                    case true:
                        this.f10576L = "is_telemarketing";
                        this.f10570F = "Telemarketing";
                        this.f10575K = true;
                        this.f10579O = "";
                        this.f10584T = true;
                        this.f10582R.setVisibility(0);
                        this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                        this.f10571G.setImageResource(R$drawable.comment_normal_gray_40dp);
                        this.f10595x.setTextColor(this.f10588X);
                        this.f10573I.setImageResource(R$drawable.comment_scam_gray_40dp);
                        this.f10597z.setTextColor(this.f10588X);
                        this.f10572H.setImageResource(R$drawable.comment_spam_gray_40dp);
                        this.f10596y.setTextColor(this.f10588X);
                        this.f10574J.setImageResource(R$drawable.comment_telemarketing_red_40dp);
                        this.f10565A.setTextColor(getResources().getColor(R$color.comments_sapm));
                        this.f10566B.setTextColor(getResources().getColor(R$color.white));
                        this.f10569E.setBackgroundResource(R$drawable.bg_start);
                        break;
                }
            }
            String str = this.f10570F;
            if (str == null || "".equals(str)) {
                if (intExtra != 1) {
                    return;
                }
                String string = getResources().getString(R$string.comment_title_activity);
                if (stringExtra == null || "".equals(stringExtra)) {
                    this.f10594w.setText(Html.fromHtml(string.replace("X", "<font color='#ee5164'> 10</font>")));
                    return;
                }
                this.f10594w.setText(Html.fromHtml(string.replace("X", "<font color='#ee5164'> " + stringExtra + "</font>")));
                return;
            }
            String replace = getResources().getString(R$string.comment_title_spam).replace("XX", "<font color='#ee5164'> " + callLogBean.m24932P() + "</font>");
            if (m24864x == null || "".equals(m24864x) || "0".equals(m24864x)) {
                this.f10594w.setText(Html.fromHtml(replace.replace("X", "<font color='#ee5164'> 10</font>")));
                return;
            }
            this.f10594w.setText(Html.fromHtml(replace.replace("X", "<font color='#ee5164'> " + m24864x + "</font>")));
        }
    }

    /* renamed from: v0 */
    private void m25523v0() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            this.f10568D.requestFocus();
            inputMethodManager.showSoftInput(this.f10568D, 0);
        }
    }

    /* renamed from: w0 */
    private void m25522w0(Context context, String str, String str2, long j) {
        C2829m.m26530a(context, str, new C3306d(str, j, str2));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_normal /* 2131296763 */:
                String str = this.f10570F;
                if (str == null || "".equals(str)) {
                    this.f10579O = "0";
                } else {
                    this.f10579O = "1";
                }
                this.f10576L = "";
                this.f10570F = "";
                this.f10575K = true;
                this.f10582R.setVisibility(0);
                this.f10568D.setHint(getResources().getString(R$string.comment_hint));
                this.f10571G.setImageResource(R$drawable.comment_normal_blue_40dp);
                this.f10595x.setTextColor(this.f10587W);
                this.f10573I.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10597z.setTextColor(this.f10588X);
                this.f10572H.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10596y.setTextColor(this.f10588X);
                this.f10574J.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10565A.setTextColor(this.f10588X);
                this.f10566B.setTextColor(getResources().getColor(R$color.white));
                this.f10569E.setBackgroundResource(R$drawable.bg_start);
                m25523v0();
                this.f10568D.setHint(getResources().getString(R$string.comment_hint));
                C3810q.m24071b().m24070c("unknow_type_select");
                return;
            case R$id.fl_report_comment /* 2131296776 */:
                try {
                    if (this.f10575K) {
                        if (C3767h1.m24261a(getApplicationContext())) {
                            m25530o0();
                            C3810q.m24071b().m24070c("unknow_submit_comment_click");
                        } else {
                            Toast.makeText(getApplicationContext(), (int) R$string.search_desc, 0).show();
                        }
                        CollectInfo collectInfo = new CollectInfo();
                        collectInfo.setNumber(this.f10578N);
                        collectInfo.setUser_blocked("0");
                        collectInfo.setUser_commented("1");
                        if (this.f10584T) {
                            collectInfo.setUser_reported("1");
                        } else {
                            collectInfo.setUser_reported("0");
                        }
                        collectInfo.setUser_upload_recording("0");
                        C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                        return;
                    }
                    String obj = this.f10568D.getText().toString();
                    if (obj == null || "".equals(obj)) {
                        return;
                    }
                    if (C3767h1.m24261a(getApplicationContext())) {
                        m25530o0();
                        C3810q.m24071b().m24070c("unknow_submit_comment_click");
                    } else {
                        Toast.makeText(getApplicationContext(), (int) R$string.search_desc, 0).show();
                    }
                    CollectInfo collectInfo2 = new CollectInfo();
                    collectInfo2.setNumber(this.f10578N);
                    collectInfo2.setUser_blocked("0");
                    collectInfo2.setUser_commented("1");
                    collectInfo2.setUser_reported("0");
                    collectInfo2.setUser_upload_recording("0");
                    C2839c.m26517c(EZCallApplication.m26146c(), collectInfo2);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.fl_scam /* 2131296780 */:
                this.f10576L = "is_scam";
                this.f10570F = "Scam";
                this.f10575K = true;
                this.f10579O = "";
                if ("Scam" == 0 || "".equals("Scam")) {
                    this.f10584T = true;
                }
                this.f10582R.setVisibility(0);
                this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10571G.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10595x.setTextColor(this.f10588X);
                this.f10573I.setImageResource(R$drawable.comment_scam_red_40dp);
                this.f10597z.setTextColor(getResources().getColor(R$color.comments_sapm));
                this.f10572H.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10596y.setTextColor(this.f10588X);
                this.f10574J.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10565A.setTextColor(this.f10588X);
                this.f10566B.setTextColor(getResources().getColor(R$color.white));
                this.f10569E.setBackgroundResource(R$drawable.bg_start);
                m25523v0();
                this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                C3810q.m24071b().m24070c("unknow_type_select");
                return;
            case R$id.fl_spam /* 2131296798 */:
                this.f10576L = "is_spam";
                this.f10570F = "Spam";
                this.f10575K = true;
                this.f10579O = "";
                if ("Spam" == 0 || "".equals("Spam")) {
                    this.f10584T = true;
                }
                this.f10582R.setVisibility(0);
                this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10571G.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10595x.setTextColor(this.f10588X);
                this.f10573I.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10597z.setTextColor(this.f10588X);
                this.f10572H.setImageResource(R$drawable.comment_spam_red_40dp);
                this.f10596y.setTextColor(getResources().getColor(R$color.comments_sapm));
                this.f10574J.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10565A.setTextColor(this.f10588X);
                this.f10566B.setTextColor(getResources().getColor(R$color.white));
                this.f10569E.setBackgroundResource(R$drawable.bg_start);
                m25523v0();
                this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                C3810q.m24071b().m24070c("unknow_type_select");
                return;
            case R$id.fl_telemarket /* 2131296800 */:
                this.f10576L = "is_telemarketing";
                this.f10570F = "Telemarketing";
                this.f10575K = true;
                this.f10579O = "";
                if ("Telemarketing" == 0 || "".equals("Telemarketing")) {
                    this.f10584T = true;
                }
                this.f10582R.setVisibility(0);
                this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10571G.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10595x.setTextColor(this.f10588X);
                this.f10573I.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10597z.setTextColor(this.f10588X);
                this.f10572H.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10596y.setTextColor(this.f10588X);
                this.f10574J.setImageResource(R$drawable.comment_telemarketing_red_40dp);
                this.f10565A.setTextColor(getResources().getColor(R$color.comments_sapm));
                this.f10566B.setTextColor(getResources().getColor(R$color.white));
                this.f10569E.setBackgroundResource(R$drawable.bg_start);
                m25523v0();
                this.f10568D.setHint(getResources().getString(R$string.comment_hint_spam));
                C3810q.m24071b().m24070c("unknow_type_select");
                return;
            case R$id.lb_tag_close /* 2131297129 */:
                m25529p0();
                return;
            case R$id.rl_comment_title /* 2131297492 */:
                m25528q0(view.getWindowToken());
                return;
            case R$id.view_mid /* 2131298271 */:
                m25528q0(view.getWindowToken());
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
            setContentView(R$layout.activity_submit_comment);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            getWindow().getDecorView().post(new RunnableC3303a());
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = (int) (defaultDisplay.getWidth() * 1.0d);
            attributes.alpha = 1.0f;
            attributes.dimAmount = 0.0f;
            getWindow().setAttributes(attributes);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f10585U) {
                C3810q.m24071b().m24070c("unknow_submit_comment_drop_out");
                if (this.f10575K) {
                    C3810q.m24071b().m24070c("unknow_drop_out_select_type");
                } else if (!"".equals(this.f10568D.getText().toString())) {
                    C3810q.m24071b().m24070c("unknow_drop_out_write_text");
                } else {
                    C3810q.m24071b().m24070c("unknow_drop_out_unselect");
                }
            }
            this.f10586V.m23906d();
            this.f10568D.removeTextChangedListener(this.f10591a0);
            this.f10591a0 = null;
            this.f10568D.setOnEditorActionListener(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m25529p0();
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
