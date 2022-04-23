package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
/* loaded from: classes-dex2jar.jar:com/facebook/CustomTabActivity.class */
public class CustomTabActivity extends Activity {

    /* renamed from: b */
    public static final String f2536b = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";

    /* renamed from: c */
    public static final String f2537c = CustomTabActivity.class.getSimpleName() + ".action_destroy";

    /* renamed from: a */
    public BroadcastReceiver f2538a;

    /* renamed from: com.facebook.CustomTabActivity$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/CustomTabActivity$a.class */
    public class C2219a extends BroadcastReceiver {
        public C2219a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CustomTabActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f2536b);
            intent2.putExtra(CustomTabMainActivity.f2542e, getIntent().getDataString());
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent2);
            this.f2538a = new C2219a();
            LocalBroadcastManager.getInstance(this).registerReceiver(this.f2538a, new IntentFilter(f2537c));
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f2536b);
        intent.putExtra(CustomTabMainActivity.f2542e, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f2538a);
        super.onDestroy();
    }
}
