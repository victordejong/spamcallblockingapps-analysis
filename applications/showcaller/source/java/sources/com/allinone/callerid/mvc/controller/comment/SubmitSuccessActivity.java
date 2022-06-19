package com.allinone.callerid.mvc.controller.comment;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity.class */
public class SubmitSuccessActivity extends BaseActivity {

    /* renamed from: u */
    private final String f10611u = "SubmitSuccessActivity";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitSuccessActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a.class */
    public class RunnableC3311a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Typeface f10612d;

        /* renamed from: com.allinone.callerid.mvc.controller.comment.SubmitSuccessActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a$a.class */
        class View$OnClickListenerC3312a implements View.OnClickListener {
            View$OnClickListenerC3312a() {
                RunnableC3311a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SubmitSuccessActivity.this.finish();
                SubmitSuccessActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }

        RunnableC3311a(Typeface typeface) {
            SubmitSuccessActivity.this = r4;
            this.f10612d = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView = (TextView) SubmitSuccessActivity.this.findViewById(R$id.tv_title);
            TextView textView2 = (TextView) SubmitSuccessActivity.this.findViewById(R$id.tv_submit_success);
            TextView textView3 = (TextView) SubmitSuccessActivity.this.findViewById(R$id.tv_submit_success_tip);
            ImageView imageView = (ImageView) SubmitSuccessActivity.this.findViewById(R$id.header_left_about);
            if (C3767h1.m24250f0(SubmitSuccessActivity.this.getApplicationContext()).booleanValue()) {
                imageView.setImageResource(R$drawable.ic_back_oppo);
            }
            imageView.setOnClickListener(new View$OnClickListenerC3312a());
            textView.setTypeface(this.f10612d);
            textView2.setTypeface(this.f10612d);
            textView3.setTypeface(this.f10612d);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_submit_success);
        Typeface m24359b = C3739f1.m24359b();
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC3311a(m24359b));
        C3810q.m24071b().m24070c("seubmit_comment_success");
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
