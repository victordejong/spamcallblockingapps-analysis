package com.unknownphone.callblocker.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.ActivityC0116c;
import com.unknownphone.callblocker.tutorial_main.MainTutorialActivity;
import com.unknownphone.callblocker.tutorial_other.OtherTutorialActivity;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/HelpActivity.class */
public class HelpActivity extends ActivityC0116c implements View.OnClickListener {
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296333:
                finish();
                return;
            case 2131296414:
                startActivity(new Intent(this, CreditActivity.class));
                return;
            case 2131296525:
                startActivity(new Intent(this, MainTutorialActivity.class));
                return;
            case 2131296585:
                startActivity(new Intent(this, OtherTutorialActivity.class));
                return;
            default:
                return;
        }
    }

    @Override // androidx.appcompat.app.ActivityC0116c, androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492896);
        findViewById(2131296585).setOnClickListener(this);
        findViewById(2131296525).setOnClickListener(this);
        findViewById(2131296414).setOnClickListener(this);
        findViewById(2131296333).setOnClickListener(this);
    }
}
