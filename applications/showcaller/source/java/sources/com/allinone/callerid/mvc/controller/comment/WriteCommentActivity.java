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
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
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
import com.allinone.callerid.dialog.DialogC2580a;
import com.allinone.callerid.dialog.DialogC2581b;
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
import org.json.JSONObject;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity.class */
public class WriteCommentActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f10615A;

    /* renamed from: B */
    private TextView f10616B;

    /* renamed from: C */
    private EditText f10617C;

    /* renamed from: D */
    private String f10618D;

    /* renamed from: E */
    private String f10619E;

    /* renamed from: F */
    private ImageView f10620F;

    /* renamed from: G */
    private ImageView f10621G;

    /* renamed from: H */
    private ImageView f10622H;

    /* renamed from: I */
    private ImageView f10623I;

    /* renamed from: J */
    private boolean f10624J;

    /* renamed from: L */
    private String f10626L;

    /* renamed from: M */
    private String f10627M;

    /* renamed from: N */
    private String f10628N;

    /* renamed from: O */
    private FrameLayout f10629O;

    /* renamed from: P */
    private TextView f10630P;

    /* renamed from: Q */
    private FrameLayout f10631Q;

    /* renamed from: R */
    private DialogC2581b f10632R;

    /* renamed from: S */
    private DialogC2580a f10633S;

    /* renamed from: T */
    private ImageView f10634T;

    /* renamed from: U */
    private boolean f10635U;

    /* renamed from: W */
    private int f10637W;

    /* renamed from: X */
    private int f10638X;

    /* renamed from: Y */
    private int f10639Y;

    /* renamed from: Z */
    private int f10640Z;

    /* renamed from: a0 */
    private int f10641a0;

    /* renamed from: b0 */
    private int f10642b0;

    /* renamed from: c0 */
    private TextWatcher f10643c0;

    /* renamed from: v */
    private Typeface f10645v;

    /* renamed from: w */
    private TextView f10646w;

    /* renamed from: x */
    private TextView f10647x;

    /* renamed from: y */
    private TextView f10648y;

    /* renamed from: z */
    private TextView f10649z;

    /* renamed from: u */
    private final String f10644u = "WriteCommentActivity";

    /* renamed from: K */
    private String f10625K = "";

    /* renamed from: V */
    private boolean f10636V = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a.class */
    public class RunnableC3313a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a$a.class */
        class View$OnClickListenerC3314a implements View.OnClickListener {
            View$OnClickListenerC3314a() {
                RunnableC3313a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WriteCommentActivity.this.m25501r0();
            }
        }

        RunnableC3313a() {
            WriteCommentActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            WriteCommentActivity.this.f10645v = C3739f1.m24359b();
            C3810q.m24071b().m24070c("submit_comment_show");
            TextView textView = (TextView) WriteCommentActivity.this.findViewById(R$id.tv_title_about);
            ImageView imageView = (ImageView) WriteCommentActivity.this.findViewById(R$id.header_left_about);
            WriteCommentActivity writeCommentActivity = WriteCommentActivity.this;
            writeCommentActivity.f10634T = (ImageView) writeCommentActivity.findViewById(R$id.ib_submit);
            if (C3767h1.m24250f0(WriteCommentActivity.this.getApplicationContext()).booleanValue()) {
                imageView.setImageResource(R$drawable.ic_back_oppo);
            }
            imageView.setOnClickListener(new View$OnClickListenerC3314a());
            textView.setTypeface(WriteCommentActivity.this.f10645v);
            WriteCommentActivity.this.m25499t0();
            WriteCommentActivity.this.m25497v0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b.class */
    public class C3315b implements TextWatcher {
        C3315b() {
            WriteCommentActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("comment", "onTextChanged");
            }
            if (charSequence == null || "".equals(charSequence.toString())) {
                WriteCommentActivity.this.f10616B.setText("0/500");
                return;
            }
            C3810q.m24071b().m24070c("write_comment");
            TextView textView = WriteCommentActivity.this.f10616B;
            textView.setText(charSequence.length() + "/500");
            String charSequence2 = charSequence.toString();
            if (charSequence2.length() < 5 || charSequence2.contains("http") || charSequence2.contains("wwww.") || C3767h1.m24238l0(charSequence2)) {
                WriteCommentActivity.this.f10634T.setAlpha(1.0f);
            } else {
                WriteCommentActivity.this.f10629O.setVisibility(8);
                WriteCommentActivity.this.f10631Q.setBackgroundResource(WriteCommentActivity.this.f10642b0);
                WriteCommentActivity.this.f10616B.setTextColor(WriteCommentActivity.this.f10640Z);
            }
            if (charSequence2.length() >= 495) {
                WriteCommentActivity.this.f10616B.setTextColor(WriteCommentActivity.this.f10637W);
            } else {
                WriteCommentActivity.this.f10616B.setTextColor(WriteCommentActivity.this.f10640Z);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c.class */
    public class View$OnClickListenerC3316c implements View.OnClickListener {
        View$OnClickListenerC3316c() {
            WriteCommentActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131296725) {
                C3810q.m24071b().m24070c("select_dialog_cancel");
                WriteCommentActivity.this.f10633S.dismiss();
                WriteCommentActivity.this.finish();
                WriteCommentActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } else if (id != 2131296767) {
            } else {
                C3810q.m24071b().m24070c("select_dialog_continue");
                WriteCommentActivity.this.f10633S.dismiss();
                if (C3767h1.m24261a(WriteCommentActivity.this.getApplicationContext())) {
                    WriteCommentActivity.this.m25502q0();
                } else {
                    Toast.makeText(WriteCommentActivity.this.getApplicationContext(), (int) R$string.search_desc, 0).show();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d.class */
    public class View$OnClickListenerC3317d implements View.OnClickListener {
        View$OnClickListenerC3317d() {
            WriteCommentActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id != 2131296725) {
                if (id != 2131296767) {
                    return;
                }
                C3810q.m24071b().m24070c("unselect_dialog_cancel");
                WriteCommentActivity.this.f10632R.dismiss();
                return;
            }
            C3810q.m24071b().m24070c("unselect_dialog_ok");
            WriteCommentActivity.this.f10632R.dismiss();
            WriteCommentActivity.this.finish();
            WriteCommentActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e.class */
    public class C3318e implements AbstractC2832o {

        /* renamed from: a */
        final /* synthetic */ String f10655a;

        /* renamed from: b */
        final /* synthetic */ long f10656b;

        /* renamed from: c */
        final /* synthetic */ String f10657c;

        /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e$a.class */
        class C3319a implements AbstractC2876f {
            C3319a() {
                C3318e.this = r4;
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
                            C3810q.m24071b().m24070c("submit_comment_fail");
                            return;
                        }
                        C3810q.m24071b().m24070c("submit_comment_success");
                        if (WriteCommentActivity.this.f10628N.equals("1")) {
                            C3810q.m24071b().m24070c("submit_comment_success_isnormal");
                        }
                        if (!WriteCommentActivity.this.f10635U) {
                            return;
                        }
                        C3810q.m24071b().m24070c("submit_comment_success_isspam");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        C3318e(String str, long j, String str2) {
            WriteCommentActivity.this = r5;
            this.f10655a = str;
            this.f10656b = j;
            this.f10657c = str2;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2832o
        /* renamed from: a */
        public void mo25494a(String str, String str2) {
            if (str == null || "".equals(str) || str2 == null || "".equals(str2)) {
                str = "";
                str2 = str;
            } else if (C3718c0.f11914a) {
                C3718c0.m24436a("submitcomment", "call_time:" + str + "\nis_answered:" + str2);
            }
            C2877g.m26478a(this.f10655a, this.f10656b, str, str2, WriteCommentActivity.this.f10628N, WriteCommentActivity.this.f10618D, this.f10657c, new C3319a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f.class */
    public class C3320f implements AbstractC2872c {

        /* renamed from: a */
        final /* synthetic */ String f10660a;

        /* renamed from: b */
        final /* synthetic */ String f10661b;

        /* renamed from: com.allinone.callerid.mvc.controller.comment.WriteCommentActivity$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f$a.class */
        class C3321a implements AbstractC2770c {
            C3321a() {
                C3320f.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c
            /* renamed from: a */
            public void mo25491a(String str) {
                if (str == null || !"ok".equals(str)) {
                    return;
                }
                C3767h1.m24279J0(WriteCommentActivity.this.getApplicationContext());
            }
        }

        C3320f(String str, String str2) {
            WriteCommentActivity.this = r4;
            this.f10660a = str;
            this.f10661b = str2;
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
            C1764a.m28939b(WriteCommentActivity.this.getApplicationContext()).m28937d(new Intent("com.allinone.callerid.UPDATE_COMMENT"));
            C2775b.m26612b(this.f10660a, this.f10661b, WriteCommentActivity.this.f10618D, new C3321a());
        }
    }

    /* renamed from: q0 */
    public void m25502q0() {
        String obj = this.f10617C.getText().toString();
        if (obj != null) {
            if (!"".equals(obj)) {
                C3810q.m24071b().m24070c("submit_has_comment");
                if (obj.length() < 5) {
                    this.f10630P.setText(getResources().getString(R$string.comment_text_flew));
                    this.f10629O.setVisibility(0);
                    this.f10631Q.setBackgroundResource(R$drawable.bg_comment_edit_error);
                    this.f10616B.setTextColor(this.f10637W);
                    C3810q.m24071b().m24070c("submit_comment_least");
                    return;
                } else if (obj.contains("http") || obj.contains("wwww")) {
                    this.f10630P.setText(getResources().getString(R$string.comment_is_url));
                    this.f10629O.setVisibility(0);
                    this.f10631Q.setBackgroundResource(R$drawable.bg_comment_edit_error);
                    C3810q.m24071b().m24070c("submit_comment_url");
                    return;
                } else if (C3767h1.m24238l0(obj)) {
                    this.f10630P.setText(getResources().getString(R$string.comment_special_character));
                    this.f10629O.setVisibility(0);
                    this.f10631Q.setBackgroundResource(R$drawable.bg_comment_edit_error);
                    C3810q.m24071b().m24070c("submit_comment_special");
                    return;
                }
            } else {
                C3810q.m24071b().m24070c("submit_no_comment");
            }
            long currentTimeMillis = System.currentTimeMillis();
            m25498u0(this.f10627M, obj, currentTimeMillis);
            m25495x0(getApplicationContext(), this.f10627M, obj, currentTimeMillis);
            startActivity(new Intent(this, SubmitSuccessActivity.class));
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            Intent intent = new Intent();
            intent.putExtra("typelabel", this.f10618D);
            setResult(301, intent);
            this.f10636V = false;
            finish();
        }
    }

    /* renamed from: r0 */
    public void m25501r0() {
        if (this.f10624J) {
            this.f10633S = new DialogC2580a(this, R$style.CustomDialog4, new View$OnClickListenerC3316c());
            C3810q.m24071b().m24070c("select_dialog_show");
            this.f10633S.show();
            return;
        }
        DialogC2581b dialogC2581b = new DialogC2581b(this, R$style.CustomDialog4, new View$OnClickListenerC3317d());
        this.f10632R = dialogC2581b;
        dialogC2581b.show();
        C3810q.m24071b().m24070c("unselect_dialog_show");
    }

    /* renamed from: s0 */
    private void m25500s0(IBinder iBinder) {
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

    /* renamed from: t0 */
    public void m25499t0() {
        this.f10637W = C3719c1.m24432a(this, R$attr.color_comment_spam_text, R$color.comments_sapm);
        this.f10638X = C3719c1.m24432a(this, R$attr.color_666666, R$color.color_666666);
        this.f10639Y = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        this.f10640Z = C3719c1.m24432a(this, R$attr.color_999999, R$color.color_999999);
        this.f10641a0 = C3719c1.m24432a(this, R$attr.color_comment_spam_type, R$color.spam);
        this.f10642b0 = C3719c1.m24431b(this, R$attr.bg_comment_edit, R$drawable.bg_comment_edit);
        this.f10646w = (TextView) findViewById(R$id.tv_comment_title);
        this.f10647x = (TextView) findViewById(R$id.tv_normal);
        this.f10648y = (TextView) findViewById(R$id.tv_spam);
        this.f10649z = (TextView) findViewById(R$id.tv_scam);
        this.f10615A = (TextView) findViewById(R$id.tv_telemarket);
        this.f10616B = (TextView) findViewById(R$id.tv_max);
        this.f10617C = (EditText) findViewById(R$id.et_comment);
        this.f10629O = (FrameLayout) findViewById(R$id.rl_comment_tip_error);
        this.f10631Q = (FrameLayout) findViewById(R$id.rl_edit_bg);
        this.f10630P = (TextView) findViewById(R$id.tv_comment_tip_error);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_normal);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.fl_spam);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.fl_scam);
        FrameLayout frameLayout4 = (FrameLayout) findViewById(R$id.fl_telemarket);
        this.f10634T.setAlpha(0.4f);
        this.f10620F = (ImageView) findViewById(R$id.im_normal);
        this.f10621G = (ImageView) findViewById(R$id.im_spam);
        this.f10622H = (ImageView) findViewById(R$id.im_scam);
        this.f10623I = (ImageView) findViewById(R$id.im_telemarket);
        FrameLayout frameLayout5 = (FrameLayout) findViewById(R$id.rl_comment_title);
        FrameLayout frameLayout6 = (FrameLayout) findViewById(R$id.rl_title);
        View findViewById = findViewById(R$id.view_mid);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        frameLayout3.setOnClickListener(this);
        frameLayout4.setOnClickListener(this);
        this.f10634T.setOnClickListener(this);
        frameLayout5.setOnClickListener(this);
        frameLayout6.setOnClickListener(this);
        findViewById.setOnClickListener(this);
        this.f10646w.setTypeface(this.f10645v);
        this.f10647x.setTypeface(this.f10645v);
        this.f10648y.setTypeface(this.f10645v);
        this.f10649z.setTypeface(this.f10645v);
        this.f10615A.setTypeface(this.f10645v);
        this.f10616B.setTypeface(this.f10645v);
        this.f10617C.setTypeface(this.f10645v);
        this.f10630P.setTypeface(this.f10645v);
        C3315b c3315b = new C3315b();
        this.f10643c0 = c3315b;
        this.f10617C.addTextChangedListener(c3315b);
    }

    /* renamed from: u0 */
    private void m25498u0(String str, String str2, long j) {
        CommentContent commentContent = new CommentContent();
        commentContent.setTel_number(str);
        commentContent.setType_label(this.f10618D);
        commentContent.setAuthor(getApplicationContext().getResources().getString(R$string.you));
        commentContent.setCreate_time(C3771i.m24206d(j));
        commentContent.setContent(str2);
        commentContent.setT_p(this.f10626L);
        C2868a.m26488b(commentContent, new C3320f(str, str2));
    }

    /* renamed from: v0 */
    public void m25497v0() {
        CallLogBean callLogBean;
        try {
            Intent intent = getIntent();
            if (intent == null || (callLogBean = (CallLogBean) intent.getParcelableExtra("number_content")) == null) {
                return;
            }
            this.f10619E = callLogBean.m24928S();
            String m24864x = callLogBean.m24864x();
            this.f10626L = callLogBean.m24943J();
            this.f10627M = callLogBean.m24880o();
            String str = this.f10619E;
            if (str == null || "".equals(str)) {
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("comment", "typelabel_id:" + this.f10619E);
            }
            String str2 = this.f10619E;
            boolean z = true;
            int hashCode = str2.hashCode();
            if (hashCode != 2570908) {
                if (hashCode != 2583401) {
                    if (hashCode == 1172387228 && str2.equals("Telemarketing")) {
                        z = true;
                    }
                } else if (str2.equals("Spam")) {
                    z = false;
                }
            } else if (str2.equals("Scam")) {
                z = true;
            }
            if (!z) {
                this.f10625K = "is_spam";
                this.f10618D = "Spam";
                this.f10624J = true;
                this.f10628N = "";
                this.f10635U = true;
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10620F.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10647x.setTextColor(this.f10638X);
                this.f10622H.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10649z.setTextColor(this.f10638X);
                this.f10621G.setImageResource(R$drawable.comment_spam_red_40dp);
                this.f10648y.setTextColor(this.f10637W);
                this.f10623I.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10615A.setTextColor(this.f10638X);
                this.f10634T.setAlpha(1.0f);
            } else if (z) {
                this.f10625K = "is_scam";
                this.f10618D = "Scam";
                this.f10624J = true;
                this.f10628N = "";
                String str3 = this.f10619E;
                if (str3 == null || "".equals(str3)) {
                    this.f10635U = true;
                }
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10620F.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10647x.setTextColor(this.f10638X);
                this.f10622H.setImageResource(R$drawable.comment_scam_red_40dp);
                this.f10649z.setTextColor(this.f10637W);
                this.f10621G.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10648y.setTextColor(this.f10638X);
                this.f10623I.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10615A.setTextColor(this.f10638X);
                this.f10634T.setAlpha(1.0f);
            } else if (z) {
                this.f10625K = "is_telemarketing";
                this.f10618D = "Telemarketing";
                this.f10624J = true;
                this.f10628N = "";
                this.f10635U = true;
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10620F.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10647x.setTextColor(this.f10638X);
                this.f10622H.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10649z.setTextColor(this.f10638X);
                this.f10621G.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10648y.setTextColor(this.f10638X);
                this.f10623I.setImageResource(R$drawable.comment_telemarketing_red_40dp);
                this.f10615A.setTextColor(this.f10637W);
                this.f10634T.setAlpha(1.0f);
            }
            String replace = getResources().getString(R$string.comment_title_spam).replace("XX", "<font color='" + this.f10641a0 + "'> " + callLogBean.m24932P() + "</font>");
            if (m24864x == null || "".equals(m24864x)) {
                this.f10646w.setText(Html.fromHtml(replace.replace("X", "<font color='" + this.f10641a0 + "'> 10</font>")));
                return;
            }
            this.f10646w.setText(Html.fromHtml(replace.replace("X", "<font color='" + this.f10641a0 + "'> " + m24864x + "</font>")));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: w0 */
    private void m25496w0() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            this.f10617C.requestFocus();
            inputMethodManager.showSoftInput(this.f10617C, 0);
        }
    }

    /* renamed from: x0 */
    private void m25495x0(Context context, String str, String str2, long j) {
        C2829m.m26530a(context, str, new C3318e(str, j, str2));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_normal /* 2131296763 */:
                String str = this.f10619E;
                if (str == null || "".equals(str)) {
                    this.f10628N = "0";
                } else {
                    this.f10628N = "1";
                }
                this.f10625K = "";
                this.f10618D = "";
                this.f10624J = true;
                this.f10617C.setHint(getResources().getString(R$string.comment_hint));
                this.f10620F.setImageResource(R$drawable.comment_normal_blue_40dp);
                this.f10647x.setTextColor(this.f10639Y);
                this.f10622H.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10649z.setTextColor(this.f10638X);
                this.f10621G.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10648y.setTextColor(this.f10638X);
                this.f10623I.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10615A.setTextColor(this.f10638X);
                this.f10634T.setAlpha(1.0f);
                m25496w0();
                this.f10617C.setHint(getResources().getString(R$string.comment_hint));
                C3810q.m24071b().m24070c("type_select");
                return;
            case R$id.fl_scam /* 2131296780 */:
                this.f10625K = "is_scam";
                this.f10618D = "Scam";
                this.f10624J = true;
                this.f10628N = "";
                String str2 = this.f10619E;
                if (str2 == null || "".equals(str2)) {
                    this.f10635U = true;
                }
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10620F.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10647x.setTextColor(this.f10638X);
                this.f10622H.setImageResource(R$drawable.comment_scam_red_40dp);
                this.f10649z.setTextColor(this.f10637W);
                this.f10621G.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10648y.setTextColor(this.f10638X);
                this.f10623I.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10615A.setTextColor(this.f10638X);
                this.f10634T.setAlpha(1.0f);
                m25496w0();
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                C3810q.m24071b().m24070c("type_select");
                return;
            case R$id.fl_spam /* 2131296798 */:
                this.f10625K = "is_spam";
                this.f10618D = "Spam";
                this.f10624J = true;
                this.f10628N = "";
                String str3 = this.f10619E;
                if (str3 == null || "".equals(str3)) {
                    this.f10635U = true;
                }
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10620F.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10647x.setTextColor(this.f10638X);
                this.f10622H.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10649z.setTextColor(this.f10638X);
                this.f10621G.setImageResource(R$drawable.comment_spam_red_40dp);
                this.f10648y.setTextColor(this.f10637W);
                this.f10623I.setImageResource(R$drawable.comment_telemarketing_gray_40dp);
                this.f10615A.setTextColor(this.f10638X);
                this.f10634T.setAlpha(1.0f);
                m25496w0();
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                C3810q.m24071b().m24070c("type_select");
                return;
            case R$id.fl_telemarket /* 2131296800 */:
                this.f10625K = "is_telemarketing";
                this.f10618D = "Telemarketing";
                this.f10624J = true;
                this.f10628N = "";
                String str4 = this.f10619E;
                if (str4 == null || "".equals(str4)) {
                    this.f10635U = true;
                }
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                this.f10620F.setImageResource(R$drawable.comment_normal_gray_40dp);
                this.f10647x.setTextColor(this.f10638X);
                this.f10622H.setImageResource(R$drawable.comment_scam_gray_40dp);
                this.f10649z.setTextColor(this.f10638X);
                this.f10621G.setImageResource(R$drawable.comment_spam_gray_40dp);
                this.f10648y.setTextColor(this.f10638X);
                this.f10623I.setImageResource(R$drawable.comment_telemarketing_red_40dp);
                this.f10615A.setTextColor(this.f10637W);
                this.f10634T.setAlpha(1.0f);
                m25496w0();
                this.f10617C.setHint(getResources().getString(R$string.comment_hint_spam));
                C3810q.m24071b().m24070c("type_select");
                return;
            case R$id.ib_submit /* 2131296873 */:
                try {
                    if (this.f10624J) {
                        if (C3767h1.m24261a(getApplicationContext())) {
                            m25502q0();
                            C3810q.m24071b().m24070c("submit_comment_click");
                        } else {
                            Toast.makeText(getApplicationContext(), (int) R$string.search_desc, 0).show();
                        }
                        CollectInfo collectInfo = new CollectInfo();
                        collectInfo.setNumber(this.f10627M);
                        collectInfo.setUser_blocked("0");
                        collectInfo.setUser_commented("1");
                        if (this.f10635U) {
                            collectInfo.setUser_reported("1");
                        } else {
                            collectInfo.setUser_reported("0");
                        }
                        collectInfo.setUser_upload_recording("0");
                        C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                        return;
                    }
                    String obj = this.f10617C.getText().toString();
                    if (obj == null || "".equals(obj)) {
                        return;
                    }
                    if (C3767h1.m24261a(getApplicationContext())) {
                        m25502q0();
                        C3810q.m24071b().m24070c("submit_comment_click");
                    } else {
                        Toast.makeText(getApplicationContext(), (int) R$string.search_desc, 0).show();
                    }
                    CollectInfo collectInfo2 = new CollectInfo();
                    collectInfo2.setNumber(this.f10627M);
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
            case R$id.rl_comment_title /* 2131297492 */:
                m25500s0(view.getWindowToken());
                return;
            case R$id.rl_title /* 2131297544 */:
                m25500s0(view.getWindowToken());
                return;
            case R$id.view_mid /* 2131298271 */:
                m25500s0(view.getWindowToken());
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.activity_write_comment);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            getWindow().getDecorView().post(new RunnableC3313a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f10636V) {
                C3810q.m24071b().m24070c("submit_comment_drop_out");
                if (this.f10624J) {
                    C3810q.m24071b().m24070c("drop_out_select_type");
                } else if (!"".equals(this.f10617C.getText().toString())) {
                    C3810q.m24071b().m24070c("drop_out_write_text");
                } else {
                    C3810q.m24071b().m24070c("drop_out_unselect");
                }
            }
            this.f10617C.removeTextChangedListener(this.f10643c0);
            this.f10643c0 = null;
            this.f10617C.setOnEditorActionListener(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m25501r0();
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
