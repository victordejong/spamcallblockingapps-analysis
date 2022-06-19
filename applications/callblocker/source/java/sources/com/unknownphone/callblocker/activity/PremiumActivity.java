package com.unknownphone.callblocker.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.AbstractC0692m;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.p064b.p065a.p066a.p067a.C1332c;
import com.p064b.p065a.p066a.p067a.C1342h;
import com.unknownphone.callblocker.custom.AbstractC5281a;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import com.unknownphone.callblocker.p184b.C5255a;
import com.unknownphone.callblocker.p184b.C5259b;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/PremiumActivity.class */
public class PremiumActivity extends ActivityC0664d implements ViewPager.AbstractC1093f, C1332c.AbstractC1335b {

    /* renamed from: k */
    private static final String f21975k = PremiumActivity.class.getSimpleName();

    /* renamed from: l */
    private C1332c f21976l;

    /* renamed from: m */
    private SharedPreferences f21977m;

    /* renamed from: n */
    private boolean f21978n;

    /* renamed from: com.unknownphone.callblocker.activity.PremiumActivity$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/PremiumActivity$a.class */
    private static class C5238a extends AbstractC0692m {

        /* renamed from: a */
        private AbstractC5281a f21987a;

        /* renamed from: b */
        private AbstractC5281a f21988b;

        /* renamed from: c */
        private AbstractC5281a f21989c;

        /* renamed from: d */
        private AbstractC5281a f21990d;

        C5238a(AbstractC0670i abstractC0670i) {
            super(abstractC0670i, 1);
        }

        @Override // androidx.fragment.app.AbstractC0692m
        /* renamed from: a */
        public Fragment mo869a(int i) {
            return i == 1 ? C5259b.m1142a(this.f21987a, this.f21988b, this.f21989c) : C5255a.m1145a(this.f21989c, this.f21990d);
        }

        /* renamed from: a */
        void m1181a(AbstractC5281a abstractC5281a) {
            this.f21987a = abstractC5281a;
        }

        @Override // androidx.viewpager.widget.AbstractC1099a
        /* renamed from: b */
        public int mo868b() {
            return 2;
        }

        /* renamed from: b */
        void m1180b(AbstractC5281a abstractC5281a) {
            this.f21988b = abstractC5281a;
        }

        /* renamed from: c */
        void m1179c(AbstractC5281a abstractC5281a) {
            this.f21989c = abstractC5281a;
        }

        /* renamed from: d */
        void m1178d(AbstractC5281a abstractC5281a) {
            this.f21990d = abstractC5281a;
        }
    }

