package com.unknownphone.callblocker.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.unknownphone.callblocker.custom.C5287g;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/PermissionActivity.class */
public class PermissionActivity extends Activity {

    /* renamed from: a */
    private SharedPreferences f21968a;

    /* renamed from: a */
    public void m1186a() {
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(this)) {
            setResult(0, null);
            finish();
            return;
        }
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName()));
        try {
            if (intent.resolveActivity(getPackageManager()) == null) {
                return;
            }
            startActivityForResult(intent, 1234);
        } catch (ActivityNotFoundException e) {
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1234) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(this)) {
            this.f21968a.edit().putBoolean("block_spam_calls", false).apply();
            this.f21968a.edit().putBoolean("identify_spam_calls", true).apply();
        }
        setResult(i2, intent);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492899);
        this.f21968a = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        ((AppCompatTextView) findViewById(2131296424)).setText(2131755376);
        final RelativeLayout relativeLayout = (RelativeLayout) findViewById(2131296614);
        final int m1094a = C5287g.m1094a(this, 122.0f);
        final int m1094a2 = C5287g.m1094a(this, 64.0f);
        relativeLayout.post(new Runnable() { // from class: com.unknownphone.callblocker.activity.PermissionActivity.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(relativeLayout.getWidth() / m1094a2, relativeLayout.getHeight() / m1094a);
                relativeLayout.setScaleX(min);
                relativeLayout.setScaleY(min);
                relativeLayout.setPivotX(relativeLayout.getWidth() / 2);
                relativeLayout.setPivotY(relativeLayout.getHeight());
            }
        });
        relativeLayout.startAnimation(AnimationUtils.loadAnimation(this, 2130771999));
        findViewById(2131296392).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.PermissionActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PermissionActivity.this.setResult(0, null);
                PermissionActivity.this.finish();
            }
        });
        findViewById(2131296684).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.PermissionActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PermissionActivity.this.m1186a();
            }
        });
    }
}
