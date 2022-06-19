package com.criteo.publisher;

import android.app.Activity;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.criteo.publisher.C8217a;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p242b.AbstractC8257c;
import com.criteo.publisher.p242b.C8254a;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity.class */
public class CriteoInterstitialActivity extends Activity {

    /* renamed from: a */
    private final C8402g f29730a = C8404h.m25741a(getClass());

    /* renamed from: b */
    private WebView f29731b;

    /* renamed from: c */
    private ResultReceiver f29732c;

    /* renamed from: d */
    private FrameLayout f29733d;

    /* renamed from: e */
    private ComponentName f29734e;

    /* renamed from: com.criteo.publisher.CriteoInterstitialActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$a.class */
    final class View$OnClickListenerC8215a implements View.OnClickListener {
        View$OnClickListenerC8215a() {
            CriteoInterstitialActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CriteoInterstitialActivity.this.m25988a();
        }
    }

    /* renamed from: com.criteo.publisher.CriteoInterstitialActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$b.class */
    static final class C8216b implements AbstractC8257c {

        /* renamed from: a */
        private final WeakReference<CriteoInterstitialActivity> f29736a;

        private C8216b(WeakReference<CriteoInterstitialActivity> weakReference) {
            this.f29736a = weakReference;
        }

        /* synthetic */ C8216b(WeakReference weakReference, View$OnClickListenerC8215a view$OnClickListenerC8215a) {
            this(weakReference);
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: a */
        public final void mo25762a() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f29736a.get();
            if (criteoInterstitialActivity != null) {
                CriteoInterstitialActivity.m25986b(criteoInterstitialActivity);
            }
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: b */
        public final void mo25759b() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f29736a.get();
            if (criteoInterstitialActivity != null) {
                criteoInterstitialActivity.m25988a();
            }
        }
    }

    /* renamed from: a */
    public void m25988a() {
        Bundle bundle = new Bundle();
        bundle.putInt(JsonDocumentFields.ACTION, 201);
        this.f29732c.send(100, bundle);
        finish();
    }

    /* renamed from: b */
    static /* synthetic */ void m25986b(CriteoInterstitialActivity criteoInterstitialActivity) {
        Bundle bundle = new Bundle();
        bundle.putInt(JsonDocumentFields.ACTION, 202);
        criteoInterstitialActivity.f29732c.send(100, bundle);
        criteoInterstitialActivity.finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        m25988a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setContentView(C8217a.C8219b.activity_criteo_interstitial);
            this.f29733d = (FrameLayout) findViewById(C8217a.C8218a.AdLayout);
            WebView webView = new WebView(getApplicationContext());
            this.f29731b = webView;
            this.f29733d.addView(webView, 0);
            ImageButton imageButton = (ImageButton) findViewById(C8217a.C8218a.closeButton);
            Bundle extras = getIntent().getExtras();
            if (extras != null && extras.getString("webviewdata") != null) {
                String string = extras.getString("webviewdata");
                this.f29732c = (ResultReceiver) extras.getParcelable("resultreceiver");
                this.f29734e = (ComponentName) extras.getParcelable("callingactivity");
                this.f29731b.getSettings().setJavaScriptEnabled(true);
                this.f29731b.setWebViewClient(new C8254a(new C8216b(new WeakReference(this), null), this.f29734e));
                this.f29731b.loadDataWithBaseURL("https://criteo.com", string, Mimetypes.MIMETYPE_HTML, "UTF-8", "about:blank");
            }
            imageButton.setOnClickListener(new View$OnClickListenerC8215a());
        } catch (Throwable th) {
            this.f29730a.m25744a(C8527t.m25376a(th));
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f29733d.removeAllViews();
        this.f29731b.setWebViewClient(null);
        this.f29731b.destroy();
        this.f29731b = null;
    }
}
