package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.common.R$id;
import com.facebook.common.R$layout;
import com.facebook.internal.C2372a0;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2417i;
import com.facebook.login.C2535e;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;
import p081h.p154f.C6135n;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookActivity.class */
public class FacebookActivity extends FragmentActivity {

    /* renamed from: b */
    public static String f2547b = "PassThrough";

    /* renamed from: c */
    public static String f2548c = "SingleFragment";

    /* renamed from: d */
    public static final String f2549d = FacebookActivity.class.getName();

    /* renamed from: a */
    public Fragment f2550a;

    /* renamed from: D */
    public Fragment m35482D() {
        return this.f2550a;
    }

    /* renamed from: E */
    public Fragment m35481E() {
        Intent intent = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(f2548c);
        C2417i iVar = findFragmentByTag;
        if (findFragmentByTag == null) {
            if ("FacebookDialogFragment".equals(intent.getAction())) {
                C2417i iVar2 = new C2417i();
                iVar2.setRetainInstance(true);
                iVar2.show(supportFragmentManager, f2548c);
                iVar = iVar2;
            } else if ("DeviceShareDialogFragment".equals(intent.getAction())) {
                DeviceShareDialogFragment deviceShareDialogFragment = new DeviceShareDialogFragment();
                deviceShareDialogFragment.setRetainInstance(true);
                deviceShareDialogFragment.m33961a((ShareContent) intent.getParcelableExtra("content"));
                deviceShareDialogFragment.show(supportFragmentManager, f2548c);
                iVar = deviceShareDialogFragment;
            } else {
                C2535e eVar = new C2535e();
                eVar.setRetainInstance(true);
                supportFragmentManager.beginTransaction().add(R$id.com_facebook_fragment_container, eVar, f2548c).commit();
                iVar = eVar;
            }
        }
        return iVar;
    }

    /* renamed from: F */
    public final void m35480F() {
        setResult(0, C2372a0.m34967a(getIntent(), (Bundle) null, C2372a0.m34965a(C2372a0.m34948d(getIntent()))));
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Fragment fragment = this.f2550a;
        if (fragment != null) {
            fragment.onConfigurationChanged(configuration);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!C6135n.m23730u()) {
            C2408g0.m34821c(f2549d, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            C6135n.m23747d(getApplicationContext());
        }
        setContentView(R$layout.com_facebook_activity_layout);
        if (f2547b.equals(intent.getAction())) {
            m35480F();
        } else {
            this.f2550a = m35481E();
        }
    }
}
