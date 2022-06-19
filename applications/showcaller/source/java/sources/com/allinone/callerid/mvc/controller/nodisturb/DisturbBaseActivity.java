package com.allinone.callerid.mvc.controller.nodisturb;

import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$style;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3767h1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity.class */
public abstract class DisturbBaseActivity extends AppCompatActivity {

    /* renamed from: u */
    protected boolean f11000u;

    /* renamed from: V */
    public void m25281V() {
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    /* renamed from: W */
    public void mo25261W() {
    }

    /* renamed from: X */
    protected abstract void mo25260X();

    /* renamed from: Y */
    public void m25280Y() {
        int m24461z2 = C3711a1.m24461z2();
        if (m24461z2 == 0) {
            setTheme(R$style.NormalTheme);
        } else if (m24461z2 != 1) {
            setTheme(R$style.NormalTheme);
        } else {
            setTheme(R$style.BlackTheme);
        }
    }

    /* renamed from: Z */
    protected void m25279Z() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        m25280Y();
        super.onCreate(bundle);
        mo25260X();
        boolean booleanValue = C3767h1.m24250f0(this).booleanValue();
        this.f11000u = booleanValue;
        if (booleanValue && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m25279Z();
        mo25261W();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
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
