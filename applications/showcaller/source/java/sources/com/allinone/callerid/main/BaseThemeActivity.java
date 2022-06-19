package com.allinone.callerid.main;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import androidx.appcompat.app.AppCompatActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/BaseThemeActivity.class */
public class BaseThemeActivity extends AppCompatActivity {

    /* renamed from: com.allinone.callerid.main.BaseThemeActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/BaseThemeActivity$a.class */
    public class RunnableC3053a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f9907d;

        RunnableC3053a(String str) {
            BaseThemeActivity.this = r4;
            this.f9907d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3711a1.m24545e2(this.f9907d);
        }
    }

    /* renamed from: V */
    protected void m26152V(String str) {
        Resources resources = getResources();
        Configuration configuration = resources.getConfiguration();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 3121:
                if (str.equals("ar")) {
                    z = false;
                    break;
                }
                break;
            case 3148:
                if (str.equals("bn")) {
                    z = true;
                    break;
                }
                break;
            case 3201:
                if (str.equals("de")) {
                    z = true;
                    break;
                }
                break;
            case 3239:
                if (str.equals("el")) {
                    z = true;
                    break;
                }
                break;
            case 3241:
                if (str.equals("en")) {
                    z = true;
                    break;
                }
                break;
            case 3246:
                if (str.equals("es")) {
                    z = true;
                    break;
                }
                break;
            case 3259:
                if (str.equals("fa")) {
                    z = true;
                    break;
                }
                break;
            case 3276:
                if (str.equals("fr")) {
                    z = true;
                    break;
                }
                break;
            case 3329:
                if (str.equals("hi")) {
                    z = true;
                    break;
                }
                break;
            case 3365:
                if (str.equals("in")) {
                    z = true;
                    break;
                }
                break;
            case 3371:
                if (str.equals("it")) {
                    z = true;
                    break;
                }
                break;
            case 3374:
                if (str.equals("iw")) {
                    z = true;
                    break;
                }
                break;
            case 3424:
                if (str.equals("kk")) {
                    z = true;
                    break;
                }
                break;
            case 3428:
                if (str.equals("ko")) {
                    z = true;
                    break;
                }
                break;
            case 3494:
                if (str.equals("ms")) {
                    z = true;
                    break;
                }
                break;
            case 3588:
                if (str.equals("pt")) {
                    z = true;
                    break;
                }
                break;
            case 3651:
                if (str.equals("ru")) {
                    z = true;
                    break;
                }
                break;
            case 3697:
                if (str.equals("te")) {
                    z = true;
                    break;
                }
                break;
            case 3700:
                if (str.equals("th")) {
                    z = true;
                    break;
                }
                break;
            case 3710:
                if (str.equals("tr")) {
                    z = true;
                    break;
                }
                break;
            case 3741:
                if (str.equals("ur")) {
                    z = true;
                    break;
                }
                break;
            case 3763:
                if (str.equals("vi")) {
                    z = true;
                    break;
                }
                break;
            case 3886:
                if (str.equals("zh")) {
                    z = true;
                    break;
                }
                break;
            case 96646068:
                if (str.equals("en_CA")) {
                    z = true;
                    break;
                }
                break;
            case 96646193:
                if (str.equals("en_GB")) {
                    z = true;
                    break;
                }
                break;
            case 115813762:
                if (str.equals("zh-TW")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ar", "IQ");
                    break;
                } else {
                    configuration.setLocale(new Locale("ar", "IQ"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("bn", "BD");
                    break;
                } else {
                    configuration.setLocale(new Locale("bn", "BD"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.GERMANY;
                    break;
                } else {
                    configuration.setLocale(Locale.GERMANY);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("el");
                    break;
                } else {
                    configuration.setLocale(new Locale("el"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.US;
                    break;
                } else {
                    configuration.setLocale(Locale.US);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("es", "ES");
                    break;
                } else {
                    configuration.setLocale(new Locale("es", "ES"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("fa", "IR");
                    break;
                } else {
                    configuration.setLocale(new Locale("fa", "IR"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.FRANCE;
                    break;
                } else {
                    configuration.setLocale(Locale.FRANCE);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("hi", "IN");
                    break;
                } else {
                    configuration.setLocale(new Locale("hi", "IN"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("in", "ID");
                    break;
                } else {
                    configuration.setLocale(new Locale("in", "ID"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("it");
                    break;
                } else {
                    configuration.setLocale(new Locale("it"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("iw", "IL");
                    break;
                } else {
                    configuration.setLocale(new Locale("iw", "IL"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("kk", "KK");
                    break;
                } else {
                    configuration.setLocale(new Locale("kk", "KK"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.KOREA;
                    break;
                } else {
                    configuration.setLocale(Locale.KOREA);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ms", "MY");
                    break;
                } else {
                    configuration.setLocale(new Locale("ms", "MY"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("pt", "PT");
                    break;
                } else {
                    configuration.setLocale(new Locale("pt", "PT"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ru", "RU");
                    break;
                } else {
                    configuration.setLocale(new Locale("ru", "RU"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("te");
                    break;
                } else {
                    configuration.setLocale(new Locale("te"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("th", "TH");
                    break;
                } else {
                    configuration.setLocale(new Locale("th", "TH"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("tr", "TR");
                    break;
                } else {
                    configuration.setLocale(new Locale("tr", "TR"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ur");
                    break;
                } else {
                    configuration.setLocale(new Locale("ur"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("vi", "VI");
                    break;
                } else {
                    configuration.setLocale(new Locale("vi", "VI"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.SIMPLIFIED_CHINESE;
                    break;
                } else {
                    configuration.setLocale(Locale.SIMPLIFIED_CHINESE);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.CANADA;
                    break;
                } else {
                    configuration.setLocale(Locale.CANADA);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.UK;
                    break;
                } else {
                    configuration.setLocale(Locale.UK);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.TRADITIONAL_CHINESE;
                    break;
                } else {
                    configuration.setLocale(Locale.TRADITIONAL_CHINESE);
                    break;
                }
        }
        resources.updateConfiguration(configuration, displayMetrics);
        if (C3767h1.f12006a) {
            C3772i0.m24190a().f12015b.execute(new RunnableC3053a(str));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m26152V(EZCallApplication.m26146c().f9914h);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
