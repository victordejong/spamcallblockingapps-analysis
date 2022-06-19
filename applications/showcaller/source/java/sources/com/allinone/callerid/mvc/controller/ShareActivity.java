package com.allinone.callerid.mvc.controller;

import android.content.Intent;
import android.graphics.Typeface;
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
import com.allinone.callerid.main.BaseThemeActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShareActivity.class */
public class ShareActivity extends BaseThemeActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f10327u = "ShareActivity";

    /* renamed from: com.allinone.callerid.mvc.controller.ShareActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShareActivity$a.class */
    class RunnableC3207a implements Runnable {
        RunnableC3207a() {
            ShareActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C3767h1.m24250f0(ShareActivity.this.getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                ShareActivity.this.getWindow().getDecorView().setLayoutDirection(1);
            }
            C3810q.m24071b().m24070c("share_dialog");
            Typeface m24359b = C3739f1.m24359b();
            TextView textView = (TextView) ShareActivity.this.findViewById(R$id.tv_great);
            TextView textView2 = (TextView) ShareActivity.this.findViewById(R$id.tv_identified);
            TextView textView3 = (TextView) ShareActivity.this.findViewById(R$id.tv_share);
            ImageView imageView = (ImageView) ShareActivity.this.findViewById(R$id.lb_close);
            ((FrameLayout) ShareActivity.this.findViewById(R$id.flayout_share)).setOnClickListener(ShareActivity.this);
            imageView.setOnClickListener(ShareActivity.this);
            textView.setTypeface(m24359b, 1);
            textView2.setTypeface(m24359b);
            textView3.setTypeface(m24359b, 1);
            textView2.setText(ShareActivity.this.getResources().getString(R$string.identified_counts).replace("X", String.valueOf(C3711a1.m24479v0())));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != 2131296820) {
            if (id != 2131297119) {
                return;
            }
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return;
        }
        try {
            C3711a1.m24644E2(Boolean.FALSE);
            C3810q.m24071b().m24070c("dialog_share");
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.SUBJECT", getResources().getString(R$string.share_subject));
            intent.putExtra("android.intent.extra.TEXT", getResources().getString(R$string.share_text));
            intent.setFlags(268435456);
            startActivity(Intent.createChooser(intent, "Choose type"));
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
        setContentView(R$layout.activity_share);
        getWindow().getDecorView().post(new RunnableC3207a());
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

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