    /* renamed from: f */
    public void m1182f() {
        setResult(this.f21978n ? -1 : 0, new Intent());
        finish();
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: B_ */
    public void mo845B_() {
        Log.d(f21975k, "onBillingInitialized() was called.");
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo844a() {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
    /* renamed from: a */
    public void mo909a(int i) {
        FirebaseAnalytics m1112a;
        if (i != 1 || (m1112a = CustomApplication.m1112a()) == null) {
            return;
        }
        m1112a.m2182a("begin_checkout", null);
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
    /* renamed from: a */
    public void mo908a(int i, float f, int i2) {
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo843a(int i, Throwable th) {
        Log.d(f21975k, String.format(Locale.US, "onBillingError(%d) was called.", Integer.valueOf(i)));
        if (th != null) {
            Toast.makeText(this, String.format(Locale.US, "Error: %d", Integer.valueOf(i)), 0).show();
        }
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo842a(String str, C1342h c1342h) {
        Log.d(f21975k, String.format(Locale.US, "onProductPurchased(%s, %s) was called.", C5287g.m1076c(str), c1342h == null ? "null" : "details"));
        if ((str.equals("inapp.unknownphone.callblocker2") || str.equals("inapp.unknownphone.callblocker1")) && c1342h != null) {
            Date date = c1342h.f4432e.f4422c.f4415d;
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(2, str.equals("inapp.unknownphone.callblocker2") ? 3 : 1);
            this.f21977m.edit().putBoolean("just_became_premium", true).putLong("subscription_ends_at", calendar.getTimeInMillis()).apply();
            FirebaseAnalytics m1112a = CustomApplication.m1112a();
            if (m1112a != null) {
                Bundle bundle = new Bundle();
                bundle.putDouble("price", 0.0d);
                bundle.putString("currency", "GBP");
                bundle.putString("item_name", str.equals("inapp.unknownphone.callblocker2") ? "3 months" : "1 month");
                m1112a.m2182a("ecommerce_purchase", bundle);
            }
            Toast.makeText(this, "Subscription completed", 0).show();
            this.f21978n = true;
            m1182f();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
    /* renamed from: b */
    public void mo904b(int i) {
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f21976l.m17469a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492900);
        View findViewById = findViewById(2131296622);
        final ViewPager viewPager = (ViewPager) findViewById(2131296746);
        this.f21976l = C1332c.m17463a(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg/n5OPCfZKt31Wr3N97lYlj1E5zbMAFI/LLhsPP1uQqSioY5hUUBo4hjgfr9caMdt+w0xBINTDBW2S0hpEBa1/+rAb30eh+mBdPuQ84lva6/7eFl8tccX2dOSGq9XuQZfa2NREIOSizIGyhCeYgD2hpye5OUIhoy2JNPL65KqkSRnMO3r/hEr9ak+EVCb5BfadcZoLXX/iotW1CdxA56bz7fccemf5RwSHRDoTGUGwQWFtra0Syn5PCDoB+Q+Mp8HzVWtQSL7z+ZoMufL3+GMT/f2cVFCg/ixZOsNHLuf/Q/w/cnDb2olGlOYKXoLgncKxWl1paKkKS6G9i5akqK9QIDAQAB", this);
        this.f21976l.m17451c();
        this.f21977m = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        C5238a c5238a = new C5238a(m19874m());
        c5238a.m1181a(new AbstractC5281a() { // from class: com.unknownphone.callblocker.activity.PremiumActivity.1
            @Override // com.unknownphone.callblocker.custom.AbstractC5281a
            /* renamed from: a */
            public void mo892a() {
                if (!C1332c.m17464a(PremiumActivity.this) || !PremiumActivity.this.f21976l.m17446e() || !PremiumActivity.this.f21976l.m17443g()) {
                    return;
                }
                FirebaseAnalytics m1112a = CustomApplication.m1112a();
                if (m1112a != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("item_name", "1 month");
                    m1112a.m2182a("add_to_cart", bundle2);
                }
                PremiumActivity.this.f21976l.m17467a(PremiumActivity.this, "inapp.unknownphone.callblocker1");
            }
        });
        c5238a.m1180b(new AbstractC5281a() { // from class: com.unknownphone.callblocker.activity.PremiumActivity.2
            @Override // com.unknownphone.callblocker.custom.AbstractC5281a
            /* renamed from: a */
            public void mo892a() {
                if (!C1332c.m17464a(PremiumActivity.this) || !PremiumActivity.this.f21976l.m17446e() || !PremiumActivity.this.f21976l.m17443g()) {
                    return;
                }
                FirebaseAnalytics m1112a = CustomApplication.m1112a();
                if (m1112a != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("item_name", "3 months");
                    m1112a.m2182a("add_to_cart", bundle2);
                }
                PremiumActivity.this.f21976l.m17467a(PremiumActivity.this, "inapp.unknownphone.callblocker2");
            }
        });
        c5238a.m1179c(new AbstractC5281a() { // from class: com.unknownphone.callblocker.activity.PremiumActivity.3
            @Override // com.unknownphone.callblocker.custom.AbstractC5281a
            /* renamed from: a */
            public void mo892a() {
                PremiumActivity.this.m1182f();
            }
        });
        c5238a.m1178d(new AbstractC5281a() { // from class: com.unknownphone.callblocker.activity.PremiumActivity.4
            @Override // com.unknownphone.callblocker.custom.AbstractC5281a
            /* renamed from: a */
            public void mo892a() {
                viewPager.m18104a(1, true);
            }
        });
        viewPager.setAdapter(c5238a);
        viewPager.m18093a(this);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.PremiumActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PremiumActivity.this.m1182f();
            }
        });
        if (getIntent().getBooleanExtra("show_premium_tab", false)) {
            viewPager.postDelayed(new Runnable() { // from class: com.unknownphone.callblocker.activity.PremiumActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    viewPager.m18104a(1, true);
                }
            }, 500L);
        }
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onDestroy() {
        if (this.f21976l != null) {
            this.f21976l.m17448d();
        }
        super.onDestroy();
    }

    @Override // android.view.Window.Callback
    public void onPointerCaptureChanged(boolean z) {
    }
}
