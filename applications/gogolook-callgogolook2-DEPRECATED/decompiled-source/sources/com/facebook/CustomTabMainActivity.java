package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.C2402e;
import p081h.p154f.C6135n;
/* loaded from: classes-dex2jar.jar:com/facebook/CustomTabMainActivity.class */
public class CustomTabMainActivity extends Activity {

    /* renamed from: c */
    public static final String f2540c = CustomTabMainActivity.class.getSimpleName() + ".extra_params";

    /* renamed from: d */
    public static final String f2541d = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";

    /* renamed from: e */
    public static final String f2542e = CustomTabMainActivity.class.getSimpleName() + ".extra_url";

    /* renamed from: f */
    public static final String f2543f = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";

    /* renamed from: a */
    public boolean f2544a = true;

    /* renamed from: b */
    public BroadcastReceiver f2545b;

    /* renamed from: com.facebook.CustomTabMainActivity$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/CustomTabMainActivity$a.class */
    public class C2220a extends BroadcastReceiver {
        public C2220a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
            intent2.setAction(CustomTabMainActivity.f2543f);
            String str = CustomTabMainActivity.f2542e;
            intent2.putExtra(str, intent.getStringExtra(str));
            intent2.addFlags(603979776);
            CustomTabMainActivity.this.startActivity(intent2);
        }
    }

    /* renamed from: a */
    public static final String m35484a() {
        return "fb" + C6135n.m23745f() + "://authorize";
    }

    /* renamed from: a */
    public final void m35483a(int i, Intent intent) {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f2545b);
        if (intent != null) {
            setResult(i, intent);
        } else {
            setResult(i);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CustomTabActivity.f2536b.equals(getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle == null) {
            Bundle bundleExtra = getIntent().getBundleExtra(f2540c);
            new C2402e("oauth", bundleExtra).m34894a(this, getIntent().getStringExtra(f2541d));
            this.f2544a = false;
            this.f2545b = new C2220a();
            LocalBroadcastManager.getInstance(this).registerReceiver(this.f2545b, new IntentFilter(CustomTabActivity.f2536b));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (f2543f.equals(intent.getAction())) {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(CustomTabActivity.f2537c));
            m35483a(-1, intent);
        } else if (CustomTabActivity.f2536b.equals(intent.getAction())) {
            m35483a(-1, intent);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f2544a) {
            m35483a(0, null);
        }
        this.f2544a = true;
    }
}
