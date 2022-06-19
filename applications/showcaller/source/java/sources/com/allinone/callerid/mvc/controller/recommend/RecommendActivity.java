package com.allinone.callerid.mvc.controller.recommend;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3792k0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3852t;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recommend/RecommendActivity.class */
public class RecommendActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f11114u = "RecommendActivity";

    /* renamed from: v */
    private boolean f11115v;

    /* renamed from: C */
    private void m25215C() {
        Typeface m24359b = C3739f1.m24359b();
        TextView textView = (TextView) findViewById(R$id.tv_title);
        TextView textView2 = (TextView) findViewById(R$id.tv_content);
        ImageView imageView = (ImageView) findViewById(R$id.lb_missed_close);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_download);
        ImageView imageView2 = (ImageView) findViewById(R$id.iv_image);
        if (C3792k0.m24133d() != null && !"".equals(C3792k0.m24133d())) {
            C3852t.m23961b(getApplicationContext(), C3792k0.m24133d(), R$drawable.ic_photo_normal, imageView2);
        }
        if (C3792k0.m24134c() != null && !"".equals(C3792k0.m24134c())) {
            textView.setText(C3792k0.m24134c());
        }
        if (C3792k0.m24135b() != null && !"".equals(C3792k0.m24135b())) {
            textView2.setText(C3792k0.m24135b());
        }
        imageView.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        ((TextView) findViewById(R$id.tv_tip)).setTypeface(m24359b);
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_hang_up_download)).setTypeface(m24359b);
    }

    /* renamed from: X */
    private void m25214X() {
        C3711a1.m24598Q0(C3711a1.m24512n() + 1);
        if (C3711a1.m24512n() > 1) {
            C3711a1.m24652C2(Boolean.FALSE);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id = view.getId();
            if (id == 2131296739) {
                m25214X();
                C3810q.m24071b().m24070c("callend_recommend_click");
                C3767h1.m24277K0(getApplicationContext(), C3792k0.m24136a(), "showcaller");
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } else if (id == 2131297124) {
                m25214X();
                C3810q.m24071b().m24070c("callend_recommend_close");
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        setContentView(R$layout.activity_recommend);
        m25215C();
        this.f11115v = true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f11115v) {
            this.f11115v = false;
            C3810q.m24071b().m24070c("callend_recommend_show");
            C3711a1.m24568Y1(System.currentTimeMillis());
        }
    }
}
