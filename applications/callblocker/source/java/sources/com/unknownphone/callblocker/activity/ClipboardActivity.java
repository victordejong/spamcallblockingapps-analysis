package com.unknownphone.callblocker.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.ActivityC0116c;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.unknownphone.callblocker.custom.C5287g;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/ClipboardActivity.class */
public class ClipboardActivity extends ActivityC0116c {
    @Override // androidx.appcompat.app.ActivityC0116c, androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492893);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) findViewById(2131296392);
        AppCompatButton appCompatButton = (AppCompatButton) findViewById(2131296635);
        AppCompatButton appCompatButton2 = (AppCompatButton) findViewById(2131296343);
        AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById(2131296708);
        final String stringExtra = getIntent().getStringExtra("number");
        appCompatTextView.setText(C5287g.m1093a(this, 2131755175, stringExtra));
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ClipboardActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ClipboardActivity.this.finish();
            }
        });
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ClipboardActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.putExtra("number", stringExtra);
                intent.putExtra("action", "action_search");
                ClipboardActivity.this.setResult(-1, intent);
                ClipboardActivity.this.finish();
            }
        });
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ClipboardActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.putExtra("number", stringExtra);
                intent.putExtra("action", "action_block");
                ClipboardActivity.this.setResult(-1, intent);
                ClipboardActivity.this.finish();
            }
        });
        if (!C5287g.m1071e(this).isEmpty()) {
            appCompatButton2.setEnabled(false);
        }
    }
}
