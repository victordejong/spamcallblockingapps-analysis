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
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3852t;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/GuideAddContantActivity.class */
public class GuideAddContantActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f10969u = "GuideAddContantActivity";

    /* renamed from: v */
    private int f10970v;

    /* renamed from: w */
    private String f10971w;

    /* renamed from: x */
    private String f10972x;

    /* renamed from: X */
    private void m25300X() {
        try {
            Intent intent = new Intent("android.intent.action.INSERT");
            intent.setType("vnd.android.cursor.dir/person");
            intent.setType("vnd.android.cursor.dir/contact");
            intent.setType("vnd.android.cursor.dir/raw_contact");
            intent.setFlags(268435456);
            intent.putExtra("phone_type", 2);
            intent.putExtra("phone", this.f10971w);
            startActivity(intent);
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: Y */
    private void m25299Y() {
        Typeface m24359b = C3739f1.m24359b();
        TextView textView = (TextView) findViewById(R$id.tv_tip);
        ImageView imageView = (ImageView) findViewById(R$id.lb_missed_close);
        ImageView imageView2 = (ImageView) findViewById(R$id.photo_view);
        TextView textView2 = (TextView) findViewById(R$id.tv_number);
        TextView textView3 = (TextView) findViewById(R$id.tv_des);
        ((TextView) findViewById(R$id.tv_report)).setVisibility(8);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.ll_contacts);
        TextView textView4 = (TextView) findViewById(R$id.tv_save);
        TextView textView5 = (TextView) findViewById(R$id.tv_call);
        constraintLayout.setVisibility(0);
        textView4.setOnClickListener(this);
        textView5.setOnClickListener(this);
        imageView.setOnClickListener(this);
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b, 1);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        String str = this.f10972x;
        if (str == null || "".equals(str)) {
            imageView2.setImageResource(R$drawable.ic_photo_normal);
        } else {
            C3852t.m23961b(getApplicationContext(), this.f10972x, R$drawable.ic_photo_normal, imageView2);
        }
        textView2.setText(this.f10971w);
        String string = getResources().getString(R$string.guide_addcontant);
        textView3.setText(Html.fromHtml(string.replace("X", "<font color='#FF0000'> " + this.f10970v + "</font>")));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131297124) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else if (id != 2131297838) {
            if (id != 2131298112) {
                return;
            }
            C3810q.m24071b().m24070c("guide_addcontact_click");
            m25300X();
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else {
            C3810q.m24071b().m24070c("guide_addcontact_call_click");
            if (C3714b1.m24448j(getApplicationContext())) {
                int m24504p = C3711a1.m24504p();
                if (m24504p != -1) {
                    C3714b1.m24454d(this, m24504p, this.f10971w);
                } else if (Build.VERSION.SDK_INT >= 22) {
                    C3714b1.m24439s(this, this.f10971w);
                } else {
                    try {
                        C3809p0.m24078a(getApplicationContext(), this.f10971w);
                        finish();
                        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    } catch (Exception e) {
                        Toast.makeText(getApplicationContext(), getResources().getString(R$string.no_phone_related), 1).show();
                    }
                }
            } else {
                try {
                    C3809p0.m24078a(getApplicationContext(), this.f10971w);
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                } catch (Exception e2) {
                    Toast.makeText(getApplicationContext(), getResources().getString(R$string.no_phone_related), 1).show();
                }
            }
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
        setContentView(R$layout.activity_addreport);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        Intent intent = getIntent();
        if (intent != null) {
            this.f10971w = intent.getStringExtra("haoma");
            this.f10972x = intent.getStringExtra("touxiang");
            this.f10970v = intent.getIntExtra("cishu", 3);
        }
        m25299Y();
        C3810q.m24071b().m24070c("guide_addcontact_show");
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
