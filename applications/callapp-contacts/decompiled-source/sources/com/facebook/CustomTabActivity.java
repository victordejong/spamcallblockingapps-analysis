package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.i.a.a;
/* loaded from: classes3-dex2jar.jar:com/facebook/CustomTabActivity.class */
public class CustomTabActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final String f19343a = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";

    /* renamed from: b  reason: collision with root package name */
    public static final String f19344b = CustomTabActivity.class.getSimpleName() + ".action_destroy";

    /* renamed from: c  reason: collision with root package name */
    private BroadcastReceiver f19345c;

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f19343a);
            intent2.putExtra(CustomTabMainActivity.f19350d, getIntent().getDataString());
            a.a(this).a(intent2);
            this.f19345c = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent3) {
                    CustomTabActivity.this.finish();
                }
            };
            a.a(this).a(this.f19345c, new IntentFilter(f19344b));
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f19343a);
        intent.putExtra(CustomTabMainActivity.f19350d, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        a.a(this).a(this.f19345c);
        super.onDestroy();
    }
}
