package com.allinone.callerid.start;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/BlockedHangupActivity.class */
public class BlockedHangupActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f11668u = "BlockedHangupActivity";

    /* renamed from: v */
    private EZSearchResult f11669v;

    /* renamed from: C */
    private void m24772C() {
        ImageView imageView = (ImageView) findViewById(R$id.lb_missed_close);
        ((FrameLayout) findViewById(R$id.fl_details)).setOnClickListener(this);
        imageView.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R$id.tv_number);
        ((TextView) findViewById(R$id.tv_details)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_tip)).setTypeface(C3739f1.m24359b());
        textView.setTypeface(C3739f1.m24359b());
        textView.setText(getResources().getString(R$string.you_blocked) + " " + this.f11669v.getNumber() + " " + getResources().getString(R$string.successfully));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id = view.getId();
            if (id == 2131296737) {
                C3810q.m24071b().m24070c("blocked_dialog_details");
                Intent intent = new Intent(this, UnknownContactActivity.class);
                CallLogBean callLogBean = new CallLogBean();
                callLogBean.m24955C0(this.f11669v.getName());
                callLogBean.m24951E0(this.f11669v.getNumber());
                callLogBean.m24905d0(this.f11669v.getAddress());
                callLogBean.m24891i1(this.f11669v.getWebsite());
                callLogBean.m24902e0(this.f11669v.getIcon());
                callLogBean.m24933O0(this.f11669v.getType());
                callLogBean.m24913a1(this.f11669v.getTel_number());
                callLogBean.m24915Z0(this.f11669v.getT_p());
                callLogBean.m24901e1(this.f11669v.getType_label());
                callLogBean.m24939L0(String.valueOf(this.f11669v.getReport_count()));
                callLogBean.m24896g0(this.f11669v.getLocation());
                callLogBean.m24937M0(this.f11669v.getName());
                callLogBean.m24863x0(this.f11669v.getFormat_tel_number());
                callLogBean.m24945H0(this.f11669v.getOperator());
                Bundle bundle = new Bundle();
                bundle.putParcelable("contact_tony", callLogBean);
                intent.putExtras(bundle);
                intent.setFlags(268435456);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                finish();
            } else if (id == 2131297124) {
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
        Intent intent = getIntent();
        if (intent != null) {
            this.f11669v = (EZSearchResult) intent.getParcelableExtra("contact_missed");
        }
        C3810q.m24071b().m24070c("blocked_dialog_show");
        setContentView(R$layout.activity_blocked);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m24772C();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
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
