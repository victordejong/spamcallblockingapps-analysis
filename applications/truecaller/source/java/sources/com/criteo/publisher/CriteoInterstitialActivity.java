package com.criteo.publisher;

import android.app.Activity;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.C22912a3;
import p193e.p1512i.p1516b.p1527q1.AbstractC23013c;
import p193e.p1512i.p1516b.p1527q1.C23010a;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity.class */
public class CriteoInterstitialActivity extends Activity {

    /* renamed from: f */
    public static final /* synthetic */ int f2424f = 0;

    /* renamed from: a */
    public final C23021h f2425a = C23023i.m7583a(getClass());

    /* renamed from: b */
    public WebView f2426b;

    /* renamed from: c */
    public ResultReceiver f2427c;

    /* renamed from: d */
    public FrameLayout f2428d;

    /* renamed from: e */
    public ComponentName f2429e;

    /* renamed from: com.criteo.publisher.CriteoInterstitialActivity$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$a.class */
    public class View$OnClickListenerC0893a implements View.OnClickListener {
        public View$OnClickListenerC0893a() {
            CriteoInterstitialActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CriteoInterstitialActivity.m42046a(CriteoInterstitialActivity.this);
        }
    }

    /* renamed from: com.criteo.publisher.CriteoInterstitialActivity$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$b.class */
    public static class C0894b implements AbstractC23013c {

        /* renamed from: a */
        public final WeakReference<CriteoInterstitialActivity> f2431a;

        public C0894b(WeakReference weakReference, View$OnClickListenerC0893a view$OnClickListenerC0893a) {
            this.f2431a = weakReference;
        }

        @Override // p193e.p1512i.p1516b.p1527q1.AbstractC23013c
        /* renamed from: a */
        public void mo7576a() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f2431a.get();
            if (criteoInterstitialActivity != null) {
                CriteoInterstitialActivity.m42046a(criteoInterstitialActivity);
            }
        }

        @Override // p193e.p1512i.p1516b.p1527q1.AbstractC23013c
        /* renamed from: b */
        public void mo7575b() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f2431a.get();
            if (criteoInterstitialActivity != null) {
                int i = CriteoInterstitialActivity.f2424f;
                criteoInterstitialActivity.f2427c.send(100, C22128a.m8687M0("Action", 202));
                criteoInterstitialActivity.finish();
            }
        }
    }

    /* renamed from: a */
    public static void m42046a(CriteoInterstitialActivity criteoInterstitialActivity) {
        Objects.requireNonNull(criteoInterstitialActivity);
        Bundle bundle = new Bundle();
        bundle.putInt("Action", 201);
        criteoInterstitialActivity.f2427c.send(100, bundle);
        criteoInterstitialActivity.finish();
    }

    /* renamed from: b */
    public final void m42045b() {
        setContentView(C0895R.layout.activity_criteo_interstitial);
        this.f2428d = (FrameLayout) findViewById(C0895R.C0897id.AdLayout);
        WebView webView = new WebView(getApplicationContext());
        this.f2426b = webView;
        this.f2428d.addView(webView, 0);
        ImageButton imageButton = (ImageButton) findViewById(C0895R.C0897id.closeButton);
        Bundle extras = getIntent().getExtras();
        if (extras != null && extras.getString("webviewdata") != null) {
            String string = extras.getString("webviewdata");
            this.f2427c = (ResultReceiver) extras.getParcelable("resultreceiver");
            this.f2429e = (ComponentName) extras.getParcelable("callingactivity");
            this.f2426b.getSettings().setJavaScriptEnabled(true);
            this.f2426b.setWebViewClient(new C23010a(new C0894b(new WeakReference(this), null), this.f2429e));
            this.f2426b.loadDataWithBaseURL("https://criteo.com", string, "text/html", StringConstant.UTF8, "about:blank");
        }
        imageButton.setOnClickListener(new View$OnClickListenerC0893a());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f2427c.send(100, C22128a.m8687M0("Action", 201));
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            m42045b();
        } catch (Throwable th) {
            this.f2425a.m7586a(C22912a3.m7631a(th));
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f2428d.removeAllViews();
        this.f2426b.destroy();
        this.f2426b = null;
    }
}
