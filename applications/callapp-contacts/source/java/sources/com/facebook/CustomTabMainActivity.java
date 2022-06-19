package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import androidx.p052i.p053a.C1179a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10278d;
import com.facebook.internal.C10340z;
/* loaded from: classes3-dex2jar.jar:com/facebook/CustomTabMainActivity.class */
public class CustomTabMainActivity extends Activity {

    /* renamed from: a */
    public static final String f33040a = CustomTabMainActivity.class.getSimpleName() + ".extra_action";

    /* renamed from: b */
    public static final String f33041b = CustomTabMainActivity.class.getSimpleName() + ".extra_params";

    /* renamed from: c */
    public static final String f33042c = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";

    /* renamed from: d */
    public static final String f33043d = CustomTabMainActivity.class.getSimpleName() + ".extra_url";

    /* renamed from: e */
    public static final String f33044e = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";

    /* renamed from: f */
    public static final String f33045f = CustomTabMainActivity.class.getSimpleName() + ".no_activity_exception";

    /* renamed from: g */
    private boolean f33046g = true;

    /* renamed from: h */
    private BroadcastReceiver f33047h;

    /* renamed from: a */
    private static Bundle m23809a(String str) {
        Uri parse = Uri.parse(str);
        Bundle m23195d = C10213ae.m23195d(parse.getQuery());
        m23195d.putAll(C10213ae.m23195d(parse.getFragment()));
        return m23195d;
    }

    /* renamed from: a */
    private void m23810a(int i, Intent intent) {
        C1179a.m43410a(this).m43412a(this.f33047h);
        if (intent != null) {
            String stringExtra = intent.getStringExtra(f33043d);
            Intent m22966a = C10340z.m22966a(getIntent(), stringExtra != null ? m23809a(stringExtra) : new Bundle(), (FacebookException) null);
            if (m22966a != null) {
                intent = m22966a;
            }
            setResult(i, intent);
        } else {
            setResult(i, C10340z.m22966a(getIntent(), (Bundle) null, (FacebookException) null));
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CustomTabActivity.f33036a.equals(getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle != null) {
        } else {
            String stringExtra = getIntent().getStringExtra(f33040a);
            Bundle bundleExtra = getIntent().getBundleExtra(f33041b);
            boolean m23071a = new C10278d(stringExtra, bundleExtra).m23071a(this, getIntent().getStringExtra(f33042c));
            this.f33046g = false;
            if (!m23071a) {
                setResult(0, getIntent().putExtra(f33045f, true));
                finish();
                return;
            }
            this.f33047h = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.f33044e);
                    intent2.putExtra(CustomTabMainActivity.f33043d, intent.getStringExtra(CustomTabMainActivity.f33043d));
                    intent2.addFlags(603979776);
                    CustomTabMainActivity.this.startActivity(intent2);
                }
            };
            C1179a.m43410a(this).m43411a(this.f33047h, new IntentFilter(CustomTabActivity.f33036a));
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (f33044e.equals(intent.getAction())) {
            C1179a.m43410a(this).m43409a(new Intent(CustomTabActivity.f33037b));
            m23810a(-1, intent);
        } else if (!CustomTabActivity.f33036a.equals(intent.getAction())) {
        } else {
            m23810a(-1, intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f33046g) {
            m23810a(0, null);
        }
        this.f33046g = true;
    }
}
