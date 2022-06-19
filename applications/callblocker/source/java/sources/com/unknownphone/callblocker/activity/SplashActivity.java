package com.unknownphone.callblocker.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.google.android.gms.tasks.AbstractC4467e;
import com.google.firebase.dynamiclinks.AbstractC4908a;
import com.google.firebase.dynamiclinks.C4909b;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.tutorial_main.MainTutorialActivity;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/SplashActivity.class */
public class SplashActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492904);
        final SharedPreferences sharedPreferences = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        String m1079b = C5287g.m1079b(sharedPreferences.getString("language_code", Locale.getDefault().getLanguage()));
        AbstractC4908a.m2042a().mo2030a(getIntent()).mo3904a(this, new AbstractC4467e<C4909b>() { // from class: com.unknownphone.callblocker.activity.SplashActivity.1
            /* renamed from: a */
            public void mo1147a(C4909b c4909b) {
                Uri m2040a;
                if (c4909b == null || (m2040a = c4909b.m2040a()) == null) {
                    return;
                }
                String queryParameter = m2040a.getQueryParameter("number");
                String queryParameter2 = m2040a.getQueryParameter("person");
                String queryParameter3 = m2040a.getQueryParameter("language");
                if (queryParameter == null || queryParameter.isEmpty()) {
                    return;
                }
                sharedPreferences.edit().putString("number_from_deep_link", queryParameter).putString("person_from_deep_link", queryParameter2).putString("language_from_deep_link", queryParameter3).apply();
                if (queryParameter3 == null || queryParameter3.isEmpty()) {
                    return;
                }
                for (Pair<String, String> pair : C5282b.m1101a()) {
                    if (((String) pair.first).equals(queryParameter3.toLowerCase())) {
                        sharedPreferences.edit().putString("language_code", queryParameter3.toLowerCase()).apply();
                        return;
                    }
                }
            }
        });
        AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById(2131296492);
        if (m1079b.equals(C5287g.m1079b((String) C5282b.f22118b.first))) {
            ComponentCallbacks2C1361c.m17309a((Activity) this).m16960a((Integer) 2131231026).m17051a((ImageView) appCompatImageView);
        } else {
            ComponentCallbacks2C1361c.m17309a((Activity) this).m16960a((Integer) 2131231025).m17051a((ImageView) appCompatImageView);
        }
        new Handler().postDelayed(new Runnable() { // from class: com.unknownphone.callblocker.activity.SplashActivity.2
            @Override // java.lang.Runnable
            public void run() {
                if (SplashActivity.this.getSharedPreferences("com.unknownphone.callblocker.PREFS", 0).getBoolean("seen_tutorial", false)) {
                    SplashActivity.this.startActivity(new Intent(SplashActivity.this, MainActivity.class));
                    SplashActivity.this.finish();
                    return;
                }
                SplashActivity.this.startActivity(new Intent(SplashActivity.this, MainTutorialActivity.class));
                SplashActivity.this.finish();
            }
        }, 1000L);
    }
}
