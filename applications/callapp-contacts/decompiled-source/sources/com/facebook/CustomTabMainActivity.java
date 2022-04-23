package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import androidx.i.a.a;
import com.facebook.internal.ae;
import com.facebook.internal.d;
import com.facebook.internal.z;
/* loaded from: classes3-dex2jar.jar:com/facebook/CustomTabMainActivity.class */
public class CustomTabMainActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final String f19347a = CustomTabMainActivity.class.getSimpleName() + ".extra_action";

    /* renamed from: b  reason: collision with root package name */
    public static final String f19348b = CustomTabMainActivity.class.getSimpleName() + ".extra_params";

    /* renamed from: c  reason: collision with root package name */
    public static final String f19349c = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";

    /* renamed from: d  reason: collision with root package name */
    public static final String f19350d = CustomTabMainActivity.class.getSimpleName() + ".extra_url";
    public static final String e = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";
    public static final String f = CustomTabMainActivity.class.getSimpleName() + ".no_activity_exception";
    private boolean g = true;
    private BroadcastReceiver h;

    private static Bundle a(String str) {
        Uri parse = Uri.parse(str);
        Bundle d2 = ae.d(parse.getQuery());
        d2.putAll(ae.d(parse.getFragment()));
        return d2;
    }

    private void a(int i, Intent intent) {
        a.a(this).a(this.h);
        if (intent != null) {
            String stringExtra = intent.getStringExtra(f19350d);
            Intent a2 = z.a(getIntent(), stringExtra != null ? a(stringExtra) : new Bundle(), (FacebookException) null);
            if (a2 != null) {
                intent = a2;
            }
            setResult(i, intent);
        } else {
            setResult(i, z.a(getIntent(), (Bundle) null, (FacebookException) null));
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CustomTabActivity.f19343a.equals(getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle == null) {
            String stringExtra = getIntent().getStringExtra(f19347a);
            Bundle bundleExtra = getIntent().getBundleExtra(f19348b);
            boolean a2 = new d(stringExtra, bundleExtra).a(this, getIntent().getStringExtra(f19349c));
            this.g = false;
            if (!a2) {
                setResult(0, getIntent().putExtra(f, true));
                finish();
                return;
            }
            this.h = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.e);
                    intent2.putExtra(CustomTabMainActivity.f19350d, intent.getStringExtra(CustomTabMainActivity.f19350d));
                    intent2.addFlags(603979776);
                    CustomTabMainActivity.this.startActivity(intent2);
                }
            };
            a.a(this).a(this.h, new IntentFilter(CustomTabActivity.f19343a));
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (e.equals(intent.getAction())) {
            a.a(this).a(new Intent(CustomTabActivity.f19344b));
            a(-1, intent);
        } else if (CustomTabActivity.f19343a.equals(intent.getAction())) {
            a(-1, intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.g) {
            a(0, null);
        }
        this.g = true;
    }
}
