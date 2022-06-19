package com.allinone.callerid.start;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PreviewBottomSmallActivity.class */
public class PreviewBottomSmallActivity extends BaseActivity {

    /* renamed from: u */
    private final String f11827u = "PreviewBottomSmallActivity";

    /* renamed from: com.allinone.callerid.start.PreviewBottomSmallActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/PreviewBottomSmallActivity$a.class */
    class View$OnClickListenerC3691a implements View.OnClickListener {
        View$OnClickListenerC3691a() {
            PreviewBottomSmallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PreviewBottomSmallActivity.this.finish();
            PreviewBottomSmallActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_preview_bottom_small);
        ((ImageView) findViewById(R$id.im_close)).setOnClickListener(new View$OnClickListenerC3691a());
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
