package com.unknownphone.callblocker.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.app.ActivityC0116c;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/FeedbackActivity.class */
public class FeedbackActivity extends ActivityC0116c {

    /* renamed from: k */
    private SharedPreferences f21914k;

    /* renamed from: l */
    private int f21915l = 820;

    /* renamed from: o */
    public void m1215o() {
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("mailto:"));
        intent.putExtra("android.intent.extra.EMAIL", new String[]{"callblocker@unknownphone.com"});
        String str = "2.4";
        String valueOf = String.valueOf(129);
        StringBuilder append = new StringBuilder().append("CallBlocker Android v");
        if (TextUtils.isEmpty("2.4")) {
            str = "0.0";
        }
        intent.putExtra("android.intent.extra.TEXT", append.append(str).append(", build ").append(TextUtils.isEmpty(valueOf) ? "0" : valueOf).toString());
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        }
    }

    @Override // androidx.appcompat.app.ActivityC0116c, androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492895);
        this.f21914k = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f21914k.edit().putBoolean("left_feedback", true).apply();
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) findViewById(2131296392);
        final AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById(2131296647);
        final AppCompatTextView appCompatTextView2 = (AppCompatTextView) findViewById(2131296461);
        final AppCompatButton appCompatButton = (AppCompatButton) findViewById(2131296566);
        final AppCompatButton appCompatButton2 = (AppCompatButton) findViewById(2131296599);
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.FeedbackActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedbackActivity.this.finish();
            }
        });
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.FeedbackActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FeedbackActivity.this.f21915l == 820) {
                    appCompatTextView2.setText(2131755059);
                    appCompatTextView.setText(2131755057);
                    appCompatButton.setText(2131755058);
                    appCompatButton2.setText(2131755060);
                    appCompatTextView.setVisibility(0);
                    FeedbackActivity.this.f21915l = 912;
                    CustomApplication.m1110a("User doesn't like the app.");
                } else if (FeedbackActivity.this.f21915l == 235) {
                    CustomApplication.m1110a("User likes the app but no rating.");
                    FeedbackActivity.this.f21914k.edit().putBoolean("show_feedback_option_in_settings", true).apply();
                    FeedbackActivity.this.finish();
                } else if (FeedbackActivity.this.f21915l != 912) {
                } else {
                    FeedbackActivity.this.finish();
                }
            }
        });
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.FeedbackActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FeedbackActivity.this.f21915l == 820) {
                    appCompatTextView2.setText(2131755066);
                    appCompatTextView.setText(2131755064);
                    appCompatButton.setText(2131755065);
                    appCompatButton2.setText(2131755067);
                    appCompatTextView.setVisibility(0);
                    FeedbackActivity.this.f21915l = 235;
                } else if (FeedbackActivity.this.f21915l == 235) {
                    CustomApplication.m1110a("User likes the app and rated it.");
                    FeedbackActivity.this.finish();
                    C5287g.m1082b(FeedbackActivity.this);
                } else if (FeedbackActivity.this.f21915l != 912) {
                } else {
                    FeedbackActivity.this.finish();
                    FeedbackActivity.this.m1215o();
                }
            }
        });
    }
}
