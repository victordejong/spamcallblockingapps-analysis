package com.unknownphone.callblocker.activity;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.ActivityC0116c;
import androidx.appcompat.widget.AppCompatImageButton;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/AboutActivity.class */
public class AboutActivity extends ActivityC0116c {
    @Override // androidx.appcompat.app.ActivityC0116c, androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492892);
        ((AppCompatImageButton) findViewById(2131296333)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.AboutActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AboutActivity.this.finish();
            }
        });
    }
}
