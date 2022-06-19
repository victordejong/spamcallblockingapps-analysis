package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.p040h.p041a.C0735a;
/* loaded from: classes-dex2jar.jar:com/facebook/CustomTabActivity.class */
public class CustomTabActivity extends Activity {

    /* renamed from: a */
    public static final String f5461a = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";

    /* renamed from: b */
    public static final String f5462b = CustomTabActivity.class.getSimpleName() + ".action_destroy";

    /* renamed from: c */
    private BroadcastReceiver f5463c;

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f5461a);
            intent2.putExtra(CustomTabMainActivity.f5467c, getIntent().getDataString());
            C0735a.m19534a(this).m19533a(intent2);
            this.f5463c = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent3) {
                    CustomTabActivity.this.finish();
                }
            };
            C0735a.m19534a(this).m19535a(this.f5463c, new IntentFilter(f5462b));
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f5461a);
        intent.putExtra(CustomTabMainActivity.f5467c, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        C0735a.m19534a(this).m19536a(this.f5463c);
        super.onDestroy();
    }
}
