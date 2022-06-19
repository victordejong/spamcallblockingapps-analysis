package com.unknownphone.callblocker.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.p064b.p065a.p066a.p067a.C1332c;
import com.p064b.p065a.p066a.p067a.C1342h;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/NoCreditsActivity.class */
public class NoCreditsActivity extends Activity implements View.OnClickListener, C1332c.AbstractC1335b {

    /* renamed from: a */
    private static final String f21961a = NoCreditsActivity.class.getSimpleName();

    /* renamed from: b */
    private C1332c f21962b;

    /* renamed from: c */
    private SharedPreferences f21963c;

    /* renamed from: d */
    private boolean f21964d;

    /* renamed from: c */
    public void m1187c() {
        setResult(this.f21964d ? -1 : 0, new Intent());
        finish();
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: B_ */
    public void mo845B_() {
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo844a() {
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo843a(int i, Throwable th) {
        Log.d(f21961a, String.format(Locale.US, "onBillingError(%d) was called.", Integer.valueOf(i)));
        if (th != null) {
            Toast.makeText(this, String.format(Locale.US, "Error: %d", Integer.valueOf(i)), 0).show();
        }
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo842a(String str, C1342h c1342h) {
        Log.d(f21961a, String.format(Locale.US, "onProductPurchased(%s, %s) was called.", C5287g.m1076c(str), c1342h == null ? "null" : "details"));
        if (!str.equals("inapp.unknownphone.callblocker3") || c1342h == null) {
            return;
        }
        Date date = c1342h.f4432e.f4422c.f4415d;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(2, 3);
        calendar.add(6, 7);
        this.f21963c.edit().putBoolean("just_became_premium", true).putLong("subscription_ends_at", calendar.getTimeInMillis()).apply();
        FirebaseAnalytics m1112a = CustomApplication.m1112a();
        if (m1112a != null) {
            Bundle bundle = new Bundle();
            bundle.putDouble("price", 0.0d);
            bundle.putString("currency", "GBP");
            bundle.putString("item_name", "3 months with 1 week trial");
            m1112a.m2182a("ecommerce_purchase", bundle);
        }
        Toast.makeText(this, "Subscription completed", 0).show();
        this.f21964d = true;
        m1187c();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f21962b.m17469a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C1332c.m17464a(view.getContext()) || !this.f21962b.m17446e() || !this.f21962b.m17443g()) {
            return;
        }
        FirebaseAnalytics m1112a = CustomApplication.m1112a();
        if (m1112a != null) {
            Bundle bundle = new Bundle();
            bundle.putString("item_name", "3 months with 1 week trial");
            m1112a.m2182a("add_to_cart", bundle);
        }
        this.f21962b.m17467a(this, "inapp.unknownphone.callblocker3");
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492898);
        AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById(2131296583);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) findViewById(2131296584);
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) findViewById(2131296510);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) findViewById(2131296392);
        AppCompatButton appCompatButton = (AppCompatButton) findViewById(2131296684);
        View findViewById = findViewById(2131296384);
        View findViewById2 = findViewById(2131296622);
        this.f21962b = C1332c.m17463a(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg/n5OPCfZKt31Wr3N97lYlj1E5zbMAFI/LLhsPP1uQqSioY5hUUBo4hjgfr9caMdt+w0xBINTDBW2S0hpEBa1/+rAb30eh+mBdPuQ84lva6/7eFl8tccX2dOSGq9XuQZfa2NREIOSizIGyhCeYgD2hpye5OUIhoy2JNPL65KqkSRnMO3r/hEr9ak+EVCb5BfadcZoLXX/iotW1CdxA56bz7fccemf5RwSHRDoTGUGwQWFtra0Syn5PCDoB+Q+Mp8HzVWtQSL7z+ZoMufL3+GMT/f2cVFCg/ixZOsNHLuf/Q/w/cnDb2olGlOYKXoLgncKxWl1paKkKS6G9i5akqK9QIDAQAB", this);
        this.f21962b.m17451c();
        this.f21963c = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        Calendar calendar = Calendar.getInstance();
        calendar.setFirstDayOfWeek(2);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.set(7, 1);
        char days = TimeUnit.MILLISECONDS.toDays(calendar.getTimeInMillis() - timeInMillis);
        if (days <= 0) {
            days = 7;
        }
        appCompatTextView.setText(C5287g.m1093a(this, 2131755228, Long.valueOf(days)));
        appCompatTextView2.setText(getText(2131755230));
        Map<Integer, String> m1074d = C5287g.m1074d(this);
        appCompatButton.setText(getString(2131755225, new Object[]{m1074d.get(3)}));
        appCompatTextView3.setText(getString(2131755226, new Object[]{m1074d.get(3)}));
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.NoCreditsActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NoCreditsActivity.this.m1187c();
            }
        });
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.NoCreditsActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.NoCreditsActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NoCreditsActivity.this.m1187c();
            }
        });
        appCompatButton.setOnClickListener(this);
        FirebaseAnalytics m1112a = CustomApplication.m1112a();
        if (m1112a != null) {
            m1112a.m2182a("begin_checkout", null);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.f21962b != null) {
            this.f21962b.m17448d();
        }
        super.onDestroy();
    }
}
