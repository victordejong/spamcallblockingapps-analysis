package com.allinone.callerid.mvc.controller.guidep;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3852t;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/GuideReportActivity.class */
public class GuideReportActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private String f10973A;

    /* renamed from: B */
    private String f10974B;

    /* renamed from: C */
    private TextView f10975C;

    /* renamed from: D */
    private ImageView f10976D;

    /* renamed from: E */
    private ImageView f10977E;

    /* renamed from: F */
    private TextView f10978F;

    /* renamed from: G */
    private TextView f10979G;

    /* renamed from: H */
    private TextView f10980H;

    /* renamed from: I */
    private Typeface f10981I;

    /* renamed from: u */
    private final String f10982u = "GuideReportActivity";

    /* renamed from: v */
    private String f10983v;

    /* renamed from: w */
    private int f10984w;

    /* renamed from: x */
    private String f10985x;

    /* renamed from: y */
    private String f10986y;

    /* renamed from: z */
    private String f10987z;

    /* renamed from: com.allinone.callerid.mvc.controller.guidep.GuideReportActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a.class */
    class RunnableC3420a implements Runnable {
        RunnableC3420a() {
            GuideReportActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = GuideReportActivity.this.getIntent();
            GuideReportActivity.this.f10983v = intent.getStringExtra("haoma");
            GuideReportActivity.this.f10984w = intent.getIntExtra("cishu", 0);
            GuideReportActivity.this.f10985x = intent.getStringExtra("icon");
            GuideReportActivity.this.f10986y = intent.getStringExtra("Report_count");
            GuideReportActivity.this.f10987z = intent.getStringExtra("Type_label");
            GuideReportActivity.this.f10973A = intent.getStringExtra("Type_label_id");
            GuideReportActivity.this.f10974B = intent.getStringExtra("T_p");
            GuideReportActivity.this.m25290f0();
        }
    }

    /* renamed from: f0 */
    public void m25290f0() {
        this.f10981I = C3739f1.m24359b();
        this.f10975C = (TextView) findViewById(R$id.tv_tip);
        this.f10976D = (ImageView) findViewById(R$id.lb_missed_close);
        this.f10977E = (ImageView) findViewById(R$id.photo_view);
        this.f10978F = (TextView) findViewById(R$id.tv_number);
        this.f10979G = (TextView) findViewById(R$id.tv_des);
        TextView textView = (TextView) findViewById(R$id.tv_report);
        this.f10980H = textView;
        textView.setOnClickListener(this);
        this.f10976D.setOnClickListener(this);
        this.f10975C.setTypeface(this.f10981I);
        this.f10978F.setTypeface(this.f10981I, 1);
        this.f10979G.setTypeface(this.f10981I);
        this.f10978F.setText(this.f10983v);
        String string = getResources().getString(R$string.guide_report);
        this.f10979G.setText(Html.fromHtml(string.replace("X", "<font color='#FF0000'> " + this.f10984w + "</font>")));
        String str = this.f10985x;
        if (str == null || "".equals(str)) {
            this.f10977E.setImageResource(R$drawable.ic_photo_normal);
        } else {
            C3852t.m23962a(this, this.f10985x, R$drawable.ic_photo_normal, this.f10977E);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131297124) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else if (id != 2131298072) {
        } else {
            C3810q.m24071b().m24070c("guide_report_click");
            CallLogBean callLogBean = new CallLogBean();
            callLogBean.m24951E0(this.f10983v);
            callLogBean.m24939L0(this.f10986y);
            callLogBean.m24901e1(this.f10987z);
            callLogBean.m24898f1(this.f10973A);
            callLogBean.m24915Z0(this.f10974B);
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("number_content", callLogBean);
            bundle.putInt("is_activity", 3);
            intent.putExtras(bundle);
            intent.setClass(this, SubmitCommentActivity.class);
            intent.setFlags(268435456);
            startActivity(intent);
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
            setContentView(R$layout.activity_addreport);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            getWindow().getDecorView().post(new RunnableC3420a());
        } catch (Exception e) {
            e.printStackTrace();
        }
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
    }
}
