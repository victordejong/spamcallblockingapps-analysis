package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.p052i.p053a.C1179a;
/* loaded from: classes3-dex2jar.jar:com/facebook/CustomTabActivity.class */
public class CustomTabActivity extends Activity {

    /* renamed from: a */
    public static final String f33036a = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";

    /* renamed from: b */
    public static final String f33037b = CustomTabActivity.class.getSimpleName() + ".action_destroy";

    /* renamed from: c */
    private BroadcastReceiver f33038c;

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f33036a);
            intent2.putExtra(CustomTabMainActivity.f33043d, getIntent().getDataString());
            C1179a.m43410a(this).m43409a(intent2);
            this.f33038c = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent3) {
                    CustomTabActivity.this.finish();
                }
            };
            C1179a.m43410a(this).m43411a(this.f33038c, new IntentFilter(f33037b));
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f33036a);
        intent.putExtra(CustomTabMainActivity.f33043d, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        C1179a.m43410a(this).m43412a(this.f33038c);
        super.onDestroy();
    }
}
