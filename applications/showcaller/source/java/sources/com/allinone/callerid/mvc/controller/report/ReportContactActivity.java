package com.allinone.callerid.mvc.controller.report;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.ReportedContent;
import com.allinone.callerid.dialog.DialogC2594j;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p193w.AbstractC2983a;
import com.allinone.callerid.p162i.p163a.p193w.C2984b;
import com.allinone.callerid.p162i.p163a.p193w.C2987d;
import com.allinone.callerid.util.AsyncTaskC3853t0;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportContactActivity.class */
public class ReportContactActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private DialogC2594j f11284A;

    /* renamed from: B */
    private TextView f11285B;

    /* renamed from: C */
    private TextView f11286C;

    /* renamed from: D */
    private TextView f11287D;

    /* renamed from: E */
    private AlertDialog f11288E;

    /* renamed from: u */
    private final String f11289u = "ReportContactActivity";

    /* renamed from: v */
    private TextView f11290v;

    /* renamed from: w */
    private TextView f11291w;

    /* renamed from: x */
    private TextView f11292x;

    /* renamed from: y */
    private String f11293y;

    /* renamed from: z */
    private TextView f11294z;

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportContactActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportContactActivity$a.class */
    public class C3534a implements AbstractC2983a {
        C3534a() {
            ReportContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p193w.AbstractC2983a
        /* renamed from: a */
        public void mo25084a(String str, String str2, String str3) {
            if (str != null && !"".equals(str) && Integer.parseInt(str) != 0) {
                TextView textView = ReportContactActivity.this.f11286C;
                textView.setText(str + " " + ReportContactActivity.this.getResources().getString(R$string.reports));
                ReportContactActivity.this.f11286C.setVisibility(0);
                ReportContactActivity.this.f11287D.setVisibility(0);
                ReportContactActivity.this.f11285B.setVisibility(0);
            }
            if (str2 != null && !"".equals(str2) && Integer.parseInt(str2) != 0) {
                TextView textView2 = ReportContactActivity.this.f11287D;
                textView2.setText(str2 + " " + ReportContactActivity.this.getResources().getString(R$string.reports));
                ReportContactActivity.this.f11287D.setVisibility(0);
                ReportContactActivity.this.f11286C.setVisibility(0);
                ReportContactActivity.this.f11285B.setVisibility(0);
            }
            if (str3 == null || "".equals(str3) || Integer.parseInt(str3) == 0) {
                return;
            }
            TextView textView3 = ReportContactActivity.this.f11285B;
            textView3.setText(str3 + " " + ReportContactActivity.this.getResources().getString(R$string.reports));
            ReportContactActivity.this.f11285B.setVisibility(0);
            ReportContactActivity.this.f11286C.setVisibility(0);
            ReportContactActivity.this.f11287D.setVisibility(0);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportContactActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportContactActivity$b.class */
    public class C3535b implements AbstractC2795a {

        /* renamed from: a */
        final /* synthetic */ String f11296a;

        /* renamed from: b */
        final /* synthetic */ Context f11297b;

        /* renamed from: com.allinone.callerid.mvc.controller.report.ReportContactActivity$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportContactActivity$b$a.class */
        class C3536a implements AbstractC2766a {
            C3536a() {
                C3535b.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
                C1764a.m28939b(C3535b.this.f11297b).m28937d(new Intent("com.allinone.callerid.REPORT_BLOCK"));
            }
        }

        C3535b(String str, Context context) {
            ReportContactActivity.this = r4;
            this.f11296a = str;
            this.f11297b = context;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            if (z) {
                return;
            }
            EZBlackList eZBlackList = new EZBlackList();
            eZBlackList.setName("");
            eZBlackList.setNumber(this.f11296a);
            eZBlackList.setIs_myblock("true");
            C2796b.m26588a(eZBlackList, new C3536a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportContactActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportContactActivity$c.class */
    public class View$OnClickListenerC3537c implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ String f11300d;

        /* renamed from: e */
        final /* synthetic */ String f11301e;

        /* renamed from: f */
        final /* synthetic */ String f11302f;

        /* renamed from: g */
        final /* synthetic */ CheckBox f11303g;

        View$OnClickListenerC3537c(String str, String str2, String str3, CheckBox checkBox) {
            ReportContactActivity.this = r4;
            this.f11300d = str;
            this.f11301e = str2;
            this.f11302f = str3;
            this.f11303g = checkBox;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                C3711a1.m24609N1(C3711a1.m24531i0() + 1);
                ReportContactActivity.this.m25087j0(this.f11300d, this.f11301e, this.f11302f);
                ReportedContent reportedContent = new ReportedContent();
                reportedContent.setNumber(this.f11300d);
                reportedContent.setType(this.f11301e);
                reportedContent.setTime(System.currentTimeMillis());
                C2987d.m26303d(reportedContent);
                if (this.f11303g.isChecked()) {
                    ReportContactActivity.this.m25091f0(this.f11300d, EZCallApplication.m26146c());
                }
                CollectInfo collectInfo = new CollectInfo();
                collectInfo.setNumber(this.f11300d);
                if (this.f11303g.isChecked()) {
                    collectInfo.setUser_blocked("1");
                } else {
                    collectInfo.setUser_blocked("0");
                }
                collectInfo.setUser_commented("0");
                collectInfo.setUser_reported("1");
                collectInfo.setUser_upload_recording("0");
                C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                if (Build.VERSION.SDK_INT < 23) {
                    ReportContactActivity.this.m25085l0();
                } else if (Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                    ReportContactActivity.this.m25085l0();
                }
                if (ReportContactActivity.this.f11288E != null) {
                    ReportContactActivity.this.f11288E.dismiss();
                }
                Intent intent = new Intent();
                intent.putExtra("typelabel", this.f11302f);
                ReportContactActivity.this.setResult(963, intent);
                ReportContactActivity.this.finish();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportContactActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportContactActivity$d.class */
    public class View$OnClickListenerC3538d implements View.OnClickListener {
        View$OnClickListenerC3538d() {
            ReportContactActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ReportContactActivity.this.f11288E != null) {
                ReportContactActivity.this.f11288E.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportContactActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportContactActivity$e.class */
    public class View$OnClickListenerC3539e implements View.OnClickListener {
        View$OnClickListenerC3539e() {
            ReportContactActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() != 2131297131) {
                return;
            }
            ReportContactActivity.this.f11284A.dismiss();
        }
    }

    /* renamed from: f0 */
    public void m25091f0(String str, Context context) {
        if (str != null) {
            try {
                if ("".equals(str)) {
                    return;
                }
                C2796b.m26587b(str.replace("-", ""), new C3535b(str, context));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: g0 */
    private void m25090g0() {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.rl_close);
        ImageView imageView = (ImageView) findViewById(R$id.lb_tag_close);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.btn_scam);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.btn_telemarketing);
        relativeLayout.setOnClickListener(this);
        imageView.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.btn_spam)).setOnClickListener(this);
        this.f11294z = (TextView) findViewById(R$id.tv_tag_number);
        TextView textView = (TextView) findViewById(R$id.tv_tag_title);
        this.f11290v = (TextView) findViewById(R$id.tv_tag_scam);
        this.f11291w = (TextView) findViewById(R$id.tv_tag_telemarketing);
        this.f11292x = (TextView) findViewById(R$id.tv_tag_spam);
        this.f11285B = (TextView) findViewById(R$id.tv_tag_telemarketing_counts);
        this.f11286C = (TextView) findViewById(R$id.tv_tag_spam_counts);
        this.f11287D = (TextView) findViewById(R$id.tv_tag_scam_counts);
        this.f11294z.setTypeface(C3739f1.m24359b());
        textView.setTypeface(C3739f1.m24359b());
        this.f11290v.setTypeface(C3739f1.m24359b());
        this.f11291w.setTypeface(C3739f1.m24359b());
        this.f11292x.setTypeface(C3739f1.m24359b());
        this.f11287D.setTypeface(C3739f1.m24359b());
        this.f11286C.setTypeface(C3739f1.m24359b());
        this.f11285B.setTypeface(C3739f1.m24359b());
    }

    /* renamed from: h0 */
    private void m25089h0(String str) {
        C2984b.m26309a(str, new C3534a());
    }

    /* renamed from: i0 */
    private void m25088i0(String str, String str2, String str3, String str4) {
        View inflate = LayoutInflater.from(this).inflate(R$layout.report_dialog, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_report_type);
        CheckBox checkBox = (CheckBox) inflate.findViewById(R$id.cb_block);
        textView.setText(str3);
        textView.setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_report_title)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_report_block)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_btn)).setTypeface(C3739f1.m24359b());
        ((FrameLayout) inflate.findViewById(R$id.btn_confirm)).setOnClickListener(new View$OnClickListenerC3537c(str, str2, str4, checkBox));
        ((ImageView) inflate.findViewById(R$id.lb_report_close)).setOnClickListener(new View$OnClickListenerC3538d());
        if (!isFinishing()) {
            AlertDialog create = new AlertDialog.Builder(this).setView(inflate).create();
            this.f11288E = create;
            create.show();
        }
    }

    /* renamed from: j0 */
    public void m25087j0(String str, String str2, String str3) {
        new AsyncTaskC3853t0(EZCallApplication.m26146c(), str, str2, "android", C3767h1.m24265W(EZCallApplication.m26146c()), C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code(), str3).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
    }

    /* renamed from: k0 */
    private void m25086k0() {
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("report_number");
            this.f11293y = stringExtra;
            this.f11294z.setText(stringExtra);
            String str = this.f11293y;
            if (str == null || "".equals(str)) {
                return;
            }
            m25089h0(this.f11293y);
        }
    }

    /* renamed from: l0 */
    public void m25085l0() {
        DialogC2594j dialogC2594j = new DialogC2594j(getApplicationContext(), R$style.CustomDialog4, new View$OnClickListenerC3539e());
        this.f11284A = dialogC2594j;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                dialogC2594j.getWindow().setType(2038);
            } else {
                dialogC2594j.getWindow().setType(2003);
            }
            this.f11284A.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.btn_scam /* 2131296430 */:
                C3810q.m24071b().m24070c("report_scam_click");
                String str = this.f11293y;
                if (str == null || "".equals(str)) {
                    Toast.makeText(this, getResources().getString(R$string.invalid_nubmer), 0).show();
                    return;
                } else {
                    m25088i0(this.f11293y, "is_scam", this.f11290v.getText().toString(), "Scam");
                    return;
                }
            case R$id.btn_spam /* 2131296436 */:
                C3810q.m24071b().m24070c("report_spam_click");
                String str2 = this.f11293y;
                if (str2 == null || "".equals(str2)) {
                    Toast.makeText(this, getResources().getString(R$string.invalid_nubmer), 0).show();
                    return;
                } else {
                    m25088i0(this.f11293y, "is_spam", this.f11292x.getText().toString(), "Spam");
                    return;
                }
            case R$id.btn_telemarketing /* 2131296440 */:
                C3810q.m24071b().m24070c("report_telemarketing_click");
                String str3 = this.f11293y;
                if (str3 == null || "".equals(str3)) {
                    Toast.makeText(this, getResources().getString(R$string.invalid_nubmer), 0).show();
                    return;
                } else {
                    m25088i0(this.f11293y, "is_telemarketing", this.f11291w.getText().toString(), "Telemarketing");
                    return;
                }
            case R$id.lb_tag_close /* 2131297129 */:
                finish();
                overridePendingTransition(0, R$anim.out_to_up);
                return;
            case R$id.rl_close /* 2131297489 */:
                finish();
                overridePendingTransition(0, R$anim.out_to_up);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
        setContentView(R$layout.activity_report_number);
        C3810q.m24071b().m24070c("report_activity");
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m25090g0();
        m25086k0();
        try {
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

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            overridePendingTransition(0, R$anim.out_to_up);
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
