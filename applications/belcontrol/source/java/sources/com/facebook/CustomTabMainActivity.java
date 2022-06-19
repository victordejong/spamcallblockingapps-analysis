package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/facebook/CustomTabMainActivity.class */
public class CustomTabMainActivity extends Activity {

    /* renamed from: c */
    public static final String f2446c = CustomTabMainActivity.class.getSimpleName() + ".extra_params";

    /* renamed from: d */
    public static final String f2447d = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";

    /* renamed from: f */
    public static final String f2448f = CustomTabMainActivity.class.getSimpleName() + ".extra_url";

    /* renamed from: g */
    public static final String f2449g = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";

    /* renamed from: a */
    public boolean f2450a = true;

    /* renamed from: b */
    public BroadcastReceiver f2451b;

    /* renamed from: com.facebook.CustomTabMainActivity$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/CustomTabMainActivity$a.class */
    public class C0335a extends BroadcastReceiver {
        public C0335a() {
            CustomTabMainActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
            intent2.setAction(CustomTabMainActivity.f2449g);
            String str = CustomTabMainActivity.f2448f;
            intent2.putExtra(str, intent.getStringExtra(str));
            intent2.addFlags(603979776);
            CustomTabMainActivity.this.startActivity(intent2);
        }
    }

    /* renamed from: a */
    public final void m5230a(int i, Intent intent) {
        nf.b(this).e(this.f2451b);
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
        String str = CustomTabActivity.f2442b;
        if (str.equals(getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle != null) {
        } else {
            Bundle bundleExtra = getIntent().getBundleExtra(f2446c);
            new cm0("oauth", bundleExtra).m5304a(this, getIntent().getStringExtra(f2447d));
            this.f2450a = false;
            this.f2451b = new C0335a();
            nf.b(this).c(this.f2451b, new IntentFilter(str));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (f2449g.equals(intent.getAction())) {
            nf.b(this).d(new Intent(CustomTabActivity.f2443c));
        } else if (!CustomTabActivity.f2442b.equals(intent.getAction())) {
            return;
        }
        m5230a(-1, intent);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f2450a) {
            m5230a(0, null);
        }
        this.f2450a = true;
    }
}
