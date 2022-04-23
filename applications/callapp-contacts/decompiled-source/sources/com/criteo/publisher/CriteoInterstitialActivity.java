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
import com.amazonaws.services.s3.util.Mimetypes;
import com.criteo.publisher.a;
import com.criteo.publisher.b.c;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity.class */
public class CriteoInterstitialActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private final g f17131a = h.a(getClass());

    /* renamed from: b  reason: collision with root package name */
    private WebView f17132b;

    /* renamed from: c  reason: collision with root package name */
    private ResultReceiver f17133c;

    /* renamed from: d  reason: collision with root package name */
    private FrameLayout f17134d;
    private ComponentName e;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$a.class */
    final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CriteoInterstitialActivity.this.a();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$b.class */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CriteoInterstitialActivity> f17136a;

        private b(WeakReference<CriteoInterstitialActivity> weakReference) {
            this.f17136a = weakReference;
        }

        /* synthetic */ b(WeakReference weakReference, a aVar) {
            this(weakReference);
        }

        @Override // com.criteo.publisher.b.c
        public final void a() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f17136a.get();
            if (criteoInterstitialActivity != null) {
                CriteoInterstitialActivity.b(criteoInterstitialActivity);
            }
        }

        @Override // com.criteo.publisher.b.c
        public final void b() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f17136a.get();
            if (criteoInterstitialActivity != null) {
                criteoInterstitialActivity.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Bundle bundle = new Bundle();
        bundle.putInt(JsonDocumentFields.ACTION, 201);
        this.f17133c.send(100, bundle);
        finish();
    }

    static /* synthetic */ void b(CriteoInterstitialActivity criteoInterstitialActivity) {
        Bundle bundle = new Bundle();
        bundle.putInt(JsonDocumentFields.ACTION, 202);
        criteoInterstitialActivity.f17133c.send(100, bundle);
        criteoInterstitialActivity.finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setContentView(a.b.activity_criteo_interstitial);
            this.f17134d = (FrameLayout) findViewById(a.C0337a.AdLayout);
            WebView webView = new WebView(getApplicationContext());
            this.f17132b = webView;
            this.f17134d.addView(webView, 0);
            ImageButton imageButton = (ImageButton) findViewById(a.C0337a.closeButton);
            Bundle extras = getIntent().getExtras();
            if (!(extras == null || extras.getString("webviewdata") == null)) {
                String string = extras.getString("webviewdata");
                this.f17133c = (ResultReceiver) extras.getParcelable("resultreceiver");
                this.e = (ComponentName) extras.getParcelable("callingactivity");
                this.f17132b.getSettings().setJavaScriptEnabled(true);
                this.f17132b.setWebViewClient(new com.criteo.publisher.b.a(new b(new WeakReference(this), null), this.e));
                this.f17132b.loadDataWithBaseURL("https://criteo.com", string, Mimetypes.MIMETYPE_HTML, "UTF-8", "about:blank");
            }
            imageButton.setOnClickListener(new a());
        } catch (Throwable th) {
            this.f17131a.a(t.a(th));
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f17134d.removeAllViews();
        this.f17132b.setWebViewClient(null);
        this.f17132b.destroy();
        this.f17132b = null;
    }
}
