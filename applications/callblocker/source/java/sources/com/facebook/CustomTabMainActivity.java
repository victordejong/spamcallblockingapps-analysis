package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.p040h.p041a.C0735a;
import com.facebook.internal.C2028e;
/* loaded from: classes-dex2jar.jar:com/facebook/CustomTabMainActivity.class */
public class CustomTabMainActivity extends Activity {

    /* renamed from: a */
    public static final String f5465a = CustomTabMainActivity.class.getSimpleName() + ".extra_params";

    /* renamed from: b */
    public static final String f5466b = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";

    /* renamed from: c */
    public static final String f5467c = CustomTabMainActivity.class.getSimpleName() + ".extra_url";

    /* renamed from: d */
    public static final String f5468d = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";

    /* renamed from: e */
    private boolean f5469e = true;

    /* renamed from: f */
    private BroadcastReceiver f5470f;

    /* renamed from: a */
    private void m16266a(int i, Intent intent) {
        C0735a.m19534a(this).m19536a(this.f5470f);
        if (intent != null) {
            setResult(i, intent);
        } else {
            setResult(i);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CustomTabActivity.f5461a.equals(getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle != null) {
        } else {
            Bundle bundleExtra = getIntent().getBundleExtra(f5465a);
            new C2028e("oauth", bundleExtra).m15642a(this, getIntent().getStringExtra(f5466b));
            this.f5469e = false;
            this.f5470f = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.f5468d);
                    intent2.putExtra(CustomTabMainActivity.f5467c, intent.getStringExtra(CustomTabMainActivity.f5467c));
                    intent2.addFlags(603979776);
                    CustomTabMainActivity.this.startActivity(intent2);
                }
            };
            C0735a.m19534a(this).m19535a(this.f5470f, new IntentFilter(CustomTabActivity.f5461a));
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (f5468d.equals(intent.getAction())) {
            C0735a.m19534a(this).m19533a(new Intent(CustomTabActivity.f5462b));
            m16266a(-1, intent);
        } else if (!CustomTabActivity.f5461a.equals(intent.getAction())) {
        } else {
            m16266a(-1, intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f5469e) {
            m16266a(0, null);
        }
        this.f5469e = true;
    }
}
