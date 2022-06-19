package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/facebook/CustomTabActivity.class */
public class CustomTabActivity extends Activity {

    /* renamed from: b */
    public static final String f2442b = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";

    /* renamed from: c */
    public static final String f2443c = CustomTabActivity.class.getSimpleName() + ".action_destroy";

    /* renamed from: a */
    public BroadcastReceiver f2444a;

    /* renamed from: com.facebook.CustomTabActivity$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/CustomTabActivity$a.class */
    public class C0334a extends BroadcastReceiver {
        public C0334a() {
            CustomTabActivity.this = r4;
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
            Intent intent2 = new Intent(f2442b);
            intent2.putExtra(CustomTabMainActivity.f2448f, getIntent().getDataString());
            nf.b(this).d(intent2);
            this.f2444a = new C0334a();
            nf.b(this).c(this.f2444a, new IntentFilter(f2443c));
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f2442b);
        intent.putExtra(CustomTabMainActivity.f2448f, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        nf.b(this).e(this.f2444a);
        super.onDestroy();
    }
}
